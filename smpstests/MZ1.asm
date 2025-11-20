Marble_Zone_Act_1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		Marble_Zone_Act_1_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$01, $0A
;	Given Tempo = 135.00 BPM
;	Approximated Tempo = 135.00 BPM

	smpsHeaderDAC	Marble_Zone_Act_1_DAC
	smpsHeaderFM	Marble_Zone_Act_1_FM1,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM2,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM3,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM4,	$00, $14
	smpsHeaderFM	Marble_Zone_Act_1_FM5,	$00, $12
	smpsHeaderPSG	Marble_Zone_Act_1_PSG1,	$00, $07, $00, $00
	smpsHeaderPSG	Marble_Zone_Act_1_PSG2,	$00, $07, $00, $00
	smpsHeaderPSG	Marble_Zone_Act_1_PSG3,	$00, $08, $00, $00

Marble_Zone_Act_1_Voices:
;	FM Voice 00 -> 00: FM1&3 - Lead
	smpsVcAlgorithm		$02
	smpsVcFeedback		$04
	smpsVcDetune		$01, $00, $01, $00
	smpsVcCoarseFreq	$01, $05, $03, $0A
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$11, $12, $12, $03
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$00, $13, $13, $00
	smpsVcDecayRate2	$01, $02, $02, $03
	smpsVcDecayLevel	$00, $00, $01, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$16, $26, $18, $1E

;	FM Voice 01 -> 01: FM2 - Bass
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
	smpsVcDetune		$03, $01, $03, $06
	smpsVcCoarseFreq	$01, $04, $0C, $01
	smpsVcRateScale		$03, $02, $03, $02
	smpsVcAttackRate	$1A, $1C, $1B, $1C
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0D, $04, $12, $0C
	smpsVcDecayRate2	$03, $03, $01, $03
	smpsVcDecayLevel	$01, $00, $03, $02
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$0D, $31, $29, $1F

;	FM Voice 02 -> 02: FM4&5 - Brass
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
	smpsVcDetune		$00, $00, $00, $00
	smpsVcCoarseFreq	$01, $01, $07, $01
	smpsVcRateScale		$01, $02, $02, $02
	smpsVcAttackRate	$13, $0D, $0E, $0E
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$03, $0E, $0E, $0E
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$00, $01, $0F, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$17, $27, $28, $18

;	PSG Voice 03 -> fTone_02 ; Pedal Hi-Hat
;	macros:
;		vol: 15 15 14 11 6 4 0
;		arp: 1073741920

;	PSG Voice 04 -> fTone_04 ; Open Hi-Hat
;	macros:
;		vol: 15 15 15 15 14 14 13 13 12 12 11 11 10 8 6
;		arp: 1073741913

;	PSG Voice 05 -> fTone_07 ; Fade
;	macros:
;		vol: 14 15 15 15 15 15 14 14 14 14 14 14 13 13 13 13 13 13 12 12 12 12 12 12 11 11 11 11 11 11 10 10 10 10 10 10 9 9 9 9 9 9 8 8 8 8 8 8 7 7 7 7 7 7 0


;	FM Voice 07 -> 03: FM2 - Bass
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
	smpsVcDetune		$03, $01, $03, $06
	smpsVcCoarseFreq	$01, $04, $0C, $01
	smpsVcRateScale		$03, $02, $03, $02
	smpsVcAttackRate	$1A, $1C, $1B, $1C
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$03, $04, $09, $04
	smpsVcDecayRate2	$00, $03, $01, $03
	smpsVcDecayLevel	$0A, $00, $00, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$0E, $31, $47, $21

;	FM Voice 08 -> 04: Intro 1
	smpsVcAlgorithm		$03
	smpsVcFeedback		$04
	smpsVcDetune		$00, $00, $03, $07
	smpsVcCoarseFreq	$00, $00, $02, $0C
	smpsVcRateScale		$03, $03, $01, $01
	smpsVcAttackRate	$1F, $1C, $18, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$04, $04, $0B, $04
	smpsVcDecayRate2	$08, $08, $0C, $06
	smpsVcDecayLevel	$0B, $0B, $01, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $16, $26, $24

;	FM Voice 09 -> 05: Intro 2
	smpsVcAlgorithm		$02
	smpsVcFeedback		$00
	smpsVcDetune		$05, $05, $03, $03
	smpsVcCoarseFreq	$01, $05, $02, $0C
	smpsVcRateScale		$02, $00, $02, $00
	smpsVcAttackRate	$1F, $1F, $18, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$11, $0E, $11, $0F
	smpsVcDecayRate2	$05, $08, $05, $0E
	smpsVcDecayLevel	$00, $06, $00, $05
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $2F, $2D, $2D

	; Loop Pattern :  01
	; End Pattern :  0E
	; End Place :  3F


