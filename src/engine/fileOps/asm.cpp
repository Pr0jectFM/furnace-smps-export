/*
 * Furnace Tracker - multi-system chiptune tracker
 * Copyright (C) 2021-2025 tildearrow and contributors
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include "fileOpsCommon.h"

// initialize some variables and throw some errors for invalid stuff
static String smpsInit(DivSong& song, DivSMPSOptions& options, smpsVars& vars) {
  if (song.system[0] != DIV_SYSTEM_YM2612) {
    if (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM) {
      if (options.style != verAMPS)
        return "Only the AMPS style can support DualPCM";
      else
        vars.dualPCM = true;
    }
    else if (song.system[0] == DIV_SYSTEM_YM2612_CSM || song.system[0] == DIV_SYSTEM_YM2612_EXT || song.system[0] == DIV_SYSTEM_YM2612_DUALPCM_EXT) {
      if (vars.dualPCM)
        return "YM2612 variation is not supported. Use a basic YM2612 or YM2612 with DualPCM";
      return "YM2612 variation is not supported. Use a basic YM2612";
    }
    else {
      if (vars.dualPCM)
        return "First system is not a basic YM2612 or YM2612 with DualPCM";
      return "First system is not a basic YM2612";
    }
  }
  if (song.system[1] != DIV_SYSTEM_SMS)
    return "Second system is not a basic SN76489";
  return "";
}

// find the start and end positions of each pattern, as well as the end spot and loop point
static void smpsFindLoop(DivSubSong* s, smpsVars& vars) {
  vars.loopPat = 0, vars.endPat = s->ordersLen;
  vars.endPlace = s->patLen;
  for (int j = 0; j < s->ordersLen; j++) {
    for (int k = 0; k < s->patLen; k++) {
    nextPattern:
      for (int l = 0; l < 10; l++) {
        DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
        for (int m = 0; m < s->pat[l].effectCols; m++) {
          if (p->newData[k][DIV_PAT_FX(m)] == 0x0B) {
            if (p->newData[k][DIV_PAT_FXVAL(m)] <= j) {
              // if looping
              vars.lenTable[1][j] = k + 1;
              vars.endPat = j;
              vars.endPlace = k;
              vars.loopPat = p->newData[k][DIV_PAT_FXVAL(m)];
              return;
            }
            else {
              // if skipping ahead
              vars.lenTable[1][j] = k + 1;
              j = p->newData[k][DIV_PAT_FXVAL(m)];
              k = 0;
              goto nextPattern;
            }
          }
          else if (p->newData[k][DIV_PAT_FX(m)] == 0x0D) {
            // if going to the next order
            vars.lenTable[1][j] = k + 1;
            j++;
            k = p->newData[k][DIV_PAT_FXVAL(m)];
            vars.lenTable[0][j] = k;
            goto nextPattern;
          }
          else if (p->newData[k][DIV_PAT_FX(m)] == 0xFF) {
            vars.lenTable[1][j] = k;
            vars.endPat = j;
            vars.endPlace = k - 1;
            vars.loopPat = -1;
            return;
          }
        }
      }
      vars.lenTable[1][j] = s->patLen;
    }
  }
  return;
}

// channel types
enum smpsChanType {
  typeNull,
  typeEmpty,
  typeFM,
  typePCM,
  typePSG,
  typeNoise
};

// get the list of chans that are in use and get their starting volumes
static void smpsChanNum(DivSong& song, DivSubSong*& s, smpsVars& vars) {
  // check which channels have notes
  for (int channel = 0; channel < vars.chans; channel++) {
    int type;
    vars.chanOn[channel] = typeNull;
    // check channel type
    if (channel < 6) type = typeFM;
    else if (channel == 9 + (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM)) type = typeNoise;
    else if (channel > 5 + (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM)) type = typePSG;
    else type = typePCM;
    // look for notes
    for (int orders = 0; orders < s->ordersLen; orders++) {
      DivPattern* p = s->pat[channel].getPattern(s->orders.ord[channel][orders], false);
      for (int step = vars.lenTable[0][orders]; step <= vars.lenTable[1][orders]; step++) {
        if (p->newData[step][DIV_PAT_VOL] != -1 && vars.startVol[channel] < 0)
          vars.startVol[channel] = p->newData[step][DIV_PAT_VOL];
        if (p->newData[step][DIV_PAT_NOTE] != -1) {
          vars.chanOn[channel] = type;
          // if noise channel and other PSG channels are null, set them to empty
          if (type == typeNoise) {
            if (vars.chanOn[channel - 2] == typeNull)
              vars.chanOn[channel - 2] = typeEmpty;
            if (vars.chanOn[channel - 3] == typeNull)
              vars.chanOn[channel - 3] = typeEmpty;
            // change when we can merge PSG3 and Noise
            vars.chanOn[channel - 1] = typeNull;
          }
          if (vars.startVol[channel] < 0) {
            if (type == typeFM) vars.startVol[channel] = 0x7F;
            else if (type >= typePSG) vars.startVol[channel] = 0x0F;
          }
          goto NextChannel;
        }
      }
    }
    // set PCM channels to be empty
    if (channel == 5 || (channel == 6 && song.system[0] == DIV_SYSTEM_YM2612_DUALPCM))
      if (vars.chanOn[channel] == typeNull)
        vars.chanOn[channel] = typeEmpty;
  NextChannel:
    continue;
  }

  // check if FM6 is in use
  int channel = 5;
  if (vars.chanOn[channel]) {
    for (int orders = 0; orders < s->ordersLen; orders++) {
      DivPattern* p = s->pat[channel].getPattern(s->orders.ord[channel][orders], false);
      for (int step = vars.lenTable[0][orders]; step <= vars.lenTable[1][orders]; step++) {
        if (p->newData[step][DIV_PAT_INS] >= 0) {
          DivInstrument* ins = song.ins[p->newData[step][DIV_PAT_INS]];
          if (ins->type == DIV_INS_FM) {
            goto Done;
          }
        }
      }
    }
    vars.chanOn[channel] = typePCM;
  }
Done:
  return;
};

// Gets the channel number and outputs the name of the channel
static String smpsChanName(int num, bool AMPS) {
  // To Do: account for FM6, DAC2, and PSG3 modes
  if (num < 5) return "FM" + std::to_string(num + 1);
  if (AMPS) { if (num < 7) return "DAC" + std::to_string(num - 4); }
  else { if (num == 5) return "DAC"; }
  return "PSG" + std::to_string(std::min(num - 5 - AMPS, 3));
}

// write instrument information for 1 operator
static void writeOperator(SafeWriter* w, const int opArray[4], const char* param, int style) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  if (style == verMDMP || style == verAMPS) {
    w->writeText(fmt::sprintf("$%.2X, ", opArray[0]));
    w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
    w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
    w->writeText(fmt::sprintf("$%.2X\n", opArray[3]));
  }
  else {
    w->writeText(fmt::sprintf("$%.2X, ", opArray[3]));
    w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
    w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
    w->writeText(fmt::sprintf("$%.2X\n", opArray[0]));
  }
}

// write instrument information for 2 operators
static void writeOperator(SafeWriter* w, const int opArray[4], const char* param, const int opArray2[4]) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[3]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[0]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray2[3]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray2[1]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray2[2]));
  w->writeText(fmt::sprintf("$%.2X\n", opArray2[0]));
}

// write macro information
static void writeASMMacro(SafeWriter* w, DivInstrumentMacro& m, const char* name, bool& wroteMacroHeader) {
  if ((m.open & 6) == 0 && m.len < 1) return;
  if (!wroteMacroHeader) {
    w->writeText(";\tmacros:\n");
    wroteMacroHeader = true;
  }
  w->writeText(fmt::sprintf(";\t\t%s:", name));
  int len = m.len;
  switch (m.open & 6) {
  case 2:
    len = 16;
    w->writeText(" [ADSR]");
    break;
  case 4:
    len = 16;
    w->writeText(" [LFO]");
    break;
  }
  if (m.mode) {
    w->writeText(fmt::sprintf(" [MODE %d]", m.mode));
  }
  if (m.delay > 0) {
    w->writeText(fmt::sprintf(" [DELAY %d]", m.delay));
  }
  if (m.speed > 1) {
    w->writeText(fmt::sprintf(" [SPEED %d]", m.speed));
  }
  for (int i = 0; i < len; i++) {
    if (i == m.loop) {
      w->writeText(" |");
    }
    if (i == m.rel) {
      w->writeText(" /");
    }
    w->writeText(fmt::sprintf(" %d", m.val[i]));
  }
  w->writeText("\n");
}

static void writeHeader(SafeWriter* w, smpsVars& vars, DivSubSong*& s, DivSMPSOptions& options) {
  // Write header
  w->writeText(fmt::sprintf("%s_Header:", options.label));
  w->writeText(fmt::sprintf("\n\t%s", (*vars.symCommands)[smpsStart]));
  if (options.style == verFlamewing)
    w->writeText(fmt::sprintf(" %d", options.tempo + 1));
  if (options.style != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t%s_Voices", (*vars.symCommands)[smpsVoice], options.label));
  if (options.style == verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", (*vars.symCommands)[smpsTempo], options.div, options.speed));
  {
    // Get the number of FM and PSG channels
    int chansFM = 0, chansPSG = 0, i = 0;
    for (; i < 5; i++) if (vars.chanOn[i] == typeFM || vars.chanOn[i] == typeEmpty) chansFM++;
    i += 1 + vars.dualPCM;
    for (; i < 11; i++) if (vars.chanOn[i] >= typePSG || vars.chanOn[i] == typeEmpty) chansPSG++;
    w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", (*vars.symCommands)[smpsChan], chansFM + (options.style != verAMPS && chansFM != 0), chansPSG));
  }
  if (options.style != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", (*vars.symCommands)[smpsTempo], options.div, options.speed));
  w->writeText(fmt::sprintf("\n;\tGiven Tempo = %.2f BPM\n", options.given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %.2f BPM\n\n", options.approx));

  if (options.style == verAMPS) {
    if (vars.chanOn[5] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s_%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsDAC], options.label, smpsChanName(5, vars.dualPCM), 0x7F - vars.startVol[5]));
    else
      w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsDAC], options.label));
    if (vars.chanOn[6] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s_%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsDAC], options.label, smpsChanName(6, true), 0x7F - vars.startVol[6]));
    else
      w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsDAC], options.label));
  }
  else {
    if (vars.chanOn[5] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s_%s\n", (*vars.symCommands)[smpsDAC], options.label, smpsChanName(5, vars.dualPCM)));
    else if (vars.chanOn[5] == typeEmpty)
      w->writeText(fmt::sprintf("\t%s\t%s_Empty\n", (*vars.symCommands)[smpsDAC], options.label));
  }
  for (int i = 0; i < 5; i++) {
    if (vars.chanOn[i] == typeEmpty) w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsFM], options.label));
    if (vars.chanOn[i] == typeFM) w->writeText(fmt::sprintf("\t%s\t%s_%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsFM], options.label, smpsChanName(i, vars.dualPCM), 0x7F - vars.startVol[i]));
  }
  for (int i = 6 + (vars.dualPCM); i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00, $00, $00\n", (*vars.symCommands)[smpsPSG], options.label));
    if (vars.chanOn[i] >= typePSG) w->writeText(fmt::sprintf("\t%s\t%s_%s,\t$%.2X, $%.2X, $00, $%.2X\n", (*vars.symCommands)[smpsPSG], options.label, smpsChanName(i, vars.dualPCM), options.psgPitch ? 0 : 0xF4, (0x0F - vars.startVol[i]) * (options.style == verAMPS ? 8 : 1), 0));
  }
}

static void writeVoices(SafeWriter* w, smpsVars &vars, DivSong &song, DivSMPSOptions &options) {
  w->writeText(fmt::sprintf("\n%s_Voices:\n", options.label));
  uint8_t fmVoice = 0;
  for (int i = 0; i < song.insLen; i++) {
    DivInstrument* ins = song.ins[i];

    // For FM voices
    if (ins->type == DIV_INS_FM) {
      w->writeText(fmt::sprintf(";\tFM Voice %.2X -> %.2X: %s\n", i, fmVoice, ins->name));
      vars.fmVoices[i] = fmVoice;
      const int opCount = 4;

      // create table of operator values
      int opParams[11][opCount] = {};
      for (int j = 0; j < opCount; j++) {
        const int detuneMap[8] = {
          7, 6, 5, 0, 1, 2, 3, 4
        };
        DivInstrumentFM::Operator& op = ins->fm.op[j];
        opParams[smpsDetune - smpsVoices][j] = detuneMap[op.dt];
        opParams[smpsMult - smpsVoices][j] = op.mult;
        opParams[smpsRtScale - smpsVoices][j] = op.rs;
        opParams[smpsAttRt - smpsVoices][j] = op.ar;
        opParams[smpsAmpMod - smpsVoices][j] = op.am;
        opParams[smpsDecRt1 - smpsVoices][j] = op.dr;
        opParams[smpsDecRt2 - smpsVoices][j] = op.d2r;
        opParams[smpsSusLv - smpsVoices][j] = op.sl;
        opParams[smpsRelRt - smpsVoices][j] = op.rr;
        opParams[smpsTotLv - smpsVoices][j] = op.tl;
        opParams[smpsSSGEG - smpsVoices][j] = op.ssgEnv;
      }
      if (options.style != verSource) {
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", (*vars.symCommands)[smpsAlg], ins->fm.alg));
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", (*vars.symCommands)[smpsFeed], ins->fm.fb));
        writeOperator(w, opParams[smpsDetune - smpsVoices], (*vars.symCommands)[smpsDetune], options.style);
        writeOperator(w, opParams[smpsMult - smpsVoices], (*vars.symCommands)[smpsMult], options.style);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], (*vars.symCommands)[smpsRtScale], options.style);
        writeOperator(w, opParams[smpsAttRt - smpsVoices], (*vars.symCommands)[smpsAttRt], options.style);
        writeOperator(w, opParams[smpsAmpMod - smpsVoices], (*vars.symCommands)[smpsAmpMod], options.style);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], (*vars.symCommands)[smpsDecRt1], options.style);
        if (options.style == verAMPS || options.style == verMDMP) writeOperator(w, opParams[smpsSusLv - smpsVoices], (*vars.symCommands)[smpsSusLv], true);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], (*vars.symCommands)[smpsDecRt2], options.style);
        if (options.style != verAMPS && options.style != verMDMP) writeOperator(w, opParams[smpsSusLv - smpsVoices], (*vars.symCommands)[smpsSusLv], false);
        writeOperator(w, opParams[smpsRelRt - smpsVoices], (*vars.symCommands)[smpsRelRt], options.style);
        if (options.style == verAMPS) writeOperator(w, opParams[smpsSSGEG - smpsVoices], (*vars.symCommands)[smpsSSGEG], true);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], (*vars.symCommands)[smpsTotLv], options.style);

      }
      else {
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X, $%.2X\n", (*vars.symCommands)[smpsAlg], ins->fm.alg, ins->fm.fb));
        writeOperator(w, opParams[smpsDetune - smpsVoices], (*vars.symCommands)[smpsDetune], opParams[smpsMult - smpsVoices]);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], (*vars.symCommands)[smpsRtScale], opParams[smpsAttRt - smpsVoices]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], (*vars.symCommands)[smpsDecRt1], verSource);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], (*vars.symCommands)[smpsDecRt2], verSource);
        writeOperator(w, opParams[smpsSusLv - smpsVoices], (*vars.symCommands)[smpsSusLv], opParams[smpsRelRt - smpsVoices]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], (*vars.symCommands)[smpsTotLv], verSource);
      }
      fmVoice++;
    }

    // For PSG voices
    if (ins->type == DIV_INS_STD) {
      String psgVoice = ins->name;
      w->writeText(fmt::sprintf(";\tPSG Voice %.2X -> %s\n", i, psgVoice));
      vars.psgVoices[i] = psgVoice;
    }
    bool header = false;
    // To Do: apply volume macros for FM
    writeASMMacro(w, ins->std.volMacro, "vol", header);
    // To Do: apply arpeggio macros
    writeASMMacro(w, ins->std.arpMacro, "arp", header);
    // To Do: apply duty cycle macros
    writeASMMacro(w, ins->std.dutyMacro, "duty", header);
    // To Do: apply pitch macros
    writeASMMacro(w, ins->std.pitchMacro, "pitch", header);
    // To Do: apply pan macros
    writeASMMacro(w, ins->std.panLMacro, "panL", header);
    writeASMMacro(w, ins->std.panRMacro, "panR", header);
    writeASMMacro(w, ins->std.phaseResetMacro, "phaseReset", header);
    writeASMMacro(w, ins->std.ex1Macro, "ex1", header);
    writeASMMacro(w, ins->std.ex2Macro, "ex2", header);
    writeASMMacro(w, ins->std.ex3Macro, "ex3", header);
    writeASMMacro(w, ins->std.ex4Macro, "ex4", header);
    writeASMMacro(w, ins->std.ex5Macro, "ex5", header);
    writeASMMacro(w, ins->std.ex6Macro, "ex6", header);
    writeASMMacro(w, ins->std.ex7Macro, "ex7", header);
    writeASMMacro(w, ins->std.ex8Macro, "ex8", header);
    writeASMMacro(w, ins->std.ex9Macro, "ex9", header);
    writeASMMacro(w, ins->std.ex10Macro, "ex10", header);
    writeASMMacro(w, ins->std.algMacro, "alg", header);
    writeASMMacro(w, ins->std.fbMacro, "fb", header);
    writeASMMacro(w, ins->std.fmsMacro, "fms", header);
    writeASMMacro(w, ins->std.amsMacro, "ams", header);

    w->writeText("\n");
  }
}

// command-specific code
static String smpsCommands(const uint8_t effect, const uint8_t value, smpsVars &vars, DivSubSong*& s, DivSMPSOptions &options, smpsTempVars &temp) {
  switch (effect) {
    // arpeggio
    case 0x00:
      return "\n\t; arpeggio";

    // pitch slide up
    case 0x01:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
      vars.vib[2] = 0x04;
      vars.vib[3] = 0x7F;
      goto setVib;
    // pitch slide down
    case 0x02:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
      vars.vib[2] = -0x04;
      vars.vib[3] = -0x80;
      goto setVib;
    // portamento
    case 0x03:
      vars.vib[2] = 0x04;
      vars.vib[3] = 0x7F;
    setVib:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
      vars.vib[0] = 0x00;
      vars.vib[1] = 0x01;
      temp.timers[timeVib] = value * 4;
      return fmt::sprintf("\n\t%s\t$%.2X, $%.2X, $%.2X, $%.2X", (*vars.symCommands)[smpsSetVib68k], vars.vib[0], vars.vib[1], vars.vib[2], vars.vib[3]);
    // vibrato
    case 0x04:
      if ((value & 0x0F) == 0)
        return fmt::sprintf("\n\t%s", (*vars.symCommands)[smpsVibOff]);

      switch (options.vibrato) {
        case 0:
          vars.vib[0] = 0x00;
          break;
        case 1:
          vars.vib[0] = 0x02;
          break;
        default:
          vars.vib[0] = 0x01;
      }
      vars.vib[1] = 0x01;
      // (TickRate/(64*VibratoSpeed))
      vars.vib[3] = round(s->hz * (0x0F - 1.0 * value / 0x10) / (vars.vib[1] * 64 * 2));
      if (vars.chanOn[temp.channel] < typePSG) {
        vars.vib[2] = round(8.0 * vars.vib[1] * (value & 0x0F) / (0x0F - 1.0 * value / 0x10));
      } else {
        vars.vib[2] = round(5.0 * vars.vib[1] * (value & 0x0F) / (0x0F - 1.0 * value / 0x10));
      }


      return fmt::sprintf("\n\t%s\t$%.2X, $%.2X, $%.2X, $%.2X", (*vars.symCommands)[smpsSetVib68k], vars.vib[0], vars.vib[1], vars.vib[2], vars.vib[3]);

    // tremolo
    case 0x07:
      return "\n\t; tremolo";

    // panning
    case 0x08:
      temp.pan = ((value & 0x0F) != 0) | (((value & 0xF0) != 0) * 2);
      if (temp.pan == 0) temp.pan = 3;
      return "";

    // groove pattern
    case 0x09:
      return "\n\t; groove pattern";

    // volume slide
    case 0x0A:
      if (value & 0xF0)
        vars.volRate = (value & 0xF0) * 0x10;
      else
        vars.volRate = (value & 0x0F) * -0x100;
      return "\n\t; volume slide";

    // jump to pattern
    case 0x0B:
      // jump to next pattern
    case 0x0D:
      // stop song
    case 0xFF:
      return "";

    // retrigger
    case 0x0C:
      temp.timers[timeRetrigger] = value;
      return "\n\t; retrigger";

    // noise mode
    case 0x20:
      if (!(value & 0xF0))
        return "\n\t; preset noise frequencies not supported";
      if (value & 0x0F)
        vars.noise = 0xE3;
      else
        vars.noise = 0xE7;
      return fmt::sprintf("\n\t%s\t\t$%.2X", (*vars.symCommands)[smpsNoise], vars.noise);

    // set tick rate (Hz)
    case 0xC0:
      return "\n\t; set tick rate (Hz)";

    // set pitch
    case 0xE5:
      vars.pitch = value - 0x80;
      return "";

    // legato
    case 0xEA:
      if (value)
        temp.legato = true;
      else
        temp.legato = false;
      return "";

    // note cut
    case 0xEC:
      temp.timers[timeCut] = value;
      return fmt::sprintf("\n\t%s\t\t$%.2X", (*vars.symCommands)[smpsGate], value);

      // note delay
    case 0xED:
      temp.timers[timeDelay] = value;
      return "\t; note delay";

      // set tick rate (bpm)
    case 0xF0:
      return "\t; set tick rate (bpm)";

      // fine volume slide up
    case 0xF3:
      vars.volRate = value;
      return "\t; fine volume slide up";

      // fine volume slide down
    case 0xF4:
      vars.volRate = -value;
      return "\t; fine volume slide down";

      // unsupported effects are commented out
    default:
      return "\t; Effect not supported:";
  }
}

// apply timer effects
static void getTimer(DivPattern* p, smpsVars& vars, smpsTempVars& temp, DivSong& song, DivSubSong*& s, DivSMPSOptions &options) {
  for (int furStep = 0; furStep < vars.lenTable[1][temp.order]; temp.ticks += options.stepSz) {
    bool found = false;
    int step = temp.ticks / options.stepSz;
    furStep = temp.ticks / (s->speeds.val[0] * (s->timeBase + 1));
    temp.numEffects = 0;
    if (furStep == temp.lastStep) goto skipNotes;
    temp.lastStep = furStep;
    // check timers
    for (int timer = 0; timer < timeLen; timer++) {
      if ((temp.timers[timer] == 1)) {
        int value = temp.timers[timer];
        switch (timer) {
        case timePitch:

        case timeVib:
          temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s", (*vars.symCommands)[smpsVibOff]);
          temp.numEffects++;

        case timeVol:

        case timeRetrigger:

        case timeDelay:

        default:
          temp.timers[timer] = 0;
          found = true;
        }
      }
      else if (temp.timers[timer] > 1) {
        --temp.timers[timer];
      }
    }

    // check for instrument changes
    if (p->newData[furStep][DIV_PAT_INS] >= 0 && p->newData[furStep][DIV_PAT_INS] != temp.lastIns) {
      if (vars.chanOn[temp.channel] == typeFM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsSetVoice], vars.fmVoices[p->newData[furStep][DIV_PAT_INS]]);
        temp.numEffects++;
        found = true;
      }
      else if (vars.chanOn[temp.channel] > typePCM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t%s", (*vars.symCommands)[smpsVolEnv], vars.psgVoices[p->newData[furStep][DIV_PAT_INS]]);
        temp.numEffects++;
        found = true;
      }
      temp.lastIns = p->newData[furStep][DIV_PAT_INS];
    }
    // check for changes in volume
    if (p->newData[furStep][DIV_PAT_VOL] >= 0 && p->newData[furStep][DIV_PAT_VOL] != temp.lastVol) {
      temp.volChange -= p->newData[furStep][DIV_PAT_VOL] - temp.lastVol;
      temp.lastVol = p->newData[furStep][DIV_PAT_VOL];
      found = true;
    }
    // check effects
    for (int layer = 0; layer < s->pat[temp.channel].effectCols; layer++)
      if (p->newData[furStep][DIV_PAT_FX(layer)] >= 0) {
        String line = smpsCommands(p->newData[furStep][DIV_PAT_FX(layer)], p->newData[furStep][DIV_PAT_FXVAL(layer)], vars, s, options, temp);
        if (line != "") {
          temp.effects[temp.numEffects] = line;
          temp.numEffects++;
          found = true;
        }
      }

    // *checks notes*
    temp.note = p->newData[furStep][DIV_PAT_NOTE];
    if (temp.note != -1) {
      temp.macroTimer = 0;
      temp.noteOn = true;
      found = true;
    }

  skipNotes:
    // check macros
    if (temp.lastIns < song.insLen && step > temp.steps) {
      DivInstrument* ins = song.ins[temp.lastIns];
      for (int macType = 0; macType < macLen; macType++) {
        const DivInstrumentMacro m[macLen] = {
          ins->std.volMacro,
          ins->std.arpMacro,
          ins->std.pitchMacro,
          ins->std.panLMacro
        };
        if ((m[macType].open & 6) != 0 || m[macType].len > temp.macroTimer) {
          int value = m[macType].val[temp.macroTimer];
          if (vars.chanOn[temp.channel] == typeFM) value -= 0x7F;
          if (vars.chanOn[temp.channel] >= typePSG) value -= 0x0F;
          if (value != temp.macroVals[macType]) {
            if (macType == macVol) {
              if (vars.chanOn[temp.channel] != typeFM) continue;
              temp.volChange -= value - temp.macroVals[macType];
            }
            if (macType == macPanL) {
              temp.pan = temp.pan & (value - 0x81);
            }
            temp.macroVals[macType] = value;
            found = true;
          }
        }
      }
    }

    temp.macroTimer++;
    // leave if something is found
    if (found || (step - temp.steps + options.stepSz > 0x7F)) {
      if (!found) temp.hold = true;
      temp.noteTime = step - temp.steps;
      temp.steps = step;
      temp.ticks++;
      return;
    }
  }
  temp.noteTime = vars.lenTable[1][temp.order] * temp.stepConv - temp.steps;
};

// separate notes
static void separateNote(SafeWriter* w, smpsTempVars& temp) {
  if (temp.lineCnt != 0)
    w->writeText(", ");
  else
    w->writeText(fmt::sprintf("\n\tdc.b "));
  temp.lineCnt = (temp.lineCnt + 1) % 16;
}

// get the note to write
String DivEngine::getNote(SafeWriter* w, smpsVars& vars, smpsTempVars& temp) {
  // write note
  temp.prevNote = temp.note;
  temp.lastOffset = temp.offset;
  if (temp.note != DIV_NOTE_OFF) {
    short note = (unsigned short)(temp.note) % 12;
    short octave = (unsigned char)(temp.note - 60) / 12;
    short octChange = 0;

    if (vars.chanOn[temp.channel] == typeFM) {

      // convert note to frequency and back
      unsigned short noteFreqs[] {
        644, // C
        682, // C#
        723, // D
        765, // D#
        811, // E
        860, // F
        910, // F#
        965, // G
        1022, // G#
        1083, // A
        1146, // A#
        1216, // B
        1288  // C+
      };
      unsigned int baseFreq = calcBaseFreq(1, 1, calcArp((unsigned short)(temp.note) % 12, 0, 0), false);
      unsigned int fNum = calcFreq(baseFreq, vars.pitch, temp.arpOff, false, false, 2, vars.pitch2, COLOR_NTSC * 15.0 / 7.0, 9440540.0, 11);

      //w->writeText(fmt::sprintf("%d %d ", baseFreq, fNum));

      if (noteFreqs[0] > fNum) {
        while (noteFreqs[0] > fNum) {
          fNum *= 2;
          octChange--;
        }
      }
      else if (noteFreqs[12] <= fNum) {
        while (noteFreqs[12] <= fNum) {
          fNum /= 2;
          octChange++;
        }
      }
      
      for (int i = 1; i < 13; i++) {
        if (noteFreqs[i] >= fNum) {
          if ((noteFreqs[i] - fNum) > (fNum - noteFreqs[i - 1])) {
            note = i - 1;
            temp.offset = fNum - noteFreqs[i - 1];
            break;
          }
          else {
            note = i;
            temp.offset = fNum - noteFreqs[i];
            break;
          }
        }
        if (i == 12) w->writeText(fmt::sprintf("oops"));
      }

      if (note == 12) {
        note = 0;
        octChange++;
      }

      octave += octChange;
    }
    else if (vars.chanOn[temp.channel] >= typePSG) {
      // convert note to frequency and back
      unsigned short psgFreqs[]{
        /*
        8135, // A0
        7679, // A#0
        7248, // B0
        */
        6841, // C1
        6457, // C#1
        6095, // D1
        5753, // D#1
        5430, // E1
        5125, // F1
        4837, // F#1
        4566, // G1
        4310, // G#1
        4068, // A1
        3839, // A#1
        3624, // B1
        3420, // C2
        3229, // C#2
        3047, // D2
        2876, // D#2
        2715, // E2
        2562, // F2
        2419, // F#2
        2283, // G2
        2155, // G#2
        2034, // A2
        1920, // A#2
        1812, // B2
        1710, // C3
        1614, // C#3
        1524, // D3
        1438, // D#3
        1357, // E3
        1281, // F3
        1209, // F#3
        1141, // G3
        1077, // G#3
        1017, // A3
        960, // A#3
        906, // B3
        855, // C4
        807, // C#4
        762, // D4
        719, // D#4
        679, // E4
        641, // F4
        605, // F#4
        571, // G4
        539, // G#4
        508, // A4
        480, // A#4
        453, // B4
        428, // C5
        404, // C#5
        381, // D5
        360, // D#5
        339, // E5
        320, // F5
        302, // F#5
        285, // G5
        269, // G#5
        254, // A5
        240, // A#5
        226, // B5
        214 // C6
      };

      unsigned int baseFreq = round(calcBaseFreq(COLOR_NTSC, 64.0, calcArp(temp.note - 8 * 12, 0, 0), true));
      unsigned int fNum = calcFreq(baseFreq, vars.pitch, temp.arpOff, false, true, 0, vars.pitch2, COLOR_NTSC, 64.0);

      //w->writeText(fmt::sprintf("%d %d ", baseFreq, fNum));

      if (fNum > psgFreqs[0]) {
        temp.offset = 0;
        return fmt::sprintf("%s", "nC0");
      }
      short psgFreqsLen = sizeof(psgFreqs) / sizeof(psgFreqs[0]);
      if (fNum < psgFreqs[psgFreqsLen - 1]) {
        temp.offset = 0;
        return fmt::sprintf("%s", (*vars.notesSet)[13]);
      }

      for (int i = 1; i < psgFreqsLen; i++) {
        if (psgFreqs[i] < fNum) {
          if ((psgFreqs[i - 1] - fNum) > (fNum - psgFreqs[i])) {
            note = i;
            temp.offset = fNum - psgFreqs[i];
            break;
          }
          else {
            note = i - 1;
            temp.offset = fNum - psgFreqs[i - 1];
            break;
          }
        }
      }
      octave = note / 12 + 1;
      note = note % 12;
    }
    if (vars.chanOn[temp.channel] == typePCM) {
      octave = 0;
      int stupid = note + octave * 12 - song.sampleLen;
      if (stupid >= 0) goto normalNote;
      DivSample* sample = song.sample[note + octave * 12];
      if (sample->name[0] != 'd' || sample->name[1] < 'A' || sample->name[1] > 'Z')
        goto normalNote;
      String sampleOut = "";
      for (char letter : sample->name) {
        if (letter == ' ') break;
        sampleOut = sampleOut + letter;
      }
      return sampleOut;
    }
  normalNote:
    return fmt::sprintf("%s%d", (*vars.notesSet)[note], octave);
  }
  else
    return fmt::sprintf("%s", (*vars.notesSet)[12]);
}

