Sky_Base_Act_2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		Sky_Base_Act_2_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$02, $03
;	Given Tempo = 135.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	Sky_Base_Act_2_DAC
	smpsHeaderFM	Sky_Base_Act_2_FM1,	$00, $1C
	smpsHeaderFM	Sky_Base_Act_2_FM2,	$00, $20
	smpsHeaderFM	Sky_Base_Act_2_FM3,	$00, $1C
	smpsHeaderFM	Sky_Base_Act_2_FM4,	$00, $1C
	smpsHeaderFM	Sky_Base_Act_2_FM5,	$00, $20
	smpsHeaderPSG	Sky_Base_Act_2_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG	Sky_Base_Act_2_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG	Sky_Base_Act_2_PSG3,	$00, $04, $00, $00

Sky_Base_Act_2_Voices:
;	PSG Voice 00 -> Short
;	macros:
;		vol: 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0 0

;	PSG Voice 01 -> Long
;	macros:
;		vol: 15 15 14 14 13 13 12 12 11

;	FM Voice 02 -> 00: Guitar
	smpsVcAlgorithm		$02
	smpsVcFeedback		$00
	smpsVcDetune		$00, $03, $05, $00
	smpsVcCoarseFreq	$04, $01, $03, $03
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$00, $0B, $07, $07
	smpsVcDecayRate2	$02, $00, $00, $02
	smpsVcDecayLevel	$00, $02, $02, $03
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $1A, $21, $1E

;	FM Voice 03 -> 01: Bass Hard
	smpsVcAlgorithm		$05
	smpsVcFeedback		$04
	smpsVcDetune		$04, $04, $04, $04
	smpsVcCoarseFreq	$02, $03, $01, $05
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0A, $0A, $0A, $0C
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$0F, $0F, $0F, $0F
	smpsVcReleaseRate	$09, $01, $04, $03
	smpsVcTotalLevel	$00, $09, $00, $24

;	FM Voice 04 -> 02: Bass Soft
	smpsVcAlgorithm		$05
	smpsVcFeedback		$04
	smpsVcDetune		$04, $04, $04, $04
	smpsVcCoarseFreq	$02, $03, $01, $05
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0B, $0B, $0B, $0D
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$0F, $0F, $0F, $0F
	smpsVcReleaseRate	$09, $01, $04, $03
	smpsVcTotalLevel	$00, $09, $00, $2C

;	FM Voice 05 -> 03: Chord
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
	smpsVcDetune		$07, $04, $04, $04
	smpsVcCoarseFreq	$03, $04, $02, $04
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0A, $00, $00, $00
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$0F, $0B, $0F, $0F
	smpsVcReleaseRate	$09, $09, $09, $08
	smpsVcTotalLevel	$00, $00, $00, $21

;	PSG Voice 06 -> Blank

;	FM Voice 07 -> 04: Sorcerian Distinctive Lead
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
	smpsVcDetune		$00, $07, $03, $03
	smpsVcCoarseFreq	$02, $01, $02, $02
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1E, $1F, $18, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$1F, $07, $1F, $07
	smpsVcDecayRate2	$05, $04, $05, $04
	smpsVcDecayLevel	$00, $01, $00, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $0C, $00, $1E

;	PSG Voice 08 -> Closed Hi-Hat
;	macros:
;		vol: 15 13 11 9 7 5 3 1 0

;	PSG Voice 09 -> Open Hi-Hat
;	macros:
;		vol: 15 15 14 14 13 13 12 12 11

;	FM Voice 0A -> 05: Piano Chord
	smpsVcAlgorithm		$05
	smpsVcFeedback		$05
	smpsVcDetune		$00, $00, $00, $00
	smpsVcCoarseFreq	$01, $03, $02, $04
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$06, $00, $00, $06
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$0F, $0B, $0F, $02
	smpsVcReleaseRate	$09, $09, $09, $08
	smpsVcTotalLevel	$00, $00, $00, $21

;	FM Voice 0B -> 06: Bass Short
	smpsVcAlgorithm		$05
	smpsVcFeedback		$04
	smpsVcDetune		$04, $04, $04, $04
	smpsVcCoarseFreq	$02, $03, $01, $05
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0E, $0E, $0D, $08
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$0F, $0F, $0F, $0F
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $09, $00, $24

;	FM Voice 0C -> 07: Guitar
	smpsVcAlgorithm		$02
	smpsVcFeedback		$00
	smpsVcDetune		$00, $03, $05, $00
	smpsVcCoarseFreq	$04, $01, $03, $03
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$00, $04, $04, $05
	smpsVcDecayRate2	$02, $00, $00, $02
	smpsVcDecayLevel	$00, $01, $01, $03
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $20, $27, $23


	; Loop Pattern :  05
	; End Pattern :  27
	; End Place :  3F


Sky_Base_Act_2_FM1:
	smpsCall Sky_Base_Act_2_FM1_00_0_64
	smpsCall Sky_Base_Act_2_FM1_0B_0_64
	smpsCall Sky_Base_Act_2_FM1_14_0_64
	smpsCall Sky_Base_Act_2_FM1_15_0_64
	smpsCall Sky_Base_Act_2_FM1_21_0_64_63

Sky_Base_Act_2_FM1_Jump:
	smpsCall Sky_Base_Act_2_FM1_04_0_64
	smpsCall Sky_Base_Act_2_FM1_06_0_64
	smpsCall Sky_Base_Act_2_FM1_05_0_64
	smpsCall Sky_Base_Act_2_FM1_07_0_64
	smpsCall Sky_Base_Act_2_FM1_01_0_64
	smpsCall Sky_Base_Act_2_FM1_08_0_64
	smpsCall Sky_Base_Act_2_FM1_02_0_64_6D
	smpsCall Sky_Base_Act_2_FM1_09_0_64
	smpsCall Sky_Base_Act_2_FM1_03_0_64
	smpsCall Sky_Base_Act_2_FM1_0A_0_64_70
	smpsCall Sky_Base_Act_2_FM1_04_0_64
	smpsCall Sky_Base_Act_2_FM1_06_0_64
	smpsCall Sky_Base_Act_2_FM1_05_0_64
	smpsCall Sky_Base_Act_2_FM1_12_0_64_6D
	smpsCall Sky_Base_Act_2_FM1_0C_0_64
	smpsCall Sky_Base_Act_2_FM1_0D_0_64
	smpsCall Sky_Base_Act_2_FM1_0E_0_64
	smpsCall Sky_Base_Act_2_FM1_0F_0_64_70
	smpsCall Sky_Base_Act_2_FM1_10_0_64
	smpsCall Sky_Base_Act_2_FM1_11_0_64
	smpsCall Sky_Base_Act_2_FM1_13_0_64
	smpsCall Sky_Base_Act_2_FM1_13_0_64
	smpsCall Sky_Base_Act_2_FM1_10_0_64
	smpsCall Sky_Base_Act_2_FM1_16_0_64
	smpsCall Sky_Base_Act_2_FM1_17_0_64
	smpsCall Sky_Base_Act_2_FM1_18_0_64_6D
	smpsCall Sky_Base_Act_2_FM1_19_0_64
	smpsCall Sky_Base_Act_2_FM1_1A_0_64
	smpsCall Sky_Base_Act_2_FM1_1B_0_64
	smpsCall Sky_Base_Act_2_FM1_1C_0_64
	smpsCall Sky_Base_Act_2_FM1_1D_0_64
	smpsCall Sky_Base_Act_2_FM1_1E_0_64
	smpsCall Sky_Base_Act_2_FM1_1F_0_64
	smpsCall Sky_Base_Act_2_FM1_13_0_32
	smpsCall Sky_Base_Act_2_FM1_20_0_64_70
	smpsJump Sky_Base_Act_2_FM1_Jump

Sky_Base_Act_2_FM1_00_0_64:
	smpsSetvoice	$02
	smpsPan		panNone, $00
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst
	smpsPan		panCenter, $00, nBb2, nRst
	smpsPan		panNone, $00, nBb2
	smpsPan		panCenter, $00, nBb2, nRst
	smpsPan		panNone, $00, nBb2, nRst
	smpsPan		panCenter, $00, nBb2
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$1C
	dc.b nBb2
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nCs3
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nC3
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nF2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2, nRst
	smpsPan		panCenter, $00, nFs2, nRst
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00, nFs2, nRst
	smpsPan		panNone, $00, nFs2, nRst
	smpsPan		panCenter, $00, nFs2
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00, nRst
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00, nG2
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$19
	dc.b nA2
	smpsReturn

Sky_Base_Act_2_FM1_0B_0_64:
	smpsPan		panNone, $00
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst
	smpsPan		panCenter, $00, nBb2, nRst
	smpsPan		panNone, $00, nBb2
	smpsPan		panCenter, $00, nBb2, nRst
	smpsPan		panNone, $00, nBb2, nRst
	smpsPan		panCenter, $00, nBb2
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$1C
	dc.b nBb2
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nCs3
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nC3
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nF2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2, nRst
	smpsPan		panCenter, $00, nFs2, nRst
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00, nFs2, nRst
	smpsPan		panNone, $00, nFs2, nRst
	smpsPan		panCenter, $00, nFs2
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00, nRst
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nF2
	smpsReturn

Sky_Base_Act_2_FM1_14_0_64:
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nF2, $02, $02
	smpsPan		panCenter, $00, nRst, nF2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nF2, nRst
	smpsPan		panNone, $00, nF2, nRst
	smpsPan		panCenter, $00, nF2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nF2
	smpsPan		panNone, $00, nF2
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nC2
	smpsPan		panNone, $00
	smpsAlterNote	$12
	dc.b nDs2
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nF2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2, nFs2
	smpsPan		panCenter, $00, nRst, nFs2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nFs2, nRst
	smpsPan		panNone, $00, nFs2, nRst
	smpsPan		panCenter, $00, nFs2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nFs2
	smpsPan		panNone, $00, nFs2
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nCs2
	smpsPan		panNone, $00
	smpsAlterNote	$12
	dc.b nDs2
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nF2
	smpsReturn

Sky_Base_Act_2_FM1_15_0_64:
	smpsPan		panNone, $00
	smpsAlterNote	$18
	dc.b nAb2, $02, $02
	smpsPan		panCenter, $00, nRst, nAb2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nAb2, nRst
	smpsPan		panNone, $00, nAb2, nRst
	smpsPan		panCenter, $00, nAb2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nAb2
	smpsPan		panNone, $00, nAb2
	smpsPan		panCenter, $00
	smpsAlterNote	$12
	dc.b nDs2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2
	smpsPan		panCenter, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsPan		panNone, $00
	smpsAlterNote	$19
	dc.b nA2, nA2
	smpsPan		panCenter, $00, nRst, nA2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nA2, nRst
	smpsPan		panNone, $00, nA2, nRst
	smpsPan		panCenter, $00, nA2
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00, nA2
	smpsPan		panNone, $00, nA2
	smpsPan		panCenter, $00
	smpsAlterNote	$1C
	dc.b nB2
	smpsPan		panNone, $00
	smpsAlterNote	$16
	dc.b nFs2
	smpsPan		panCenter, $00
	smpsAlterNote	$18
	dc.b nAb2
	smpsReturn

Sky_Base_Act_2_FM1_21_0_64_63:
	smpsSetvoice	$03
	smpsAlterNote	$14
	dc.b nF1, $38
	smpsSetvoice	$04
	smpsModSet	$00, $01, $05, $04
	smpsAlterVol	$F6
	smpsAlterNote	$1C
	dc.b nBb3, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM1_04_0_64:
	smpsAlterNote	$14
	dc.b nF4, $14
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$0F
	dc.b nC4, $04
	smpsAlterNote	$1C
	dc.b nBb3, $14
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM1_06_0_64:
	smpsAlterNote	$14
	dc.b nF4, $14
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$0F
	dc.b nC4, $04
	smpsAlterNote	$12
	dc.b nDs4, $22
	smpsReturn

Sky_Base_Act_2_FM1_05_0_64:
	smpsAlterNote	$0F
	dc.b nC4, $02, $02
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$18
	dc.b nAb3, $04, $12
	smpsAlterNote	$1C
	dc.b nBb3, $02, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$14
	dc.b nF3, $04
	smpsAlterNote	$1C
	dc.b nBb3, $12
	smpsReturn