Marble_Zone_Act_1_FM1:
	smpsCall Marble_Zone_Act_1_FM1_00_0_36

Marble_Zone_Act_1_FM1_Jump:
	smpsCall Marble_Zone_Act_1_FM1_01_0_64
	smpsCall Marble_Zone_Act_1_FM1_02_0_64
	smpsCall Marble_Zone_Act_1_FM1_03_0_64
	smpsCall Marble_Zone_Act_1_FM1_04_0_64
	smpsCall Marble_Zone_Act_1_FM1_05_0_64
	smpsCall Marble_Zone_Act_1_FM1_02_0_64
	smpsCall Marble_Zone_Act_1_FM1_06_0_64
	smpsCall Marble_Zone_Act_1_FM1_07_0_64
	smpsCall Marble_Zone_Act_1_FM1_08_0_64
	smpsCall Marble_Zone_Act_1_FM1_09_0_64
	smpsCall Marble_Zone_Act_1_FM1_0A_0_64
	smpsCall Marble_Zone_Act_1_FM1_0B_0_64
	smpsCall Marble_Zone_Act_1_FM1_0C_0_64
	smpsCall Marble_Zone_Act_1_FM1_0D_0_64
	smpsJump Marble_Zone_Act_1_FM1_Jump

Marble_Zone_Act_1_FM1_00_0_36:
	dc.b smpsNoAttack, $3C
	smpsSetvoice	$00
	smpsPan		panLeft, $00
	dc.b nA3, $0C, nB3, nC4, nE4
	smpsReturn

Marble_Zone_Act_1_FM1_01_0_64:
	smpsSetvoice	$00
	smpsPan		panLeft, $00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM1_02_0_64:
	smpsSetvoice	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, smpsNoAttack, $11, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM1_03_0_64:
	smpsSetvoice	$00
	dc.b nA4, $0C, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, $18, nB4
	smpsReturn

Marble_Zone_Act_1_FM1_04_0_64:
	smpsSetvoice	$00
	dc.b nF4, $24, nE4, $60, nRst, $0C, nA3, nC4, nE4, nA4
	smpsReturn

Marble_Zone_Act_1_FM1_05_0_64:
	smpsSetvoice	$00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM1_06_0_64:
	smpsSetvoice	$00
	dc.b nA4, $48, nB4, $18, nAb4, $3C, nRst, $0C, nB4, nRst
	smpsReturn

Marble_Zone_Act_1_FM1_07_0_64:
	smpsSetvoice	$00
	dc.b nB4, $24, nA4, $7F, smpsNoAttack, $1D
	smpsReturn

Marble_Zone_Act_1_FM1_08_0_64:
	dc.b nRst, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM1_09_0_64:
	dc.b smpsNoAttack, $7F, smpsNoAttack, $11
	smpsSetvoice	$00
	dc.b nA3, $0C, nB3, nC4, nE4
	smpsReturn

Marble_Zone_Act_1_FM1_0A_0_64:
	smpsSetvoice	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, nRst, nA4, $12, nRst, $06, nE4, $0C, nA4, nB4
	dc.b nC5, nB4, nA4, nB4
	smpsReturn

Marble_Zone_Act_1_FM1_0B_0_64:
	smpsSetvoice	$00
	dc.b nC5, $18, nRst, $0C, nE5, nG5, nE5, $18, nD5, $0C, nRst, nE5, nD5, nC5, nD5, nE5
	dc.b nRst, nE5
	smpsReturn

Marble_Zone_Act_1_FM1_0C_0_64:
	smpsSetvoice	$00
	dc.b nA5, $18, nRst, $0C, nC6, nB5, nG5, $18, nA5, nRst, nA5, $0C, nG5, nE5, nD5, nA4
	smpsReturn

Marble_Zone_Act_1_FM1_0D_0_64:
	smpsSetvoice	$00
	dc.b nD5, $18, nRst, $0C, nA4, nD5, nA4, nD5, nE5, $18, nRst, $24, nA3, $0C, nB3, nC4
	dc.b nE4
	smpsReturn

Marble_Zone_Act_1_FM2:
	smpsCall Marble_Zone_Act_1_FM2_00_0_36

Marble_Zone_Act_1_FM2_Jump:
	smpsCall Marble_Zone_Act_1_FM2_01_0_64
	smpsCall Marble_Zone_Act_1_FM2_02_0_64
	smpsCall Marble_Zone_Act_1_FM2_03_0_64
	smpsCall Marble_Zone_Act_1_FM2_04_0_64
	smpsCall Marble_Zone_Act_1_FM2_05_0_64
	smpsCall Marble_Zone_Act_1_FM2_06_0_64
	smpsCall Marble_Zone_Act_1_FM2_07_0_64
	smpsCall Marble_Zone_Act_1_FM2_08_0_64
	smpsCall Marble_Zone_Act_1_FM2_09_0_64
	smpsCall Marble_Zone_Act_1_FM2_0A_0_64
	smpsCall Marble_Zone_Act_1_FM2_09_0_64
	smpsCall Marble_Zone_Act_1_FM2_0A_0_64
	smpsCall Marble_Zone_Act_1_FM2_0B_0_64
	smpsCall Marble_Zone_Act_1_FM2_0C_0_64
	smpsJump Marble_Zone_Act_1_FM2_Jump