// write notes and effects
void DivEngine::writeNotes(SafeWriter* w, smpsVars& vars, smpsTempVars& temp, DivSMPSOptions options) {
  // write timer
  if (temp.noteTime != 0) {
    if (temp.prevTime != temp.noteTime || temp.wroteNote == false) {
      if (temp.startTick) {
        separateNote(w, temp);
        w->writeText((*vars.symCommands)[smpsHold]);
      }
      separateNote(w, temp);
      w->writeText(fmt::sprintf("$%.2X", temp.noteTime));
      temp.prevTime = temp.noteTime;
      temp.wroteLen = true;
    }
    else
      temp.wroteLen = false;
  }

  // write effects
  for (int i = 0; i < temp.numEffects; i++) {
    w->writeText(fmt::sprintf("%s", temp.effects[i]));
    temp.lineCnt = 0;
    if (!temp.noteOn)
      temp.hold = true;
  }
  // volume changes
  if (temp.volChange != 0) {
    if (vars.chanOn[temp.channel] == typeFM || (options.style == verAMPS && vars.chanOn[temp.channel] == typePCM)) {
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolFM], uint8_t(temp.volChange)));
    }
    else if (vars.chanOn[temp.channel] > typePCM) {
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolPSG], uint8_t(temp.volChange * (options.style == verAMPS ? 8 : 1))));
    }
    temp.volChange = 0;
    temp.lineCnt = 0;
    if (!temp.noteOn) temp.hold = true;
  }

  // panning changes
  if (temp.pan != temp.prevPan && vars.chanOn[temp.channel] <= typePCM) {
    switch (temp.pan) {
    case 0:
      w->writeText(fmt::sprintf("\n\t%s\t\t%s, $00", (*vars.symCommands)[smpsPan], (*vars.symCommands)[smpsPanNone]));
      break;
    case 1:
      w->writeText(fmt::sprintf("\n\t%s\t\t%s, $00", (*vars.symCommands)[smpsPan], (*vars.symCommands)[smpsPanRight]));
      break;
    case 2:
      w->writeText(fmt::sprintf("\n\t%s\t\t%s, $00", (*vars.symCommands)[smpsPan], (*vars.symCommands)[smpsPanLeft]));
      break;
    default:
      w->writeText(fmt::sprintf("\n\t%s\t\t%s, $%.2X", (*vars.symCommands)[smpsPan], (*vars.symCommands)[smpsPanCenter], temp.pan));
    }
    temp.prevPan = temp.pan;
    temp.lineCnt = 0;
    if (!temp.noteOn) temp.hold = true;
  }

  // hold note
  if ((temp.hold && !temp.noteOn)) {
    separateNote(w, temp);
    w->writeText((*vars.symCommands)[smpsHold]);
    if (!temp.legato)
      temp.hold = false;
  }

  // if on PSG channel 3 or 4, check to swap between channels

  // write next note
  if (temp.noteOn && (temp.note != temp.prevNote || temp.wroteLen == false)) {
    String noteText = getNote(w, vars, temp);
    if (temp.offset != temp.lastOffset) {
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsSetDetune], uint8_t(temp.offset)));
      temp.lineCnt = 0;
    }
    separateNote(w, temp);
    w->writeText(noteText);
    temp.prevNote = temp.note;
    temp.wroteNote = true;
  }
  else
    temp.wroteNote = false;

  temp.noteOn = false;
  temp.startTick = false;
}