Sky_Base_Act_2_FM1_07_0_64:
	smpsAlterNote	$0F
	dc.b nC4, $02, $02
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$18
	dc.b nAb3, $04
	smpsAlterNote	$0F
	dc.b nC4, $08, $02
	smpsAlterNote	$10
	dc.b nCs4, $04
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4, nF4
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$16
	dc.b nFs4, $04
	smpsAlterNote	$14
	dc.b nF4, $0C
	smpsAlterNote	$12
	dc.b nDs4, $04, $01
	smpsAlterNote	$14
	dc.b nF4
	smpsReturn

Sky_Base_Act_2_FM1_01_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$0F
	dc.b nC4, $04, $01
	smpsAlterNote	$10
	dc.b nCs4, $1B
	smpsAlterNote	$16
	dc.b nG4, $01
	smpsAlterNote	$18
	dc.b nAb4, $03
	smpsAlterNote	$14
	dc.b nF4, $02
	smpsReturn

Sky_Base_Act_2_FM1_08_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$16
	dc.b nG4, $01
	smpsAlterNote	$18
	dc.b nAb4, $03
	smpsAlterNote	$10
	dc.b nCs4, $1C
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$0F
	dc.b nC4, $02
	smpsReturn

Sky_Base_Act_2_FM1_02_0_64_6D:
	dc.b smpsNoAttack, $02, nRst, $04
	smpsSetvoice	$00
	smpsAlterVol	$FD
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4, $02
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$18
	dc.b nAb3
	smpsAlterNote	$14
	dc.b nF3
	smpsAlterNote	$18
	dc.b nAb3
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4, $0A
	smpsAlterNote	$10
	dc.b nCs4, $04, $02
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$14
	dc.b nF4, $06
	smpsAlterNote	$0F
	dc.b nC5, $02
	smpsReturn

Sky_Base_Act_2_FM1_09_0_64:
	dc.b smpsNoAttack, $02
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nCs5, $04
	smpsAlterNote	$0F
	dc.b nC5, $02
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$16
	dc.b nFs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$1C
	dc.b nBb3, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$19
	dc.b nA4
	smpsAlterNote	$1C
	dc.b nBb4, $04
	smpsAlterNote	$0F
	dc.b nC5, $02
	smpsReturn

Sky_Base_Act_2_FM1_03_0_64:
	dc.b smpsNoAttack, $02
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$19
	dc.b nA4
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$0F
	dc.b nC5, nRst
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$19
	dc.b nA4
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$12
	dc.b nDs5
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$14
	dc.b nF5
	smpsAlterNote	$0F
	dc.b nC5, nRst
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$19
	dc.b nA4
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$12
	dc.b nDs5
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$16
	dc.b nFs5
	smpsAlterNote	$14
	dc.b nF5
	smpsAlterNote	$12
	dc.b nDs5
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$14
	dc.b nF4
	smpsReturn

Sky_Base_Act_2_FM1_0A_0_64_70:
	dc.b nRst, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$13
	dc.b nE4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$19
	dc.b nA3
	smpsAlterNote	$1C
	dc.b nBb3, $04
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$19
	dc.b nA3, $02
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4, $04, $02
	smpsSetvoice	$04
	smpsAlterVol	$03
	smpsAlterNote	$12
	dc.b nDs5
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nFs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM1_12_0_64_6D:
	smpsAlterNote	$0F
	dc.b nC4, $02, $02
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$18
	dc.b nAb3, $04
	smpsAlterNote	$0F
	dc.b nC4, $08, $02
	smpsAlterNote	$10
	dc.b nCs4, $04
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4, nF4
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$16
	dc.b nFs4, $04
	smpsAlterNote	$14
	dc.b nF4, $0C
	smpsSetvoice	$00
	smpsAlterVol	$FD
	smpsAlterNote	$18
	dc.b nAb3, $06
	smpsReturn

Sky_Base_Act_2_FM1_0C_0_64:
	smpsAlterNote	$1C
	dc.b nBb3, $14, $04
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4, $14, $04
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsReturn

Sky_Base_Act_2_FM1_0D_0_64:
	smpsAlterNote	$10
	dc.b nCs4, $14
	smpsAlterNote	$1C
	dc.b nBb3, $04
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4, $14
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsReturn

Sky_Base_Act_2_FM1_0E_0_64:
	smpsAlterNote	$1C
	dc.b nBb3, $14, $04
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4, $14, $04
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4
	smpsReturn

Sky_Base_Act_2_FM1_0F_0_64_70:
	smpsAlterNote	$10
	dc.b nCs4, $14
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$16
	dc.b nFs4
	smpsAlterNote	$14
	dc.b nF4, $14
	smpsSetvoice	$04
	smpsAlterVol	$03
	smpsAlterNote	$1C
	dc.b nBb3, $04
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM1_10_0_64:
	smpsAlterNote	$14
	dc.b nF4, $40
	smpsReturn

Sky_Base_Act_2_FM1_11_0_64:
	dc.b smpsNoAttack, $08
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4, $08
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$0F
	dc.b nC4, $0C
	smpsAlterNote	$18
	dc.b nAb3, $04
	smpsAlterNote	$1C
	dc.b nBb3
	smpsReturn

Sky_Base_Act_2_FM1_13_0_64:
	dc.b smpsNoAttack, $40
	smpsReturn

Sky_Base_Act_2_FM1_16_0_64:
	dc.b smpsNoAttack, $08
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$14
	dc.b nF4, $08
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$12
	dc.b nDs4, $0C
	smpsAlterNote	$10
	dc.b nCs4, $04
	smpsAlterNote	$14
	dc.b nF4
	smpsReturn

Sky_Base_Act_2_FM1_17_0_64:
	dc.b smpsNoAttack, $30
	smpsAlterNote	$1C
	dc.b nBb3, $08
	smpsAlterNote	$10
	dc.b nCs4
	smpsReturn

Sky_Base_Act_2_FM1_18_0_64_6D:
	smpsAlterNote	$12
	dc.b nDs4, $0C
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$14
	dc.b nF4, $10
	smpsSetvoice	$00
	smpsModSet	$00, $01, $05, $04
	smpsAlterVol	$FD
	smpsAlterNote	$12
	dc.b nDs4, $08
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4
	smpsReturn

Sky_Base_Act_2_FM1_19_0_64:
	smpsAlterNote	$1C
	dc.b nBb4, $34
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$14
	dc.b nF4
	smpsReturn

Sky_Base_Act_2_FM1_1A_0_64:
	smpsAlterNote	$12
	dc.b nDs4, $0C
	smpsAlterNote	$14
	dc.b nF4, $08
	smpsAlterNote	$1C
	dc.b nBb3, $04
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$1C
	dc.b nBb3, $02
	smpsAlterNote	$12
	dc.b nDs4, $04
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$18
	dc.b nAb3
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM1_1B_0_64:
	smpsAlterNote	$1C
	dc.b nBb3, $04, $02
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4, $04
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$12
	dc.b nDs5, $04
	smpsAlterNote	$10
	dc.b nCs5, $02
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$14
	dc.b nF4, $04
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$1C
	dc.b nBb3, $02
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM1_1C_0_64:
	smpsAlterNote	$14
	dc.b nF4, $04
	smpsAlterNote	$18
	dc.b nAb4, $02
	smpsAlterNote	$14
	dc.b nF4, $04
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4, $02
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$1C
	dc.b nBb3
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsAlterNote	$14
	dc.b nF4
	smpsAlterNote	$18
	dc.b nAb4
	smpsAlterNote	$1C
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nCs5
	smpsAlterNote	$12
	dc.b nDs5
	smpsAlterNote	$14
	dc.b nF5
	smpsAlterNote	$18
	dc.b nAb5
	smpsReturn

Sky_Base_Act_2_FM1_1D_0_64:
	smpsAlterNote	$1C
	dc.b nBb5, $18, $04
	smpsModSet	$00, $01, $04, $7F
	smpsAlterNote	$12
	dc.b nDs5, $1C
	smpsAlterNote	$10
	dc.b nCs5, $04
	smpsModSet	$00, $01, $04, $7F
	smpsAlterNote	$14
	dc.b nF5
	smpsReturn

Sky_Base_Act_2_FM1_1E_0_64:
	smpsModSet	$00, $01, $04, $7F
	dc.b smpsNoAttack, $18
	smpsAlterNote	$14
	dc.b nF5, $08
	smpsAlterNote	$12
	dc.b nDs5, $10, $04
	smpsAlterNote	$10
	dc.b nCs5, $08
	smpsAlterNote	$1C
	dc.b nBb4, $04
	smpsReturn

Sky_Base_Act_2_FM1_1F_0_64:
	dc.b smpsNoAttack, $18
	smpsAlterNote	$14
	dc.b nF4, $04
	smpsModSet	$00, $01, $04, $7F
	smpsAlterNote	$18
	dc.b nAb4, $1C
	smpsAlterNote	$10
	dc.b nCs4, $04
	smpsModSet	$00, $01, $04, $7F
	smpsAlterNote	$14
	dc.b nF4
	smpsReturn

Sky_Base_Act_2_FM1_13_0_32:
	dc.b smpsNoAttack, $20
	smpsReturn

Sky_Base_Act_2_FM1_20_0_64_70:
	dc.b smpsNoAttack, $38
	smpsSetvoice	$04
	smpsModSet	$00, $01, $05, $04
	smpsAlterVol	$03
	smpsAlterNote	$1C
	dc.b nBb3, $02
	smpsAlterNote	$0F
	dc.b nC4
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM2:
	smpsCall Sky_Base_Act_2_FM2_00_0_64_5F
	smpsCall Sky_Base_Act_2_FM2_07_0_64
	smpsCall Sky_Base_Act_2_FM2_0D_0_64
	smpsCall Sky_Base_Act_2_FM2_0E_0_64_5E
	smpsCall Sky_Base_Act_2_FM2_10_0_64_60

Sky_Base_Act_2_FM2_Jump:
	smpsCall Sky_Base_Act_2_FM2_03_0_64
	smpsCall Sky_Base_Act_2_FM2_03_0_64
	smpsCall Sky_Base_Act_2_FM2_04_0_64
	smpsCall Sky_Base_Act_2_FM2_05_0_64
	smpsCall Sky_Base_Act_2_FM2_01_0_64
	smpsCall Sky_Base_Act_2_FM2_01_0_64
	smpsCall Sky_Base_Act_2_FM2_02_0_64
	smpsCall Sky_Base_Act_2_FM2_06_0_64
	smpsCall Sky_Base_Act_2_FM2_11_0_64
	smpsCall Sky_Base_Act_2_FM2_12_0_64
	smpsCall Sky_Base_Act_2_FM2_03_0_64
	smpsCall Sky_Base_Act_2_FM2_03_0_64
	smpsCall Sky_Base_Act_2_FM2_04_0_64
	smpsCall Sky_Base_Act_2_FM2_05_0_64
	smpsCall Sky_Base_Act_2_FM2_08_0_64
	smpsCall Sky_Base_Act_2_FM2_09_0_64
	smpsCall Sky_Base_Act_2_FM2_0A_0_64
	smpsCall Sky_Base_Act_2_FM2_09_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_64
	smpsCall Sky_Base_Act_2_FM2_0B_0_64
	smpsCall Sky_Base_Act_2_FM2_0C_0_32
	smpsCall Sky_Base_Act_2_FM2_0F_0_64
	smpsJump Sky_Base_Act_2_FM2_Jump

Sky_Base_Act_2_FM2_00_0_64_5F:
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1, $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1
	smpsAlterVol	$0F
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nAb1
	smpsAlterVol	$0F
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM2_07_0_64:
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$1C
	dc.b nBb1, $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1
	smpsAlterVol	$0F
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nAb1
	smpsAlterVol	$0F
	smpsAlterNote	$14
	dc.b nF1
	smpsReturn

Sky_Base_Act_2_FM2_0D_0_64:
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$14
	dc.b nF1, $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$0F
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nFs1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nFs1
	smpsAlterVol	$0F
	smpsAlterNote	$18
	dc.b nAb1
	smpsReturn