Marble_Zone_Act_1_FM2_00_0_36:
	smpsSetvoice	$01
	dc.b nE2, $06, $06, $0C, nRst, nE1, $48
	smpsReturn

Marble_Zone_Act_1_FM2_01_0_64:
	smpsSetvoice	$01
	dc.b nA1, $0C, $0C, nE2, nE2, nD2, nD2, nE2, nE2, nA1, nA1, nE2, nE2, nD2, nD2, nE2
	dc.b nE2
	smpsReturn

Marble_Zone_Act_1_FM2_02_0_64:
	smpsSetvoice	$01
	dc.b nD2, $0C, $0C, nA2, nA2, nF2, nF2, nA2, nA2, nD2, nD2, nA2, nA2, nF2, nF2, nA2
	dc.b nA2
	smpsReturn

Marble_Zone_Act_1_FM2_03_0_64:
	smpsSetvoice	$01
	dc.b nE2, $0C, $0C, nB2, nB2, nG2, nG2, nB2, nB2, nF2, nF2, nC3, nC3, nA2, nA2, nF2
	dc.b nF2
	smpsReturn

Marble_Zone_Act_1_FM2_04_0_64:
	smpsSetvoice	$01
	dc.b nD2, $0C, $0C, nA2, nA2, nF2, nF2, nA2, nA2, nE2, nE2, nB2, nB2, nG2, nE2, nC2
	dc.b nB1
	smpsReturn

Marble_Zone_Act_1_FM2_05_0_64:
	smpsSetvoice	$01
	dc.b nA1, $18, nRst, $0C, nE2, $24, nRst, $0C, nA1, $24, nRst, $0C, nE2, nE2, $18, nC2
	dc.b $0C, nCs2
	smpsReturn

Marble_Zone_Act_1_FM2_06_0_64:
	smpsSetvoice	$01
	dc.b nD2, $18, nRst, $0C, nA2, $24, nRst, $0C, nD2, $24, nRst, $0C, nA2, $24, nD2, $0C
	dc.b nE2
	smpsReturn

Marble_Zone_Act_1_FM2_07_0_64:
	smpsSetvoice	$01
	dc.b nF2, $18, nRst, $0C, nC3, $24, nRst, $0C, nF2, nE2, $18, nRst, $0C, nB2, $24, nG1
	dc.b $0C, nAb1
	smpsReturn

Marble_Zone_Act_1_FM2_08_0_64:
	smpsSetvoice	$01
	dc.b nA1, $18, nRst, $0C, nE2, nE2, $18, nRst, $0C, nA2, nA2, $18, nRst, $0C, nE2, nE2
	dc.b $18, nRst, $0C, nE2
	smpsReturn

Marble_Zone_Act_1_FM2_09_0_64:
	smpsSetvoice	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nF2, nE2
	dc.b $18, nRst, $0C, nE2
	smpsReturn

Marble_Zone_Act_1_FM2_0A_0_64:
	smpsSetvoice	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nE2, nF2
	dc.b nG2, nE2, nC2
	smpsReturn

Marble_Zone_Act_1_FM2_0B_0_64:
	smpsSetvoice	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nE2, nG2
	dc.b nE2, nD2, nC2
	smpsReturn

Marble_Zone_Act_1_FM2_0C_0_64:
	smpsSetvoice	$01
	dc.b nD2, $18, nRst, $0C, nC2, nB1, $18, nRst, $0C, nE2, $06, $06, $0C, nRst, nE1, $48
	smpsReturn

Marble_Zone_Act_1_FM3:
	smpsCall Marble_Zone_Act_1_FM3_00_0_36

Marble_Zone_Act_1_FM3_Jump:
	smpsCall Marble_Zone_Act_1_FM3_01_0_64
	smpsCall Marble_Zone_Act_1_FM3_02_0_64
	smpsCall Marble_Zone_Act_1_FM3_03_0_64
	smpsCall Marble_Zone_Act_1_FM3_04_0_64
	smpsCall Marble_Zone_Act_1_FM3_05_0_64
	smpsCall Marble_Zone_Act_1_FM3_06_0_64
	smpsCall Marble_Zone_Act_1_FM3_07_0_64
	smpsCall Marble_Zone_Act_1_FM3_08_0_64
	smpsCall Marble_Zone_Act_1_FM3_09_0_64
	smpsCall Marble_Zone_Act_1_FM3_0A_0_64
	smpsCall Marble_Zone_Act_1_FM3_0B_0_64
	smpsCall Marble_Zone_Act_1_FM3_0C_0_64
	smpsCall Marble_Zone_Act_1_FM3_0D_0_64
	smpsCall Marble_Zone_Act_1_FM3_0E_0_64
	smpsJump Marble_Zone_Act_1_FM3_Jump

