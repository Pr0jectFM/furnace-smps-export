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

 // enums used for symbol array
enum smpsSymbols {
  // Header
  smpsHeader = 0,
  smpsStart = smpsHeader,
  smpsVoice,
  smpsChan,
  smpsTempo,
  smpsDAC,
  smpsFM,
  smpsPSG,
  // Voices
  smpsAlg,
  smpsFeed,
  smpsVoices,
  smpsDetune = smpsVoices,
  smpsMult,
  smpsRtScale,
  smpsAttRt,
  smpsAmpMod,
  smpsDecRt1,
  smpsDecRt2,
  smpsSusLv,
  smpsRelRt,
  smpsTotLv,
  smpsSSGEG,
  // Effects
  smpsEffects,
  smpsPan = smpsEffects,
  smpsSetDetune,
  smpsSetTrans,
  smpsTickMul,
  smpsHold,
  smpsSetVoice,
  smpsVolEnv,
  smpsModEnv,
  smpsSetTempo,
  smpsSampDAC,
  smpsPitchDAC,
  smpsAltVolFM,
  smpsAltVolPSG,
  smpsSetLFO,
  smpsSetVib68k,
  smpsSetVibZ80,
  smpsVibOn,
  smpsVibOff,
  smpsVibFreq,
  smpsVibReset,
  smpsPortamento,
  smpsStop,
  smpsJump,
  smpsLoop,
  smpsCall,
  smpsRet,
  smpsGate,
  smpsFreqNote,
  smpsNoise,
  // Parameters
  smpsPanCenter,
  smpsPanLeft,
  smpsPanRight,
  smpsPanNone,
  smpsSymLen
};

// Flamewing symbols
static const char* smpsSymFlamewing[smpsSymLen] = {
  // Header
  "smpsHeaderStartSong",
  "smpsHeaderVoice\t",
  "smpsHeaderChan\t",
  "smpsHeaderTempo\t",
  "smpsHeaderDAC",
  "smpsHeaderFM",
  "smpsHeaderPSG",
  // Voices
  "smpsVcAlgorithm",
  "smpsVcFeedback",
  "smpsVcDetune\t",
  "smpsVcCoarseFreq",
  "smpsVcRateScale\t",
  "smpsVcAttackRate",
  "smpsVcAmpMod\t",
  "smpsVcDecayRate1",
  "smpsVcDecayRate2",
  "smpsVcDecayLevel",
  "smpsVcReleaseRate",
  "smpsVcTotalLevel",
  "; Not Implemented",
  // Effects
  "smpsPan",
  "smpsAlterNote",
  "smpsAlterPitch",
  "smpsSetTempoDiv",
  "smpsNoAttack",
  "smpsSetvoice",
  "smpsPSGvoice",
  "smpsModChange",
  "smpsSetTempoMod",
  "; smpsSampDAC Not Implemented",
  "; smpsPitchDAC Not Implemented",
  "smpsAlterVol",
  "smpsPSGAlterVol",
  "smpsSetLFO",
  "smpsModSet",
  "smpsModSet",
  "smpsModOn",
  "smpsModOff",
  "; smpsVibFreq Not Implemented",
  "; smpsVibReset Not Implemented",
  "smpsPitchSlide",
  "smpsStop",
  "smpsJump",
  "smpsLoop",
  "smpsCall",
  "smpsReturn",
  "smpsNoteFill",
  "smpsSetNote",
  "smpsPSGform",
  // Parameters
  "panCenter",
  "panLeft",
  "panRight",
  "panNone"
};