Sky_Base_Act_2_FM2_0E_0_64_5E:
	smpsSetvoice	$01
	smpsAlterVol	$FF
	smpsAlterNote	$18
	dc.b nAb1, $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b $02
	smpsAlterVol	$0F
	smpsAlterNote	$19
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nA1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nA1
	smpsAlterVol	$0D
	dc.b nA1
	smpsReturn

Sky_Base_Act_2_FM2_10_0_64_60:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, $02
	smpsAlterVol	$FF
	dc.b $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nRst, nF1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nF1
	smpsSetvoice	$02
	dc.b nRst
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsAlterVol	$FF
	dc.b nF1
	smpsSetvoice	$01
	dc.b nF1
	smpsAlterVol	$FF
	dc.b nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nRst, nF1
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$02
	smpsAlterVol	$FF
	dc.b nF1, nRst
	smpsSetvoice	$01
	smpsAlterVol	$FF
	dc.b nF1
	smpsSetvoice	$02
	dc.b nRst
	smpsSetvoice	$01
	smpsAlterVol	$03
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	dc.b nAb1
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM2_03_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	dc.b nAb1
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM2_04_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1
	smpsSetvoice	$02
	dc.b nBb1
	smpsAlterNote	$18
	dc.b nAb1
	smpsReturn

Sky_Base_Act_2_FM2_05_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	dc.b $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsAlterNote	$19
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1, nA1
	smpsSetvoice	$01
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsSetvoice	$01
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM2_01_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1, $02, nRst
	smpsSetvoice	$02
	dc.b nBb1
	smpsSetvoice	$01
	dc.b nRst, nBb1
	smpsSetvoice	$02
	dc.b nBb1, nRst
	smpsSetvoice	$01
	dc.b nBb1, nRst
	smpsSetvoice	$02
	dc.b nBb1
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1
	smpsSetvoice	$02
	smpsAlterNote	$10
	dc.b nCs2
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC2
	smpsSetvoice	$02
	smpsAlterNote	$1C
	dc.b nBb1
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nRst
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nRst, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nRst
	smpsSetvoice	$01
	dc.b nFs1, nRst
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nG1
	smpsSetvoice	$02
	smpsAlterNote	$18
	dc.b nAb1
	smpsAlterNote	$19
	dc.b nA1
	smpsReturn

Sky_Base_Act_2_FM2_02_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsSetvoice	$01
	dc.b nF1, nF1
	smpsSetvoice	$02
	dc.b nF1, nF1
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$10
	dc.b nCs1
	smpsReturn

Sky_Base_Act_2_FM2_06_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nG1, nG1
	smpsSetvoice	$02
	dc.b nG1
	smpsSetvoice	$01
	dc.b nG1, nG1
	smpsSetvoice	$02
	dc.b nG1, nG1
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1, nAb1
	smpsSetvoice	$02
	dc.b nAb1, nAb1
	smpsSetvoice	$01
	smpsAlterNote	$19
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsSetvoice	$01
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsAlterNote	$18
	dc.b nAb1
	smpsReturn

Sky_Base_Act_2_FM2_11_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, nF1
	smpsSetvoice	$02
	dc.b nF1
	smpsSetvoice	$01
	dc.b nF1, nF1
	smpsSetvoice	$02
	dc.b nF1, nF1
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1
	smpsSetvoice	$02
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$10
	dc.b nCs1
	smpsReturn

Sky_Base_Act_2_FM2_12_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsSetvoice	$02
	dc.b $02
	smpsSetvoice	$01
	dc.b $02, $02
	smpsSetvoice	$02
	dc.b $02, $02
	smpsSetvoice	$01
	smpsAlterNote	$16
	dc.b nFs1, nFs1
	smpsSetvoice	$02
	dc.b nFs1, nFs1
	smpsSetvoice	$01
	dc.b nFs1
	smpsSetvoice	$02
	dc.b nFs1
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC1
	smpsSetvoice	$02
	smpsAlterNote	$12
	dc.b nDs1
	smpsAlterNote	$16
	dc.b nFs1
	smpsSetvoice	$01
	dc.b nG1, nG1
	smpsSetvoice	$02
	dc.b nG1
	smpsSetvoice	$01
	dc.b nG1, nG1
	smpsSetvoice	$02
	dc.b nG1, nG1
	smpsSetvoice	$01
	smpsAlterNote	$18
	dc.b nAb1, nAb1
	smpsSetvoice	$02
	dc.b nAb1, nAb1
	smpsSetvoice	$01
	smpsAlterNote	$19
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsSetvoice	$01
	dc.b nA1
	smpsSetvoice	$02
	dc.b nA1
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM2_08_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1, $02, nRst, nBb1, nBb1, nRst, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	dc.b nBb1
	smpsAlterNote	$18
	dc.b nAb1, nRst, nAb1, nAb1, nRst, nAb1, nRst, nAb1, nRst, nAb1, nAb1, nAb1, nAb1, nAb1, nAb1, nAb1
	smpsReturn

Sky_Base_Act_2_FM2_09_0_64:
	smpsAlterNote	$16
	dc.b nFs1, $02, nRst, nFs1, nFs1, nRst, nFs1, nRst, nFs1, nRst, nFs1, nFs1, nFs1, nFs1, nFs1
	smpsAlterNote	$18
	dc.b nAb1
	smpsAlterNote	$16
	dc.b nFs1
	smpsAlterNote	$14
	dc.b nF1, nRst, nF1, nF1, nRst, nF1, nRst, nF1, nRst, nF1
	smpsAlterNote	$18
	dc.b nAb1
	smpsAlterNote	$14
	dc.b nF1
	smpsAlterNote	$0F
	dc.b nC2
	smpsAlterNote	$18
	dc.b nAb1
	smpsAlterNote	$10
	dc.b nCs2
	smpsAlterNote	$0F
	dc.b nC2
	smpsReturn

Sky_Base_Act_2_FM2_0A_0_64:
	smpsAlterNote	$1C
	dc.b nBb1, $02, nRst, nBb1, nBb1, nRst, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	dc.b nBb1
	smpsAlterNote	$18
	dc.b nAb1, nRst, nAb1, nAb1, nRst, nAb1, nRst, nAb1, nRst, nAb1, nAb1, nAb1, nAb1, nAb1, nAb1, nAb1
	smpsReturn

Sky_Base_Act_2_FM2_0B_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1, $02, nRst
	smpsSetvoice	$02
	dc.b nBb1
	smpsSetvoice	$01
	dc.b nRst, nBb1
	smpsSetvoice	$02
	dc.b nBb1, nRst
	smpsSetvoice	$01
	dc.b nBb1, nRst
	smpsSetvoice	$02
	dc.b nBb1, nBb1
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nBb1
	smpsSetvoice	$01
	dc.b nBb1
	smpsSetvoice	$02
	dc.b nBb1, nBb1
	smpsSetvoice	$01
	smpsAlterNote	$12
	dc.b nDs2, nRst
	smpsSetvoice	$02
	dc.b nDs2
	smpsSetvoice	$01
	dc.b nRst, nDs2
	smpsSetvoice	$02
	dc.b nDs2, nRst
	smpsSetvoice	$01
	dc.b nDs2, nRst
	smpsSetvoice	$02
	dc.b nDs2, nDs2
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nDs2
	smpsSetvoice	$01
	dc.b nDs2
	smpsSetvoice	$02
	dc.b nDs2, nDs2
	smpsReturn

Sky_Base_Act_2_FM2_0C_0_64:
	smpsSetvoice	$01
	smpsAlterNote	$10
	dc.b nCs2, $02, nRst
	smpsSetvoice	$02
	dc.b nCs2
	smpsSetvoice	$01
	dc.b nRst, nCs2
	smpsSetvoice	$02
	dc.b nCs2, nRst
	smpsSetvoice	$01
	dc.b nCs2, nRst
	smpsSetvoice	$02
	dc.b nCs2, nCs2
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nCs2
	smpsSetvoice	$01
	dc.b nCs2
	smpsSetvoice	$02
	dc.b nCs2, nCs2
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC2, nRst
	smpsSetvoice	$02
	dc.b nC2
	smpsSetvoice	$01
	dc.b nRst, nC2
	smpsSetvoice	$02
	dc.b nC2, nRst
	smpsSetvoice	$01
	dc.b nC2, nRst
	smpsSetvoice	$02
	dc.b nC2, nC2
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nC2
	smpsSetvoice	$01
	dc.b nC2
	smpsSetvoice	$02
	dc.b nC2, nC2
	smpsReturn

Sky_Base_Act_2_FM2_0C_0_32:
	smpsSetvoice	$01
	smpsAlterNote	$10
	dc.b nCs2, $02, nRst
	smpsSetvoice	$02
	dc.b nCs2
	smpsSetvoice	$01
	dc.b nRst, nCs2
	smpsSetvoice	$02
	dc.b nCs2, nRst
	smpsSetvoice	$01
	dc.b nCs2, nRst
	smpsSetvoice	$02
	dc.b nCs2, nCs2
	smpsSetvoice	$01
	dc.b nRst
	smpsSetvoice	$02
	dc.b nCs2
	smpsSetvoice	$01
	dc.b nCs2
	smpsSetvoice	$02
	dc.b nCs2, nCs2
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nC2
	smpsReturn

Sky_Base_Act_2_FM2_0F_0_64:
	smpsAlterNote	$14
	dc.b nF1, $02, $02, $02, nRst, nF1, nF1, nRst, nF1, nRst, nF1, nRst, nF1, nRst, nF1, nF1
	dc.b nF1, nF1, nF1, nF1, nRst, nF1, nF1, nRst, nF1, nRst, nF1, nRst, nF1
	smpsSetvoice	$02
	smpsAlterNote	$19
	dc.b nA1
	smpsSetvoice	$01
	smpsAlterNote	$1C
	dc.b nBb1
	smpsSetvoice	$02
	dc.b nBb1, nBb1
	smpsReturn

Sky_Base_Act_2_FM3:
	smpsCall Sky_Base_Act_2_FM3_00_0_64
	smpsCall Sky_Base_Act_2_FM3_08_0_64
	smpsCall Sky_Base_Act_2_FM3_0F_0_64
	smpsCall Sky_Base_Act_2_FM3_10_0_64
	smpsCall Sky_Base_Act_2_FM3_12_0_64_63

Sky_Base_Act_2_FM3_Jump:
	smpsCall Sky_Base_Act_2_FM3_01_0_64
	smpsCall Sky_Base_Act_2_FM3_04_0_64
	smpsCall Sky_Base_Act_2_FM3_03_0_64
	smpsCall Sky_Base_Act_2_FM3_05_0_64
	smpsCall Sky_Base_Act_2_FM3_01_0_64
	smpsCall Sky_Base_Act_2_FM3_01_0_64
	smpsCall Sky_Base_Act_2_FM3_02_0_64
	smpsCall Sky_Base_Act_2_FM3_06_0_64
	smpsCall Sky_Base_Act_2_FM3_14_0_64
	smpsCall Sky_Base_Act_2_FM3_07_0_64
	smpsCall Sky_Base_Act_2_FM3_01_0_64
	smpsCall Sky_Base_Act_2_FM3_04_0_64
	smpsCall Sky_Base_Act_2_FM3_03_0_64
	smpsCall Sky_Base_Act_2_FM3_05_0_64
	smpsCall Sky_Base_Act_2_FM3_09_0_64_65
	smpsCall Sky_Base_Act_2_FM3_0A_0_64
	smpsCall Sky_Base_Act_2_FM3_0B_0_64
	smpsCall Sky_Base_Act_2_FM3_0A_0_64
	smpsCall Sky_Base_Act_2_FM3_0C_0_64_61
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0C_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_64
	smpsCall Sky_Base_Act_2_FM3_0E_0_64
	smpsCall Sky_Base_Act_2_FM3_0D_0_32
	smpsCall Sky_Base_Act_2_FM3_11_0_64_5F
	smpsJump Sky_Base_Act_2_FM3_Jump