Marble_Zone_Act_1_FM3_00_0_36:
	dc.b smpsNoAttack, $3C
	smpsSetvoice	$00
	smpsModSet	$00, $01, $03, $04
	smpsPan		panRight, $00
	dc.b nA3, $0C, nB3, nC4, nE4
	smpsReturn

Marble_Zone_Act_1_FM3_01_0_64:
	smpsSetvoice	$00
	smpsPan		panRight, $00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM3_02_0_64:
	smpsSetvoice	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, smpsNoAttack, $11, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM3_03_0_64:
	smpsSetvoice	$00
	dc.b nA4, $0C, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, $18, nB4
	smpsReturn

Marble_Zone_Act_1_FM3_04_0_64:
	smpsSetvoice	$00
	dc.b nF4, $24, nE4, $60, nRst, $0C, nA3, nC4, nE4, nA4
	smpsReturn

Marble_Zone_Act_1_FM3_05_0_64:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4, $09
	smpsReturn

Marble_Zone_Act_1_FM3_06_0_64:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, smpsNoAttack, $11, nRst, $09
	smpsReturn

Marble_Zone_Act_1_FM3_07_0_64:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	dc.b nA4, $48, nB4, $18, nAb4, $3C, nRst, $09, nB4, $0C, nRst
	smpsReturn

Marble_Zone_Act_1_FM3_08_0_64:
	smpsSetvoice	$00
	dc.b nB4, $24, nA4, $7F, smpsNoAttack, $1D
	smpsReturn

Marble_Zone_Act_1_FM3_09_0_64:
	dc.b nRst, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM3_0A_0_64:
	dc.b smpsNoAttack, $7F, smpsNoAttack, $11
	smpsSetvoice	$00
	dc.b nA3, $0C, nB3, nC4, nE4
	smpsReturn

Marble_Zone_Act_1_FM3_0B_0_64:
	smpsSetvoice	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, nRst, nA4, $12, nRst, $06, nE4, $0C, nA4, nB4
	dc.b nC5, nB4, nA4, nB4
	smpsReturn

Marble_Zone_Act_1_FM3_0C_0_64:
	smpsSetvoice	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, $18, nA4, $0C, nRst, nC5, nB4, nG4, nB4, nG4
	dc.b nRst, nA4
	smpsReturn

Marble_Zone_Act_1_FM3_0D_0_64:
	smpsSetvoice	$00
	dc.b nE5, $18, nRst, $0C, nE5, nD5, nB4, $18, nC5, nRst, nE5, $0C, nD5, nC5, nA4, nE4
	smpsReturn

Marble_Zone_Act_1_FM3_0E_0_64:
	smpsSetvoice	$00
	dc.b nF4, $18, nRst, $0C, nE4, nF4, nC4, nF4, nAb4, $18, nRst, $24, nA3, $0C, nB3, nC4
	dc.b nE4
	smpsReturn

Marble_Zone_Act_1_FM4:
	smpsCall Marble_Zone_Act_1_FM4_00_0_36_6B

Marble_Zone_Act_1_FM4_Jump:
	smpsCall Marble_Zone_Act_1_FM4_01_0_64
	smpsCall Marble_Zone_Act_1_FM4_02_0_64
	smpsCall Marble_Zone_Act_1_FM4_03_0_64
	smpsCall Marble_Zone_Act_1_FM4_04_0_64_7B
	smpsCall Marble_Zone_Act_1_FM4_05_0_64
	smpsCall Marble_Zone_Act_1_FM4_06_0_64
	smpsCall Marble_Zone_Act_1_FM4_07_0_64
	smpsCall Marble_Zone_Act_1_FM4_08_0_64
	smpsCall Marble_Zone_Act_1_FM4_09_0_64
	smpsCall Marble_Zone_Act_1_FM4_0A_0_64
	smpsCall Marble_Zone_Act_1_FM4_0A_0_64
	smpsCall Marble_Zone_Act_1_FM4_0B_0_64_7F
	smpsCall Marble_Zone_Act_1_FM4_0C_0_64
	smpsCall Marble_Zone_Act_1_FM4_0D_0_64_7D
	smpsJump Marble_Zone_Act_1_FM4_Jump

Marble_Zone_Act_1_FM4_00_0_36_6B:
	smpsSetvoice	$04
	dc.b nE3, $06, $06, $0C, nRst, nE2, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F0
	smpsPan		panLeft, $00
	dc.b nG4, $0C
	smpsReturn

