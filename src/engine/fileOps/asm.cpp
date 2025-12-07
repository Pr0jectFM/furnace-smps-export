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
static String smpsInit(const DivSong& song, const DivSMPSOptions& options, smpsVars& vars) {
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
  vars.endPat = s->ordersLen - 1;
  vars.endPlace = s->patLen;
  for (int j = 0; j < s->ordersLen; j++) {
    for (int k = 0; k < s->patLen; k++) {
    nextPattern:
      for (int l = 0; l < 10; l++) {
        const DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
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
            vars.loop = false;
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
void DivEngine::smpsChanNum(DivSubSong*& s, smpsVars& vars) {
  // check which channels have notes
  for (int channel = 0; channel < vars.chans; channel++) {
    int type;
    vars.chanOn[channel] = typeNull;
    // check channel type
    if (channel < 5) type = typeFM;
    else if (channel == 9 + (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM)) type = typeNoise;
    else if (channel > 5 + (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM)) type = typePSG;
    else {
      type = typePCM;
      vars.chanOn[channel] = typeEmpty;
    }
    if (isMuted[channel]) continue;
    // look for notes
    for (int orders = 0; orders <= vars.endPat; orders++) {
      const DivPattern* p = s->pat[channel].getPattern(s->orders.ord[channel][orders], false);
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
          break;
        }
      }
    }
  }

  // check if FM6 is in use
  const int channel = 5;
  if (vars.chanOn[channel] > typeEmpty) {
    for (int orders = 0; orders <= vars.endPat; orders++) {
      const DivPattern* p = s->pat[channel].getPattern(s->orders.ord[channel][orders], false);
      for (int step = vars.lenTable[0][orders]; step <= vars.lenTable[1][orders]; step++) {
        if (p->newData[step][DIV_PAT_INS] >= 0) {
          const DivInstrument* ins = song.ins[p->newData[step][DIV_PAT_INS]];
          if (ins->type == DIV_INS_FM) {
            vars.chanOn[channel] = typeFM;
            return;
          }
        }
      }
    }
  }
};

// Gets the channel number and outputs the name of the channel
static String smpsChanName(const DivSMPSOptions& options, int num, bool dualPCM) {
  // To Do: account for FM6, DAC2, and PSG3 modes
  const String label = options.label;
  if (options.style != verSource) {
    if (num < 5) return label + "_FM" + std::to_string(num + 1);
    if (dualPCM) {
      if (num < 7) return label + "_DAC" + std::to_string(num - 4);
    }
    else {
      if (num == 5) {
        //if (vars.chanOn[num] != typeFM)
            return label + "_DAC";
        //else
            // return label + "_FM6";
      }
    }
    return label + "_PSG" + std::to_string(std::min(num - 5 - dualPCM, 3));
  }
  if (num < 5) return "TAB" + label + std::to_string((num >= 3) ? num + 1 : num);
  if (num == 5) return "TAB" + label + "D";
  return fmt::sprintf("TAB%s%X", label, std::min((num - 6) * 2 + 8, 0xC));
}

// write instrument information for 1 operator
static void writeOperator(SafeWriter* w, const int opArray[4], const char* param, int style) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  if (style == verFlamewing)
    w->writeText(fmt::sprintf("$%.2X, $%.2X, $%.2X, $%.2X\n", opArray[3], opArray[1], opArray[2], opArray[0]));
  else if (style == verMDMP || style == verAMPS)
    w->writeText(fmt::sprintf("$%.2X, $%.2X, $%.2X, $%.2X\n", opArray[0], opArray[1], opArray[2], opArray[3]));
  else
    w->writeText(fmt::sprintf("%d,%d,%d,%d\n", opArray[0], opArray[2], opArray[1], opArray[3]));
}

// write instrument information for 2 operators
static void writeOperator(SafeWriter* w, const int opArray[4], const char* param, const int opArray2[4]) {
  w->writeText(fmt::sprintf("\t%s\t%d,%d,%d,%d,%d,%d,%d,%d\n", param, opArray[0], opArray2[0], opArray[2], opArray2[2], opArray[1], opArray2[1], opArray[3], opArray2[3]));
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

// write header for non-Source styles
static void writeHeader(SafeWriter* w, smpsVars& vars, DivSubSong*& s, const DivSMPSOptions& options) {
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
    for (; i < 6; i++) if (vars.chanOn[i] == typeFM || vars.chanOn[i] == typeEmpty || (vars.chanOn[i] == typePCM && options.style != verAMPS))
      chansFM++;
    if (vars.chanOn[5] == typeEmpty && chansFM == 1) {
      vars.chanOn[5] = typeNull;
      chansFM = 0;
    }
    else if (vars.chanOn[5] == typeFM) {
      chansFM++;
    }
    i += vars.dualPCM;
    for (; i < 11; i++) if (vars.chanOn[i] >= typePSG || vars.chanOn[i] == typeEmpty) chansPSG++;
    w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", (*vars.symCommands)[smpsChan], chansFM, chansPSG));
  }
  if (options.style != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", (*vars.symCommands)[smpsTempo], options.div, options.speed));
  w->writeText(fmt::sprintf("\n;\tGiven Tempo = %.2f BPM\n", options.given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %.2f BPM\n\n", options.approx));

  if (options.style == verAMPS) {
    if (vars.chanOn[5] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsDAC], smpsChanName(options, 5, vars.dualPCM), 0x7F - vars.startVol[5]));
    else
      w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsDAC], options.label));
    if (vars.chanOn[6] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsDAC], smpsChanName(options, 6, true), 0x7F - vars.startVol[6]));
    else
      w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsDAC], options.label));
  }
  else {
    if (vars.chanOn[5] == typePCM)
      w->writeText(fmt::sprintf("\t%s\t%s\n", (*vars.symCommands)[smpsDAC], smpsChanName(options, 5, vars.dualPCM)));
    else if (vars.chanOn[5] == typeEmpty || vars.chanOn[5] == typeFM)
      w->writeText(fmt::sprintf("\t%s\t%s_Empty\n", (*vars.symCommands)[smpsDAC], options.label));
  }
  for (int i = 0; i < 6; i++) {
    if (vars.chanOn[i] == typeEmpty && i != 5) w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00\n", (*vars.symCommands)[smpsFM], options.label));
    if (vars.chanOn[i] == typeFM) w->writeText(fmt::sprintf("\t%s\t%s,\t$00, $%.2X\n", (*vars.symCommands)[smpsFM], smpsChanName(options, i, vars.dualPCM), 0x7F - vars.startVol[i]));
  }
  for (int i = 6 + (vars.dualPCM); i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) w->writeText(fmt::sprintf("\t%s\t%s_Empty,\t$00, $00, $00, $00\n", (*vars.symCommands)[smpsPSG], options.label));
    if (vars.chanOn[i] >= typePSG) w->writeText(fmt::sprintf("\t%s\t%s,\t$%.2X, $%.2X, $00, $%.2X\n", (*vars.symCommands)[smpsPSG], smpsChanName(options, i, vars.dualPCM), uint8_t(options.psgPitch), (0x0F - vars.startVol[i]) * (options.style == verAMPS ? 8 : 1), 0));
  }
}