// MD Music Player symbols
static const char* smpsSymMDMP[smpsSymLen] = {
  // Header
  "sHeaderInit",
  "sHeaderVoice",
  "sHeaderCh",
  "sHeaderTempo",
  "sHeaderDAC",
  "sHeaderFM",
  "sHeaderPSG",
  // Voices
  "spAlgorithm",
  "spFeedback",
  "spDetune\t",
  "spMultiple\t",
  "spRateScale\t",
  "spAttackRt\t",
  "spAmpMod\t",
  "spSustainRt\t",
  "spDecayRt\t",
  "spSustainLv\t",
  "spReleaseRt\t",
  "spTotalLv\t",
  "; Not Implemented"
  // Effects
  "sPan",
  "ssDetune",
  "ssTranspose",
  "ssTickMul",
  "sHold",
  "sPatFM",
  "sVolEnvPSG",
  "sModEnv",
  "ssTempo",
  "; smpsSampDAC Not Implemented",
  "; smpsPitchDAC Not Implemented",
  "saVolFM",
  "saVolPSG",
  "; smpsSetLFO Not Implemented",
  "sMod68k",
  "sModZ80",
  "sModOn",
  "sModOff",
  "; smpsVibFreq Not Implemented",
  "; smpsVibReset Not Implemented",
  "; smpsPortamento Not Implemented",
  "sStop",
  "sJump",
  "sLoop",
  "sCall",
  "sRet",
  "sGate",
  "ssTransposeS3K",
  "sNoisePSG",
  // Parameters
  "panCenter",
  "panLeft",
  "panRight",
  "panNone"
};

// AMPS symbols
static const char* smpsSymAMPS[smpsSymLen] = {
  // Header
  "sHeaderInit",
  "; Not Implemented",
  "sHeaderCh",
  "sHeaderTempo",
  "sHeaderDAC",
  "sHeaderFM",
  "sHeaderPSG",
  // Voices
  "spAlgorithm",
  "spFeedback",
  "spDetune\t",
  "spMultiple\t",
  "spRateScale\t",
  "spAttackRt\t",
  "spAmpMod\t",
  "spSustainRt\t",
  "spDecayRt\t",
  "spSustainLv\t",
  "spReleaseRt\t",
  "spTotalLv\t",
  "spSSGEG\t",
  // Effects
   "sPan",
   "ssDetune",
   "ssTranspose",
   "ssTickMul",
   "sHold",
   "sVoice",
   "sVolEnv",
   "sModEnv",
   "ssTempo",
   "sModeSampDAC",
   "sModePitchDAC",
   "saVol",
   "saVol",
   "ssLFO",
   "sModAMPS",
   "; smpsVibZ80 Not Implemented",
   "sModOn",
   "sModOff",
   "sModFreq",
   "sModReset",
   "ssPortamento",
   "sStop",
   "sJump",
   "sLoop",
   "sCall",
   "sRet",
   "sGate",
   "ssFreqNote",
   "sNoisePSG",
   // Parameters
   "panCenter",
   "panLeft",
   "panRight",
   "panNone"
};

// SMPS Source symbols
static const char* smpsSymSource[smpsSymLen] = {
  // Header
  "; smpsStart Not Implemented",
  "; smpsVoice Not Implemented",
  "; smpsChan Not Implemented",
  "; smpsTempo Not Implemented",
  "; smpsDAC Not Implemented",
  "; smpsFM Not Implemented",
  "; smpsPSG Not Implemented",
  // Voices
  "CNF",
  "; smpsFeed Not Implemented",
  "MD",
  "; smpsMult Not Implemented",
  "RSAR",
  "; smpsAttRt Not Implemented",
  "; smpsAmpMod Not Implemented",
  "D1R",
  "D2R",
  "RRL",
  "; smpsRelRt Not Implemented",
  "TL",
  "; smpsSSGEG Not Implemented",
  // Effects
  "LRPAN",
  "FDT",
  "CMBIAS",
  "KEYSET",
  "TIE",
  "FEV",
  "EV",
  "; smpsModEnv Not Implemented",
  "TEMPO_CHG",
  "; smpsSampDAC Not Implemented",
  "; smpsPitchDAC Not Implemented",
  "CMVADD",
  "PFVADD",
  "LFO",
  "FVR",
  "FVR",
  "VRON",
  "VROFF",
  "; smpsVibFreq Not Implemented",
  "; smpsVibReset Not Implemented",
  "; smpsPortamento Not Implemented",
  "CMEND",
  "CMJUMP",
  "CMREPT",
  "CMCALL",
  "CMRET",
  "CMGATE",
  "; smpsFreqNote Not Implemented",
  "CMNOIS",
  // Parameters
  "panCenter",
  "panLeft",
  "panRight",
  "panNone"
};

 // Variables