Marble_Zone_Act_1_FM4_01_0_64:
	dc.b nRst, $0C, nG4, $09, nRst, $03, nA4, $15, nRst, $03, nG4, $18, nRst, $0C, nG4, nRst
	dc.b nG4, $09, nRst, $03, nA4, $15, nRst, $03, nG4, $24, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM4_02_0_64:
	dc.b smpsNoAttack, $18, nA4, $09, nRst, $1B, nA4, $0C, nRst, $30, nA4, $09, nRst, $1B, nA4, $0C
	dc.b nRst, nD4
	smpsReturn

Marble_Zone_Act_1_FM4_03_0_64:
	dc.b nRst, $0C, nF4, $09, nRst, $03, nG4, $15, nRst, $03, nF4, $18, nRst, $0C, nF4, nRst
	dc.b nF4, $09, nRst, $03, nG4, $15, nRst, $03, nF4, $24, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM4_04_0_64_7B:
	dc.b smpsNoAttack, $18, nE4, $09, nRst, $1B, nE4, $0C, nRst, $30
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$FC
	smpsPan		panRight, $00
	dc.b nE3, $18, nA3, nC4
	smpsReturn

Marble_Zone_Act_1_FM4_05_0_64:
	smpsSetvoice	$02
	dc.b nE4, $78, nA4, $0C, nB4, nC5, nB4, nG4, nE4
	smpsReturn

Marble_Zone_Act_1_FM4_06_0_64:
	smpsSetvoice	$02
	dc.b nF4, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM4_07_0_64:
	smpsSetvoice	$02
	dc.b nF5, $24, nC5, nA4, $18, nE5, $48, nE4, $18
	smpsReturn

Marble_Zone_Act_1_FM4_08_0_64:
	smpsSetvoice	$02
	dc.b nA4, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM4_09_0_64:
	dc.b nRst, $0C
	smpsSetvoice	$00
	smpsModOff
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst
	smpsReturn

Marble_Zone_Act_1_FM4_0A_0_64:
	dc.b smpsNoAttack, $0C
	smpsSetvoice	$00
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst
	smpsReturn

Marble_Zone_Act_1_FM4_0B_0_64_7F:
	dc.b smpsNoAttack, $0C
	smpsSetvoice	$00
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $2A
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	dc.b nA4, $0C
	smpsReturn

Marble_Zone_Act_1_FM4_0C_0_64:
	smpsSetvoice	$02
	dc.b nE5, $24, $0C, nD5, $24, $0C, nC5, $24, $0C, nB4, $24, nG4, $0C
	smpsReturn

Marble_Zone_Act_1_FM4_0D_0_64_7D:
	smpsSetvoice	$02
	dc.b nF4, $24, $0C, nD4, $24
	smpsSetvoice	$04
	smpsModOff
	smpsAlterVol	$12
	dc.b nE3, $06, $06, $0C, nRst, nE2, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F0
	smpsPan		panLeft, $00
	dc.b nG4, $0C
	smpsReturn

Marble_Zone_Act_1_FM5:
	smpsCall Marble_Zone_Act_1_FM5_00_0_36_6D

Marble_Zone_Act_1_FM5_Jump:
	smpsCall Marble_Zone_Act_1_FM5_01_0_64
	smpsCall Marble_Zone_Act_1_FM5_02_0_64
	smpsCall Marble_Zone_Act_1_FM5_03_0_64
	smpsCall Marble_Zone_Act_1_FM5_04_0_64
	smpsCall Marble_Zone_Act_1_FM5_05_0_64
	smpsCall Marble_Zone_Act_1_FM5_06_0_64
	smpsCall Marble_Zone_Act_1_FM5_07_0_64
	smpsCall Marble_Zone_Act_1_FM5_08_0_64
	smpsCall Marble_Zone_Act_1_FM5_09_0_64_7B
	smpsCall Marble_Zone_Act_1_FM5_0A_0_64
	smpsCall Marble_Zone_Act_1_FM5_0A_0_64
	smpsCall Marble_Zone_Act_1_FM5_0B_0_64_7F
	smpsCall Marble_Zone_Act_1_FM5_0C_0_64
	smpsCall Marble_Zone_Act_1_FM5_0D_0_64_7D
	smpsJump Marble_Zone_Act_1_FM5_Jump

Marble_Zone_Act_1_FM5_00_0_36_6D:
	smpsSetvoice	$05
	dc.b nE5, $06, $06, $0C, nRst, nE4, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F2
	smpsPan		panRight, $00
	dc.b nB4, $0C
	smpsReturn