Sky_Base_Act_2_FM3_00_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $07, $04
	smpsPan		panNone, $00
	smpsAlterNote	$1C
	dc.b nBb1, $1A
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsAlterNote	$16
	dc.b nFs1, $1C
	smpsAlterNote	$18
	dc.b nAb1, $02, $02
	smpsAlterNote	$1C
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM3_08_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$14
	dc.b nF1, $02, $02
	smpsAlterNote	$16
	dc.b nFs1, $1C
	smpsAlterNote	$18
	dc.b nAb1, $02
	smpsAlterNote	$16
	dc.b nFs1
	smpsAlterNote	$14
	dc.b nF1
	smpsReturn

Sky_Base_Act_2_FM3_0F_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$12
	dc.b nDs1, $02
	smpsAlterNote	$14
	dc.b nF1
	smpsAlterNote	$16
	dc.b nFs1, $1C
	smpsAlterNote	$14
	dc.b nF1, $02
	smpsAlterNote	$16
	dc.b nFs1
	smpsAlterNote	$18
	dc.b nAb1
	smpsReturn

Sky_Base_Act_2_FM3_10_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$14
	dc.b nF1, $02
	smpsAlterNote	$18
	dc.b nAb1
	smpsAlterNote	$19
	dc.b nA1, $22
	smpsReturn

Sky_Base_Act_2_FM3_12_0_64_63:
	smpsAlterNote	$0F
	dc.b nC1, $3A
	smpsAlterVol	$FE
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_01_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3, $1C
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_04_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3, $1C
	smpsAlterNote	$12
	dc.b nDs3, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsAlterNote	$0F
	dc.b nC3
	smpsReturn

Sky_Base_Act_2_FM3_03_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$10
	dc.b nCs3, $02
	smpsAlterNote	$0F
	dc.b nC3
	smpsAlterNote	$1C
	dc.b nBb2, $1C
	smpsAlterNote	$12
	dc.b nDs3, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsAlterNote	$0F
	dc.b nC3
	smpsReturn

Sky_Base_Act_2_FM3_05_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$18
	dc.b nAb3, $02
	smpsAlterNote	$16
	dc.b nFs3
	smpsAlterNote	$14
	dc.b nF3, $0C
	smpsAlterNote	$10
	dc.b nCs3, $02
	smpsAlterNote	$12
	dc.b nDs3
	smpsAlterNote	$14
	dc.b nF3, $0C
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_02_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$12
	dc.b nDs3, $02, nRst, $0A, nDs3, $02, nRst, $04
	smpsAlterNote	$10
	dc.b nCs3, $02, nRst, $0C
	smpsAlterNote	$0F
	dc.b nC3, $02, nRst, $06, nC3, $02, nRst, $04
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_06_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$12
	dc.b nDs3, $04, nRst, $08, nDs3, $04, nRst, $02
	smpsAlterNote	$10
	dc.b nCs3, $04, nRst, $0C
	smpsAlterNote	$0F
	dc.b nC3, $02, nRst, nC3, nRst, nC3, nRst
	smpsAlterNote	$12
	dc.b nDs3, nDs3
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_14_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$12
	dc.b nDs3, $04, nRst, $08
	smpsAlterNote	$10
	dc.b nCs3, $04, nRst, $02, nCs3, $04, nRst, $0A
	smpsAlterNote	$0F
	dc.b nC3, $02, nRst, $06, nC3, $02, nRst, $04
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_07_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$12
	dc.b nDs3, $02, nRst, $10
	smpsAlterNote	$10
	dc.b nCs3, $02, nRst, $06, nCs3, $04, nRst
	smpsAlterNote	$0F
	dc.b nC3, $02, nRst, $06, nC3, $02, nRst
	smpsAlterNote	$12
	dc.b nDs3, nDs3
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM3_09_0_64_65:
	smpsSetvoice	$03
	smpsAlterVol	$04
	smpsAlterNote	$10
	dc.b nCs3, $20
	smpsAlterNote	$12
	dc.b nDs3
	smpsReturn

Sky_Base_Act_2_FM3_0A_0_64:
	smpsAlterNote	$10
	dc.b nCs3, $20, $10
	smpsAlterNote	$0F
	dc.b nC3
	smpsReturn

Sky_Base_Act_2_FM3_0B_0_64:
	smpsSetvoice	$03
	smpsAlterNote	$10
	dc.b nCs3, $20
	smpsAlterNote	$12
	dc.b nDs3
	smpsReturn

Sky_Base_Act_2_FM3_0C_0_64_61:
	smpsSetvoice	$05
	smpsAlterVol	$02
	smpsAlterNote	$10
	dc.b nCs4, $20
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM3_0D_0_64:
	smpsAlterNote	$10
	dc.b nCs4, $20
	smpsAlterNote	$0F
	dc.b nC4
	smpsReturn

Sky_Base_Act_2_FM3_0E_0_64:
	smpsAlterNote	$10
	dc.b nCs4, $20
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM3_0C_0_64:
	smpsSetvoice	$05
	smpsAlterNote	$10
	dc.b nCs4, $20
	smpsAlterNote	$12
	dc.b nDs4
	smpsReturn

Sky_Base_Act_2_FM3_0D_0_32:
	smpsAlterNote	$10
	dc.b nCs4, $20
	smpsAlterNote	$0F
	dc.b nC4
	smpsReturn

Sky_Base_Act_2_FM3_11_0_64_5F:
	smpsAlterNote	$0F
	dc.b nC4, $3A
	smpsSetvoice	$03
	smpsAlterVol	$FA
	smpsPan		panNone, $00
	smpsAlterNote	$12
	dc.b nDs3, $02, $02
	smpsAlterNote	$14
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM4:
	smpsCall Sky_Base_Act_2_FM4_00_0_64
	smpsCall Sky_Base_Act_2_FM4_08_0_64
	smpsCall Sky_Base_Act_2_FM4_0F_0_64
	smpsCall Sky_Base_Act_2_FM4_10_0_64
	smpsCall Sky_Base_Act_2_FM4_13_0_64_63

Sky_Base_Act_2_FM4_Jump:
	smpsCall Sky_Base_Act_2_FM4_01_0_64
	smpsCall Sky_Base_Act_2_FM4_04_0_64
	smpsCall Sky_Base_Act_2_FM4_03_0_64
	smpsCall Sky_Base_Act_2_FM4_05_0_64
	smpsCall Sky_Base_Act_2_FM4_01_0_64
	smpsCall Sky_Base_Act_2_FM4_01_0_64
	smpsCall Sky_Base_Act_2_FM4_02_0_64
	smpsCall Sky_Base_Act_2_FM4_06_0_64
	smpsCall Sky_Base_Act_2_FM4_14_0_64
	smpsCall Sky_Base_Act_2_FM4_07_0_64
	smpsCall Sky_Base_Act_2_FM4_01_0_64
	smpsCall Sky_Base_Act_2_FM4_04_0_64
	smpsCall Sky_Base_Act_2_FM4_03_0_64
	smpsCall Sky_Base_Act_2_FM4_05_0_64
	smpsCall Sky_Base_Act_2_FM4_09_0_64_65
	smpsCall Sky_Base_Act_2_FM4_0A_0_64
	smpsCall Sky_Base_Act_2_FM4_0B_0_64
	smpsCall Sky_Base_Act_2_FM4_0C_0_64_61
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_0E_0_64
	smpsCall Sky_Base_Act_2_FM4_0D_0_64
	smpsCall Sky_Base_Act_2_FM4_11_0_32
	smpsCall Sky_Base_Act_2_FM4_12_0_64_5F
	smpsJump Sky_Base_Act_2_FM4_Jump

Sky_Base_Act_2_FM4_00_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $07, $04
	smpsAlterNote	$14
	dc.b nBb1, $1A
	smpsAlterNote	$10
	dc.b nF1, $02, $02
	smpsAlterNote	$12
	dc.b nFs1, $1C
	smpsAlterNote	$10
	dc.b nAb1, $02, $02
	smpsAlterNote	$14
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_FM4_08_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$10
	dc.b nF1, $02, $02
	smpsAlterNote	$12
	dc.b nFs1, $1C
	smpsAlterNote	$10
	dc.b nAb1, $02
	smpsAlterNote	$12
	dc.b nFs1
	smpsAlterNote	$10
	dc.b nF1
	smpsReturn

Sky_Base_Act_2_FM4_0F_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$0E
	dc.b nDs1, $02
	smpsAlterNote	$10
	dc.b nF1
	smpsAlterNote	$12
	dc.b nFs1, $1C
	smpsAlterNote	$10
	dc.b nF1, $02
	smpsAlterNote	$12
	dc.b nFs1
	smpsAlterNote	$10
	dc.b nAb1
	smpsReturn

Sky_Base_Act_2_FM4_10_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$10
	dc.b nF1, $02, nAb1
	smpsAlterNote	$11
	dc.b nA1, $22
	smpsReturn

Sky_Base_Act_2_FM4_13_0_64_63:
	smpsAlterNote	$0B
	dc.b nC1, $3A
	smpsModSet	$00, $01, $07, $04
	smpsAlterVol	$FE
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_01_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$18
	dc.b nAb2, $02, $02
	smpsAlterNote	$1C
	dc.b nBb2, $1C
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_04_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$18
	dc.b nAb2, $02, $02
	smpsAlterNote	$1C
	dc.b nBb2, $1C
	smpsAlterNote	$18
	dc.b nAb2, $02, $02, $02
	smpsReturn

Sky_Base_Act_2_FM4_03_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$18
	dc.b nAb2, $02, $02
	smpsAlterNote	$16
	dc.b nFs2, $1C
	smpsAlterNote	$1C
	dc.b nBb2, $02, $02
	smpsAlterNote	$18
	dc.b nAb2
	smpsReturn

Sky_Base_Act_2_FM4_05_0_64:
	dc.b smpsNoAttack, $1A
	smpsAlterNote	$10
	dc.b nCs3, $02, $02
	smpsAlterNote	$0F
	dc.b nC3, $0C
	smpsAlterNote	$1C
	dc.b nBb2, $02, $02
	smpsAlterNote	$0F
	dc.b nC3, $0C, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_02_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst, $0A, nBb2, $02, nRst, $04, nBb2, $02, nRst, $0C
	smpsAlterNote	$18
	dc.b nAb2, $02, nRst, $06, nAb2, $02, nRst, $04
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_06_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$1C
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $02, nBb2, $04, nRst, $0C
	smpsAlterNote	$18
	dc.b nAb2, $02, nRst, nAb2, nRst, nAb2, nRst
	smpsAlterNote	$0F
	dc.b nC3, nC3
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_14_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$1C
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $02, nBb2, $04, nRst, $0A
	smpsAlterNote	$18
	dc.b nAb2, $02, nRst, $06, nAb2, $02, nRst, $04
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_07_0_64:
	dc.b nRst, $0C
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst, $10, nBb2, $02, nRst, $06, nBb2, $04, nRst
	smpsAlterNote	$18
	dc.b nAb2, $02, nRst, $06, nAb2, $02, nRst
	smpsAlterNote	$0F
	dc.b nC3, nC3
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM4_09_0_64_65:
	smpsSetvoice	$03
	smpsAlterVol	$04
	smpsAlterNote	$1C
	dc.b nBb2, $20
	smpsAlterNote	$0F
	dc.b nC3
	smpsReturn

Sky_Base_Act_2_FM4_0A_0_64:
	smpsSetvoice	$03
	smpsAlterNote	$1C
	dc.b nBb2, $20, $10
	smpsAlterNote	$19
	dc.b nA2
	smpsReturn

Sky_Base_Act_2_FM4_0B_0_64:
	smpsSetvoice	$03
	smpsAlterNote	$1C
	dc.b nBb2, $20
	smpsAlterNote	$0F
	dc.b nC3
	smpsReturn

Sky_Base_Act_2_FM4_0C_0_64_61:
	smpsAlterNote	$1C
	dc.b nBb2, $20, $10
	smpsAlterNote	$19
	dc.b nA2, $0F
	smpsSetvoice	$05
	smpsAlterVol	$02
	smpsPan		panNone, $00
	smpsAlterNote	$1C
	dc.b nBb3, $01
	smpsReturn