struct smpsVars {
  const char* symCommands[smpsSymLen];
  const char* notesSet[13];
  uint8_t fmVoices[0x100];
  String psgVoices[0x100];
  // pattern and song length
  int loopPat;
  uint8_t endPat;
  uint8_t lenTable[2][0x100];
  int endPlace;
  // note status
  int volRate;
  uint8_t vib[4];
  int pitchTarget, pitchRate;
  uint8_t pan, noise, retrigger;
  int chans;
  uint8_t chanOn[11];
  smpsVars():
    loopPat(0),
    endPat(0),
    endPlace(0),
    volRate(0),
    pitchTarget(0),
    pitchRate(0),
    pan(0),
    noise(0),
    retrigger(0),
    chans(0) {
      for (int i = 0; i < smpsSymLen; i++) symCommands[i] = 0;
      for (int i = 0; i < 13; i++) notesSet[i] = 0;
      for (int i = 0; i < 0x100; i++) fmVoices[i] = 0;
      for (int i = 0; i < 0x100; i++) psgVoices[i] = "";
      for (int i = 0; i < 0x100; i++) {
        lenTable[0][i] = 0;
        lenTable[1][i] = 0;
      }
      for (int i = 0; i < 4; i++) vib[i] = 0;
      for (int i = 0; i < 11; i++) chanOn[i] = 0;
    }
};

// style names
enum smpsVersion {
  verFlamewing,
  verMDMP,
  verAMPS,
  verSource
};