Marble_Zone_Act_1_FM5_01_0_64:
	dc.b nRst, $0C
	smpsSetvoice	$02
	dc.b nB4, $09, nRst, $03, nC5, $15, nRst, $03, nB4, $18, nRst, $0C, nB4, nRst, nB4, $09
	dc.b nRst, $03, nC5, $15, nRst, $03, nB4, $24, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM5_02_0_64:
	dc.b smpsNoAttack, $18, nC5, $09, nRst, $1B, nC5, $0C, nRst, $30, nC5, $09, nRst, $1B, nC5, $0C
	dc.b nRst, nF4
	smpsReturn

Marble_Zone_Act_1_FM5_03_0_64:
	dc.b nRst, $0C, nA4, $09, nRst, $03, nB4, $15, nRst, $03, nA4, $18, nRst, $0C, nA4, nRst
	dc.b nA4, $09, nRst, $03, nB4, $15, nRst, $03, nA4, $24, nRst, $0C
	smpsReturn

Marble_Zone_Act_1_FM5_04_0_64:
	dc.b smpsNoAttack, $18, nG4, $09, nRst, $1B, nG4, $0C, nRst, $30
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsPan		panLeft, $00
	dc.b nE3, $18, nA3, nC4
	smpsReturn

Marble_Zone_Act_1_FM5_05_0_64:
	smpsSetvoice	$02
	dc.b nA3, $78, nE4, $0C, nD4, nC4, nD4, nE4, nC4
	smpsReturn

Marble_Zone_Act_1_FM5_06_0_64:
	smpsSetvoice	$02
	dc.b nD4, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM5_07_0_64:
	smpsSetvoice	$02
	dc.b nC5, $24, nA4, nE4, $18, nB4, $48, nC4, $18
	smpsReturn

Marble_Zone_Act_1_FM5_08_0_64:
	smpsSetvoice	$02
	dc.b nE4, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_FM5_09_0_64_7B:
	dc.b nRst, $18, $0C
	smpsSetvoice	$00
	smpsModOff
	smpsAlterVol	$FC
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst
	smpsReturn

Marble_Zone_Act_1_FM5_0A_0_64:
	smpsSetvoice	$00
	dc.b nG4, $06, nRst, nD4, nRst, $12, nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06
	dc.b nRst, nG4, nRst, nD4, nRst, $12, nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06
	dc.b nRst
	smpsReturn

Marble_Zone_Act_1_FM5_0B_0_64_7F:
	smpsSetvoice	$00
	dc.b nG4, $06, nRst, nD4, nRst, $12, nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06
	dc.b nRst, nG4, nRst, nD4, nRst, $12, nA4, $06, nRst, nF4, nRst, nC4, nRst, $12
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	dc.b nE4, $0C
	smpsReturn

Marble_Zone_Act_1_FM5_0C_0_64:
	smpsSetvoice	$02
	dc.b nA4, $24, $0C, nG4, $24, $0C, nF4, $24, $0C, nG4, $24, nC4, $0C
	smpsReturn

Marble_Zone_Act_1_FM5_0D_0_64_7D:
	smpsSetvoice	$02
	dc.b nD4, $24, $0C, nA3, $24
	smpsSetvoice	$05
	smpsModOff
	smpsAlterVol	$10
	dc.b nE5, $06, $06, $0C, nRst, nE4, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F2
	smpsPan		panRight, $00
	dc.b nB4, $0C
	smpsReturn

Marble_Zone_Act_1_DAC:
	smpsCall Marble_Zone_Act_1_DAC_00_0_36

Marble_Zone_Act_1_DAC_Jump:
	smpsCall Marble_Zone_Act_1_DAC_01_0_64
	smpsCall Marble_Zone_Act_1_DAC_01_0_64
	smpsCall Marble_Zone_Act_1_DAC_01_0_64
	smpsCall Marble_Zone_Act_1_DAC_02_0_64
	smpsCall Marble_Zone_Act_1_DAC_03_0_64
	smpsCall Marble_Zone_Act_1_DAC_03_0_64
	smpsCall Marble_Zone_Act_1_DAC_03_0_64
	smpsCall Marble_Zone_Act_1_DAC_04_0_64
	smpsCall Marble_Zone_Act_1_DAC_05_0_64
	smpsCall Marble_Zone_Act_1_DAC_06_0_64
	smpsCall Marble_Zone_Act_1_DAC_05_0_64
	smpsCall Marble_Zone_Act_1_DAC_06_0_64
	smpsCall Marble_Zone_Act_1_DAC_05_0_64
	smpsCall Marble_Zone_Act_1_DAC_07_0_64
	smpsJump Marble_Zone_Act_1_DAC_Jump

Marble_Zone_Act_1_DAC_00_0_36:
	dc.b nCs0, $06, $06, $18, nC0, nC0, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_01_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $18, $18
	smpsReturn

Marble_Zone_Act_1_DAC_02_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $0C, $0C, nCs0, nC0, $06, nCs0
	smpsReturn

