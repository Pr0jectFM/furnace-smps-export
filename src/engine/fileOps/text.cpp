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

static const char* notes[12]={
  "nC", "nCs", "nD", "nDs", "nE", "nF", "nFs", "nG", "nGs", "nA", "nBb", "nB"
};

static const char* notesSource[12] = {
  "CN", "CS", "DN", "DS", "EN", "FN", "FS", "GN", "GS", "AN", "BF", "BN"
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
  "smpsHeaderVoice",
  "smpsHeaderChan",
  "smpsHeaderTempo",
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
  // Effects
  "smpsPan",
  "smpsAlterNote",
  "smpsAlterPitch",
  "smpsSetTempoDiv",
  "smpsNoAttack",
  "smpsSetVoice",
  "smpsPSGvoice",
  "smpsModChange",
  "smpsSetTempoMod",
  "; Not Implemented",
  "; Not Implemented",
  "smpsAlterVol",
  "smpsPSGAlterVol",
  "smpsSetLFO",
  "smpsMod68k",
  "smpsModZ80",
  "smpsModOn",
  "smpsModOff",
  "; Not Implemented",
  "; Not Implemented",
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
  "; Not Implemented",
  "; Not Implemented",
  "saVolFM",
  "saVolPSG",
  "; Not Implemented",
  "sMod68k",
  "sModZ80",
  "sModOn",
  "sModOff",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
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
  "; Not Implemented",
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
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  // Voices
  "CNF",
  "; Not Implemented",
  "MD",
  "; Not Implemented",
  "RSAR",
  "; Not Implemented",
  "; Not Implemented",
  "D1R",
  "D2R",
  "RRL",
  "; Not Implemented",
  "TL",
  // Effects
  "LRPAN",
  "FDT",
  "CMBIAS",
  "KEYSET",
  "TIE",
  "FEV",
  "EV",
  "; Not Implemented",
  "TEMPO_CHG",
  "; Not Implemented",
  "; Not Implemented",
  "CMVADD",
  "PFVADD",
  "LFO",
  "FVR",
  "FVR",
  "VRON",
  "VROFF",
  "; Not Implemented",
  "; Not Implemented",
  "; Not Implemented",
  "CMEND",
  "CMJUMP",
  "CMREPT",
  "CMCALL",
  "CMRET",
  "CMGATE",
  "; Not Implemented",
  "CMNOIS"
};

void smpsCommands(SafeWriter* w, const int effect, const int value) {
  switch (effect) {
    // arpeggio
    case 0x00:
      break;

    // volume slide up
    case 0x01:
      break;

    // volume slide down
    case 0x02:
      break;

    // portamento
    case 0x03:
      break;

    // vibrato
    case 0x04:
      break;

    // tremolo
    case 0x07:
      break;

    // panning
    case 0x08:
      if (value & 0xF0) {
        if (value & 0xF)
          w->writeText(fmt::sprintf("\tsmpsPan\t\tpanCenter, $00"));
        else
          w->writeText(fmt::sprintf("\tsmpsPan\t\tpanLeft, $00"));
      }
      else if (value & 0xF)
        w->writeText(fmt::sprintf("\tsmpsPan\t\tpanRight, $00"));
      else
        w->writeText(fmt::sprintf("\tsmpsPan\t\tpanNone, $00"));
      break;

    // groove pattern
    case 0x09:
      break;

    // volume slide
    case 0x0A:
      break;

    // jump to pattern
    case 0x0B:
      break;

    // retrigger
    case 0x0C:
      break;

    // jump to next pattern
    case 0x0D:
      break;

    // set tick rate (Hx)
    case 0xC0:
      break;

    // set pitch
    case 0xE5:
      break;

    // legato
    case 0xEA:
      break;

    // note cut
    case 0xEC:
      break;

    // note delay
    case 0xED:
      break;

    // set tick rate (bpm)
    case 0xF0:
      break;

    // fine volume slide up
    case 0xF3:
      break;

    // fine volume slide down
    case 0xF4:
      break;

    // stop song
    case 0xFF:
      break;

    // unsupported effects are commented out
    default:
      w->writeText(fmt::sprintf(";\tEffect not supported: %d %d", effect, value));
      break;
  }
  w->writeText(fmt::sprintf("\n"));
}