Sky_Base_Act_2_FM4_0D_0_64:
	dc.b smpsNoAttack, $1F
	smpsAlterNote	$1C
	dc.b nBb3, $20
	smpsAlterNote	$18
	dc.b nAb3, $01
	smpsReturn

Sky_Base_Act_2_FM4_0E_0_64:
	dc.b smpsNoAttack, $1F
	smpsAlterNote	$19
	dc.b nA3, $20
	smpsAlterNote	$1C
	dc.b nBb3, $01
	smpsReturn

Sky_Base_Act_2_FM4_11_0_32:
	dc.b smpsNoAttack, $1F
	smpsAlterNote	$19
	dc.b nA3, $01
	smpsReturn

Sky_Base_Act_2_FM4_12_0_64_5F:
	dc.b smpsNoAttack, $3A
	smpsSetvoice	$03
	smpsModSet	$00, $01, $07, $04
	smpsAlterVol	$FA
	smpsAlterNote	$0F
	dc.b nC3, $02, $02
	smpsAlterNote	$10
	dc.b nCs3
	smpsReturn

Sky_Base_Act_2_FM5:
	smpsCall Sky_Base_Act_2_FM5_00_0_64
	smpsCall Sky_Base_Act_2_FM5_0B_0_64
	smpsCall Sky_Base_Act_2_FM5_11_0_64
	smpsCall Sky_Base_Act_2_FM5_12_0_64
	smpsCall Sky_Base_Act_2_FM5_15_0_64

Sky_Base_Act_2_FM5_Jump:
	smpsCall Sky_Base_Act_2_FM5_04_0_64
	smpsCall Sky_Base_Act_2_FM5_06_0_64
	smpsCall Sky_Base_Act_2_FM5_05_0_64
	smpsCall Sky_Base_Act_2_FM5_16_0_64
	smpsCall Sky_Base_Act_2_FM5_01_0_64
	smpsCall Sky_Base_Act_2_FM5_08_0_64
	smpsCall Sky_Base_Act_2_FM5_02_0_64_5F
	smpsCall Sky_Base_Act_2_FM5_09_0_64
	smpsCall Sky_Base_Act_2_FM5_03_0_64
	smpsCall Sky_Base_Act_2_FM5_0A_0_64_62
	smpsCall Sky_Base_Act_2_FM5_04_0_64
	smpsCall Sky_Base_Act_2_FM5_06_0_64
	smpsCall Sky_Base_Act_2_FM5_05_0_64
	smpsCall Sky_Base_Act_2_FM5_07_0_64_5F
	smpsCall Sky_Base_Act_2_FM5_0C_0_64
	smpsCall Sky_Base_Act_2_FM5_0D_0_64
	smpsCall Sky_Base_Act_2_FM5_0C_0_64
	smpsCall Sky_Base_Act_2_FM5_0E_0_64_67
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_10_0_64
	smpsCall Sky_Base_Act_2_FM5_0F_0_64
	smpsCall Sky_Base_Act_2_FM5_13_0_32
	smpsCall Sky_Base_Act_2_FM5_14_0_64
	smpsJump Sky_Base_Act_2_FM5_Jump

Sky_Base_Act_2_FM5_00_0_64:
	smpsSetvoice	$02
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst, nBb2, nRst, nBb2, nBb2, nRst, nBb2, nRst, nBb2
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$1C
	dc.b nBb2
	smpsAlterNote	$10
	dc.b nCs3
	smpsAlterNote	$0F
	dc.b nC3
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$14
	dc.b nF2
	smpsAlterNote	$16
	dc.b nFs2, nRst, nFs2, nRst, nFs2, nFs2, nRst, nFs2, nRst, nFs2, nFs2, nRst, nFs2, nG2
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$19
	dc.b nA2
	smpsReturn

Sky_Base_Act_2_FM5_0B_0_64:
	smpsAlterNote	$1C
	dc.b nBb2, $02, nRst, nBb2, nRst, nBb2, nBb2, nRst, nBb2, nRst, nBb2
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$1C
	dc.b nBb2
	smpsAlterNote	$10
	dc.b nCs3
	smpsAlterNote	$0F
	dc.b nC3
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$14
	dc.b nF2
	smpsAlterNote	$16
	dc.b nFs2, nRst, nFs2, nRst, nFs2, nFs2, nRst, nFs2, nRst, nFs2, nFs2, nRst, nFs2
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$16
	dc.b nFs2
	smpsAlterNote	$14
	dc.b nF2
	smpsReturn

Sky_Base_Act_2_FM5_11_0_64:
	smpsAlterNote	$14
	dc.b nF2, $02, $02, nRst, nF2, nRst, nF2, nRst, nF2, nRst, nF2, nRst, nF2, nF2
	smpsAlterNote	$0F
	dc.b nC2
	smpsAlterNote	$12
	dc.b nDs2
	smpsAlterNote	$14
	dc.b nF2
	smpsAlterNote	$16
	dc.b nFs2, nFs2, nRst, nFs2, nRst, nFs2, nRst, nFs2, nRst, nFs2, nRst, nFs2, nFs2
	smpsAlterNote	$10
	dc.b nCs2
	smpsAlterNote	$12
	dc.b nDs2
	smpsAlterNote	$14
	dc.b nF2
	smpsReturn

Sky_Base_Act_2_FM5_12_0_64:
	smpsAlterNote	$18
	dc.b nAb2, $02, $02, nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2
	smpsAlterNote	$12
	dc.b nDs2
	smpsAlterNote	$16
	dc.b nFs2
	smpsAlterNote	$18
	dc.b nAb2
	smpsAlterNote	$19
	dc.b nA2, nA2, nRst, nA2, nRst, nA2, nRst, nA2, nRst, nA2, nRst, nA2, nA2
	smpsAlterNote	$1C
	dc.b nB2
	smpsAlterNote	$16
	dc.b nFs2
	smpsAlterNote	$18
	dc.b nAb2
	smpsReturn

Sky_Base_Act_2_FM5_15_0_64:
	smpsSetvoice	$03
	smpsAlterNote	$18
	dc.b nAb0, $3B
	smpsSetvoice	$04
	smpsModSet	$00, $01, $05, $04
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4, $01
	smpsReturn

Sky_Base_Act_2_FM5_04_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0E
	dc.b nDs4, $02
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nF4, $14
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4, $04
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsAlterNote	$14
	dc.b nBb3, $14
	smpsAlterNote	$0C
	dc.b nCs4, $02
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4, $01
	smpsReturn

Sky_Base_Act_2_FM5_06_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0E
	dc.b nDs4, $02
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nF4, $14
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4, $04
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsAlterNote	$0E
	dc.b nDs4, $1F
	smpsReturn

Sky_Base_Act_2_FM5_05_0_64:
	dc.b smpsNoAttack, $03
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $02
	smpsPan		panCenter, $00, $02
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nAb3, $04, $12
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panCenter, $00, $02
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF3, $04
	smpsAlterNote	$14
	dc.b nBb3, $0F
	smpsReturn

Sky_Base_Act_2_FM5_16_0_64:
	dc.b smpsNoAttack, $03
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $02
	smpsPan		panCenter, $00, $02
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nAb3, $04
	smpsAlterNote	$0B
	dc.b nC4, $08, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nF4
	smpsPan		panCenter, $00, nF4
	smpsPan		panNone, $00, nAb4, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$12
	dc.b nFs4, $04
	smpsAlterNote	$10
	dc.b nF4, $0C
	smpsAlterNote	$0E
	dc.b nDs4, $03
	smpsReturn

Sky_Base_Act_2_FM5_01_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0E
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nF4, $1B
	smpsAlterNote	$0B
	dc.b nC4, $04, $01
	smpsAlterNote	$0C
	dc.b nCs4, $1B
	smpsAlterNote	$12
	dc.b nG4, $01
	smpsAlterNote	$10
	dc.b nAb4, $02
	smpsReturn

Sky_Base_Act_2_FM5_08_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$10
	dc.b nF4, $1C
	smpsAlterNote	$12
	dc.b nG4, $01
	smpsAlterNote	$10
	dc.b nAb4, $03
	smpsAlterNote	$0C
	dc.b nCs4, $1C
	smpsAlterNote	$0E
	dc.b nDs4, $03
	smpsReturn

Sky_Base_Act_2_FM5_02_0_64_5F:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0B
	dc.b nC4, $04, nRst
	smpsSetvoice	$00
	smpsAlterVol	$FD
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0B
	dc.b nC4, $02
	smpsAlterNote	$14
	dc.b nBb3
	smpsAlterNote	$10
	dc.b nAb3
	smpsPan		panNone, $00, nF3
	smpsPan		panCenter, $00, nAb3
	smpsAlterNote	$14
	dc.b nBb3
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $0A
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$10
	dc.b nF4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nF4, nAb4
	smpsPan		panNone, $00, nF4, $05
	smpsPan		panCenter, $00
	smpsReturn

Sky_Base_Act_2_FM5_09_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0B
	dc.b nC5, $04
	smpsAlterNote	$14
	dc.b nBb4, $02
	smpsAlterNote	$0B
	dc.b nC5
	smpsAlterNote	$14
	dc.b nBb4
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs5, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC5, $02
	smpsAlterNote	$14
	dc.b nBb4
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nAb4
	smpsPan		panCenter, $00
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterNote	$10
	dc.b nF4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4, $04
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF4, nAb4
	smpsAlterNote	$14
	dc.b nBb4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs5
	smpsAlterNote	$0B
	dc.b nC5
	smpsAlterNote	$14
	dc.b nBb4
	smpsPan		panNone, $00
	smpsAlterNote	$11
	dc.b nA4
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb4, $03
	smpsReturn

Sky_Base_Act_2_FM5_03_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0B
	dc.b nC5, $04
	smpsAlterNote	$10
	dc.b nF4, $02
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs5
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb4
	smpsAlterNote	$0C
	dc.b nCs5
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF4
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterNote	$0C
	dc.b nCs5
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs5
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC5
	smpsAlterNote	$10
	dc.b nF5
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF4
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs5
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb4
	smpsAlterNote	$0E
	dc.b nDs5
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00
	smpsAlterNote	$12
	dc.b nFs5
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF5
	smpsAlterNote	$0E
	dc.b nDs5
	smpsAlterNote	$0C
	dc.b nCs5
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb4
	smpsAlterNote	$10
	dc.b nAb4, $01
	smpsReturn

Sky_Base_Act_2_FM5_0A_0_64_62:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$10
	dc.b nF4, $02
	smpsPan		panNone, $00, nRst
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0F
	dc.b nE4
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nF4
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$14
	dc.b nBb3
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panNone, $00
	smpsAlterNote	$11
	dc.b nA3
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $04
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$11
	dc.b nA3, $02
	smpsAlterNote	$14
	dc.b nBb3
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsAlterNote	$10
	dc.b nF4, $04, $02
	smpsSetvoice	$04
	smpsAlterVol	$03
	smpsAlterNote	$0E
	dc.b nDs5
	smpsAlterNote	$0B
	dc.b nC5
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb4
	smpsPan		panCenter, $00
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterNote	$0C
	dc.b nCs4, $01
	smpsReturn

Sky_Base_Act_2_FM5_07_0_64_5F:
	dc.b smpsNoAttack, $03
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $02
	smpsPan		panCenter, $00, $02
	smpsAlterNote	$0C
	dc.b nCs4
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$10
	dc.b nAb3, $04
	smpsAlterNote	$0B
	dc.b nC4, $08, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$0E
	dc.b nDs4
	smpsPan		panNone, $00
	smpsAlterNote	$10
	dc.b nF4
	smpsPan		panCenter, $00, nF4
	smpsPan		panNone, $00, nAb4, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$12
	dc.b nFs4, $04
	smpsAlterNote	$10
	dc.b nF4, $05
	smpsSetvoice	$02
	smpsAlterVol	$F8
	dc.b nF3, $02
	smpsPan		panNone, $00, nAb3, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsReturn

Sky_Base_Act_2_FM5_0C_0_64:
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $06
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $04
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00, nCs4
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $06
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $04
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsReturn

