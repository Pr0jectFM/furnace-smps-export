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

static const char* smpsVoiceFlamewing[10] = {
  "smpsVcDetune\t",
  "smpsVcCoarseFreq",
  "smpsVcRateScale\t",
  "smpsVcAttackRate",
  "smpsVcAmpMod\t",
  "smpsVcDecayRate1",
  "smpsVcDecayRate2",
  "smpsVcDecayLevel",
  "smpsVcReleaseRate",
  "smpsVcTotalLevel"
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

void spmToTempo1(int bpm, int speed, int divisor) {
  float frames = (60 * 60) / (bpm * speed * divisor);
  float spm = 0;
  int div = 2;
  if (div <= (frames - 0.5)) {
    div = 1;
  }
  int tempo;
  tempo = (1 - div * spm);
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

SafeWriter* DivEngine::saveText(bool separatePatterns, int asmVersion) {
  saveLock.lock();

  SafeWriter* w=new SafeWriter;
  w->init();

  w->writeText(fmt::sprintf("%s_Header:","label"));
  w->writeText("\n\tsmpsHeaderStartSong");
  w->writeText(fmt::sprintf("\n\tsmpsHeaderVoice\t%s_Voices","label"));
  w->writeText(fmt::sprintf("\n\tsmpsHeaderChan\t$06, $03"));
  w->writeText(fmt::sprintf("\n\tsmpsHeaderTempo\t$01, $02"));
  w->writeText(fmt::sprintf("\n\tsmpsHeaderDAC\t%s_DAC", "label"));
  for (int i = 1; i <= 6; i++) {
    w->writeText(fmt::sprintf("\n\tsmpsHeaderFM\t%s_FM%d, $00, $00","label",i));
  }
  for (int i = 1; i <= 3; i++) {
    w->writeText(fmt::sprintf("\n\tsmpsHeaderPSG\t%s_PSG%d, $00, $00, $00, $00","label",i));
  }

  w->writeText(fmt::sprintf("\n\n%s_Voices:\n", "label"));

  static const char* smpsVoiceCommands[10] = {};
  switch (asmVersion) {
  case 0:
    std::copy(smpsVoiceFlamewing, smpsVoiceFlamewing + 10, smpsVoiceCommands);
    break;
  case 1:
    std::copy(smpsVoiceFlamewing, smpsVoiceFlamewing + 10, smpsVoiceCommands);
    break;
  case 2:
    std::copy(smpsVoiceFlamewing, smpsVoiceFlamewing + 10, smpsVoiceCommands);
    break;
  case 3:
    std::copy(smpsVoiceFlamewing, smpsVoiceFlamewing + 10, smpsVoiceCommands);
    break;
  }

  for (int i=0; i<song.insLen; i++) {
    DivInstrument* ins=song.ins[i];

    w->writeText(fmt::sprintf(";\tVoice %.2X: %s\n",i,ins->name));

    if (ins->type==DIV_INS_FM) {
      const int opCount=4;

      w->writeText(fmt::sprintf("\tsmpsVcAlgorithm\t\t$%.2X\n",ins->fm.alg));
      w->writeText(fmt::sprintf("\tsmpsVcFeedback\t\t$%.2X\n",ins->fm.fb));

      // create table of operator values
      int opParams[10][opCount];
      for (int j = 0; j < opCount; j++) {
        const int detuneMap[8] = {
          7, 6, 5, 0, 1, 2, 3, 4
        };
        DivInstrumentFM::Operator& op = ins->fm.op[j];
        opParams[0][j] = detuneMap[op.dt];
        opParams[1][j] = op.mult;
        opParams[2][j] = op.rs;
        opParams[3][j] = op.ar;
        opParams[4][j] = op.am;
        opParams[5][j] = op.dr;
        opParams[6][j] = op.d2r;
        opParams[7][j] = op.sl;
        opParams[8][j] = op.rr;
        opParams[9][j] = op.tl;
        //opParams[j][10] = op.tl;
      }

      writeOperator(w, opParams[0], smpsVoiceCommands[0]);
      writeOperator(w, opParams[1], smpsVoiceCommands[1]);
      writeOperator(w, opParams[2], smpsVoiceCommands[2]);
      writeOperator(w, opParams[3], smpsVoiceCommands[3]);
      writeOperator(w, opParams[4], smpsVoiceCommands[4]);
      writeOperator(w, opParams[5], smpsVoiceCommands[5]);
      writeOperator(w, opParams[6], smpsVoiceCommands[6]);
      writeOperator(w, opParams[7], smpsVoiceCommands[7]);
      writeOperator(w, opParams[8], smpsVoiceCommands[8]);
      writeOperator(w, opParams[9], smpsVoiceCommands[9]);
      //writeOperator(w, opParams[10], smpsVoiceCommands[10]);

    }

    bool header=false;
    writeTextMacro(w,ins->std.volMacro,"vol",header);
    writeTextMacro(w,ins->std.arpMacro,"arp",header);
    writeTextMacro(w,ins->std.dutyMacro,"duty",header);
    writeTextMacro(w,ins->std.waveMacro,"wave",header);
    writeTextMacro(w,ins->std.pitchMacro,"pitch",header);
    writeTextMacro(w,ins->std.panLMacro,"panL",header);
    writeTextMacro(w,ins->std.panRMacro,"panR",header);
    writeTextMacro(w,ins->std.phaseResetMacro,"phaseReset",header);
    writeTextMacro(w,ins->std.ex1Macro,"ex1",header);
    writeTextMacro(w,ins->std.ex2Macro,"ex2",header);
    writeTextMacro(w,ins->std.ex3Macro,"ex3",header);
    writeTextMacro(w,ins->std.ex4Macro,"ex4",header);
    writeTextMacro(w,ins->std.ex5Macro,"ex5",header);
    writeTextMacro(w,ins->std.ex6Macro,"ex6",header);
    writeTextMacro(w,ins->std.ex7Macro,"ex7",header);
    writeTextMacro(w,ins->std.ex8Macro,"ex8",header);
    writeTextMacro(w,ins->std.ex9Macro,"ex9",header);
    writeTextMacro(w,ins->std.ex10Macro,"ex10",header);
    writeTextMacro(w,ins->std.algMacro,"alg",header);
    writeTextMacro(w,ins->std.fbMacro,"fb",header);
    writeTextMacro(w,ins->std.fmsMacro,"fms",header);
    writeTextMacro(w,ins->std.amsMacro,"ams",header);

    // TODO: the rest
    w->writeText("\n");
  }

  w->writeText("\n# Subsongs\n\n");

  for (size_t i=0; i<song.subsong.size(); i++) {
    DivSubSong* s=song.subsong[i];
    w->writeText(fmt::sprintf("## %d: %s\n\n",(int)i,s->name));

    w->writeText(fmt::sprintf("- tick rate: %g\n",s->hz));
    w->writeText(fmt::sprintf("- speeds:"));
    for (int j=0; j<s->speeds.len; j++) {
      w->writeText(fmt::sprintf(" %d",s->speeds.val[j]));
    }
    w->writeText("\n");
    w->writeText(fmt::sprintf("- virtual tempo: %d/%d\n",s->virtualTempoN,s->virtualTempoD));
    w->writeText(fmt::sprintf("- time base: %d\n",s->timeBase));
    w->writeText(fmt::sprintf("- pattern length: %d\n",s->patLen));
    w->writeText(fmt::sprintf("\norders:\n```\n"));

    for (int j=0; j<s->ordersLen; j++) {
      w->writeText(fmt::sprintf("%.2X |",j));
      for (int k=0; k<chans; k++) {
        w->writeText(fmt::sprintf(" %.2X",s->orders.ord[k][j]));
      }
      w->writeText("\n");
    }
    w->writeText("```\n\n## Patterns\n\n");

    if (separatePatterns) {
      w->writeText("TODO: separate patterns\n\n");
    } else {
      for (int j=0; j<s->ordersLen; j++) {
        w->writeText(fmt::sprintf("----- ORDER %.2X\n",j));

        for (int k=0; k<s->patLen; k++) {
          w->writeText(fmt::sprintf("%.2X ",k));

          for (int l=0; l<chans; l++) {
            DivPattern* p=s->pat[l].getPattern(s->orders.ord[l][j],false);

            int note=p->data[k][0];
            int octave=p->data[k][1];

            if (note==100) {
              w->writeText("nRst ");
            } else if ((octave>9 && octave<250) || note>12) {
              w->writeText("|??? ");
            } else {
              if (octave>=128) octave-=256;
              if (note>11) {
                note-=12;
                octave++;
              }
              w->writeText(fmt::sprintf("|%s%d ",notes[note],octave));
            }

            if (p->data[k][2]==-1) {
              w->writeText(".. ");
            } else {
              w->writeText(fmt::sprintf("%.2X ",p->data[k][2]&0xff));
            }

            if (p->data[k][3]==-1) {
              w->writeText("..");
            } else {
              w->writeText(fmt::sprintf("%.2X",p->data[k][3]&0xff));
            }

            for (int m=0; m<s->pat[l].effectCols; m++) {
              if (p->data[k][4+(m<<1)]==-1) {
                w->writeText(" ..");
              } else {
                w->writeText(fmt::sprintf(" %.2X",p->data[k][4+(m<<1)]&0xff));
              }
              if (p->data[k][5+(m<<1)]==-1) {
                w->writeText("..");
              } else {
                w->writeText(fmt::sprintf("%.2X",p->data[k][5+(m<<1)]&0xff));
              }
            }
          }

          w->writeText("\n");
        }
      }
    }

  }

  saveLock.unlock();
  return w;
}