// initialize some variables and throw some errors for invalid stuff
String smpsInit(DivSong& song, DivSMPSOptions& options) {
  if (song.system[0] != DIV_SYSTEM_YM2612) {
    if (song.system[0] == DIV_SYSTEM_YM2612_DUALPCM) {
      if (options.style != verAMPS)
        return "Only the AMPS style can support DualPCM";
    }
    else if (song.system[0] == DIV_SYSTEM_YM2612_CSM || song.system[0] == DIV_SYSTEM_YM2612_EXT || song.system[0] == DIV_SYSTEM_YM2612_DUALPCM_EXT) {
      if (options.style == verAMPS)
        return "YM2612 variation is not supported. Use a basic YM2612 or YM2612 with DualPCM";
      return "YM2612 variation is not supported. Use a basic YM2612";
    }
    else {
      if (options.style == verAMPS)
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
  for (int i = 0; i < 0x100; i++) {
    vars.lenTable[0][i] = 0;
    vars.lenTable[1][i] = 0;
  }
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

// get the list of chans that are in use
void smpsChanNum(DivSong& song, DivSubSong*& s, smpsVars& vars) {
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
        if (p->newData[step][DIV_PAT_NOTE] != -1) {
          vars.chanOn[channel] = type;
          // if noise channel and other PSG channels are null, set them to empty
          if (type == typeNoise) {
            if (vars.chanOn[channel - 2] == typeNull)
              vars.chanOn[channel - 2] = typeEmpty;
            if (vars.chanOn[channel - 3] == typeNull)
              vars.chanOn[channel - 3] = typeEmpty;
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
String smpsChanName(int num) {
  // To Do: account for FM6, DAC2, and PSG3 modes
  switch (num) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
    return "FM" + std::to_string(num + 1);
  case 5:
    return "DAC";
  case 6:
    return "PSG1";
  case 7:
    return "PSG2";
  case 8:
  case 9:
    return "PSG3";
  default:
    return "Null";
  }
}

// write instrument information for 1 operator
void writeOperator(SafeWriter* w, const int opArray[4], const char* param) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[3]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
  w->writeText(fmt::sprintf("$%.2X\n", opArray[0]));
}

// write instrument information for 2 operators
void writeOperator(SafeWriter* w, const int opArray[4], const char* param, const int opArray2[4]) {
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
void writeASMMacro(SafeWriter* w, DivInstrumentMacro& m, const char* name, bool& wroteMacroHeader) {
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

// Variables used for timers
enum smpsTimers {
  timePitch,
  timeVib,
  timeVol,
  timeRetrigger,
  timeDelay,
  timeLen
};

// Variables used by macros
enum smpsMacros {
  macVol,
  macPitch,
  macDetune,
  macLen
};

// Temporary variables
struct smpsTempVars {
  String effects[0x10];
  uint8_t numEffects;
  int timers[timeLen];
  uint8_t macroTimer, macroVals[macLen][2];
  uint8_t lineCnt;
  uint8_t noteTime, prevTime;
  uint8_t lastIns, lastVol;
  int steps;
  uint8_t channel, order;
  short note, octave, prevNote, prevOctave;
  bool redo;
  String noteString;
  int offset;
  bool hold, legato;
  bool wroteLen, wroteNote;
  bool noise;
  smpsTempVars():
    numEffects(0),
    macroTimer(0),
    lineCnt(0),
    noteTime(0),
    prevTime(0),
    lastIns(0),
    lastVol(0),
    steps(0),
    channel(0),
    order(0),
    note(0),
    octave(0),
    prevNote(0),
    prevOctave(0),
    redo(false),
    noteString(""),
    offset(0),
    hold(false),
    legato(false),
    wroteLen(false),
    wroteNote(false),
    noise(false) {
      for (int i = 0; i < 0x10; i++) effects[i] = "";
      for (int i = 0; i < timeLen; i++) timers[i] = 0;
      for (int i = 0; i < macLen; i++) {
        macroVals[i][0] = 0;
        macroVals[i][1] = 0;
      }
      
  }
};

static void writeHeader(SafeWriter* w, smpsVars& vars, DivSubSong*& s, DivSMPSOptions& options) {
  // Write header
  w->writeText(fmt::sprintf("%s_Header:", options.label));
  w->writeText(fmt::sprintf("\n\t%s", vars.symCommands[smpsStart]));
  if (options.style == verFlamewing)
    w->writeText(fmt::sprintf(" %d", options.tempo + 1));
  if (options.style != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t%s_Voices", vars.symCommands[smpsVoice], options.label));
  // Get the number of FM and PSG channels
  int chansFM = 0, chansPSG = 0;
  for (int i : vars.chanOn) {
    if (i == typeFM) chansFM++;
    if (i == typePSG) chansPSG++;
    if (i == typeNoise) { chansPSG = 3; break; }
  }
  w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", vars.symCommands[smpsChan], chansFM + (options.style != verAMPS && chansFM != 0), chansPSG));
  w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X\n", vars.symCommands[smpsTempo], options.div, options.speed));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %.2f BPM\n", options.given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %.2f BPM\n\n", options.approx));

  if (chansFM > 0 && vars.chanOn[5] != typeNull) {
    if (options.style == verAMPS) {
      w->writeText(fmt::sprintf("\t%s\t%s_DAC1\n", vars.symCommands[smpsDAC], options.label));
    }
    else
      w->writeText(fmt::sprintf("\t%s\t%s_DAC\n", vars.symCommands[smpsDAC], options.label));
  }
  if (chansFM > 0 && vars.chanOn[6] != typeNull && options.style == verAMPS)
    w->writeText(fmt::sprintf("\t%s\t%s_DAC2\n", vars.symCommands[smpsDAC], options.label));
  for (int i = 1; i <= chansFM; i++)
    w->writeText(fmt::sprintf("\t%s\t%s_FM%d,\t$%.2X, $%.2X\n", vars.symCommands[smpsFM], options.label, i, 0, 0));
  for (int i = 1; i <= chansPSG; i++)
    w->writeText(fmt::sprintf("\t%s\t%s_PSG%d,\t$%.2X, $%.2X, $%.2X, $%.2X\n", vars.symCommands[smpsPSG], options.label, i, 0, 0, 0, 0));
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
      int opParams[11][opCount];
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
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", vars.symCommands[smpsAlg], ins->fm.alg));
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", vars.symCommands[smpsFeed], ins->fm.fb));
        writeOperator(w, opParams[smpsDetune - smpsVoices], vars.symCommands[smpsDetune]);
        writeOperator(w, opParams[smpsMult - smpsVoices], vars.symCommands[smpsMult]);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], vars.symCommands[smpsRtScale]);
        writeOperator(w, opParams[smpsAttRt - smpsVoices], vars.symCommands[smpsAttRt]);
        writeOperator(w, opParams[smpsAmpMod - smpsVoices], vars.symCommands[smpsAmpMod]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], vars.symCommands[smpsDecRt1]);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], vars.symCommands[smpsDecRt2]);
        writeOperator(w, opParams[smpsSusLv - smpsVoices], vars.symCommands[smpsSusLv]);
        writeOperator(w, opParams[smpsRelRt - smpsVoices], vars.symCommands[smpsRelRt]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], vars.symCommands[smpsTotLv]);
        if (options.style == verAMPS)
          writeOperator(w, opParams[smpsSSGEG - smpsVoices], vars.symCommands[smpsSSGEG]);

      }
      else {
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X, $%.2X\n", vars.symCommands[smpsAlg], ins->fm.alg, ins->fm.fb));
        writeOperator(w, opParams[smpsDetune - smpsVoices], vars.symCommands[smpsDetune], opParams[smpsMult - smpsVoices]);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], vars.symCommands[smpsRtScale], opParams[smpsAttRt - smpsVoices]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], vars.symCommands[smpsDecRt1]);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], vars.symCommands[smpsDecRt2]);
        writeOperator(w, opParams[smpsSusLv - smpsVoices], vars.symCommands[smpsSusLv], opParams[smpsRelRt - smpsVoices]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], vars.symCommands[smpsTotLv]);
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