SafeWriter* DivEngine::saveASM(DivSMPSOptions options) {

  // Get symbols for the corresponding version
  smpsVars vars;

  String error = smpsInit(song, options, vars);
  if (error != "") {
    lastError = error;
    return NULL;
  }

  saveLock.lock();

  SafeWriter* w = new SafeWriter;
  w->init();

  switch (options.style) {
    case verFlamewing:
      vars.symCommands = &smpsSymFlamewing;
      break;
    case verMDMP:
      vars.symCommands = &smpsSymMDMP;
      break;
    case verAMPS:
      vars.symCommands = &smpsSymAMPS;
      break;
    case verSource:
      vars.symCommands = &smpsSymSource;
  }

  int i = 0;
  // To Do: if possible, export selected subsong rather than first one
  DivSubSong* s = song.subsong[i];

  smpsFindLoop(s, vars);

  vars.chans = chans;
  smpsChanNum(song, s, vars);

  writeHeader(w, vars, s, options);
  writeVoices(w, vars, song, options);

  w->writeText(fmt::sprintf("\t; Loop Pattern : % .2X\n", vars.loopPat));
  w->writeText(fmt::sprintf("\t; End Pattern : % .2X\n", vars.endPat));
  w->writeText(fmt::sprintf("\t; End Place : % .2X\n\n", vars.endPlace));

  // write notes
  switch (options.style) {
  case verMDMP:
    vars.notesSet = &notesMDMP;
    break;
  case verAMPS:
    vars.notesSet = &notesAMPS;
    break;
  case verSource:
    vars.notesSet = &notesSource;
    break;
  default:
    vars.notesSet = &notesFlamewing;
  }

  // create placeholder channel
  for (int i : vars.chanOn) {
    if (i == typeEmpty) {
      w->writeText(fmt::sprintf("\n%s_Empty:\n\t%s\n", options.label, (*vars.symCommands)[smpsStop]));
      goto skipEmpty;
    }
  }
  if (options.style == verAMPS && !vars.dualPCM)
    w->writeText(fmt::sprintf("\n%s_Empty:\n\t%s\n", options.label, (*vars.symCommands)[smpsStop]));
skipEmpty:

  for (int l = 0; l < chans; l++) {
    if (vars.chanOn[l] <= typeEmpty) continue;
    if (vars.chanOn[l] == typeNoise && vars.chanOn[l - 1] == typePSG) break;
    // Write order list
    w->writeText(fmt::sprintf("\n%s_%s:", options.label, smpsChanName(l, vars.dualPCM)));

    if (vars.chanOn[l] == typeNoise)
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsNoise], 0xE7));

    // get the volume at the beginning of each pattern
    uint8_t startVols[0x101] = {};
    startVols[0] = vars.startVol[l];
    for (int i = 1; i < 0x101; i++) {
      if (vars.chanOn[l] < typePSG)
        startVols[i] = 0x7F;
      else
        startVols[i] = 0x0F;
    }
    for (int j = 0; j < s->ordersLen; j++) {
      DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
      startVols[j + 1] = startVols[j];
      for (int step = vars.lenTable[0][j]; step <= vars.lenTable[1][j]; step++) {
        if (p->newData[step][DIV_PAT_VOL] >= 0) {
          startVols[j + 1] = p->newData[step][DIV_PAT_VOL];
        }
      }
    }

    for (int j = 0; j < s->ordersLen; j++) {
      if (j == vars.loopPat)
        w->writeText(fmt::sprintf("\n\n%s_%s_Jump:", options.label, smpsChanName(l, vars.dualPCM)));
      w->writeText(fmt::sprintf("\n\t%s %s_%s_%.2X_%d_%d", (*vars.symCommands)[smpsCall], options.label, smpsChanName(l, vars.dualPCM), s->orders.ord[l][j], vars.lenTable[0][j], vars.lenTable[1][j]));
      if (startVols[j + 1] != startVols[j])
        w->writeText(fmt::sprintf("_%.2X",startVols[j]));
    }

    // Before jumping, reset volume
    uint8_t diffVol = (startVols[vars.endPat + 1] - startVols[vars.loopPat % 257]);
    if (diffVol != 0)
      if (vars.chanOn[l] == typeFM || (options.style == verAMPS && vars.chanOn[l] == typePCM))
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolFM], diffVol));
      else if (vars.chanOn[l] >= typePSG)
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolPSG], diffVol * (options.style == verAMPS ? 8 : 1)));
    if (vars.loopPat >= 0)
      w->writeText(fmt::sprintf("\n\t%s %s_%s_Jump\n", (*vars.symCommands)[smpsJump], options.label, smpsChanName(l, vars.dualPCM)));
    else
      w->writeText(fmt::sprintf("\n\t%s\n", (*vars.symCommands)[smpsStop]));

    // Create array to keep track of written patterns
    uint8_t patternsWritten[4][0x100] = {};
    int numUniquePat = 0;

    vars.pitch = vars.pitch2 = 0;

    for (int j = 0; j < s->ordersLen; j++) {
      // Don't write duplicate patterns
      int orderNum = s->orders.ord[l][j];
      int patStart = vars.lenTable[0][j];
      int patLen = vars.lenTable[1][j];
      uint8_t changeVol = startVols[j + 1] - startVols[j], lastIns = -1;
      smpsTempVars temp;
      bool cont = false;
      for (int i = 0; i < numUniquePat; i++)
        if (patternsWritten[3][i] == orderNum)
          if (patternsWritten[0][i] == patStart && patternsWritten[1][i] == patLen && patternsWritten[2][i] == changeVol)
            cont = true;
      if (cont) continue;
      patternsWritten[0][numUniquePat] = patStart;
      patternsWritten[1][numUniquePat] = patLen;
      patternsWritten[2][numUniquePat] = changeVol;
      patternsWritten[3][numUniquePat] = orderNum;
      numUniquePat++;

      int cntWait = 0;
      int lastNote = 0, lastWait = 0;
      int lineCnt = 0;
      int furStep = s->speeds.val[0] * (s->timeBase + 1);
      temp.stepConv = 1.0 * (s->speeds.val[0] * (s->timeBase + 1)) / options.stepSz;

      DivPattern* p = s->pat[l].getPattern(orderNum, false);

      w->writeText(fmt::sprintf("\n%s_%s_%.2X_%d_%d", options.label, smpsChanName(l, vars.dualPCM), orderNum, patStart, patLen));
      if (startVols[j + 1] != startVols[j])
        w->writeText(fmt::sprintf("_%.2X", startVols[j]));
      w->writeText(":");

      temp.order = j;
      temp.channel = l;
      temp.steps = patStart * temp.stepConv;
      temp.ticks = temp.steps * furStep;
      temp.lastVol = startVols[j];

      while (temp.ticks <= patLen * furStep) {
        getTimer(p, vars, temp, song, s, options);
        writeNotes(w, vars, temp, options);
      }
      w->writeText(fmt::sprintf("\n\t%s\n", (*vars.symCommands)[smpsRet]));
    }
  }
  saveLock.unlock();
  return w;
}