Sky_Base_Act_2_FM5_0D_0_64:
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs4, $06
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panCenter, $00, nCs4, $02
	smpsPan		panNone, $00
	smpsAlterNote	$11
	dc.b nA3, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $08
	smpsPan		panCenter, $00
	smpsAlterNote	$11
	dc.b nA3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$11
	dc.b nA3
	smpsReturn

Sky_Base_Act_2_FM5_0E_0_64_67:
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panNone, $00
	smpsAlterNote	$0E
	dc.b nDs4, $06
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4, $04
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsPan		panNone, $00
	smpsAlterNote	$0C
	dc.b nCs4
	smpsPan		panCenter, $00, nCs4, $02
	smpsPan		panNone, $00
	smpsAlterNote	$11
	dc.b nA3, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$14
	dc.b nBb3
	smpsPan		panNone, $00
	smpsAlterNote	$0B
	dc.b nC4, $08
	smpsPan		panCenter, $00
	smpsAlterNote	$11
	dc.b nA3, $02
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3, $04
	smpsPan		panCenter, $00
	smpsAlterNote	$11
	dc.b nA3, $02
	smpsSetvoice	$05
	smpsAlterVol	$08
	smpsAlterNote	$10
	dc.b nF3
	smpsReturn

Sky_Base_Act_2_FM5_0F_0_64:
	dc.b smpsNoAttack, $1E
	smpsAlterNote	$12
	dc.b nG3, $20
	smpsAlterNote	$10
	dc.b nF3, $02
	smpsReturn

Sky_Base_Act_2_FM5_10_0_64:
	dc.b smpsNoAttack, $1E
	smpsAlterNote	$10
	dc.b nF3, $20, $02
	smpsReturn

Sky_Base_Act_2_FM5_13_0_32:
	dc.b smpsNoAttack, $1E
	smpsAlterNote	$10
	dc.b nF3, $02
	smpsReturn

Sky_Base_Act_2_FM5_14_0_64:
	dc.b smpsNoAttack, $3B
	smpsSetvoice	$04
	smpsModSet	$00, $01, $05, $04
	smpsPan		panNone, $00
	smpsAlterNote	$14
	dc.b nBb3, $02
	smpsPan		panCenter, $00
	smpsAlterNote	$0B
	dc.b nC4
	smpsAlterNote	$0C
	dc.b nCs4, $01
	smpsReturn

Sky_Base_Act_2_DAC:
	smpsCall Sky_Base_Act_2_DAC_00_0_64
	smpsCall Sky_Base_Act_2_DAC_07_0_64
	smpsCall Sky_Base_Act_2_DAC_0E_0_64
	smpsCall Sky_Base_Act_2_DAC_0E_0_64
	smpsCall Sky_Base_Act_2_DAC_10_0_64

Sky_Base_Act_2_DAC_Jump:
	smpsCall Sky_Base_Act_2_DAC_03_0_64
	smpsCall Sky_Base_Act_2_DAC_04_0_64
	smpsCall Sky_Base_Act_2_DAC_04_0_64
	smpsCall Sky_Base_Act_2_DAC_05_0_64
	smpsCall Sky_Base_Act_2_DAC_01_0_64
	smpsCall Sky_Base_Act_2_DAC_01_0_64
	smpsCall Sky_Base_Act_2_DAC_02_0_64
	smpsCall Sky_Base_Act_2_DAC_06_0_64
	smpsCall Sky_Base_Act_2_DAC_11_0_64
	smpsCall Sky_Base_Act_2_DAC_12_0_64
	smpsCall Sky_Base_Act_2_DAC_03_0_64
	smpsCall Sky_Base_Act_2_DAC_04_0_64
	smpsCall Sky_Base_Act_2_DAC_04_0_64
	smpsCall Sky_Base_Act_2_DAC_05_0_64
	smpsCall Sky_Base_Act_2_DAC_08_0_64
	smpsCall Sky_Base_Act_2_DAC_09_0_64
	smpsCall Sky_Base_Act_2_DAC_0A_0_64
	smpsCall Sky_Base_Act_2_DAC_0B_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0D_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_64
	smpsCall Sky_Base_Act_2_DAC_0C_0_32
	smpsCall Sky_Base_Act_2_DAC_0F_0_64
	smpsJump Sky_Base_Act_2_DAC_Jump

Sky_Base_Act_2_DAC_00_0_64:
	dc.b smpsNoAttack, $40
	smpsReturn

Sky_Base_Act_2_DAC_07_0_64:
	dc.b smpsNoAttack, $14, dKick, $02, dKick, dKick, $0A, $04, $02, dSnare, $04, dKick, $02, dSnare, $04, dKick
	dc.b dSnare, dKick, $02, dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_0E_0_64:
	dc.b dKick, $02, $04, $02, dSnare, $04, dKick, $02, $02, $02, $02, dKick, $04, dSnare, dKick, $02
	dc.b dSnare, $04, dKick, $02, $02, dKick, dSnare, $04, dKick, $02, $02, $02, $02, dKick, $04, dSnare
	dc.b dKick, $02, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_10_0_64:
	dc.b dKick, $0E, $02, $0E, $02, $0E, $02, dSnare, $04, dKick, $02, dSnare, $04, dSnare, $02, $02
	dc.b $02
	smpsReturn

Sky_Base_Act_2_DAC_03_0_64:
	dc.b dKick, $04, $04, dSnare, dKick, dKick, dKick, dSnare, dKick, $08, $04, dSnare, dKick, dKick, dKick, dSnare
	dc.b dSnare, $02, $02
	smpsReturn

Sky_Base_Act_2_DAC_04_0_64:
	dc.b dKick, $04, $04, dSnare, dKick, dKick, dKick, dSnare, dKick, $08, $04, dSnare, dKick, dKick, dKick, dSnare
	dc.b dSnare, $02, $02
	smpsReturn

Sky_Base_Act_2_DAC_05_0_64:
	dc.b dKick, $04, $04, dSnare, dKick, dKick, dKick, dSnare, dKick, dSnare, dSnare, dSnare, $02, $04, $04, dMidTimpani
	dc.b dHiTimpani, $02, $02, dMidTimpani, dMidTimpani
	smpsPan		panNone, $00, dLowTimpani
	smpsReturn

Sky_Base_Act_2_DAC_01_0_64:
	dc.b dLowTimpani, $06, dKick, $02, $06, $02, $02, dLowTimpani, dKick
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dKick, dLowTimpani, dKick, dMidTimpani
	smpsPan		panNone, $00, dLowTimpani, $06
	smpsPan		panCenter, $00
	dc.b dKick, $02, $06, $02, $02, dLowTimpani, dKick
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dKick, dLowTimpani, dKick, dMidTimpani
	smpsReturn

Sky_Base_Act_2_DAC_02_0_64:
	dc.b dKick, $04, $04, dSnare, dKick, dKick, dKick, $02, dHiTimpani, dSnare
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dMidTimpani, dHiTimpani
	smpsPan		panNone, $00, dLowTimpani, $04
	smpsPan		panCenter, $00, dKick
	dc.b dSnare, dHiTimpani, $02, $02, dMidTimpani, $04, $04
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dSnare, $02, $02
	smpsReturn

Sky_Base_Act_2_DAC_06_0_64:
	smpsPan		panNone, $00
	dc.b dLowTimpani, $04
	smpsPan		panCenter, $00, dKick, dSnare, dKick, dKick, dKick, $02, dHiTimpani, dSnare
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dMidTimpani, dHiTimpani
	smpsPan		panNone, $00, dLowTimpani, $04
	smpsPan		panCenter, $00, dKick
	dc.b dSnare
	smpsPan		panNone, $00, dLowTimpani, $02, $02
	smpsPan		panCenter, $00, dMidTimpani, $04, $04, dLowTimpani, $02, dHiTimpani, dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_11_0_64:
	dc.b dKick, $02, $04, $02, dSnare, $04, dKick, $02, $04, $02, $02, dHiTimpani, dSnare
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dMidTimpani, dHiTimpani
	smpsPan		panNone, $00
	dc.b dLowTimpani, $04
	smpsPan		panCenter, $00, dKick, dSnare, dKick, $02, $02, dSnare, $04, dKick, $02, dSnare, $04, dKick, $02, dSnare
	dc.b dSnare
	smpsReturn

Sky_Base_Act_2_DAC_12_0_64:
	dc.b dKick, $02, $04, $02, dSnare, $04, dKick, $02, $04, $02, $02, dHiTimpani, dSnare
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dMidTimpani, dHiTimpani
	smpsPan		panNone, $00
	dc.b dLowTimpani, $04
	smpsPan		panCenter, $00, dKick, $02, $02, dSnare, $04
	smpsPan		panNone, $00, dLowTimpani, $02
	smpsPan		panCenter, $00, dHiTimpani, dMidTimpani, dMidTimpani
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00, dHiTimpani, dSnare, dSnare
	dc.b dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_08_0_64:
	dc.b dLowTimpani, $08, dKick, $10, $10, $0C, dKick, $02, $02, dSnare, dSnare, dKick, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_09_0_64:
	dc.b dKick, $08, $10, $10, $0C, dSnare, $02, dKick, $04, $02, dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_0A_0_64:
	dc.b smpsNoAttack, $08, dKick, $10, $10, $10, $08
	smpsReturn

Sky_Base_Act_2_DAC_0B_0_64:
	dc.b smpsNoAttack, $08, dKick, $10, $10, $04, $02, dSnare, $04, dKick, dSnare, dKick, $02, dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_DAC_0C_0_64:
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, $04, $02, $02
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, $04, $02, $02
	smpsReturn

Sky_Base_Act_2_DAC_0D_0_64:
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, $04, $02, $02
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, dHiTimpani, $02, dMidTimpani, dKick, dSnare, dMidTimpani
	smpsPan		panNone, $00, dLowTimpani
	smpsPan		panCenter, $00
	dc.b dSnare
	smpsReturn

Sky_Base_Act_2_DAC_0C_0_32:
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, $04, $02, $02
	dc.b dKick
	smpsReturn

Sky_Base_Act_2_DAC_0F_0_64:
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, $04, $02, $02
	dc.b dKick, $04, $02, $02, dSnare, $04, dKick, $02, $04, $02, $02, $02, dSnare, dSnare, dSnare, dSnare
	smpsReturn

Sky_Base_Act_2_PSG1:
	smpsCall Sky_Base_Act_2_PSG1_00_0_64
	smpsCall Sky_Base_Act_2_PSG1_13_0_64
	smpsCall Sky_Base_Act_2_PSG1_0F_0_64
	smpsCall Sky_Base_Act_2_PSG1_10_0_64
	smpsCall Sky_Base_Act_2_PSG1_12_0_64_0F

Sky_Base_Act_2_PSG1_Jump:
	smpsCall Sky_Base_Act_2_PSG1_03_0_64
	smpsCall Sky_Base_Act_2_PSG1_05_0_64
	smpsCall Sky_Base_Act_2_PSG1_04_0_64
	smpsCall Sky_Base_Act_2_PSG1_06_0_64
	smpsCall Sky_Base_Act_2_PSG1_00_0_64_0D
	smpsCall Sky_Base_Act_2_PSG1_13_0_64
	smpsCall Sky_Base_Act_2_PSG1_01_0_64_0F
	smpsCall Sky_Base_Act_2_PSG1_08_0_64
	smpsCall Sky_Base_Act_2_PSG1_02_0_64_07
	smpsCall Sky_Base_Act_2_PSG1_09_0_64
	smpsCall Sky_Base_Act_2_PSG1_03_0_64_0A
	smpsCall Sky_Base_Act_2_PSG1_05_0_64
	smpsCall Sky_Base_Act_2_PSG1_04_0_64
	smpsCall Sky_Base_Act_2_PSG1_06_0_64
	smpsCall Sky_Base_Act_2_PSG1_0A_0_64_0D
	smpsCall Sky_Base_Act_2_PSG1_0B_0_64
	smpsCall Sky_Base_Act_2_PSG1_0C_0_64
	smpsCall Sky_Base_Act_2_PSG1_0D_0_64
	smpsCall Sky_Base_Act_2_PSG1_0E_0_64_0B
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_64
	smpsCall Sky_Base_Act_2_PSG1_07_0_32
	smpsCall Sky_Base_Act_2_PSG1_11_0_64_0E
	smpsPSGAlterVol	$02
	smpsJump Sky_Base_Act_2_PSG1_Jump

