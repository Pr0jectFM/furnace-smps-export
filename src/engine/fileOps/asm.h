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
  "sHeaderPatch",
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
  "; Not Implemented",
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
  "ssMod68k",
  "ssModZ80",
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
  "spCenter",
  "spLeft",
  "spRight",
  "spNone"
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
  "spSSGEG\t\t",
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
   "spCenter",
   "spLeft",
   "spRight",
   "spNone"
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
  "MD\t",
  "; smpsMult Not Implemented",
  "RSAR",
  "; smpsAttRt Not Implemented",
  "; smpsAmpMod Not Implemented",
  "D1R\t",
  "D2R\t",
  "RRL\t",
  "; smpsRelRt Not Implemented",
  "TL\t",
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
  "PVADD",
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
  "LRSET",
  "LSET",
  "RSET",
  "0"
};

// note names used for Flamewing
static const char* notesFlamewing[14] = {
  "nC", "nCs", "nD", "nDs", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst", "nMaxPSG"
};

// note names used for MD Music Player
static const char* notesMDMP[14] = {
  "nC", "nCs", "nD", "nEb", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst", ""
};

// note names used for AMPS
static const char* notesAMPS[14] = {
  "nC", "nCs", "nD", "nEb", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst", "nHiHat"
};

// note names used for Source
static const char* notesSource[14] = {
  "CN", "CS", "DN", "DS", "EN", "FN", "FS", "GN", "GS", "AN", "BF", "BN", "NL", ""
};

// style names
enum smpsVersion {
  verFlamewing,
  verMDMP,
  verAMPS,
  verSource
};

// Variables
struct smpsVars {
  const char*(*symCommands)[smpsSymLen];
  const char*(*notesSet)[14];
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
  uint8_t noise, retrigger;
  int chans;
  uint8_t chanOn[11];
  int8_t startVol[11];
  bool dualPCM;
  int pitch, pitch2;
  smpsVars() :
    symCommands(&smpsSymFlamewing),
    notesSet(&notesFlamewing),
    loopPat(0),
    endPat(0),
    endPlace(0),
    volRate(0),
    pitchTarget(0),
    pitchRate(0),
    noise(0),
    retrigger(0),
    chans(0),
    dualPCM(false),
    pitch(0),
    pitch2(0)
  {
    for (int i = 0; i < 0x100; i++) fmVoices[i] = 0;
    for (int i = 0; i < 0x100; i++) psgVoices[i] = "";
    for (int i = 0; i < 0x100; i++) {
      lenTable[0][i] = 0;
      lenTable[1][i] = 0;
    }
    for (int i = 0; i < 4; i++) vib[i] = 0;
    for (int i = 0; i < 11; i++) chanOn[i] = 0;
    for (int i = 0; i < 11; i++) startVol[i] = -1;
  }
};

// Variables used for timers
enum smpsTimers {
  timePitch,
  timeVib,
  timeVol,
  timeRetrigger,
  timeDelay,
  timeCut,
  timeLen
};

// Variables used by macros
enum smpsMacros {
  macVol,
  macPitch,
  macDetune,
  macPanL,
  macLen
};

// Temporary variables
struct smpsTempVars {
  String effects[0x10];
  uint8_t numEffects;
  int timers[timeLen];
  uint8_t macroTimer, macroVals[macLen];
  uint8_t lineCnt;
  uint8_t noteTime, prevTime;
  uint8_t lastIns, lastVol, lastStep;
  int steps, ticks;
  uint8_t channel, order;
  short note, prevNote;
  bool redo;
  String noteString;
  short offset, lastOffset;
  bool hold, legato;
  bool wroteLen, wroteNote;
  double stepConv;
  int8_t volChange;
  bool noteOn, startTick;
  int arpOff;
  uint8_t pan, prevPan;
  smpsTempVars() :
    numEffects(0),
    macroTimer(0),
    lineCnt(0),
    noteTime(0),
    prevTime(0),
    lastIns(-1),
    lastVol(0),
    lastStep(-1),
    steps(0),
    ticks(0),
    channel(0),
    order(0),
    note(0),
    prevNote(0),
    redo(false),
    noteString(""),
    offset(0),
    lastOffset(0),
    hold(false),
    legato(false),
    wroteLen(false),
    wroteNote(false),
    stepConv(0),
    volChange(0),
    noteOn(false),
    arpOff(0),
    pan(3),
    prevPan(3),
    startTick(true)
    {
    for (int i = 0; i < 0x10; i++) effects[i] = "";
    for (int i = 0; i < timeLen; i++) timers[i] = 0;
    for (int i = 0; i < macLen; i++) {
      macroVals[i] = 0;
    }

  }
};
