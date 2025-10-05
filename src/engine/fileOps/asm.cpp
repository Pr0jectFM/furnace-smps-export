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

static const char* trueFalse[2]={
  "no", "yes"
};

static const char* gbEnvDir[2]={
  "down", "up"
};

static const char* notes[13]={
  "nC", "nCs", "nD", "nDs", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst"
};

static const char* notesSource[13] = {
  "CN", "CS", "DN", "DS", "EN", "FN", "FS", "GN", "GS", "AN", "BF", "BN", "NL"
};

enum smpsVersion {
  verFlamewing,
  verMDMP,
  verAMPS,
  verSource
};

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
    smpsPortameno,
    smpsStop,
    smpsJump,
    smpsLoop,
    smpsCall,
    smpsRet,
    smpsGate,
    smpsFreqNote,
    smpsNoise,
  smpsSymLen
};

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
  "smpsMod68k",
  "smpsModZ80",
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
  "smpsPSGform"
};

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
  "sNoisePSG"
  };

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
  "sNoisePSG"
};

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
  "CMNOIS"
};

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

String smpsCommands(SafeWriter* w, const int effect, const int value) {
  switch (effect) {
    // arpeggio
    case 0x00:
      return "\n\t; arpeggio";

    // pitch slide up
    case 0x01:
      return "\n\t; pitch slide up";

    // pitch slide down
    case 0x02:
      return "\n\t; pitch slide down";

    // portamento
    case 0x03:
      return "\n\t; portamento";

    // vibrato
    case 0x04:
      return "\n\t; vibrato";

    // tremolo
    case 0x07:
      return "\n\t; portamento";

    // panning
    case 0x08:
      if (value & 0xF0) {
        if (value & 0xF)
          return "\n\tsmpsPan\t\tpanCenter, $00";
        else
          return "\n\tsmpsPan\t\tpanLeft, $00";
      }
      else if (value & 0xF)
        return "\n\tsmpsPan\t\tpanRight, $00";
      else
        return "\n\tsmpsPan\t\tpanNone, $00";

    // groove pattern
    case 0x09:
      return "\t; groove pattern";

    // volume slide
    case 0x0A:
      return "\t; volume slide";

    // jump to pattern
    case 0x0B:
      // jump to next pattern
    case 0x0D:
      return "";

    // retrigger
    case 0x0C:
      return "\t; retrigger";

    // set tick rate (Hz)
    case 0xC0:
      return "\t; set tick rate (Hz)";

    // set pitch
    case 0xE5:
      return "\t; set pitch";

    // legato
    case 0xEA:
      return "\t; legato";

    // note cut
    case 0xEC:
      return "\t; note cut";

      // note delay
    case 0xED:
      return "\t; note delay";

      // set tick rate (bpm)
    case 0xF0:
      return "\t; set tick rate (bpm)";

      // fine volume slide up
    case 0xF3:
      return "\t; fine volume slide up";

      // fine volume slide down
    case 0xF4:
      return "\t; fine volume slide down";

      // stop song
    case 0xFF:
      return "\t; stop song";

      // unsupported effects are commented out
    default:
      return "\t; Effect not supported:";
  }
}

void writeOperator(SafeWriter* w, const int opArray[4], const char* param) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[3]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
  w->writeText(fmt::sprintf("$%.2X\n", opArray[0]));
}

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

