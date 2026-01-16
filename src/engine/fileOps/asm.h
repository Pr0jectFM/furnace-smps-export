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
  smpsComm,
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
  "; smpsComm Not Implemented",
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
  "sComm",
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
  "; smpsComm Not Implemented",
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
  "; smpsComm Not Implemented",
  // Parameters
  "LRSET",
  "LSET",
  "RSET",
  "0"
};

// note names used for Flamewing
static const char* notesFlamewing[14] = {
  "nC", "nCs", "nD", "nEb", "nE", "nF", "nFs", "nG", "nAb", "nA", "nBb", "nB", "nRst", "nMaxPSG"
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

// pattern identifiers
enum patId {
  idVol,
  idMacro,
  idVolRate,
  idPitchTarget,
  idPitchRate,
  idVolMac,
  idArp,
  idDetune,
  idNote,
  idIns,
  idDupLen,
  idVolCheck = idDupLen,
  idLen
};

// Variables
struct smpsVars {
  const char*(*symCommands)[smpsSymLen];
  const char*(*notesSet)[14];
  uint8_t voices[0x100];
  // pattern and song length
  uint8_t loopPat, endPat;
  uint8_t lenTable[2][0xFF];
  int endPlace;
  // note status
  uint8_t noise, retrigger;
  int chans;
  uint8_t chanOn[11];
  int8_t startVol[11];
  bool dualPCM, loop;
  int pitch, pitch2;
  smpsVars() :
    symCommands(&smpsSymFlamewing),
    notesSet(&notesFlamewing),
    loopPat(0),
    endPat(0),
    endPlace(0),
    noise(0),
    retrigger(0),
    chans(0),
    dualPCM(false),
    loop(true),
    pitch(0),
    pitch2(0)
  {
    for (int i = 0; i < 0x100; i++) voices[i] = 0;
    for (int i = 0; i < 0xFF; i++) {
      lenTable[0][i] = 0;
      lenTable[1][i] = 0;
    }
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
  unsigned short macroTimer;
  uint8_t macroVals[macLen];
  uint8_t lineCnt;
  uint8_t noteTime, prevTime;
  uint8_t lastVol;
  int lastIns;
  int steps, ticks, lastFurStep, lastStep, nextChange;
  uint8_t channel, order;
  short note;
  bool redo;
  String noteString, prevNote;
  short offset, lastOffset;
  bool hold, legato;
  bool wroteLen, wroteNote;
  double stepConv;
  uint8_t vol, volLast, volMac;
  bool noteOn, startTick;
  uint8_t pan, prevPan, panSet;
  short volRate;
  unsigned short volTimer;
  int pitchTarget, pitchRate, pitchPort;
  unsigned short pitchTimer;
  uint8_t vib[4], port[4];
  short delayTime, delayNote;
  bool volCheck, fixed, portamento, vibChange;
  smpsTempVars():
    numEffects(0),
    macroTimer(0),
    lineCnt(0),
    noteTime(0),
    prevTime(0),
    lastIns(-1),
    lastVol(0),
    steps(0),
    ticks(0),
    lastFurStep(-1),
    lastStep(-1),
    nextChange(-1),
    channel(0),
    order(0),
    note(0),
    prevNote(""),
    redo(false),
    noteString(""),
    offset(0),
    lastOffset(0),
    hold(false),
    legato(false),
    wroteLen(false),
    wroteNote(false),
    stepConv(0),
    volLast(0),
    volMac(0),
    vol(0),
    noteOn(false),
    pan(-1),
    prevPan(-1),
    panSet(-1),
    startTick(true),
    volRate(0),
    volTimer(0),
    pitchTarget(0),
    pitchRate(0),
    pitchPort(0),
    pitchTimer(0),
    delayTime(-1),
    delayNote(-1),
    volCheck(false),
    fixed(false),
    portamento(false),
    vibChange(false)
    {
    for (int i = 0; i < 0x10; i++) effects[i] = "";
    for (int i = 0; i < timeLen; i++) timers[i] = 0;
    for (int i = 0; i < macLen; i++) macroVals[i] = 0;
    macroVals[macVol] = 0x7F;
    for (int i = 0; i < 4; i++) vib[i] = 0;
    for (int i = 0; i < 4; i++) port[i] = 0;

  }
};