// write header for Source style
static void writeHeaderSource(SafeWriter* w, smpsVars& vars, DivSubSong*& s, const DivSMPSOptions& options) {
  w->writeText("\teven\n");
  // constants
  {
    // Get the number of FM and PSG channels
    int chansFM = 1, chansPSG = 0, i = 0;
    for (; i < 6; i++) if (vars.chanOn[i] == typeFM || vars.chanOn[i] == typeEmpty || (vars.chanOn[i] == typePCM && options.style != verAMPS))
      chansFM++;
    if (vars.chanOn[5] == typeEmpty && chansFM == 1) {
      vars.chanOn[5] = typeNull;
      chansFM = 0;
    }
    else if (vars.chanOn[5] == typeFM) {
      chansFM++;
    }
    i += vars.dualPCM;
    for (; i < 11; i++) if (vars.chanOn[i] >= typePSG || vars.chanOn[i] == typeEmpty) chansPSG++;
    w->writeText(fmt::sprintf("FM%s\tEQU\t\t%d\t\t\t\t; FM Channel Total\n", options.label, chansFM));
    w->writeText(fmt::sprintf("PSG%s\tEQU\t\t%d\t\t\t\t; PSG Channel Total\n", options.label, chansPSG));
  }
  w->writeText(fmt::sprintf("TP%s\tEQU\t\t%d\t\t\t\t; Tempo\n", options.label, options.div));
  w->writeText(fmt::sprintf("DL%s\tEQU\t\t%d\t\t\t\t; Speed\n", options.label, options.speed));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %.2f BPM\n", options.given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %.2f BPM\n\n", options.approx));
  // pitch constants
  uint8_t fmCnt = 0, psgCnt = 8;
  for (int i = 0; i < 6; i++) {
    if (fmCnt == 3) fmCnt++;
    if (vars.chanOn[i] == typeEmpty && i != 5) { w->writeText(fmt::sprintf("FB%s%X\tEQU\t\t%d\t\t\t\t; FM %Xch\n", options.label, fmCnt, 0, fmCnt)); fmCnt++; }
    if (vars.chanOn[i] == typeFM) { w->writeText(fmt::sprintf("FB%s%X\tEQU\t\t%d\t\t\t\t; FM %Xch\n", options.label, fmCnt, 0, fmCnt)); fmCnt++; }
  }
  for (int i = 6; i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) { w->writeText(fmt::sprintf("PB%s%X\tEQU\t\t%d\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, 0, psgCnt)); psgCnt += 2; }
    if (vars.chanOn[i] >= typePSG) { w->writeText(fmt::sprintf("PB%s%X\tEQU\t\t%d\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, options.psgPitch, psgCnt)); psgCnt += 2; }
  }
  // volume constants
  fmCnt = 0, psgCnt = 8;
  for (int i = 0; i < 6; i++) {
    if (fmCnt == 3) fmCnt++;
    if (vars.chanOn[i] == typeEmpty && i != 5) { w->writeText(fmt::sprintf("FA%s%X\tEQU\t\t%.2XH\t\t\t\t; FM %Xch\n", options.label, fmCnt, 0, fmCnt)); fmCnt++; }
    if (vars.chanOn[i] == typeFM) { w->writeText(fmt::sprintf("FA%s%X\tEQU\t\t%.2XH\t\t\t\t; FM %Xch\n", options.label, fmCnt, 0x7F - vars.startVol[i], fmCnt)); fmCnt++; }
  }
  for (int i = 6; i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) { w->writeText(fmt::sprintf("PA%s%X\tEQU\t\t%.2XH\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, 0, psgCnt)); psgCnt += 2; }
    if (vars.chanOn[i] >= typePSG) { w->writeText(fmt::sprintf("PA%s%X\tEQU\t\t%.2XH\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, 0x0F - vars.startVol[i], psgCnt)); psgCnt += 2; }
  }
  // envelope constants
  psgCnt = 8;
  for (int i = 6; i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) { w->writeText(fmt::sprintf("PE%s%X\tEQU\t\t%d\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, 0, psgCnt)); psgCnt += 2; }
    if (vars.chanOn[i] >= typePSG) { w->writeText(fmt::sprintf("PE%s%X\tEQU\t\t%d\t\t\t\t; PSG %X0ch\n", options.label, psgCnt, 0, psgCnt)); psgCnt += 2; }
  }
  // header
  w->writeText(fmt::sprintf("\nS%s:\n",options.label));
  w->writeText(fmt::sprintf("\t\tTDW\t\tTIMB%s,S%s\t\t\t\t; Voice Top Address\n", options.label, options.label));
  w->writeText(fmt::sprintf("\t\tDC.B\tFM%s,PSG%s,TP%s,DL%s\t\t\t\t; FM Total,PSG Total,Tempo,Delay\n\n", options.label, options.label, options.label, options.label));

  if (vars.chanOn[5] == typePCM)
    w->writeText(fmt::sprintf("\t\tTDW\t\t%s,S%s\t\t\t\t; PCM Drum Table Pointer\n\t\tDC.B\t0,0\t\t\t\t\t\t; Bias,Volm (Dummy)\n", smpsChanName(options, 5, false), options.label));
  else if (vars.chanOn[5] == typeEmpty || vars.chanOn[5] == typeFM)
    w->writeText(fmt::sprintf("\t\tTDW\t\tTAB%s_Empty,S%s\t\t\t\t; PCM Drum Table Pointer\n\t\tDC.B\t0,0\t\t\t\t\t\t; Bias,Volm (Dummy)\n", options.label, options.label));
  fmCnt = 0, psgCnt = 8;
  for (int i = 0; i < 6; i++) {
    if (fmCnt == 3) fmCnt++;
    if (vars.chanOn[i] == typeEmpty && i != 5) { w->writeText(fmt::sprintf("\t\tTDW\t\tTAB%s_Empty,S%s\t\t\t\t; FM %Xch\n\t\tDC.B\tFB%s%X,FA%s%X\t\t\t\t\t\t; Bias,Volm\n", options.label, options.label, fmCnt, options.label, fmCnt, options.label, fmCnt)); fmCnt++; }
    if (vars.chanOn[i] == typeFM) { w->writeText(fmt::sprintf("\t\tTDW\t\t%s,S%s\t\t\t\t; FM %Xch\n\t\tDC.B\tFB%s%X,FA%s%X\t\t\t\t\t\t; Bias,Volm\n", smpsChanName(options, i, false), options.label, fmCnt, options.label, fmCnt, options.label, fmCnt)); fmCnt++; }
  }
  for (int i = 6; i < 11; i++) {
    if (vars.chanOn[i] == typeEmpty) { w->writeText(fmt::sprintf("\t\tTDW\t\tTAB%s_Empty,S%s\t\t\t\t; PSG %X0ch\n\t\tDC.B\tPB%s%X,PA%s%X,0,PE%s%X\t\t\t\t; Bias,Volm,Dummy,Enve\n", options.label, options.label, psgCnt, options.label, psgCnt, options.label, psgCnt, options.label, psgCnt)); psgCnt += 2; }
    if (vars.chanOn[i] >= typePSG) { w->writeText(fmt::sprintf("\t\tTDW\t\t%s,S%s\t\t\t\t; PSG %X0ch\n\t\tDC.B\tPB%s%X,PA%s%X,0,PE%s%X\t\t\t\t; Bias,Volm,Dummy,Enve\n", smpsChanName(options, i, false), options.label, psgCnt, options.label, psgCnt, options.label, psgCnt, options.label, psgCnt)); psgCnt += 2; }
  }

}

// write instrument table
static void writeVoices(SafeWriter* w, smpsVars &vars, const DivSong &song, const DivSMPSOptions &options) {
  if (options.style == verSource)
    w->writeText(fmt::sprintf("\nTIMB%s\tEQU\t\t*\n", options.label));
  else
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
        w->writeText(fmt::sprintf("\t%s\t\t%d,%d\n", (*vars.symCommands)[smpsAlg], ins->fm.alg, ins->fm.fb));
        writeOperator(w, opParams[smpsMult - smpsVoices], (*vars.symCommands)[smpsDetune], opParams[smpsDetune - smpsVoices]);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], (*vars.symCommands)[smpsRtScale], opParams[smpsAttRt - smpsVoices]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], (*vars.symCommands)[smpsDecRt1], verSource);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], (*vars.symCommands)[smpsDecRt2], verSource);
        writeOperator(w, opParams[smpsRelRt - smpsVoices], (*vars.symCommands)[smpsSusLv], opParams[smpsSusLv - smpsVoices]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], (*vars.symCommands)[smpsTotLv], verSource);
      }
      fmVoice++;
    }

    // For PSG voices
    if (ins->type == DIV_INS_STD) {
      const String envName = ins->name;
      int envelope = 0, start = 0;
      // search for the first valid number in the string and then convert that to decimal
      for (char i : envName) {
        if ((i >= '0' && i <= '9') || (i >= 'A' && i <= 'F') || (i >= 'a' && i <= 'f')) {
          envelope = std::stoi(envName.substr(start), nullptr, 16);
          break;
        }
        start++;
      };
      w->writeText(fmt::sprintf(";\tPSG Voice %.2X -> %s%.2X\n", i, options.psgPrefix, envelope));
      vars.psgVoices[i] = envelope;
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
static String smpsCommands(const uint8_t effect, const uint8_t value, smpsVars &vars, DivSubSong*& s, const DivSMPSOptions &options, smpsTempVars &temp) {
  switch (effect) {
    // arpeggio
    case 0x00:
      return "\t; arpeggio";

    // pitch slide up
    case 0x01:
      temp.pitchRate = value;
      temp.pitchTarget = 0;
      temp.vib[2] = 0x04;
      temp.vib[3] = 0x7F;
      goto setVib;
    // pitch slide down
    case 0x02:
      temp.pitchRate = value;
      temp.pitchTarget = 0;
      temp.vib[2] = -0x04;
      temp.vib[3] = -0x80;
      goto setVib;
    // portamento
    case 0x03:
      temp.vib[2] = 0x04;
      temp.vib[3] = 0x7F;
    setVib:
      temp.pitchRate = value;
      temp.pitchTarget = 0;
      temp.vib[0] = 0x00;
      temp.vib[1] = 0x01;
      temp.timers[timeVib] = value * 4;
      if (options.style != verSource)
        return fmt::sprintf("%s\t$%.2X, $%.2X, $%.2X, $%.2X", (*vars.symCommands)[smpsSetVib68k], temp.vib[0], temp.vib[1], temp.vib[2], temp.vib[3]);
      else
        return fmt::sprintf("%s,%d,%d,%d,%d", (*vars.symCommands)[smpsSetVib68k], temp.vib[0], temp.vib[1], temp.vib[2], temp.vib[3]);
    // vibrato
    case 0x04:
      if ((value & 0x0F) == 0)
        return fmt::sprintf("%s", (*vars.symCommands)[smpsVibOff]);

      switch (options.vibrato) {
        case 0:
          temp.vib[0] = 0x00;
          break;
        case 1:
          temp.vib[0] = 0x02;
          break;
        default:
          temp.vib[0] = 0x01;
      }
      temp.vib[1] = 0x01;
      // (TickRate/(64*VibratoSpeed))
      temp.vib[3] = round(s->hz * (0x0F - 1.0 * value / 0x10) / (temp.vib[1] * 64 * 2));
      if (vars.chanOn[temp.channel] < typePSG) {
        temp.vib[2] = round(8.0 * temp.vib[1] * (value & 0x0F) / (0x0F - 1.0 * value / 0x10));
      } else {
        temp.vib[2] = round(5.0 * temp.vib[1] * (value & 0x0F) / (0x0F - 1.0 * value / 0x10));
      }


      if (options.style != verSource)
        return fmt::sprintf("%s\t$%.2X, $%.2X, $%.2X, $%.2X", (*vars.symCommands)[smpsSetVib68k], temp.vib[0], temp.vib[1], temp.vib[2], temp.vib[3]);
      else
        return fmt::sprintf("%s,%d,%d,%d,%d", (*vars.symCommands)[smpsSetVib68k], temp.vib[0], temp.vib[1], temp.vib[2], temp.vib[3]);

    // tremolo
    case 0x07:
      return "\t; tremolo";

    // panning
    case 0x08:
      temp.pan = ((value & 0x0F) != 0) | (((value & 0xF0) != 0) * 2);
      if (temp.pan == 0) temp.pan = 3;
      temp.panSet = temp.pan;
      return "";

    // groove pattern
    case 0x09:
      return "\t; groove pattern";

    // volume slide
    case 0x0A:
      if (value & 0xF0)
        temp.volRate = (value & 0xF0) * 0x10;
      else
        temp.volRate = (value & 0x0F) * -0x100;
      return "\t; volume slide";

    // jump to pattern
    case 0x0B:
    // jump to next pattern
    case 0x0D:
    // delay note
    case 0xED:
    // stop song
    case 0xFF:
      return "";

    // retrigger
    case 0x0C:
      temp.timers[timeRetrigger] = value;
      return "\t; retrigger";

    // noise mode
    case 0x20:
      if (!(value & 0xF0))
        return "\t; preset noise frequencies not supported";
      if (value & 0x0F)
        vars.noise = 0xE3;
      else
        vars.noise = 0xE7;

      if (options.style != verSource)
        return fmt::sprintf("%s\t\t$%.2X", (*vars.symCommands)[smpsNoise], vars.noise);
      else
        return fmt::sprintf("%s,NOIS%d", (*vars.symCommands)[smpsNoise], vars.noise & 0x07);

    // set tick rate (Hz)
    case 0xC0:
      return "\t; set tick rate (Hz)";

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
      return "";

      // set tick rate (bpm)
    case 0xF0:
      return "\t; set tick rate (bpm)";

      // fine volume slide up
    case 0xF3:
      temp.volRate = value;
      return "\t; fine volume slide up";

      // fine volume slide down
    case 0xF4:
      temp.volRate = -value;
      return "\t; fine volume slide down";

      // unsupported effects are commented out
    default:
      return "\t; Effect not supported:";
  }
}

// check for changes on a given tick
static bool checkChanges(const DivPattern* p, smpsVars& vars, smpsTempVars& temp, DivSubSong*& s, const DivSMPSOptions& options, int furStep) {
  bool found = false;
  // check timers
  for (int timer = 0; timer < timeLen; timer++) {
    if ((temp.timers[timer] == 1)) {
      int value = temp.timers[timer];
      switch (timer) {
      case timePitch:

      case timeVib:
        temp.effects[temp.numEffects] = fmt::sprintf("%s", (*vars.symCommands)[smpsVibOff]);

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
      if (options.style != verSource)
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsSetVoice], vars.fmVoices[p->newData[furStep][DIV_PAT_INS]]);
      else
        temp.effects[temp.numEffects] = fmt::sprintf("%s,%d", (*vars.symCommands)[smpsSetVoice], vars.fmVoices[p->newData[furStep][DIV_PAT_INS]]);
      temp.numEffects++;
      found = true;
    }
    else if (vars.chanOn[temp.channel] > typePCM) {
      const uint8_t envelope = vars.psgVoices[p->newData[furStep][DIV_PAT_INS]];
      if (options.style != verSource)
        temp.effects[temp.numEffects] = fmt::sprintf("%s\t%s%.2X", (*vars.symCommands)[smpsVolEnv],
          (envelope == 0 && options.style == verFlamewing) ? "$" : options.psgPrefix, envelope);
      else
        temp.effects[temp.numEffects] = fmt::sprintf("%s,%d", (*vars.symCommands)[smpsVolEnv], envelope);
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
  if (p->newData[furStep][DIV_PAT_NOTE] != -1) {
    temp.note = p->newData[furStep][DIV_PAT_NOTE];
    temp.macroTimer = 0;
    temp.noteOn = true;
    found = true;
  }
  return found;
}

// check for changes in the macros
static bool checkMacros(smpsVars& vars, smpsTempVars& temp, const DivSong& song, const DivSMPSOptions& options, int step) {
  // check macros
  bool found = false;
  if (temp.lastIns != -1 && temp.lastIns < song.insLen && temp.note != DIV_NOTE_OFF) {
    const DivInstrument* ins = song.ins[temp.lastIns];
    for (int macType = 0; macType < macLen; macType++) {
      const DivInstrumentMacro m[macLen] = {
        ins->std.volMacro,
        ins->std.arpMacro,
        ins->std.pitchMacro,
        ins->std.panLMacro
      };
      if ((m[macType].open & 6) != 0 || m[macType].len > temp.macroTimer) {
        int value = m[macType].val[temp.macroTimer];
        if (macType == macPitch) {
          temp.noteOn = true;
          found = true;
        }
        if (value != temp.macroVals[macType]) {
          switch (macType) {
          case macVol:
            if (vars.chanOn[temp.channel] != typeFM) continue;
            temp.volChange -= value - temp.macroVals[macType];
            break;
          case macPanL:
            temp.pan = temp.panSet & value;
          }
          temp.macroVals[macType] = value;
          found = true;
        }
      }
    }
  }
  temp.macroTimer += options.stepSz;
  return found;
}

// separate notes
static void separateNote(SafeWriter* w, smpsTempVars& temp, bool source) {
  if (!source) {
    if (temp.lineCnt != 0)
      w->writeText(", ");
    else
      w->writeText(fmt::sprintf("\n\tdc.b "));
  }
  else {
    if (temp.lineCnt != 0)
      w->writeText(",");
    else
      w->writeText(fmt::sprintf("\n\tDC.B "));
  }
  temp.lineCnt = (temp.lineCnt + 1) % 16;
}

// search ticks for the amount of time to wait
void DivEngine::getTimer(SafeWriter* w, const DivPattern* p, smpsVars& vars, smpsTempVars& temp, DivSubSong*& s, const DivSMPSOptions &options) {
  int waitCheck = 0;
  while (temp.ticks < vars.lenTable[1][temp.order] * (s->speeds.val[0] * (s->effectDivider + 1))) {
    short found = 0;
    const int step = temp.ticks / options.stepSz;
    const int furStep = temp.ticks / (s->speeds.val[0] * (s->effectDivider + 1));
    temp.numEffects = 0;

    // check for delayed notes
    for (int layer = 0; layer < s->pat[temp.channel].effectCols; layer++)
      if (p->newData[furStep][DIV_PAT_FX(layer)] == 0xED)
        temp.delayTime = p->newData[furStep][DIV_PAT_FXVAL(layer)];
    if (temp.delayTime >= 0) {
      if (furStep == (temp.ticks + temp.delayTime) / (s->speeds.val[0] * (s->effectDivider + 1)))
        temp.nextChange = (furStep * temp.stepConv) + (temp.delayTime / options.stepSz);
      temp.delayTime = temp.delayTime - options.stepSz;
    }

    if (step == temp.nextChange) {
      found = checkChanges(p, vars, temp, s, options, furStep);
      temp.nextChange = temp.stepConv * (furStep + 1);
    }
    found += checkMacros(vars, temp, song, options, step);

    // leave if something is found
    if (found || (step - temp.steps == 0x7F)) {
      if (found == 0) temp.hold = true;
      temp.noteTime = step - temp.steps;
      waitCheck += temp.noteTime;
      temp.steps = step;
      writeNotes(w, vars, temp, options);
    }
    temp.ticks += options.stepSz;
  }
  temp.noteTime = vars.lenTable[1][temp.order] * temp.stepConv - temp.steps;
  waitCheck += temp.noteTime;
  if (temp.prevTime != temp.noteTime || temp.wroteNote == false) {
    if (temp.startTick) {
      separateNote(w, temp, options.style == verSource);
      w->writeText((*vars.symCommands)[smpsHold]);
    }
    separateNote(w, temp, options.style == verSource);
    if (options.style != verSource) w->writeText(fmt::sprintf("$%.2X", temp.noteTime));
    else w->writeText(fmt::sprintf("%d", temp.noteTime));
  }
  w->writeText(fmt::sprintf("\n\t; $%.2X", waitCheck));
};

// get the note to write
String DivEngine::getNote(SafeWriter* w, smpsVars& vars, smpsTempVars& temp, const DivSMPSOptions& options) {
  // write note
  temp.lastOffset = temp.offset;
  if (temp.note != DIV_NOTE_OFF) {
    short note = (unsigned short)(calcArp(temp.note, temp.macroVals[macPitch], 0)) % 12;
    short octave = (unsigned char)(calcArp(temp.note, temp.macroVals[macPitch], 0) - (5 * 12)) / 12;
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
      unsigned int baseFreq = calcBaseFreq(1, 1, (unsigned short)(calcArp(temp.note, temp.macroVals[macPitch], 0)) % 12, false);
      unsigned int fNum = calcFreq(baseFreq, vars.pitch + temp.macroVals[macDetune], temp.arpOff, false, false, 2, 0, COLOR_NTSC * 15.0 / 7.0, 9440540.0, 11);

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
        1017, // A0
        960, // A#0
        906, // B0
        855, // C1
        807, // C#1
        762, // D1
        719, // D#1
        679, // E1
        641, // F1
        605, // F#1
        571, // G1
        539, // G#1
        508, // A1
        480, // A#1
        453, // B1
        428, // C2
        404, // C#2
        381, // D2
        360, // D#2
        339, // E2
        320, // F2
        302, // F#2
        285, // G2
        269, // G#2
        254, // A2
        240, // A#2
        226, // B2
        214, // C3
        202, // C#3
        190, // D3
        180, // D#3
        170, // E3
        160, // F3
        151, // F#3
        143, // G3
        135, // G#3
        127, // A3
        120, // A#3
        113, // B3
        107, // C4
        101, // C#4
        95, // D4
        90, // D#4
        85, // E4
        80, // F4
        76, // F#4
        71, // G4
        67, // G#4
        64, // A4
        60, // A#4
        57, // B4
        53, // C5
        50, // C#5
        48, // D5
        45, // D#5
        42, // E5
        40, // F5
        38, // F#5
        36, // G5
        34, // G#5
        32, // A5
        30, // A#5
        28, // B5
        27, // C6
        25, // C#6
        24, // D6
        22, // D#6
        21, // E6
        20, // F6
        19, // F#6
        18, // G6
        17, // G#6
        16, // A6
        15 // A#6
      };

      unsigned int baseFreq = round(calcBaseFreq(COLOR_NTSC, 64.0, calcArp(temp.note, temp.macroVals[macPitch], 0) - (5 * 12), true));
      unsigned int fNum = calcFreq(baseFreq, vars.pitch + temp.macroVals[macDetune], temp.arpOff, false, true, 0, 0, COLOR_NTSC, 64.0);

      
      temp.offset = 0;
      if (fNum > psgFreqs[0]) {
        if (options.style != verSource) return fmt::sprintf("nA0");
        else return fmt::sprintf("AN0");
      }
      short psgFreqsLen = sizeof(psgFreqs) / sizeof(psgFreqs[0]);
      note = psgFreqsLen;
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
      note += 9;

      if (note > options.psgMax) {
        temp.offset = 0;
        if (options.style == verFlamewing || options.style == verAMPS) {
          if (options.psgPitch == 0)
            return fmt::sprintf("%s", (*vars.notesSet)[13]);
          else
            return fmt::sprintf("%s+%d", (*vars.notesSet)[13], -options.psgPitch);
        }
        note = options.psgMax;
      }

      octave = note / 12;
      note = note % 12;

    }
    if (vars.chanOn[temp.channel] == typePCM) {
      if (temp.lastIns == -1) goto normalNote;
      DivInstrument* ins = song.ins[temp.lastIns];
      if (ins->type != DIV_INS_AMIGA) goto normalNote;
      const short map = ins->amiga.noteMap[note + octave * 12].map;
      if (map == -1) goto normalNote;
      DivSample* sample = song.sample[map];
      if (!((sample->name[0] >= 'a' && sample->name[0] <= 'z') || (sample->name[0] >= 'A' && sample->name[0] <= 'Z')))
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
void DivEngine::writeNotes(SafeWriter* w, smpsVars& vars, smpsTempVars& temp, const DivSMPSOptions& options) {
  // write timer
  if (temp.noteTime != 0) {
    if (temp.prevTime != temp.noteTime || temp.wroteNote == false) {
      if (temp.startTick) {
        separateNote(w, temp, options.style == verSource);
        w->writeText((*vars.symCommands)[smpsHold]);
      }
      separateNote(w, temp, options.style == verSource);
      if (options.style != verSource) w->writeText(fmt::sprintf("$%.2X", temp.noteTime));
      else w->writeText(fmt::sprintf("%d", temp.noteTime));
      temp.prevTime = temp.noteTime;
      temp.wroteLen = true;
    }
    else
      temp.wroteLen = false;
  }

  // write effects
  for (int i = 0; i < temp.numEffects; i++) {
    if (options.style != verSource) {
      w->writeText(fmt::sprintf("\n\t%s", temp.effects[i]));
      temp.lineCnt = 0;
    }
    else {
      separateNote(w, temp, true);
      w->writeText(fmt::sprintf("%s", temp.effects[i]));
      temp.lineCnt++;
    }
    if (!temp.noteOn)
      temp.hold = true;
  }
  // volume changes
  if (temp.volChange != 0) {
    if (options.style != verSource) {
      if (vars.chanOn[temp.channel] == typeFM || (options.style == verAMPS && vars.chanOn[temp.channel] == typePCM)) {
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolFM], uint8_t(temp.volChange)));
      }
      else if (vars.chanOn[temp.channel] > typePCM) {
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolPSG], uint8_t(temp.volChange * (options.style == verAMPS ? 8 : 1))));
      }
      temp.lineCnt = 0;
    }
    else {
      separateNote(w, temp, true);
      if (vars.chanOn[temp.channel] == typeFM) {
        w->writeText(fmt::sprintf("%s", (*vars.symCommands)[smpsAltVolFM]));
      }
      else if (vars.chanOn[temp.channel] > typePCM) {
        w->writeText(fmt::sprintf("%s", (*vars.symCommands)[smpsAltVolPSG]));
      }
      separateNote(w, temp, true);
      w->writeText(fmt::sprintf("%d",temp.volChange));
      temp.lineCnt++;

    }
    temp.volChange = 0;
    if (!temp.noteOn) temp.hold = true;
  }

  // panning changes
  if (temp.pan != temp.prevPan && vars.chanOn[temp.channel] <= typePCM) {
    String pan;
    switch (temp.pan) {
    case 0:
      pan = (*vars.symCommands)[smpsPanNone];
      break;
    case 1:
      pan = (*vars.symCommands)[smpsPanRight];
      break;
    case 2:
      pan = (*vars.symCommands)[smpsPanLeft];
      break;
    default:
      pan = (*vars.symCommands)[smpsPanCenter];
    }
    if (options.style != verSource) {
      w->writeText(fmt::sprintf("\n\t%s\t\t%s, $00", (*vars.symCommands)[smpsPan], pan));
      temp.lineCnt = 0;
    }
    else {
      separateNote(w, temp, true);
      w->writeText(fmt::sprintf("%s,%s", (*vars.symCommands)[smpsPan], pan));
      temp.lineCnt++;
    }
    temp.prevPan = temp.pan;
    if (!temp.noteOn) temp.hold = true;
  }

  // if on PSG channel 3 or 4, check to swap between channels

  // write next note
  String noteText = getNote(w, vars, temp, options);
  if (temp.offset != temp.lastOffset) {
    if (options.style != verSource) {
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsSetDetune], uint8_t(temp.offset)));
      temp.lineCnt = 0;
    }
    else {
      separateNote(w, temp, true);
      w->writeText(fmt::sprintf("%s,%d", (*vars.symCommands)[smpsSetDetune], uint8_t(temp.offset)));
      temp.lineCnt++;
    }
  }

  // hold note
  if ((temp.hold && !temp.noteOn)) {
    separateNote(w, temp, options.style == verSource);
    w->writeText((*vars.symCommands)[smpsHold]);
    if (!temp.legato)
      temp.hold = false;
  }

  if (noteText != temp.prevNote || temp.wroteLen == false) {
    separateNote(w, temp, options.style == verSource);
    w->writeText(noteText);
    temp.prevNote = noteText;
    temp.wroteNote = true;
  }
  else
    temp.wroteNote = false;
  temp.noteOn = false;
  temp.startTick = false;
}