void smpsFindLoop(DivSubSong* s, int& loopPattern, int& endPattern, int& endPlace, int(&lenTable)[2][0x100]) {
  for (int j = 0; j < s->ordersLen; j++) {
    for (int k = 0; k < s->patLen; k++) {
    nextPattern:
      for (int l = 0; l < 10; l++) {
        DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
        for (int m = 0; m < s->pat[l].effectCols; m++) {
          if (p->data[k][4 + (m << 1)] == 0x0B) {
            if (p->data[k][5 + (m << 1)] <= j) {
              // if looping
              lenTable[1][j] = k + 1;
              endPattern = j;
              endPlace = k;
              loopPattern = p->data[k][5 + (m << 1)];
              return;
            }
            else {
              // if skipping ahead
              lenTable[1][j] = k + 1;
              j = p->data[k][5 + (m << 1)];
              k = 0;
              goto nextPattern;
            }
          }
          if (p->data[k][4 + (m << 1)] == 0x0D) {
            // if going to the next order
            lenTable[1][j] = k + 1;
            j++;
            k = p->data[k][5 + (m << 1)];
            lenTable[0][j] = k;
            goto nextPattern;
          }
        }
      }
      lenTable[1][j] = s->patLen;
    }
  }
  return;
}

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

  if ((abs(approx2 - given) / given) > (abs(approx1 - given) / given)){
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

void spmToTempo2(SafeWriter* w, DivSubSong* s) {
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  int div = 2;
  if (frames <= 2)
    div = 1;
  int tempo = div * 256.0 / frames;
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));
  float approx = (60 * 60) / (s->hilightA * 256.0 * div / tempo);
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

void spmToTempo3(SafeWriter* w, DivSubSong* s) {
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  int div = 2;
  if (frames <= 2)
    div = 1;
  int tempo = 256 - div * 256.0 / frames;
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));
  float approx = (60 * 60) / (s->hilightA * 256.0 * div / (256 - tempo));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

void writeASMMacro(SafeWriter* w, DivInstrumentMacro& m, const char* name, bool& wroteMacroHeader) {
  if ((m.open&6)==0 && m.len<1) return;
  if (!wroteMacroHeader) {
    w->writeText(";\tmacros:\n");
    wroteMacroHeader=true;
  }
  w->writeText(fmt::sprintf(";\t\t%s:",name));
  int len=m.len;
  switch (m.open&6) {
    case 2:
      len=16;
      w->writeText(" [ADSR]");
      break;
    case 4:
      len=16;
      w->writeText(" [LFO]");
      break;
  }
  if (m.mode) {
    w->writeText(fmt::sprintf(" [MODE %d]",m.mode));
  }
  if (m.delay>0) {
    w->writeText(fmt::sprintf(" [DELAY %d]",m.delay));
  }
  if (m.speed>1) {
    w->writeText(fmt::sprintf(" [SPEED %d]",m.speed));
  }
  for (int i=0; i<len; i++) {
    if (i==m.loop) {
      w->writeText(" |");
    }
    if (i==m.rel) {
      w->writeText(" /");
    }
    w->writeText(fmt::sprintf(" %d",m.val[i]));
  }
  w->writeText("\n");
}