Sky_Base_Act_2_PSG1_00_0_64:
	smpsPSGvoice	Short
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nAb2, nG2, nAb2
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nAb2, nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nAb2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1
	smpsReturn

Sky_Base_Act_2_PSG1_13_0_64:
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nAb2, nG2, nAb2
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nAb2, nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nAb2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1
	smpsReturn

Sky_Base_Act_2_PSG1_0F_0_64:
	smpsModSet	$00, $01, $01, $03
	dc.b nA2, $02, $04, nG2, nF2, nF2, $02, nE2, nE2, $04, nF2, nG2, nA2, $02, nBb2, nBb2
	dc.b $04, nA2, nG2, nF2, $02, nE2, nE2, $04, nF2, nG2, nAb2, $02
	smpsReturn

Sky_Base_Act_2_PSG1_10_0_64:
	dc.b nA2, $02, $04, nG2, nF2, nF2, $02, nE2, nE2, $04, nF2, nG2, nA2, $02, nBb2, nBb2
	dc.b $04, nA2, nG2, nF2, $02, nE2, nE2, $04, nF2, nG2, nA2, $02
	smpsReturn

Sky_Base_Act_2_PSG1_12_0_64_0F:
	smpsPSGvoice	Short
	dc.b nA2, $02, nE2, nA2, nBb2, nA2, nF2, nBb2, nA2, nBb2, nA2, nE2, nCs3, nD3, nCs3, nBb2
	dc.b nD3, nCs3, nA2, nCs3, nD3, nCs3, nA2, nCs3, nA2, nCs3, nE3, nG3, nBb3
	smpsPSGAlterVol	$02
	dc.b nA3, nC4, nD4, nE4
	smpsReturn

Sky_Base_Act_2_PSG1_03_0_64:
	dc.b smpsNoAttack, $02
	smpsPSGvoice	Short
	smpsModOff
	dc.b nA2, nA2, $04, $02, $04, $02, $02, $04, $04, $02, nE2, nF2, $04, $02, $04, $02
	dc.b $04, $02, $02, $04, $04, $02, nG2, nA2
	smpsReturn

Sky_Base_Act_2_PSG1_05_0_64:
	dc.b smpsNoAttack, $02, nA2, nA2, $04, $02, $04, $02, $02, $04, $04, $02, nE2, nF2, $04, $02
	dc.b $04, $02, $04, $02, $02, $04, $04, $02, $02, $02
	smpsReturn

Sky_Base_Act_2_PSG1_04_0_64:
	dc.b smpsNoAttack, $02, nC3, nC3, $04, nA2, $02, nC3, $04, $02, nE3, nC3, $04, nG3, nF3, $02
	dc.b nE3, nD3, $04, $02, $04, nC3, $02, nD3, $04, $02, nF3, nD3, $04, nA3, nG3, $02
	dc.b nF3, nE3
	smpsReturn

Sky_Base_Act_2_PSG1_06_0_64:
	dc.b smpsNoAttack, $02, nE3, nE3, $04, nD3, $02, nE3, $04, $02, nG3, nE3, $04, nC4, nA3, $02
	dc.b nBb3, nA3, $04, $02, $04, $02, $04, $02, $02, $04, $04, nG3, $02, nF3, nE3
	smpsReturn

Sky_Base_Act_2_PSG1_00_0_64_0D:
	smpsPSGvoice	Short
	smpsPSGAlterVol	$FE
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nAb2, nG2, nAb2
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nAb2, nD3
	smpsPSGAlterVol	$05
	dc.b nAb2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nAb2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1
	smpsReturn

Sky_Base_Act_2_PSG1_01_0_64_0F:
	dc.b nRst, $01
	smpsPSGvoice	Blank
	smpsModSet	$00, $01, $01, $04
	smpsPSGAlterVol	$08
	smpsAlterNote	$FF
	dc.b nCs3, $06, nD3, $02, nE3, nF3, nG3, nAb3, nA3, $06, nAb3, $02, nG3, nF3, nE3, nD3
	dc.b nAb3, $06, nA3, $02, nG3, nF3, nE3, nCs3, nD3, $06, nE3, $02, nF3, nG3, nF3, nD3
	dc.b $01
	smpsReturn

Sky_Base_Act_2_PSG1_08_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b nCs3, $06, nG2, $02, nA2, nC3, nE3, nG3, nA3, $06, nD4, $02, nC4, nBb3, nA3, nG3
	dc.b nAb3, $06, nE3, $02, nF3, nAb3, nE3, nAb3, nD4, $06, nCs4, $02, nD4, nF4, nA4, nF4
	dc.b $01
	smpsReturn

Sky_Base_Act_2_PSG1_02_0_64_07:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b nE3, $04
	smpsPSGvoice	Long
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$FD
	dc.b nF2, $02, nG2, nA2, nC3, nA2, nD3, nA2, nRst, nF2, nG2, nC3, nD3, nA2, nF3, nC3
	dc.b nRst, nF2, nA2, nC3, nD3, nA2, nBb2, nC3, nE3, nD3, nC3, nBb2, nA2, nG2, nF2, $01
	smpsReturn

Sky_Base_Act_2_PSG1_09_0_64:
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b nE2, $02, nRst, nF2, nG2, nA2, nC3, nA2, nD3, nA2, nRst, nF2, nG2, nC3, nD3, nA2
	dc.b nF3, nC3, nRst, nF2, nA2, nC3, nD3, nA2, nBb2, nC3, nCs3, nBb2, nCs3, nBb3, nCs4, nE4
	dc.b nG4, $01
	smpsReturn

Sky_Base_Act_2_PSG1_03_0_64_0A:
	dc.b smpsNoAttack, $02
	smpsPSGvoice	Short
	smpsModOff
	smpsPSGAlterVol	$FD
	smpsAlterNote	$FF
	dc.b nA2, nA2, $04, $02, $04, $02, $02, $04, $04, $02, nE2, nF2, $04, $02, $04, $02
	dc.b $04, $02, $02, $04, $04, $02, nG2, nA2
	smpsReturn

Sky_Base_Act_2_PSG1_0A_0_64_0D:
	smpsPSGvoice	Blank
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	smpsAlterNote	$FF
	dc.b nD2, $14, $04, nE2, nF2, nG2, $14, $04, nF2, nE2
	smpsReturn

Sky_Base_Act_2_PSG1_0B_0_64:
	smpsAlterNote	$FF
	dc.b nF2, $14, nD2, $04, nE2, nF2, nE2, $14, nG3, $04, nF3, nE3
	smpsReturn

Sky_Base_Act_2_PSG1_0C_0_64:
	smpsAlterNote	$FF
	dc.b nD3, $14, $04, nE3, nF3, nG3, $14, $04, nF3, nE3
	smpsReturn

Sky_Base_Act_2_PSG1_0D_0_64:
	smpsAlterNote	$FF
	dc.b nF3, $14, nG3, $04, nA3, nBb3, nA3, $20
	smpsReturn

Sky_Base_Act_2_PSG1_0E_0_64_0B:
	smpsPSGvoice	Short
	smpsModOff
	smpsPSGAlterVol	$FD
	smpsAlterNote	$FF
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nA2, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1
	smpsReturn

Sky_Base_Act_2_PSG1_07_0_64:
	smpsAlterNote	$FF
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nA2, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1
	smpsReturn

Sky_Base_Act_2_PSG1_07_0_32:
	smpsAlterNote	$FF
	dc.b nA2, $02, nG2, nA2
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nA2, nD3
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nA2
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF2, nD2, nA1, nA2
	smpsReturn

Sky_Base_Act_2_PSG1_11_0_64_0E:
	smpsPSGAlterVol	$FF
	smpsAlterNote	$FF
	dc.b nA1, $02, nE1, nA1, nBb1, nA1, nF1, nBb1, nA1, nBb1, nA1, nE1, nCs2, nD2, nCs2, nBb1
	dc.b nD2, nCs2, nA1, nCs2, nD2, nCs2, nA1, nCs2, nA1, nCs2, nE2, nG2, nBb2, nA2, nC3, nD3
	dc.b nE3
	smpsReturn

Sky_Base_Act_2_PSG2:
	smpsCall Sky_Base_Act_2_PSG2_00_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64_0F
	smpsCall Sky_Base_Act_2_PSG2_0D_0_64_0E
	smpsCall Sky_Base_Act_2_PSG2_0E_0_64
	smpsCall Sky_Base_Act_2_PSG2_10_0_64

Sky_Base_Act_2_PSG2_Jump:
	smpsCall Sky_Base_Act_2_PSG2_03_0_64
	smpsCall Sky_Base_Act_2_PSG2_05_0_64
	smpsCall Sky_Base_Act_2_PSG2_04_0_64
	smpsCall Sky_Base_Act_2_PSG2_06_0_64
	smpsCall Sky_Base_Act_2_PSG2_00_0_64_0D
	smpsCall Sky_Base_Act_2_PSG2_07_0_64_0F
	smpsCall Sky_Base_Act_2_PSG2_01_0_64_0E
	smpsCall Sky_Base_Act_2_PSG2_02_0_64
	smpsCall Sky_Base_Act_2_PSG2_02_0_64
	smpsCall Sky_Base_Act_2_PSG2_08_0_64
	smpsCall Sky_Base_Act_2_PSG2_03_0_64
	smpsCall Sky_Base_Act_2_PSG2_05_0_64
	smpsCall Sky_Base_Act_2_PSG2_04_0_64
	smpsCall Sky_Base_Act_2_PSG2_06_0_64
	smpsCall Sky_Base_Act_2_PSG2_09_0_64_0D
	smpsCall Sky_Base_Act_2_PSG2_0A_0_64
	smpsCall Sky_Base_Act_2_PSG2_0B_0_64
	smpsCall Sky_Base_Act_2_PSG2_0A_0_64
	smpsCall Sky_Base_Act_2_PSG2_0C_0_64_0A
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_64
	smpsCall Sky_Base_Act_2_PSG2_07_0_32
	smpsCall Sky_Base_Act_2_PSG2_0F_0_64_0E
	smpsPSGAlterVol	$02
	smpsJump Sky_Base_Act_2_PSG2_Jump

Sky_Base_Act_2_PSG2_00_0_64:
	smpsPSGvoice	Short
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2
	smpsReturn

Sky_Base_Act_2_PSG2_07_0_64_0F:
	smpsPSGAlterVol	$01
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2
	smpsReturn

Sky_Base_Act_2_PSG2_0D_0_64_0E:
	smpsPSGvoice	Long
	smpsModOff
	smpsPSGAlterVol	$01
	dc.b nA2, $08
	smpsModSet	$00, $01, $04, $7F
	dc.b smpsNoAttack, $08
	smpsModSet	$00, $01, $04, $7F
	smpsModSet	$00, $01, $01, $03
	dc.b nA3, $10
	smpsModOff
	dc.b nAb3, $08
	smpsModSet	$00, $01, $FC, $80
	dc.b smpsNoAttack, $08
	smpsModSet	$00, $01, $04, $7F
	smpsModSet	$00, $01, $01, $03
	dc.b nD3, $10
	smpsReturn

Sky_Base_Act_2_PSG2_0E_0_64:
	smpsModOff
	dc.b nA2, $08
	smpsModSet	$00, $01, $04, $7F
	dc.b smpsNoAttack, $08
	smpsModSet	$00, $01, $04, $7F
	smpsModSet	$00, $01, $01, $03
	dc.b nA3, $10
	smpsModOff
	dc.b nAb3, $08
	smpsModSet	$00, $01, $04, $7F
	dc.b smpsNoAttack, $08
	smpsModOff
	smpsModSet	$00, $01, $04, $7F
	smpsModSet	$00, $01, $01, $03
	dc.b nD4, $10
	smpsReturn