Marble_Zone_Act_1_DAC_03_0_64:
	dc.b nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0
	dc.b $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_04_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $12, $06, nCs0, $0C, nC0, $06, nCs0
	smpsReturn

Marble_Zone_Act_1_DAC_05_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_06_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nD0
	smpsReturn

Marble_Zone_Act_1_DAC_07_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nCs0, $06, $06, $18, nC0, nC0, nC0
	smpsReturn

Marble_Zone_Act_1_PSG1:
	smpsCall Marble_Zone_Act_1_PSG1_00_0_36

Marble_Zone_Act_1_PSG1_Jump:
	smpsCall Marble_Zone_Act_1_PSG1_01_0_64
	smpsCall Marble_Zone_Act_1_PSG1_02_0_64_08
	smpsCall Marble_Zone_Act_1_PSG1_03_0_64
	smpsCall Marble_Zone_Act_1_PSG1_04_0_64_07
	smpsCall Marble_Zone_Act_1_PSG1_05_0_64_05
	smpsCall Marble_Zone_Act_1_PSG1_06_0_64
	smpsCall Marble_Zone_Act_1_PSG1_07_0_64_06
	smpsCall Marble_Zone_Act_1_PSG1_08_0_64
	smpsCall Marble_Zone_Act_1_PSG1_09_0_64_08
	smpsCall Marble_Zone_Act_1_PSG1_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG1_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG1_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG1_0B_0_64
	smpsCall Marble_Zone_Act_1_PSG1_0C_0_64
	smpsPSGAlterVol	$FE
	smpsJump Marble_Zone_Act_1_PSG1_Jump

Marble_Zone_Act_1_PSG1_00_0_36:
	dc.b smpsNoAttack, $6C
	smpsReturn

Marble_Zone_Act_1_PSG1_01_0_64:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nRst, $0F
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	smpsReturn

Marble_Zone_Act_1_PSG1_02_0_64_08:
	dc.b smpsNoAttack, $69
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$01
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b $03
	smpsReturn

Marble_Zone_Act_1_PSG1_03_0_64:
	dc.b smpsNoAttack, $03, nD2, $06, nRst, $7F, smpsNoAttack, $38
	smpsReturn

Marble_Zone_Act_1_PSG1_04_0_64_07:
	dc.b smpsNoAttack, $54
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FF
	dc.b nC4, $18, $0C, nA3, $18, nAb3, $0C, nE3, $12, nRst, $09
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$03
	dc.b nC3, $06, nE3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_05_0_64_05:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $06
	smpsPSGAlterVol	$FF
	dc.b nC4, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2, nC2
	dc.b nA1, nC2, nE2, nA2, nC2, nE2, nA2, nC3, nE2, nA2, nC3, nE3, nA2, nC3, nE3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_06_0_64:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $06, nD4, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2
	dc.b nF2, nD2, nA1, nD2, nF2, nA2, nD2, nF2, nA2, nD3, nF2, nA2, nD3, nF3, nA2, nD3
	dc.b nF3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_07_0_64_06:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FC
	dc.b nC4, $06, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2
	dc.b nC2, nB1, nE2, nAb2, nB2, nE2, nAb2, nB2, nE3, nAb2, nB2, nE3, nAb3
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	dc.b nE3, $18
	smpsReturn

Marble_Zone_Act_1_PSG1_08_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nD2, $24, nC2, $7F, smpsNoAttack, $1D
	smpsReturn

Marble_Zone_Act_1_PSG1_09_0_64_08:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07 ; Fade
	smpsPSGAlterVol	$02
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_0A_0_64:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_0B_0_64:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nE3, nC3, nG3, $03
	smpsReturn

Marble_Zone_Act_1_PSG1_0C_0_64:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nD3, $0C, nF3, $06, nD3, nF3, $0C, nD3, nE3, nC3, nA2, nF3, nE3, nRst, $4B
	smpsReturn

Marble_Zone_Act_1_PSG2:
	smpsCall Marble_Zone_Act_1_PSG2_00_0_36

Marble_Zone_Act_1_PSG2_Jump:
	smpsCall Marble_Zone_Act_1_PSG2_01_0_64
	smpsCall Marble_Zone_Act_1_PSG2_02_0_64_08
	smpsCall Marble_Zone_Act_1_PSG2_03_0_64
	smpsCall Marble_Zone_Act_1_PSG2_04_0_64_0A
	smpsCall Marble_Zone_Act_1_PSG2_05_0_64_09
	smpsCall Marble_Zone_Act_1_PSG2_06_0_64
	smpsCall Marble_Zone_Act_1_PSG2_07_0_64_0A
	smpsCall Marble_Zone_Act_1_PSG2_08_0_64
	smpsCall Marble_Zone_Act_1_PSG2_09_0_64_08
	smpsCall Marble_Zone_Act_1_PSG2_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG2_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG2_0A_0_64
	smpsCall Marble_Zone_Act_1_PSG2_0B_0_64
	smpsCall Marble_Zone_Act_1_PSG2_0C_0_64
	smpsPSGAlterVol	$02
	smpsJump Marble_Zone_Act_1_PSG2_Jump