SafeWriter* DivEngine::saveASM(const DivSMPSOptions options) {

  // Get symbols for the corresponding version
  smpsVars vars;

  const String error = smpsInit(song, options, vars);
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

  vars.chans = song.chans;
  smpsChanNum(s, vars);

  if (options.style == verSource)
    writeHeaderSource(w, vars, s, options);
  else
    writeHeader(w, vars, s, options);
  writeVoices(w, vars, song, options);

  if (vars.loop) w->writeText(fmt::sprintf("\t; Loop Pattern : % .2X\n", vars.loopPat));
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
    if (i == typeEmpty || vars.chanOn[5] == typeFM) {
      if (options.style != verSource) w->writeText(fmt::sprintf("\n%s_Empty:\n\t%s\n", options.label, (*vars.symCommands)[smpsStop]));
      else w->writeText(fmt::sprintf("\n%s_Empty\tEQU\t\t*\n\t%s\n", options.label, (*vars.symCommands)[smpsStop]));
      goto skipEmpty;
    }
  }
  if (options.style == verAMPS && !vars.dualPCM)
    w->writeText(fmt::sprintf("\n%s_Empty:\n\t%s\n", options.label, (*vars.symCommands)[smpsStop]));
skipEmpty:

  for (int l = 0; l < song.chans; l++) {
    if (vars.chanOn[l] <= typeEmpty) continue;
    if ((vars.chanOn[l] == typeNoise && vars.chanOn[(l > 0) ? l - 1 : 0] == typePSG)) break;

    // Create array to keep track of written patterns
    uint8_t patNum[0x100] = {};

    vars.pitch = vars.pitch2 = 0;
    vars.patId[0][idVolMac] = 0x7F;
    vars.patId[0][idVol] = vars.startVol[l];
    vars.patId[0][idIns] = -1;

    for (int j = 0; j <= vars.endPat; j++) {
      // Don't write duplicate patterns
      const int orderNum = s->orders.ord[l][j];
      const int patStart = vars.lenTable[0][j];
      const int patLen = vars.lenTable[1][j];
      smpsTempVars temp;

      vars.patId[j][idPattern] = orderNum;
      vars.patId[j][idStart] = patStart;
      vars.patId[j][idEnd] = patLen;
      bool diff = true;
      for (int pattern = 0; pattern < j; pattern++) {
        for (int id = 0; id < idLen; id++) {
          if (vars.patId[pattern][id] != vars.patId[j][id]) {
            if ((id == idNote || id == idIns) && vars.patId[j][idIns] != -1) {
              const DivInstrument* ins = song.ins[vars.patId[j][idIns]];
              for (int macType = 0; macType < macLen; macType++) {
                const DivInstrumentMacro m[macLen] = {
                  ins->std.volMacro,
                  ins->std.arpMacro,
                  ins->std.pitchMacro,
                  ins->std.panLMacro
                };
                if ((m[macType].open & 6) != 0 || m[macType].len > temp.macroTimer) {
                  diff = true;
                  break;
                }
              }
              if (diff) continue;
            }
            else {
              diff = true;
              continue;
            }
          }
        }
        if (!diff) {
          patNum[j] = pattern;
          break;
        }
      }
      if (!diff) {
        for (int i = 0; i < idLen; i++)
          vars.patId[j + 1][i] = vars.patId[patNum[j] + 1][i];
        continue;
      }
      patNum[j] = j;
      temp.lastVol = vars.patId[j][idVol];
      temp.macroTimer = vars.patId[j][idMacro];
      temp.volRate = vars.patId[j][idVolRate];
      temp.pitchTarget = vars.patId[j][idPitchTarget];
      temp.pitchRate = vars.patId[j][idPitchRate];
      temp.macroVals[macVol] = vars.patId[j][idVolMac];
      temp.macroVals[macPitch] = vars.patId[j][idArp];
      temp.macroVals[macDetune] = vars.patId[j][idDetune];
      temp.note = vars.patId[j][idNote];
      temp.lastIns = vars.patId[j][idIns];

      int cntWait = 0;
      int lastNote = 0, lastWait = 0;
      int lineCnt = 0;
      const int furStep = s->speeds.val[0] * (s->effectDivider + 1);
      temp.stepConv = 1.0 * (s->speeds.val[0] * (s->effectDivider + 1)) / options.stepSz;

      const DivPattern* p = s->pat[l].getPattern(orderNum, false);

      w->writeText(fmt::sprintf("\n%s_%.2X", smpsChanName(options, l, vars.dualPCM), patNum[j]));
      if (options.style != verSource) w->writeText(":");
      else w->writeText("\tEQU\t\t*");

      temp.order = j;
      temp.channel = l;
      temp.steps = patStart * temp.stepConv;
      temp.ticks = temp.steps * options.stepSz;
      temp.nextChange = temp.steps;

      getTimer(w, p, vars, temp, s, options);
      if (options.style != verSource)
        w->writeText(fmt::sprintf("\n\t%s\n", (*vars.symCommands)[smpsRet]));
      else
        w->writeText(fmt::sprintf("\nDC.B\t%s\n", (*vars.symCommands)[smpsRet]));

      vars.patId[j + 1][idVol] = temp.lastVol;
      vars.patId[j + 1][idMacro] = temp.macroTimer;
      vars.patId[j + 1][idVolRate] = temp.volRate;
      vars.patId[j + 1][idPitchTarget] = temp.pitchTarget;
      vars.patId[j + 1][idPitchRate] = temp.pitchRate;
      vars.patId[j + 1][idVolMac] = temp.macroVals[macVol];
      vars.patId[j + 1][idArp] = temp.macroVals[macPitch];
      vars.patId[j + 1][idDetune] = temp.macroVals[macDetune];
      vars.patId[j + 1][idNote] = temp.note;
      vars.patId[j + 1][idIns] = temp.lastIns;
    }

    // Write order list
    if (options.style != verSource) w->writeText(fmt::sprintf("\n%s:", smpsChanName(options, l, vars.dualPCM)));
    else w->writeText(fmt::sprintf("\n%s\tEQU\t\t*", smpsChanName(options, l, vars.dualPCM)));

    if (vars.chanOn[l] == typeNoise) {
      if (options.style != verSource)
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsNoise], 0xE7));
      else
        w->writeText(fmt::sprintf("\n\tDC.B %s,NOIS7", (*vars.symCommands)[smpsNoise]));
    }

    for (int j = 0; j <= vars.endPat; j++) {
      if (j == vars.loopPat) {
        if (options.style != verSource) w->writeText(fmt::sprintf("\n\n%s_Jump:", smpsChanName(options, l, vars.dualPCM)));
        else w->writeText(fmt::sprintf("\n\n%s_Jump\tEQU\t\t*", smpsChanName(options, l, vars.dualPCM)));
      }

      if (options.style != verSource) w->writeText(fmt::sprintf("\n\t%s ", (*vars.symCommands)[smpsCall]));
      else w->writeText(fmt::sprintf("\n\tDC.B\t%s\n\tJDW\t\t", (*vars.symCommands)[smpsCall]));
      w->writeText(fmt::sprintf("%s_%.2X", smpsChanName(options, l, vars.dualPCM), patNum[j]));
    }

    const uint8_t diffVol = (vars.patId[vars.endPat + 1][idVol] + vars.patId[vars.endPat + 1][idVolMac])
      - (vars.patId[vars.loopPat][idVol] + vars.patId[vars.loopPat][idVolMac]);
    // Before jumping, reset volume
    if (options.style != verSource) {
      if (vars.loop) {
        if (diffVol != 0) {
          if (vars.chanOn[l] == typeFM || (options.style == verAMPS && vars.chanOn[l] == typePCM))
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolFM], diffVol));
          else if (vars.chanOn[l] >= typePSG)
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", (*vars.symCommands)[smpsAltVolPSG], diffVol * (options.style == verAMPS ? 8 : 1)));
        }
        w->writeText(fmt::sprintf("\n\t%s %s_Jump\n", (*vars.symCommands)[smpsJump], smpsChanName(options, l, vars.dualPCM)));
      }
      else
        w->writeText(fmt::sprintf("\n\t%s\n", (*vars.symCommands)[smpsStop]));
    }
    else {
      w->writeText(fmt::sprintf("\n\tDC.B\t"));
      if (vars.loop) {
        if (diffVol != 0) {
          if (vars.chanOn[l] == typeFM)
            w->writeText(fmt::sprintf("%s,%d, ", (*vars.symCommands)[smpsAltVolFM], diffVol));
          else if (vars.chanOn[l] >= typePSG)
            w->writeText(fmt::sprintf("%s,%d, ", (*vars.symCommands)[smpsAltVolPSG], diffVol));
        }
        w->writeText(fmt::sprintf("%s\n\tJDW\t\t%s_Jump\n", (*vars.symCommands)[smpsJump], smpsChanName(options, l, vars.dualPCM)));
      }
      else
        w->writeText(fmt::sprintf("%s\n", (*vars.symCommands)[smpsStop]));
    }

  }
  saveLock.unlock();
  return w;
}