SafeWriter* DivEngine::saveASM(bool separatePatterns, String smpsLabel, int smpsStyle, int smpsSettingsTempo, int smpsVibrato, int smpsPSGPitch, int smpsPitchEnv, int smpsPortamento) {
  saveLock.lock();

  SafeWriter* w = new SafeWriter;
  w->init();

  // Get symbols for the corresponding version
  static const char* smpsSymCommands[smpsSymLen] = {};
  switch (smpsStyle) {
  case verFlamewing:
    std::copy(smpsSymFlamewing, smpsSymFlamewing + smpsSymLen, smpsSymCommands);
    break;
  case verMDMP:
    std::copy(smpsSymMDMP, smpsSymMDMP + smpsSymLen, smpsSymCommands);
    break;
  case verAMPS:
    std::copy(smpsSymAMPS, smpsSymAMPS + smpsSymLen, smpsSymCommands);
    break;
  case verSource:
    std::copy(smpsSymSource, smpsSymSource + smpsSymLen, smpsSymCommands);
    break;
  }

  // Write header
  w->writeText(fmt::sprintf("%s_Header:", smpsLabel));
  w->writeText(fmt::sprintf("\n\t%s", smpsSymCommands[smpsStart]));
  if (smpsStyle == verFlamewing)
    w->writeText(fmt::sprintf(" %d", smpsSettingsTempo + 1));
  if (smpsStyle != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t%s_Voices", smpsSymCommands[smpsVoice], smpsLabel));
  w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", smpsSymCommands[smpsChan], 6, 3));
  w->writeText(fmt::sprintf("\n\t%s\t", smpsSymCommands[smpsTempo]));
  switch (smpsSettingsTempo) {
    case 0:
      spmToTempo1(w, song.subsong[0]);
      break;
    case 1:
      spmToTempo2(w, song.subsong[0]);
      break;
    default:
      spmToTempo3(w, song.subsong[0]);
  }
  if (smpsStyle == verAMPS) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC1", smpsSymCommands[smpsDAC], smpsLabel));
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC2", smpsSymCommands[smpsDAC], smpsLabel));
  }
  else
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC", smpsSymCommands[smpsDAC], smpsLabel));
  for (int i = 1; i <= 5; i++) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_FM%d,\t$%.2X, $%.2X", smpsSymCommands[smpsFM], smpsLabel, i, 0, 0));
  }
  for (int i = 1; i <= 3; i++) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_PSG%d,\t$%.2X, $%.2X, $%.2X, $%.2X", smpsSymCommands[smpsPSG], smpsLabel, i, 0, 0, 0, 0));
  }

  // Write voices
  w->writeText(fmt::sprintf("\n\n%s_Voices:\n", smpsLabel));

  int fmVoice = 0;
  int fmVoices[0x100];
  String psgVoices[0x100];
  for (int i = 0; i < song.insLen; i++) {
    DivInstrument* ins = song.ins[i];

    // For FM voices
    if (ins->type == DIV_INS_FM) {
      w->writeText(fmt::sprintf(";\tFM Voice %.2X -> %.2X: %s\n", i, fmVoice, ins->name));
      fmVoices[i] = fmVoice;
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
      if (smpsStyle != verSource) {
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", smpsSymCommands[smpsAlg], ins->fm.alg));
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", smpsSymCommands[smpsFeed], ins->fm.fb));
        writeOperator(w, opParams[smpsDetune - smpsVoices], smpsSymCommands[smpsDetune]);
        writeOperator(w, opParams[smpsMult - smpsVoices], smpsSymCommands[smpsMult]);
        writeOperator(w, opParams[smpsRtScale - smpsVoices], smpsSymCommands[smpsRtScale]);
        writeOperator(w, opParams[smpsAttRt - smpsVoices], smpsSymCommands[smpsAttRt]);
        writeOperator(w, opParams[smpsAmpMod - smpsVoices], smpsSymCommands[smpsAmpMod]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], smpsSymCommands[smpsDecRt1]);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], smpsSymCommands[smpsDecRt2]);
        writeOperator(w, opParams[smpsSusLv - smpsVoices], smpsSymCommands[smpsSusLv]);
        writeOperator(w, opParams[smpsRelRt - smpsVoices], smpsSymCommands[smpsRelRt]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], smpsSymCommands[smpsTotLv]);
        if (smpsStyle == verAMPS)
          writeOperator(w, opParams[smpsSSGEG - smpsVoices], smpsSymCommands[smpsSSGEG]);

      }
      else {
        w->writeText(fmt::sprintf("\t%s\t\t$%.2X, $%.2X\n", smpsSymCommands[smpsAlg], ins->fm.alg, ins->fm.fb));
        write2Operators(w, opParams[smpsDetune - smpsVoices], smpsSymCommands[smpsDetune], opParams[smpsMult - smpsVoices]);
        write2Operators(w, opParams[smpsRtScale - smpsVoices], smpsSymCommands[smpsRtScale], opParams[smpsAttRt - smpsVoices]);
        writeOperator(w, opParams[smpsDecRt1 - smpsVoices], smpsSymCommands[smpsDecRt1]);
        writeOperator(w, opParams[smpsDecRt2 - smpsVoices], smpsSymCommands[smpsDecRt2]);
        write2Operators(w, opParams[smpsSusLv - smpsVoices], smpsSymCommands[smpsSusLv], opParams[smpsRelRt - smpsVoices]);
        writeOperator(w, opParams[smpsTotLv - smpsVoices], smpsSymCommands[smpsTotLv]);
      }
      fmVoice++;
    }

    // For PSG voices
    if (ins->type == DIV_INS_STD) {
      String psgVoice = ins->name;
      w->writeText(fmt::sprintf(";\tPSG Voice %.2X -> %s: %s\n", i, psgVoice, ins->name));
      psgVoices[i] = psgVoice;
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

  int i = 0;

  // To Do: choose which subsong to export rather than default to the first one
  DivSubSong* s = song.subsong[i];

  // Get length of each pattern and loop points
  int loopPattern = 0, endPattern = s->ordersLen, endPlace = s->patLen, lenTable[2][0x100];
  for (int i = 0; i < 0x100; i++) {
    lenTable[0][i] = 0;
    lenTable[1][i] = 0;
  }
  smpsFindLoop(s, loopPattern, endPattern, endPlace, lenTable);
  w->writeText(fmt::sprintf("\t; Loop Pattern : % .2X\n", loopPattern));
  w->writeText(fmt::sprintf("\t; End Pattern : % .2X\n", endPattern));
  w->writeText(fmt::sprintf("\t; End Place : % .2X\n\n", endPlace));

  // Write notes
  String notesSet[13];
  if (smpsStyle != verSource)
    std::copy(notes, notes + 13, notesSet);
  else
    std::copy(notesSource, notesSource + 13, notesSet);

  for (int l = 0; l < chans; l++) {
    if (l == 8)
      l++;

    // Write order list
    w->writeText(fmt::sprintf("\n%s_%s:", smpsLabel, smpsChanName(l)));

    // Write a rest if it starts holding a note
    /*
    if (p->data[0][0] == 0 && p->data[0][1] == 0)
      w->writeText(fmt::sprintf("\tdc.b nRst\n"));
    */
    if (l == 9)
      w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsNoise], 0xE7));

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
      for (int k = lenTable[0][j]; k < lenTable[1][j]; k++) {
        if (p->data[k][3] >= 0) {
          change = false;
          startVols[j + 1] = p->data[k][3];
        }
        if (change)
          startVols[j] -= 0x100;
      }
    }

    for (int j = 0; j < s->ordersLen; j++) {
      if (j == loopPattern)
        w->writeText(fmt::sprintf("\n\n%s_%s_Jump:", smpsLabel, smpsChanName(l)));
      w->writeText(fmt::sprintf("\n\t%s %s_%s_%.2X_%d_%d", smpsSymCommands[smpsCall], smpsLabel, smpsChanName(l), s->orders.ord[l][j], lenTable[0][j], lenTable[1][j]));
      if (startVols[j] > 0)
        w->writeText(fmt::sprintf("_%.2X",startVols[j]));
    }

    // Before jumping, reset volume
    int diffVol = (startVols[endPattern] - startVols[loopPattern])&0x000000FF;
    if (diffVol != 0)
      if (l < 6)
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsAltVolFM], diffVol));
      else
        w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsAltVolPSG], diffVol));
    w->writeText(fmt::sprintf("\n\t%s %s_%s_Jump\n",smpsSymCommands[smpsJump], smpsLabel, smpsChanName(l)));

    // Create array to keep track of written patterns
    int patternsWritten[3][0x100];
    for (int i = 0; i < 0x100; i++) {
      patternsWritten[0][i] = 0;
      patternsWritten[1][i] = 0;
      patternsWritten[2][i] = 0;
    }

    for (int j = 0; j < s->ordersLen; j++) {
      // Don't write duplicate patterns
      int orderNum = s->orders.ord[l][j];
      int patStart = lenTable[0][j];
      int patLen = lenTable[1][j];
      int lastVol = startVols[j], lastIns = -1;
      if (patternsWritten[0][orderNum] == patStart && patternsWritten[1][orderNum] == patLen && patternsWritten[2][orderNum] == lastVol)
        goto nextPattern;
      patternsWritten[0][orderNum] = patStart;
      patternsWritten[1][orderNum] = patLen;
      patternsWritten[2][orderNum] = lastVol;

      int cntWait = 0;
      int lastNote = 0, lastOctave = 0, lastWait = 0;
      int lineCnt = 0;
      int holding = 1;

      DivPattern* p = s->pat[l].getPattern(orderNum, false);

      w->writeText(fmt::sprintf("\n%s_%s_%.2X_%d_%d", smpsLabel, smpsChanName(l), orderNum, patStart, patLen));
      if (lastVol > 0)
        w->writeText(fmt::sprintf("_%.2X", lastVol));
      w->writeText(":");

      for (int k = 0; k < patLen; k++) {

        int note = p->data[k][0];
        int octave = p->data[k][1];

        // write instrument changes
        if (p->data[k][2] >= 0 && p->data[k][2] != lastIns) {
          if (cntWait != 0) {
            lastWait = 0;
            if (lineCnt != 0)
              w->writeText(", ");
            w->writeText(fmt::sprintf("$%.2X", cntWait));
            cntWait = 0;
          }
          if (l < 5)
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsSetVoice], fmVoices[p->data[k][2]]));
          else if (l > 5)
            w->writeText(fmt::sprintf("\n\t%s\t%s", smpsSymCommands[smpsVolEnv], psgVoices[p->data[k][2]]));
          lastIns = p->data[k][2];
          lineCnt = 0;
          holding = 1;
        }

        // write volume changes
        if (p->data[k][3] >= 0 && p->data[k][3] != lastVol) {
          if (cntWait != 0) {
            lastWait = 0;
            if (lineCnt != 0)
              w->writeText(", ");
            w->writeText(fmt::sprintf("$%.2X", cntWait));
            cntWait = 0;
          }
          if (l < 6)
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsAltVolFM], (-(p->data[k][3] - lastVol))&0x000000FF));
          else
            w->writeText(fmt::sprintf("\n\t%s\t$%.2X", smpsSymCommands[smpsAltVolPSG], (-(p->data[k][3] - lastVol))&0x000000FF));
          lastVol = p->data[k][3];
          lineCnt = 0;
          holding = 1;
        }

        // write effects
        for (int m = 0; m < s->pat[l].effectCols; m++)
          if (p->data[k][4 + (m << 1)] >= 0) {
            String line = smpsCommands(w, p->data[k][4 + (m << 1)], p->data[k][5 + (m << 1)]);
            if (line != "") {
              if (cntWait != 0) {
                lastWait = 0;
                if (lineCnt != 0)
                  w->writeText(", ");
                w->writeText(fmt::sprintf("$%.2X", cntWait));
                cntWait = 0;
              }
              lineCnt = 0;
              w->writeText(fmt::sprintf(line));
              holding = 1;
            }
          }

        // write notes
        if (note == 0 && octave == 0) {
          if (holding) {
            w->writeText(fmt::sprintf("\n\tdc.b %s", smpsSymCommands[smpsHold]));
            lineCnt++;
            holding = 0;
          }
          cntWait++;
        }
        else {
          holding = 0;
          if (lineCnt != 0)
            w->writeText(", ");
          else
            w->writeText(fmt::sprintf("\n\tdc.b "));
          if (lastNote == note && lastOctave == octave) {
            lastNote = note;
            lastOctave = octave;
            lastWait = 0;
            lineCnt++;
            w->writeText(fmt::sprintf("$%.2X", cntWait));
          }
          else if (lastWait == cntWait) {
            lastNote = 0;
            lastOctave = 0;
            lastWait = cntWait;
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
          else {
            lastNote = note;
            lastOctave = octave;
            lastWait = cntWait;
            lineCnt += 2;
            if (note != 100) {
              if (octave >= 128) octave -= 256;
              if (note > 11) {
                note -= 12;
                octave++;
              }
              if (l > 5)
                octave--;
              if (l > 5 && (octave > 5 || (octave == 5 && note >= 5)))
                w->writeText(fmt::sprintf("$%.2X, %s", cntWait, "nMaxPSG"));
              else
                w->writeText(fmt::sprintf("$%.2X, %s%d", cntWait, notesSet[note], octave));
            }
            else
              w->writeText(fmt::sprintf("$%.2X, %s", cntWait, notesSet[12]));
          }
          cntWait = 1;
        }
        if (lineCnt >= 16)
          lineCnt = 0;
      }
      if (lastWait != cntWait)
        w->writeText(fmt::sprintf(", $%.2X", cntWait));
      w->writeText(fmt::sprintf("\n\t%s\n", smpsSymCommands[smpsRet]));
    nextPattern:
      continue;
    }
  }

  saveLock.unlock();
  return w;
}