Marble_Zone_Act_1_PSG2_00_0_36:
	dc.b smpsNoAttack, $6C
	smpsReturn

Marble_Zone_Act_1_PSG2_01_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nRst, $18
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	smpsReturn

Marble_Zone_Act_1_PSG2_02_0_64_08:
	dc.b smpsNoAttack, $60
	smpsPSGAlterVol	$FE
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b nD2
	smpsReturn

Marble_Zone_Act_1_PSG2_03_0_64:
	dc.b nRst, $7F, smpsNoAttack, $41
	smpsReturn

Marble_Zone_Act_1_PSG2_04_0_64_0A:
	dc.b smpsNoAttack, $54
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	dc.b nF4, $18, $0C, nD4, $18, nB3, $0C, nAb3, $12
	smpsPSGAlterVol	$01
	dc.b nC3, $06, nE3, nA3
	smpsReturn

Marble_Zone_Act_1_PSG2_05_0_64_09:
	smpsPSGvoice	fTone_07 ; Fade
	smpsPSGAlterVol	$FF
	dc.b nC4, $06, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2
	dc.b nC2, nA1, nC2, nE2, nA2, nC2, nE2, nA2, nC3, nE2, nA2, nC3, nE3, nA2, nC3, nE3
	dc.b nA3
	smpsReturn

Marble_Zone_Act_1_PSG2_06_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b nD2, nA1, nD2, nF2, nA2, nD2, nF2, nA2, nD3, nF2, nA2, nD3, nF3, nA2, nD3, nF3
	dc.b nA3
	smpsReturn

Marble_Zone_Act_1_PSG2_07_0_64_0A:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	dc.b nF3, $48, nG3, $18, nE3, $48, nC3, $18
	smpsReturn

Marble_Zone_Act_1_PSG2_08_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nF2, $24, nE2, $7F, smpsNoAttack, $1D
	smpsReturn

Marble_Zone_Act_1_PSG2_09_0_64_08:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FE
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3
	smpsReturn

Marble_Zone_Act_1_PSG2_0A_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3
	smpsReturn

Marble_Zone_Act_1_PSG2_0B_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nE3, nC3, nG3
	smpsReturn

Marble_Zone_Act_1_PSG2_0C_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nD3, $0C, nF3, $06, nD3, nF3, $0C, nD3, nE3, nC3, nA2, nF3, nE3, nRst, $54
	smpsReturn

Marble_Zone_Act_1_PSG3:
	smpsPSGform	$E7
	smpsCall Marble_Zone_Act_1_PSG3_00_0_36

Marble_Zone_Act_1_PSG3_Jump:
	smpsCall Marble_Zone_Act_1_PSG3_01_0_64
	smpsCall Marble_Zone_Act_1_PSG3_01_0_64
	smpsCall Marble_Zone_Act_1_PSG3_01_0_64
	smpsCall Marble_Zone_Act_1_PSG3_01_0_64
	smpsCall Marble_Zone_Act_1_PSG3_02_0_64
	smpsCall Marble_Zone_Act_1_PSG3_02_0_64
	smpsCall Marble_Zone_Act_1_PSG3_02_0_64
	smpsCall Marble_Zone_Act_1_PSG3_02_0_64
	smpsCall Marble_Zone_Act_1_PSG3_03_0_64
	smpsCall Marble_Zone_Act_1_PSG3_03_0_64
	smpsCall Marble_Zone_Act_1_PSG3_03_0_64
	smpsCall Marble_Zone_Act_1_PSG3_03_0_64
	smpsCall Marble_Zone_Act_1_PSG3_03_0_64
	smpsCall Marble_Zone_Act_1_PSG3_04_0_64
	smpsJump Marble_Zone_Act_1_PSG3_Jump

Marble_Zone_Act_1_PSG3_00_0_36:
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $06, $06, $18
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $48
	smpsReturn

Marble_Zone_Act_1_PSG3_01_0_64:
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $0C, $0C
	smpsReturn

Marble_Zone_Act_1_PSG3_02_0_64:
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $06, $06, $06, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	smpsReturn

Marble_Zone_Act_1_PSG3_03_0_64:
	dc.b smpsNoAttack, $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $12
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $06
	smpsReturn

Marble_Zone_Act_1_PSG3_04_0_64:
	dc.b smpsNoAttack, $0C
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $06, $12, $06, $12, $06, $12, $06, $06, $18
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $48
	smpsReturn
