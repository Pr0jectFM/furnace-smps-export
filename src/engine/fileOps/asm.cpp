/**
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

// style names
enum smpsVersion {
  verFlamewing,
  verMDMP,
  verAMPS,
  verSource
};

// get tempo with Sonic 1's algorithm
void spmToTempo1(SafeWriter* w, DivSubSong* s) {
  int tempo = 0;
  float approx = 0;
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  int div = 1;
  int tempo1 = round(1 / (1 - div / frames));
  float approx1 = (60 * 60) / (s->hilightA * div * (tempo1 / (tempo1 - 1.0)));
  div = 2;
  int tempo2 = round(1 / (1 - div / frames));
  float approx2 = (60 * 60) / (s->hilightA * div * (tempo2 / (tempo2 - 1.0)));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));

  if ((abs(approx2 - given) / given) > (abs(approx1 - given) / given) || (tempo2 < 2)) {
    div = 1;
    approx = approx1;
    tempo = tempo1;
  }
  else {
    approx = approx2;
    tempo = tempo2;
  }
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

// get tempo with Sonic 2's algorithm
void spmToTempo2(SafeWriter* w, DivSubSong* s) {
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  uint8_t div = 2;
  if (frames <= 2)
    div = 1;
  int tempo = div * 256.0 / frames;
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));
  float approx = (60 * 60) / (s->hilightA * 256.0 * div / tempo);
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

// get tempo with Sonic 3's algorithm
void spmToTempo3(SafeWriter* w, DivSubSong* s) {
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  uint8_t div = 2;
  if (frames <= 2)
    div = 1;
  int tempo = 256 - div * 256.0 / frames;
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));
  float approx = (60 * 60) / (s->hilightA * 256.0 * div / (256 - tempo));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

// Gets the channel number and outputs the name of the channel
String smpsChanName(int num) {
  // To Do: account for FM6 and PSG3 modes
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
void write2Operators(SafeWriter* w, const int opArray[4], const char* param, const int opArray2[4]) {
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

// enums used for symbol array
enum smpsSymbols{
  // Header
  smpsHeader=0,
    smpsStart=smpsHeader,
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
    smpsDetune=smpsVoices,
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
    smpsPan=smpsEffects,
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
  uint8_t fmVoices[0x100];
  String psgVoices[0x100];
  // pattern and song length
  uint8_t loopPat;
  uint8_t endPat;
  uint8_t lenTable[2][0x100];
  int endPlace;
  // note status
  bool hold, legato;
  int volRate;
  uint8_t vib[4];
  int pitchTarget, pitchRate;
  uint8_t pan, noise, retrigger;
  // macros
  int pitchMacro, volMacro;

};

static void writeHeader(SafeWriter* w, smpsVars& vars, DivSubSong*& s, DivSMPSOptions& options) {
  // Write header
  w->writeText(fmt::sprintf("%s_Header:", options.label));
  w->writeText(fmt::sprintf("\n\t%s", vars.symCommands[smpsStart]));
  if (options.style == verFlamewing)
    w->writeText(fmt::sprintf(" %d", options.tempo + 1));
  if (options.style != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t%s_Voices", vars.symCommands[smpsVoice], options.label));
  w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", vars.symCommands[smpsChan], 6, 3));
  w->writeText(fmt::sprintf("\n\t%s\t", vars.symCommands[smpsTempo]));
  switch (options.tempo) {
  case 0:
    spmToTempo1(w, s);
    break;
  case 1:
    spmToTempo2(w, s);
    break;
  default:
    spmToTempo3(w, s);
  }
  if (options.style == verAMPS) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC1", vars.symCommands[smpsDAC], options.label));
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC2", vars.symCommands[smpsDAC], options.label));
  }
  else
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC", vars.symCommands[smpsDAC], options.label));
  for (int i = 1; i <= 5; i++)
    w->writeText(fmt::sprintf("\n\t%s\t%s_FM%d,\t$%.2X, $%.2X", vars.symCommands[smpsFM], options.label, i, 0, 0));
  for (int i = 1; i <= 3; i++)
    w->writeText(fmt::sprintf("\n\t%s\t%s_PSG%d,\t$%.2X, $%.2X, $%.2X, $%.2X", vars.symCommands[smpsPSG], options.label, i, 0, 0, 0, 0));
}

static void writeVoices(SafeWriter* w, smpsVars &vars, DivSong &song, DivSMPSOptions &options) {
  w->writeText(fmt::sprintf("\n\n%s_Voices:\n", options.label));
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
        write2Operators(w, opParams[smpsDetune - smpsVoices], vars.symCommands[smpsDetune], opParams[smpsMult - smpsVoices]);
        write2Operators(w, opParams[smpsRtScale - smpsVoices], vars.symCommands[smpsRtScale], opParams[smpsAttRt - smpsVoices]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], vars.symCommands[smpsDecRt1]);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], vars.symCommands[smpsDecRt2]);
        write2Operators(w, opParams[smpsSusLv - smpsVoices], vars.symCommands[smpsSusLv], opParams[smpsRelRt - smpsVoices]);
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
String smpsCommands(SafeWriter* w, const uint8_t effect, const uint8_t value, smpsVars &vars, DivSubSong*& s, DivSMPSOptions &options) {
  switch (effect) {
    // arpeggio
    case 0x00:
      return "\n\t; arpeggio";

    // pitch slide up
    case 0x01:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
      goto setVib;
    // pitch slide down
    case 0x02:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
      goto setVib;
    // portamento
    case 0x03:
      vars.pitchRate = value;
      vars.pitchTarget = 0;
    // vibrato
    case 0x04:
    setVib:
      if ((value & 0x0F) == 0)
        return fmt::format("\n\t{:s}", vars.symCommands[smpsVibOff]);

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
      // (TickRate/(64×VibratoSpeed))
      vars.vib[3] = round(s->hz * (0x0F - value / 0x10) / (vars.vib[1] * 64));
      vars.vib[2] = round(8.0 * vars.vib[1] * (value & 0x0F) / (0x0F - value / 0x10));

      return fmt::format("\n\t{:s}\t${:X}, ${:X}, ${:X}, ${:X}", vars.symCommands[smpsSetVib68k], vars.vib[0], vars.vib[1], vars.vib[2], vars.vib[3]);

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
          return fmt::format("\n\t{:s}\t\t{:s}, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanCenter]);
        else
          return fmt::format("\n\t{:s}\t\t{:s}, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanLeft]);
      else if (value & 0xF)
        return fmt::format("\n\t{:s}\t\t{:s}, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanRight]);
      else
        return fmt::format("\n\t{:s}\t\t{:s}, $00", vars.symCommands[smpsPan], vars.symCommands[smpsPanNone]);

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

    // set tick rate (Hz)
    case 0xC0:
      return "\t; set tick rate (Hz)";

    // set pitch
    case 0xE5:
      return fmt::format("\n\t{:s}\t\t%d", vars.symCommands[smpsDetune], value);

    // legato
    case 0xEA:
      if (value)
        vars.legato = true;
      else
        vars.legato = false;
      return "";

    // note cut
    case 0xEC:
      return fmt::format("\n\t{:s}\t\t{:s}", vars.symCommands[smpsGate], value);

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

// find the start and end positions of each pattern, as well as the end spot and loop point
void smpsFindLoop(DivSubSong* s, smpsVars &vars) {
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
          if (p->data[k][4 + (m << 1)] == 0x0B) {
            if (p->data[k][5 + (m << 1)] <= j) {
              // if looping
              vars.lenTable[1][j] = k + 1;
              vars.endPat = j;
              vars.endPlace = k;
              vars.loopPat = p->data[k][5 + (m << 1)];
              return;
            }
            else {
              // if skipping ahead
              vars.lenTable[1][j] = k + 1;
              j = p->data[k][5 + (m << 1)];
              k = 0;
              goto nextPattern;
            }
          }
          else if (p->data[k][4 + (m << 1)] == 0x0D) {
            // if going to the next order
            vars.lenTable[1][j] = k + 1;
            j++;
            k = p->data[k][5 + (m << 1)];
            vars.lenTable[0][j] = k;
            goto nextPattern;
          }
          else if (p->data[k][4 + (m << 1)] == 0xFF) {
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

SafeWriter* DivEngine::saveASM(bool separatePatterns, DivSMPSOptions options) {
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
      break;
  }

  int i = 0;
  // To Do: choose which subsong to export rather than default to the first one
  DivSubSong* s = song.subsong[i];

  writeHeader(w, vars, s, options);
  writeVoices(w, vars, song, options);

  // Get length of each pattern and loop points
  smpsFindLoop(s, vars);
  w->writeText(fmt::sprintf("\t; Loop Pattern : % .2X\n", vars.loopPat));
  w->writeText(fmt::sprintf("\t; End Pattern : % .2X\n", vars.endPat));
  w->writeText(fmt::sprintf("\t; End Place : % .2X\n\n", vars.endPlace));

  // Write notes
  String notesSet[13];
  if (options.style != verSource)
    std::copy(notes, notes + 13, notesSet);
  else
    std::copy(notesSource, notesSource + 13, notesSet);

  for (int l = 0; l < chans; l++) {
    if (l == 8)
      l++;

    // Write order list
    if (vars.loopPat >= 0)
      w->writeText(fmt::sprintf("\n%s_%s:", options.label, smpsChanName(l)));

    // Write a rest if it starts holding a note
    /*
    if (p->data[0][0] == 0 && p->data[0][1] == 0)
      w->writeText(fmt::sprintf("\tdc.b nRst\n"));
    */
    if (l == 9)
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsNoise], 0xE7));

    // get the volume at the beginning of each pattern
    int startVols[0x100];
    if (l < 6)
      startVols[0] = 0x7F;
    else
      startVols[0] = 0x0F;
    for (int j = 0; j < s->ordersLen; j++) {
      DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
      startVols[j + 1] = startVols[j] & 0x000000FF;
      bool change = true;
      for (int k = vars.lenTable[0][j]; k < vars.lenTable[1][j]; k++) {
        if (p->data[k][3] >= 0) {
          change = false;
          startVols[j + 1] = p->data[k][3];
        }
        if (change)
          startVols[j] -= 0x100;
      }
    }

    for (int j = 0; j < s->ordersLen; j++) {
      if (j == vars.loopPat)
        w->writeText(fmt::sprintf("\n\n%s_%s_Jump:", options.label, smpsChanName(l)));
      w->writeText(fmt::sprintf("\n\t%s %s_%s_%.2X_%d_%d", vars.symCommands[smpsCall], options.label, smpsChanName(l), s->orders.ord[l][j], vars.lenTable[0][j], vars.lenTable[1][j]));
      if (startVols[j] > 0)
        w->writeText(fmt::sprintf("_%.2X",startVols[j]));
    }

    // Before jumping, reset volume
    int diffVol = (startVols[vars.endPat] - startVols[vars.loopPat&0xFF])&0x000000FF;
    if (diffVol != 0)
      if (l < 6)
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolFM], diffVol));
      else
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolPSG], diffVol));
    if (vars.loopPat >= 0)
      w->writeText(fmt::sprintf("\n\t%s %s_%s_Jump\n", vars.symCommands[smpsJump], options.label, smpsChanName(l)));
    else
      w->writeText(fmt::sprintf("\n\t%s\n", vars.symCommands[smpsStop]));

    // Create array to keep track of written patterns
    uint8_t patternsWritten[3][0x100];
    for (int i = 0; i < 0x100; i++) {
      patternsWritten[0][i] = 0;
      patternsWritten[1][i] = 0;
      patternsWritten[2][i] = 0;
    }

    for (int j = 0; j < s->ordersLen; j++) {
      // Don't write duplicate patterns
      int orderNum = s->orders.ord[l][j];
      int patStart = vars.lenTable[0][j];
      int patLen = vars.lenTable[1][j];
      uint8_t lastVol = startVols[j], lastIns = -1;
      if (patternsWritten[0][orderNum] == patStart && patternsWritten[1][orderNum] == patLen && patternsWritten[2][orderNum] == lastVol)
        goto nextPattern;
      patternsWritten[0][orderNum] = patStart;
      patternsWritten[1][orderNum] = patLen;
      patternsWritten[2][orderNum] = lastVol;

      int cntWait = 0;
      int lastNote = 0, lastOctave = 0, lastWait = 0;
      int lineCnt = 0;
      vars.hold = true;
      vars.legato = false;

      DivPattern* p = s->pat[l].getPattern(orderNum, false);

      w->writeText(fmt::sprintf("\n%s_%s_%.2X_%d_%d", options.label, smpsChanName(l), orderNum, patStart, patLen));
      if (startVols[j] > 0)
        w->writeText(fmt::sprintf("_%.2X", startVols[j]));
      w->writeText(":");

      for (int k = 0; k < patLen; k++) {

        int note = p->data[k][0];
        int octave = p->data[k][1];

        // write instrument changes
        if (p->data[k][2] >= 0 && p->data[k][2] != lastIns) {
          if (cntWait != 0) {
            lastWait = cntWait;
            if (lineCnt != 0)
              w->writeText(", ");
            else
              w->writeText(fmt::sprintf("\n\tdc.b "));
            w->writeText(fmt::sprintf("$%.2X", cntWait));
            cntWait = 0;
          }
          if (l < 5)
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsSetVoice], vars.fmVoices[p->data[k][2]]));
          else if (l > 5)
            w->writeText(fmt::sprintf("\n\t%s\t%s", vars.symCommands[smpsVolEnv], vars.psgVoices[p->data[k][2]]));
          lastIns = p->data[k][2];
          lineCnt = 0;
          if (note == 0 && octave == 0)
            vars.hold = true;
        }

        // write volume changes
        if (p->data[k][3] >= 0 && p->data[k][3] != lastVol) {
          if (cntWait != 0) {
            lastWait = cntWait;
            if (lineCnt != 0)
              w->writeText(", ");
            else
              w->writeText(fmt::sprintf("\n\tdc.b "));
            w->writeText(fmt::sprintf("$%.2X", cntWait));
            cntWait = 0;
          }
          if (l < 6)
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolFM], (-(p->data[k][3] - lastVol))&0x000000FF));
          else
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", vars.symCommands[smpsAltVolPSG], (-(p->data[k][3] - lastVol))&0x000000FF));
          lastVol = p->data[k][3];
          lineCnt = 0;
          if (note == 0 && octave == 0)
            vars.hold = true;
        }

        // write effects
        for (int m = 0; m < s->pat[l].effectCols; m++)
          if (p->data[k][4 + (m << 1)] >= 0) {
            String line = smpsCommands(w, p->data[k][4 + (m << 1)], p->data[k][5 + (m << 1)], vars, s, options);
            if (line != "") {
              if (cntWait != 0) {
                lastWait = cntWait;
                if (lineCnt != 0)
                  w->writeText(", ");
                else
                  w->writeText(fmt::sprintf("\n\tdc.b "));
                w->writeText(fmt::sprintf("$%.2X", cntWait));
                cntWait = 0;
              }
              lineCnt = 0;
              w->writeText(fmt::sprintf(line));
              if (note == 0 && octave == 0)
                vars.hold = true;
            }
          }

        // write notes
        if (note == 0 && octave == 0) {
          if (vars.hold) {
            w->writeText(fmt::sprintf("\n\tdc.b %s", vars.symCommands[smpsHold]));
            lineCnt++;
            vars.hold = false;
          }
          cntWait++;
        }
        else if (lastNote == note && lastOctave == octave && cntWait == 0) {
          cntWait = 1;
        }
        else {
          vars.hold = vars.legato;
          bool written = false;
          if (lineCnt != 0)
            w->writeText(", ");
          else
            w->writeText(fmt::sprintf("\n\tdc.b "));
          if (lastWait != cntWait && cntWait != 0) {
            written = true;
            lineCnt++;
            w->writeText(fmt::sprintf("$%.2X", cntWait));
          }
          if (lastNote != note || lastOctave != octave) {
            if (written)
              w->writeText(fmt::sprintf(", "));
            written = true;
            lastNote = note;
            lastOctave = octave;
            lineCnt++;
            if (note != 100) {
              if (octave >= 128) octave -= 256;
              if (note > 11) {
                note -= 12;
                octave++;
              }
              if (l > 5)
                octave--;
              if (l > 5 && (octave > 5 || (octave == 5 && note >= 5)))
                w->writeText(fmt::sprintf("%s", "nMaxPSG"));
              else
                w->writeText(fmt::sprintf("%s%d", notesSet[note], octave));
            }
            else
              w->writeText(fmt::sprintf("%s", notesSet[12]));
          }
          if (written == false) {
            lineCnt++;
            w->writeText(fmt::sprintf("$%.2X", cntWait));
          }
          lastWait = cntWait;
          cntWait = 1;
        }
        if (lineCnt >= 16)
          lineCnt = 0;
      }
      if (lastWait != cntWait) {
        if (lineCnt != 0)
          w->writeText(", ");
        else
          w->writeText(fmt::sprintf("\n\tdc.b "));
        w->writeText(fmt::sprintf("$%.2X", cntWait));
      }
      w->writeText(fmt::sprintf("\n\t%s\n", vars.symCommands[smpsRet]));

    nextPattern:
      continue;
    }
  }

  saveLock.unlock();
  return w;
}