// note names used for Flamewing, MD Music Player, and AMPS
static const char* notes[13] = {
  "nC", "nCs", "nD", "nDs", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst"
};

// note names used for Source
static const char* notesSource[13] = {
  "CN", "CS", "DN", "DS", "EN", "FN", "FS", "GN", "GS", "AN", "BF", "BN", "NL"
};

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
      return fmt::sprintf("\n\t%s\t$%.2X, $%.2X, $%.2X, $%.2X", vars.symCommands[smpsSetVib68k], vars.vib[0], vars.vib[1], vars.vib[2], vars.vib[3]);
    // vibrato
    case 0x04:
      if ((value & 0x0F) == 0)
        return fmt::sprintf("\n\t%s", vars.symCommands[smpsVibOff]);

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
      vars.vib[3] = round(s->hz * (0x0F - value / 0x10) / (vars.vib[1] * 64 * 2));
      if (vars.chanOn[temp.channel] < typePSG) {
        vars.vib[2] = round(8.0 * vars.vib[1] * (value & 0x0F) / (0x0F - value / 0x10));
      } else {
        vars.vib[2] = round(5.0 * vars.vib[1] * (value & 0x0F) / (0x0F - value / 0x10));
      }


      return fmt::sprintf("\n\t%s\t$%.2X, $%.2X, $%.2X, $%.2X", vars.symCommands[smpsSetVib68k], vars.vib[0], vars.vib[1], vars.vib[2], vars.vib[3]);

    // tremolo
    case 0x07:
      return "\n\t; tremolo";

    // panning
    case 0x08:
      if (vars.pan == value)
        return "";
      vars.pan = value;
      if (value & 0xF0)
        if (value & 0xF)
          return fmt::sprintf("\n\t%s\t\t%s, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanCenter]);
        else
          return fmt::sprintf("\n\t%s\t\t%s, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanLeft]);
      else if (value & 0xF)
        return fmt::sprintf("\n\t%s\t\t%s, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanRight]);
      else
        return fmt::sprintf("\n\t%s\t\t%s, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanNone]);

    // groove pattern
    case 0x09:
      return "\t; groove pattern";

    // volume slide
    case 0x0A:
      if (value & 0xF0)
        vars.volRate = (value & 0xF0) * 0x10;
      else
        vars.volRate = (value & 0x0F) * -0x100;
      return "\t; volume slide";

    // jump to pattern
    case 0x0B:
      // jump to next pattern
    case 0x0D:
      // stop song
    case 0xFF:
      return "";

    // retrigger
    case 0x0C:
      return "\t; retrigger";

    // noise mode
    case 0x20:
      if (!(value & 0xF0))
        return "\t; preset noise frequencies not supported";
      if (value & 0x0F)
        vars.noise = 0xE3;
      else
        vars.noise = 0xE7;
      return fmt::sprintf("\n\t%s\t\t$%.2X", vars.symCommands[smpsNoise], vars.noise);

    // set tick rate (Hz)
    case 0xC0:
      return "\t; set tick rate (Hz)";

    // set pitch
    case 0xE5:
      return fmt::sprintf("\n\t%s\t\t$%.2X", vars.symCommands[smpsSetDetune], uint8_t(value - 0x80));

    // legato
    case 0xEA:
      if (value)
        temp.legato = true;
      else
        temp.legato = false;
      return "";

    // note cut
    case 0xEC:
      return fmt::sprintf("\n\t%s\t\t%s", vars.symCommands[smpsGate], value);

      // note delay
    case 0xED:
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

void noteToSplitNote(short note, short& outNote, short& outOctave) {
  switch (note) {
  case DIV_NOTE_OFF:
    outNote = 100;
    outOctave = 0;
    break;
  case DIV_NOTE_REL:
    outNote = 101;
    outOctave = 0;
    break;
  case DIV_MACRO_REL:
    outNote = 102;
    outOctave = 0;
    break;
  case DIV_NOTE_NULL_PAT:
    // "BUG" note!
    outNote = 0;
    outOctave = 1;
    break;
  case -1:
    outNote = 0;
    outOctave = 0;
    break;
  default:
    outNote = note % 12;
    outOctave = (unsigned char)(note - 60) / 12;
    if (outNote == 0) {
      outNote = 12;
      outOctave--;
    }
    break;
  }
}

// apply timer effects
static void getTimer(DivPattern* p, smpsVars& vars, smpsTempVars& temp, DivSubSong* s, DivSMPSOptions &options) {
  for (int step = temp.steps; step < vars.lenTable[1][temp.order] + 1; step++) {
    temp.numEffects = 0;
    bool found = false;
    // check timers
    for (int timer = 0; timer < timeLen; timer++) {
      if ((temp.timers[timer] == 1)) {
        int value = temp.timers[timer];
        switch (timer) {
        case timePitch:

        case timeVib:
          temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s", vars.symCommands[smpsVibOff]);
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
    if (p->newData[step][DIV_PAT_INS] >= 0 && p->newData[step][DIV_PAT_INS] != temp.lastIns) {
      if (vars.chanOn[temp.channel] == typeFM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsSetVoice], vars.fmVoices[p->newData[step][DIV_PAT_INS]]);
        temp.numEffects++;
        found = true;
      }
      else if (vars.chanOn[temp.channel] > typePCM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t%s", vars.symCommands[smpsVolEnv], vars.psgVoices[p->newData[step][DIV_PAT_INS]]);
        temp.numEffects++;
        found = true;
      }
      temp.lastIns = p->newData[step][DIV_PAT_INS];
    }
    // check for changes in pitch or volume
    if (p->newData[step][DIV_PAT_VOL] >= 0 && p->newData[step][DIV_PAT_VOL] != temp.lastVol) {
      if (vars.chanOn[temp.channel] == typeFM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolFM], uint8_t(-(p->newData[step][DIV_PAT_VOL] - temp.lastVol)));
        temp.numEffects++;
        found = true;
      }
      else if (vars.chanOn[temp.channel] > typePCM) {
        temp.effects[temp.numEffects] = fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolPSG], uint8_t(-(p->newData[step][DIV_PAT_VOL] - temp.lastVol)));
        temp.numEffects++;
        found = true;
      }
      temp.lastVol = p->newData[step][DIV_PAT_VOL];
    }
    // check effects
    for (int layer = 0; layer < s->pat[temp.channel].effectCols; layer++)
      if (p->newData[step][DIV_PAT_FX(layer)] >= 0) {
        String line = smpsCommands(p->newData[step][DIV_PAT_FX(layer)], p->newData[step][DIV_PAT_FXVAL(layer)], vars, s, options, temp);
        if (line != "") {
          temp.effects[temp.numEffects] = line;
          temp.numEffects++;
          found = true;
        }
      }

    // *checks notes*
    noteToSplitNote(p->newData[step][DIV_PAT_NOTE], temp.note, temp.octave);
    if (temp.note != 0 || temp.octave != 0) {
      temp.macroTimer = 0;
      found = true;
    }

    // check macros
    /*
    DivInstrument* ins = song.ins[i];
    ins->std.volMacro;
    */

    // leave if something is found
    if (found || (1 + step - temp.steps) == 0x7F) {
      temp.noteTime = 1 + step - temp.steps;
      return;
    }
  }
  temp.noteTime = 1 + vars.lenTable[1][temp.order] - temp.steps;
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
String getNote(smpsVars& vars, smpsTempVars& temp) {
  temp.prevNote = temp.note;
  temp.prevOctave = temp.octave;
  if (temp.note != 100) {
    if (temp.octave >= 128)
      temp.octave -= 256;
    if (temp.note > 11) {
      temp.note -= 12;
      temp.octave++;
    }
    if (vars.chanOn[temp.channel] > typePCM)
      temp.octave--;
    if (vars.chanOn[temp.channel] > typePCM && (temp.octave > 5 || (temp.octave == 5 && temp.note >= 5)))
      return fmt::sprintf("%s", "nMaxPSG");
    else
      return fmt::sprintf("%s%d", vars.notesSet[temp.note], temp.octave);
  }
  else
    return fmt::sprintf("%s", vars.notesSet[12]);
}

// write notes and effects
static void writeNotes(SafeWriter* w, smpsVars& vars, smpsTempVars& temp) {
  // write timer
  if (temp.noteTime != 0) {
    if (temp.prevTime != temp.noteTime || temp.wroteNote == false) {
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
    if (temp.note == 0 && temp.octave == 0)
      temp.hold = true;
  }

  // hold note
  if (temp.hold && (temp.note == 0 && temp.octave == 0)) {
    separateNote(w, temp);
    w->writeText(vars.symCommands[smpsHold]);
    if (!temp.legato)
      temp.hold = false;
  }

  // if on PSG channel 3 or 4, check to swap between channels

  // write next note
  if ((temp.note != 0 || temp.octave != 0) && ((temp.prevNote != temp.note || temp.prevOctave != temp.octave) || temp.wroteLen == false)) {
    separateNote(w, temp);
    w->writeText(getNote(vars, temp));
    temp.prevNote = temp.note;
    temp.prevOctave = temp.octave;
    temp.wroteNote = true;
  }
  else
    temp.wroteNote = false;
}

SafeWriter* DivEngine::saveASM(DivSMPSOptions options) {

  String error = smpsInit(song, options);
  if (error != "") {
    lastError = error;
    return NULL;
  }

  saveLock.lock();

  SafeWriter* w = new SafeWriter;
  w->init();

  // Get symbols for the corresponding version
  smpsVars vars;

  switch (options.style) {
    case verFlamewing:
      std::copy(smpsSymFlamewing, smpsSymFlamewing + smpsSymLen, vars.symCommands);
      break;
    case verMDMP:
      std::copy(smpsSymMDMP, smpsSymMDMP + smpsSymLen, vars.symCommands);
      break;
    case verAMPS:
      std::copy(smpsSymAMPS, smpsSymAMPS + smpsSymLen, vars.symCommands);
      break;
    case verSource:
      std::copy(smpsSymSource, smpsSymSource + smpsSymLen, vars.symCommands);
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

  // Write notes
  if (options.style != verSource)
    std::copy(notes, notes + 13, vars.notesSet);
  else
    std::copy(notesSource, notesSource + 13, vars.notesSet);

  for (int l = 0; l < chans; l++) {
    if (vars.chanOn[l] == typeNull) continue;
    if (vars.chanOn[l] == typeNoise && vars.chanOn[l - 1] == typePSG) break;
    // Write order list
    if (vars.loopPat >= 0)
      w->writeText(fmt::sprintf("\n%s_%s:", options.label, smpsChanName(l)));

    if (vars.chanOn[l] == typeNoise)
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsNoise], 0xE7));

    // get the volume at the beginning of each pattern
    uint8_t startVols[0x101];
    if (vars.chanOn[l] < typePSG)
      startVols[0] = 0x7F;
    else
      startVols[0] = 0x0F;
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
        w->writeText(fmt::sprintf("\n\n%s_%s_Jump:", options.label, smpsChanName(l)));
      w->writeText(fmt::sprintf("\n\t%s %s_%s_%.2X_%d_%d", vars.symCommands[smpsCall], options.label, smpsChanName(l), s->orders.ord[l][j], vars.lenTable[0][j], vars.lenTable[1][j]));
      if (startVols[j + 1] != startVols[j])
        w->writeText(fmt::sprintf("_%.2X",startVols[j]));
    }

    // Before jumping, reset volume
    uint8_t diffVol = (startVols[vars.endPat + 1] - startVols[vars.loopPat % 257]);
    if (diffVol != 0)
      if (vars.chanOn[l] == typeFM)
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolFM], diffVol));
      else
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolPSG], diffVol));
    if (vars.loopPat >= 0)
      w->writeText(fmt::sprintf("\n\t%s %s_%s_Jump\n", vars.symCommands[smpsJump], options.label, smpsChanName(l)));
    else
      w->writeText(fmt::sprintf("\n\t%s\n", vars.symCommands[smpsStop]));

    // Create array to keep track of written patterns
    uint8_t patternsWritten[4][0x100];
    int numUniquePat = 0;
    for (int i = 0; i < 0x100; i++) {
      patternsWritten[0][i] = 0;
      patternsWritten[1][i] = 0;
      patternsWritten[2][i] = 0;
      patternsWritten[3][i] = 0;
    }

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
      int lastNote = 0, lastOctave = 0, lastWait = 0;
      int lineCnt = 0;

      DivPattern* p = s->pat[l].getPattern(orderNum, false);

      w->writeText(fmt::sprintf("\n%s_%s_%.2X_%d_%d", options.label, smpsChanName(l), orderNum, patStart, patLen));
      if (startVols[j + 1] != startVols[j])
        w->writeText(fmt::sprintf("_%.2X", startVols[j]));
      w->writeText(":");

      temp.hold = temp.legato = false;
      temp.wroteLen = temp.wroteNote = false;
      temp.note = temp.octave = 0;
      temp.order = j;
      temp.channel = l;
      temp.lineCnt = 0;
      temp.steps = patStart;
      temp.lastIns = -1;
      temp.lastVol = startVols[j];
      temp.prevNote = temp.prevOctave = temp.prevTime = 0;
      getTimer(p, vars, temp, s, options);

      if (temp.noteTime != vars.lenTable[1][temp.order])
        temp.noteTime -= 1;
      if (temp.noteTime > 0) {
        separateNote(w, temp);
        w->writeText(vars.symCommands[smpsHold]);
        if (!temp.legato)
          temp.hold = false;
      }
      writeNotes(w, vars, temp);
      for (temp.steps = (temp.noteTime + 1); temp.steps <= patLen;) {
        getTimer(p, vars, temp, s, options);
        writeNotes(w, vars, temp);
        temp.steps += temp.noteTime;
      }
      w->writeText(fmt::sprintf("\n\t%s\n", vars.symCommands[smpsRet]));
    }
  }
  saveLock.unlock();
  return w;
}