void writeOperator(SafeWriter* w, const int opArray[4], const char* param) {
  w->writeText(fmt::sprintf("\t%s\t", param));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[3]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[1]));
  w->writeText(fmt::sprintf("$%.2X, ", opArray[2]));
  w->writeText(fmt::sprintf("$%.2X\n", opArray[0]));
}

void spmToTempo1(SafeWriter* w, DivSubSong* s) {
  float frames = (60 * s->speeds.val[0] * (s->timeBase + 1)) / s->hz;
  int div = 2;
  if (frames <= 2) {
    div = 1;
  }
  int tempo = (1 / (1 - div / frames));
  w->writeText(fmt::sprintf("$%.2X, $%.2X\n", div, tempo));
  float given = (s->hz * 60) / (s->speeds.val[0] * s->hilightA * (s->timeBase + 1));
  float approx = (60 * 60) / (s->hilightA * div * (tempo / (tempo - 1.0)));
  w->writeText(fmt::sprintf(";\tGiven Tempo = %f BPM\n", given));
  w->writeText(fmt::sprintf(";\tApproximated Tempo = %f BPM\n", approx));
}

void spmToTempo3(int bpm) {

}

void writeTextMacro(SafeWriter* w, DivInstrumentMacro& m, const char* name, bool& wroteMacroHeader) {
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

SafeWriter* DivEngine::saveText(bool separatePatterns, String smpsLabel, int smpsASMVersion, int smpsTempoVer, int smpsVibrato) {
  saveLock.lock();

  SafeWriter* w = new SafeWriter;
  w->init();

  static const char* smpsSymCommands[smpsSymLen] = {};
  switch (smpsASMVersion) {
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

  w->writeText(fmt::sprintf("%s_Header:", smpsLabel));
  w->writeText(fmt::sprintf("\n\t%s", smpsSymCommands[smpsStart]));
  if (smpsASMVersion != verAMPS)
    w->writeText(fmt::sprintf("\n\t%s\t%s_Voices", smpsSymCommands[smpsVoice], smpsLabel));
  w->writeText(fmt::sprintf("\n\t%s\t$%.2X, $%.2X", smpsSymCommands[smpsChan], 6, 3));
  w->writeText(fmt::sprintf("\n\t%s\t", smpsSymCommands[smpsTempo]));
  spmToTempo1(w, song.subsong[0]);
  if (smpsASMVersion == verAMPS) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC1", smpsSymCommands[smpsDAC], smpsLabel));
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC2", smpsSymCommands[smpsDAC], smpsLabel));
  }
  else
    w->writeText(fmt::sprintf("\n\t%s\t%s_DAC", smpsSymCommands[smpsDAC], smpsLabel));
  for (int i = 1; i <= 6; i++) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_FM%d, $%.2X, $%.2X", smpsSymCommands[smpsFM], smpsLabel, i, 0, 0));
  }
  for (int i = 1; i <= 3; i++) {
    w->writeText(fmt::sprintf("\n\t%s\t%s_PSG%d, $%.2X, $%.2X, $%.2X, $%.2X", smpsSymCommands[smpsFM], smpsLabel, i, 0, 0, 0, 0));
  }

  w->writeText(fmt::sprintf("\n\n%s_Voices:\n", smpsLabel));

  for (int i = 0; i < song.insLen; i++) {
    DivInstrument* ins = song.ins[i];

    w->writeText(fmt::sprintf(";\tVoice %.2X: %s\n", i, ins->name));

    if (ins->type == DIV_INS_FM) {
      const int opCount = 4;

      w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", smpsSymCommands[smpsAlg], ins->fm.alg));
      w->writeText(fmt::sprintf("\t%s\t\t$%.2X\n", smpsSymCommands[smpsFeed], ins->fm.fb));

      // create table of operator values
      int opParams[10][opCount];
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
        //opParams[j][10] = op.tl;
      }

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
      //writeOperator(w, opParams[10], smpsSymCommands[10]);

    }

    bool header = false;
    writeTextMacro(w, ins->std.volMacro, "vol", header);
    writeTextMacro(w, ins->std.arpMacro, "arp", header);
    writeTextMacro(w, ins->std.dutyMacro, "duty", header);
    writeTextMacro(w, ins->std.waveMacro, "wave", header);
    writeTextMacro(w, ins->std.pitchMacro, "pitch", header);
    writeTextMacro(w, ins->std.panLMacro, "panL", header);
    writeTextMacro(w, ins->std.panRMacro, "panR", header);
    writeTextMacro(w, ins->std.phaseResetMacro, "phaseReset", header);
    writeTextMacro(w, ins->std.ex1Macro, "ex1", header);
    writeTextMacro(w, ins->std.ex2Macro, "ex2", header);
    writeTextMacro(w, ins->std.ex3Macro, "ex3", header);
    writeTextMacro(w, ins->std.ex4Macro, "ex4", header);
    writeTextMacro(w, ins->std.ex5Macro, "ex5", header);
    writeTextMacro(w, ins->std.ex6Macro, "ex6", header);
    writeTextMacro(w, ins->std.ex7Macro, "ex7", header);
    writeTextMacro(w, ins->std.ex8Macro, "ex8", header);
    writeTextMacro(w, ins->std.ex9Macro, "ex9", header);
    writeTextMacro(w, ins->std.ex10Macro, "ex10", header);
    writeTextMacro(w, ins->std.algMacro, "alg", header);
    writeTextMacro(w, ins->std.fbMacro, "fb", header);
    writeTextMacro(w, ins->std.fmsMacro, "fms", header);
    writeTextMacro(w, ins->std.amsMacro, "ams", header);

    // TODO: the rest
    w->writeText("\n");
  }

  int i = 0;

  DivSubSong* s = song.subsong[i];

  for (int k = 0; k < chans; k++) {
    w->writeText(fmt::sprintf("%s_FM%d:\n", smpsLabel, k + 1));
    for (int j = 0; j < s->ordersLen; j++) {
      w->writeText(fmt::sprintf("\t%s %s_FM%d_%.2X\n", smpsSymCommands[smpsCall], smpsLabel, k + 1, s->orders.ord[k][j]));
    }
    w->writeText(fmt::sprintf("\t%s %s_FM%d\n\n",smpsSymCommands[smpsJump], smpsLabel, k + 1));

    int l = 0;
    for (int j = 0; j < s->ordersLen; j++) {
      DivPattern* p = s->pat[l].getPattern(s->orders.ord[l][j], false);
      int cntWait = 1;

      int note = p->data[0][0];
      int octave = p->data[0][1];

      w->writeText(fmt::sprintf("%s_FM%d_%.2X:\n", smpsLabel, k + 1, s->orders.ord[k][j]));

      if (note == 0 && octave == 0)
        w->writeText(fmt::sprintf("\tdc.b %s",smpsSymCommands[smpsHold]));
      else if (note == 100) {
        w->writeText(fmt::sprintf("\tdc.b nRst"));
      }
      else {
        if (octave >= 128) octave -= 256;
        if (note > 11) {
          note -= 12;
          octave++;
        }
        w->writeText(fmt::sprintf("\tdc.b %s%d", notes[note], octave));
      }

      for (int m = 1; m < s->patLen; m++) {

        note = p->data[m][0];
        octave = p->data[m][1];

        if (note == 0 && octave == 0)
          cntWait++;
        else if (note == 100) {
          w->writeText(fmt::sprintf(", $%.2X\n\tdc.b nRst", cntWait));
          cntWait = 1;
        }
        else if ((octave > 9 && octave < 250) || note > 12)
          w->writeText("|??? ");
        else {
          if (octave >= 128) octave -= 256;
          if (note > 11) {
            note -= 12;
            octave++;
          }
          w->writeText(fmt::sprintf(", $%.2X\n\tdc.b %s%d", cntWait, notes[note], octave));
          cntWait = 1;
        }
      }
      w->writeText(fmt::sprintf(", $%.2X\n\t%s\n\n", cntWait, smpsSymCommands[smpsRet]));
    }
  }

  saveLock.unlock();
  return w;
}