Sky_Base_Act_2_PSG2_10_0_64:
	smpsPSGvoice	Short
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$FE
	dc.b nCs3, $02, nA2, nCs3, nD3, nCs3, nBb2, nD3, nCs3, nD3, nCs3, nA2, nE3, nF3, nE3, nD3
	dc.b nF3, nE3, nCs3, nE3, nF3, nE3, nD3, nF3, nCs3, nE3, nG3, nBb3, nCs4
	smpsPSGAlterVol	$02
	dc.b nD4, nE4, nF4, nG4
	smpsReturn

Sky_Base_Act_2_PSG2_03_0_64:
	dc.b smpsNoAttack, $02
	smpsPSGvoice	Short
	smpsModOff
	dc.b nD3, nD3, $04, nC3, $02, nD3, $04, $02, nF3, nD3, $04, $04, $02, nC3, nD3, $04
	dc.b $02, $04, nC3, $02, nD3, $04, $02, nF3, nD3, $04, $04, $02, nC3, nD3
	smpsReturn

Sky_Base_Act_2_PSG2_05_0_64:
	dc.b smpsNoAttack, $02, nD3, nD3, $04, nC3, $02, nD3, $04, $02, nF3, nD3, $04, $04, $02, nC3
	dc.b nD3, $04, $02, $04, nC3, $02, nD3, $04, $02, nF3, nD3, $04, $04, $02, nC3, nD3
	smpsReturn

Sky_Base_Act_2_PSG2_04_0_64:
	dc.b smpsNoAttack, $02, nF2, nF2, $04, $02, $04, $02, $02, $04, nE2, nE2, $02, nF2, nBb2, $04
	dc.b $02, $04, $02, $04, $02, $02, $04, $04, $02, $02, nC3
	smpsReturn

Sky_Base_Act_2_PSG2_06_0_64:
	dc.b smpsNoAttack, $02, nC3, nC3, $04, $02, $04, $02, $02, $04, nE3, nC3, $02, nE3, nF3, $04
	dc.b $02, $04, $02, $04, $02, nE3, nE3, $04, $04, nD3, $02, $02, $02
	smpsReturn

Sky_Base_Act_2_PSG2_00_0_64_0D:
	smpsPSGvoice	Short
	smpsPSGAlterVol	$FE
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2
	smpsReturn

Sky_Base_Act_2_PSG2_01_0_64_0E:
	smpsPSGvoice	Long
	smpsPSGAlterVol	$01
	smpsAlterNote	$01
	dc.b nA2, $02, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nF2
	smpsPSGAlterVol	$FB
	dc.b nD2
	smpsPSGAlterVol	$05
	dc.b nE2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nD2
	smpsPSGAlterVol	$FB
	dc.b nG2, nF2, nAb2, nA2, nA2, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nF2
	smpsPSGAlterVol	$FB
	dc.b nD2
	smpsPSGAlterVol	$05
	dc.b nE2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nD2
	smpsPSGAlterVol	$FB
	dc.b nG2, nF2, nAb2
	smpsReturn

Sky_Base_Act_2_PSG2_02_0_64:
	smpsAlterNote	$01
	dc.b nA2, $02, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nF2
	smpsPSGAlterVol	$FB
	dc.b nD2
	smpsPSGAlterVol	$05
	dc.b nE2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nD2
	smpsPSGAlterVol	$FB
	dc.b nG2, nF2, nAb2, nA2, nA2, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nF2
	smpsPSGAlterVol	$FB
	dc.b nD2
	smpsPSGAlterVol	$05
	dc.b nE2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nD2
	smpsPSGAlterVol	$FB
	dc.b nG2, nF2, nAb2
	smpsReturn

Sky_Base_Act_2_PSG2_08_0_64:
	smpsAlterNote	$01
	dc.b nA2, $02, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nF2
	smpsPSGAlterVol	$FB
	dc.b nD2
	smpsPSGAlterVol	$05
	dc.b nE2
	smpsPSGAlterVol	$FB
	dc.b nE2
	smpsPSGAlterVol	$05
	dc.b nD2
	smpsPSGAlterVol	$FB
	dc.b nG2, nF2, nAb2, nA2, nA2, $04, nG2, $02
	smpsPSGAlterVol	$05
	dc.b nA2
	smpsPSGAlterVol	$FB
	dc.b nF2
	smpsPSGAlterVol	$05
	dc.b nG2
	smpsPSGAlterVol	$FB
	dc.b nE2, nCs3, nE3, nG3, nBb3, nG3, nBb3, nCs4, nE4
	smpsReturn

Sky_Base_Act_2_PSG2_09_0_64_0D:
	smpsPSGvoice	Short
	smpsAlterNote	$01
	dc.b nD1, $01
	smpsPSGAlterVol	$03
	dc.b nRst
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nD1
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nA3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nA3
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsPSGAlterVol	$FD
	dc.b nE1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nG1
	smpsPSGAlterVol	$03
	dc.b nE1
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nG1
	smpsPSGAlterVol	$FD
	dc.b nE2
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsPSGAlterVol	$FD
	dc.b nG2
	smpsPSGAlterVol	$03
	dc.b nE2
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nG2
	smpsPSGAlterVol	$FD
	dc.b nE3
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nG3
	smpsPSGAlterVol	$03
	dc.b nE3
	smpsPSGAlterVol	$FD
	dc.b nBb3
	smpsPSGAlterVol	$03
	dc.b nG3
	smpsPSGAlterVol	$FD
	dc.b nG3
	smpsPSGAlterVol	$03
	dc.b nBb3
	smpsPSGAlterVol	$FD
	dc.b nE3
	smpsPSGAlterVol	$03
	dc.b nG3
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nE3
	smpsPSGAlterVol	$FD
	dc.b nG2
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nE2
	smpsPSGAlterVol	$03
	dc.b nG2
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nE2
	smpsPSGAlterVol	$FD
	dc.b nG1
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_PSG2_0A_0_64:
	smpsPSGAlterVol	$FD
	smpsAlterNote	$01
	dc.b nD1, $01
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nD1
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nA3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nA3
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsPSGAlterVol	$FD
	dc.b nD1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nD1
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nA3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nE3
	smpsPSGAlterVol	$03
	dc.b nA3
	smpsPSGAlterVol	$FD
	dc.b nCs3
	smpsPSGAlterVol	$03
	dc.b nE3
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nCs3
	smpsPSGAlterVol	$FD
	dc.b nE2
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nCs2
	smpsPSGAlterVol	$03
	dc.b nE2
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nCs2
	smpsPSGAlterVol	$FD
	dc.b nE1
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsReturn

Sky_Base_Act_2_PSG2_0B_0_64:
	smpsPSGAlterVol	$FD
	smpsAlterNote	$01
	dc.b nD1, $01
	smpsPSGAlterVol	$03
	dc.b nE1
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nD1
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nA3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nF3
	smpsPSGAlterVol	$03
	dc.b nA3
	smpsPSGAlterVol	$FD
	dc.b nD3
	smpsPSGAlterVol	$03
	dc.b nF3
	smpsPSGAlterVol	$FD
	dc.b nA2
	smpsPSGAlterVol	$03
	dc.b nD3
	smpsPSGAlterVol	$FD
	dc.b nF2
	smpsPSGAlterVol	$03
	dc.b nA2
	smpsPSGAlterVol	$FD
	dc.b nD2
	smpsPSGAlterVol	$03
	dc.b nF2
	smpsPSGAlterVol	$FD
	dc.b nA1
	smpsPSGAlterVol	$03
	dc.b nD2
	smpsPSGAlterVol	$FD
	dc.b nF1
	smpsPSGAlterVol	$03
	dc.b nA1
	smpsPSGAlterVol	$FD
	dc.b nE1
	smpsPSGAlterVol	$03
	dc.b nF1
	smpsPSGAlterVol	$FD
	dc.b nG1
	smpsPSGAlterVol	$03
	dc.b nE1
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nG1
	smpsPSGAlterVol	$FD
	dc.b nE2
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsPSGAlterVol	$FD
	dc.b nG2
	smpsPSGAlterVol	$03
	dc.b nE2
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nG2
	smpsPSGAlterVol	$FD
	dc.b nE3
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nG3
	smpsPSGAlterVol	$03
	dc.b nE3
	smpsPSGAlterVol	$FD
	dc.b nBb3
	smpsPSGAlterVol	$03
	dc.b nG3
	smpsPSGAlterVol	$FD
	dc.b nG3
	smpsPSGAlterVol	$03
	dc.b nBb3
	smpsPSGAlterVol	$FD
	dc.b nE3
	smpsPSGAlterVol	$03
	dc.b nG3
	smpsPSGAlterVol	$FD
	dc.b nBb2
	smpsPSGAlterVol	$03
	dc.b nE3
	smpsPSGAlterVol	$FD
	dc.b nG2
	smpsPSGAlterVol	$03
	dc.b nBb2
	smpsPSGAlterVol	$FD
	dc.b nE2
	smpsPSGAlterVol	$03
	dc.b nG2
	smpsPSGAlterVol	$FD
	dc.b nBb1
	smpsPSGAlterVol	$03
	dc.b nE2
	smpsPSGAlterVol	$FD
	dc.b nG1
	smpsPSGAlterVol	$03
	dc.b nBb1
	smpsReturn

Sky_Base_Act_2_PSG2_0C_0_64_0A:
	smpsPSGvoice	Short
	smpsPSGAlterVol	$FC
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2
	smpsReturn

Sky_Base_Act_2_PSG2_07_0_64:
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2
	smpsReturn

Sky_Base_Act_2_PSG2_07_0_32:
	dc.b nD3, $02, nC3, nD3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nD3
	smpsPSGAlterVol	$FB
	dc.b nF3, nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nF3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nD3
	smpsPSGAlterVol	$05
	dc.b nF3
	smpsPSGAlterVol	$FB
	dc.b nA2, nF2, nD2, nD3
	smpsReturn

Sky_Base_Act_2_PSG2_0F_0_64_0E:
	smpsPSGAlterVol	$FF
	dc.b nCs2, $02, nA1, nCs2, nD2, nCs2, nBb1, nD2, nCs2, nD2, nCs2, nA1, nE2, nF2, nE2, nD2
	dc.b nF2, nE2, nCs2, nE2, nF2, nE2, nD2, nF2, nCs2, nE2, nG2, nBb2, nCs3, nD3, nE3, nF3
	dc.b nG3
	smpsReturn

Sky_Base_Act_2_PSG3:
	smpsPSGform	$E7
	smpsCall Sky_Base_Act_2_PSG3_00_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_05_0_64_0B

Sky_Base_Act_2_PSG3_Jump:
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_02_0_64
	smpsCall Sky_Base_Act_2_PSG3_03_0_64
	smpsCall Sky_Base_Act_2_PSG3_04_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_04_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_04_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_04_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsCall Sky_Base_Act_2_PSG3_01_0_32
	smpsCall Sky_Base_Act_2_PSG3_01_0_64
	smpsJump Sky_Base_Act_2_PSG3_Jump

Sky_Base_Act_2_PSG3_00_0_64:
	smpsPSGvoice	Closed Hi-Hat
	smpsPSGform		$E3
	dc.b nMaxPSG, $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $02
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02
	smpsReturn

Sky_Base_Act_2_PSG3_02_0_64:
	smpsPSGvoice	Closed Hi-Hat
	dc.b nMaxPSG, $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $02
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02
	smpsReturn

Sky_Base_Act_2_PSG3_05_0_64_0B:
	smpsPSGvoice	Blank	; fine volume slide down
	smpsPSGAlterVol	$FE
	dc.b nMaxPSG, $3E	; volume slide
	dc.b smpsNoAttack, $02
	smpsReturn

Sky_Base_Act_2_PSG3_01_0_64:
	dc.b smpsNoAttack, $40
	smpsReturn

Sky_Base_Act_2_PSG3_03_0_64:
	smpsPSGvoice	Closed Hi-Hat
	dc.b nMaxPSG, $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $04, $02
	smpsPSGvoice	Open Hi-Hat
	dc.b $04
	smpsPSGvoice	Closed Hi-Hat
	dc.b $02, $02, $02, $02, nRst, $0C
	smpsReturn

Sky_Base_Act_2_PSG3_04_0_64:
	dc.b nRst, $40
	smpsReturn

Sky_Base_Act_2_PSG3_01_0_32:
	dc.b smpsNoAttack, $20
	smpsReturn
