Marble_Zone_Act_1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		Marble_Zone_Act_1_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$02, $03
;	Given Tempo = 135.00 BPM
;	Approximated Tempo = 150.00 BPM

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
	dc.b smpsNoAttack, $14
	smpsSetvoice	$00
	smpsPan		panLeft, $00
	dc.b nA3, $04, nC3, nC4, nC4
	smpsReturn

Marble_Zone_Act_1_FM1_01_0_64:
	smpsSetvoice	$00
	dc.b nG4, $04, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nF4, nC4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM1_02_0_64:
	smpsSetvoice	$00
	dc.b nDs4, $08, nF4, $04, nCs4, $30, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM1_03_0_64:
	smpsSetvoice	$00
	dc.b nF4, $04, nRst, nF4, nDs4, nF4, nRst, nF4, nDs4, nF4, nRst, nF4, nDs4, nF4, $08, nG4
	smpsReturn

Marble_Zone_Act_1_FM1_04_0_64:
	smpsSetvoice	$00
	dc.b nCs4, $0C, nC4, $20, nRst, $04, nA3, nC4, nC4, nF4
	smpsReturn

Marble_Zone_Act_1_FM1_05_0_64:
	smpsSetvoice	$00
	dc.b nG4, $04, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nF4, nC4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM1_06_0_64:
	smpsSetvoice	$00
	dc.b nF4, $18, nG4, $08, nE4, $14, nRst, $04, nG4, nRst
	smpsReturn

Marble_Zone_Act_1_FM1_07_0_64:
	smpsSetvoice	$00
	dc.b nG4, $0C, nF4, $34
	smpsReturn

Marble_Zone_Act_1_FM1_08_0_64:
	dc.b nRst, $40
	smpsReturn

Marble_Zone_Act_1_FM1_09_0_64:
	dc.b smpsNoAttack, $30
	smpsSetvoice	$00
	dc.b nA3, $04, nC3, nC4, nC4
	smpsReturn

Marble_Zone_Act_1_FM1_0A_0_64:
	smpsSetvoice	$00
	dc.b nF4, $08, nRst, $04, nAb5, nG4, nDs4, nRst, nF4, $06, nRst, $02, nC4, $04, nF4, nG4
	dc.b nAb5, nG4, nF4, nG4
	smpsReturn

Marble_Zone_Act_1_FM1_0B_0_64:
	smpsSetvoice	$00
	dc.b nAb5, $08, nRst, $04, nC5, nC5, nC5, $08, nBb5, $04, nRst, nC5, nBb5, nAb5, nBb5, nC5
	dc.b nRst, nC5
	smpsReturn

Marble_Zone_Act_1_FM1_0C_0_64:
	smpsSetvoice	$00
	dc.b nCs5, $08, nRst, $04, nE6, nDs5, nC5, $08, nCs5, nRst, nCs5, $04, nC5, nC5, nBb5, nF4
	smpsReturn

Marble_Zone_Act_1_FM1_0D_0_64:
	smpsSetvoice	$00
	dc.b nBb5, $08, nRst, $04, nF4, nBb5, nF4, nBb5, nC5, $08, nRst, $0C, nA3, $04, nC3, nC4
	dc.b nC4
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
	dc.b nAb2, $02, $02, $04, nRst, nC1, $18
	smpsReturn

Marble_Zone_Act_1_FM2_01_0_64:
	smpsSetvoice	$01
	dc.b nCs1, $04, $04, nAb2, nAb2, nFs2, nFs2, nAb2, nAb2, nCs1, nCs1, nAb2, nAb2, nFs2, nFs2, nAb2
	dc.b nAb2
	smpsReturn

Marble_Zone_Act_1_FM2_02_0_64:
	smpsSetvoice	$01
	dc.b nFs2, $04, $04, nCs2, nCs2, nA2, nA2, nCs2, nCs2, nFs2, nFs2, nCs2, nCs2, nA2, nA2, nCs2
	dc.b nCs2
	smpsReturn

Marble_Zone_Act_1_FM2_03_0_64:
	smpsSetvoice	$01
	dc.b nAb2, $04, $04, nD2, nD2, nC2, nC2, nD2, nD2, nA2, nA2, nC3, nC3, nCs2, nCs2, nA2
	dc.b nA2
	smpsReturn

Marble_Zone_Act_1_FM2_04_0_64:
	smpsSetvoice	$01
	dc.b nFs2, $04, $04, nCs2, nCs2, nA2, nA2, nCs2, nCs2, nAb2, nAb2, nD2, nD2, nC2, nAb2, nE2
	dc.b nDs1
	smpsReturn

Marble_Zone_Act_1_FM2_05_0_64:
	smpsSetvoice	$01
	dc.b nCs1, $08, nRst, $04, nAb2, $0C, nRst, $04, nCs1, $0C, nRst, $04, nAb2, nAb2, $08, nE2
	dc.b $04, nF2
	smpsReturn

Marble_Zone_Act_1_FM2_06_0_64:
	smpsSetvoice	$01
	dc.b nFs2, $08, nRst, $04, nCs2, $0C, nRst, $04, nFs2, $0C, nRst, $04, nCs2, $0C, nFs2, $04
	dc.b nAb2
	smpsReturn

Marble_Zone_Act_1_FM2_07_0_64:
	smpsSetvoice	$01
	dc.b nA2, $08, nRst, $04, nC3, $0C, nRst, $04, nA2, nAb2, $08, nRst, $04, nD2, $0C, nC1
	dc.b $04, nC1
	smpsReturn

Marble_Zone_Act_1_FM2_08_0_64:
	smpsSetvoice	$01
	dc.b nCs1, $08, nRst, $04, nAb2, nAb2, $08, nRst, $04, nCs2, nCs2, $08, nRst, $04, nAb2, nAb2
	dc.b $08, nRst, $04, nAb2
	smpsReturn

Marble_Zone_Act_1_FM2_09_0_64:
	smpsSetvoice	$01
	dc.b nCs2, $08, nRst, $04, nCs2, nC2, $08, nRst, $04, nC2, nA2, $08, nRst, $04, nA2, nAb2
	dc.b $08, nRst, $04, nAb2
	smpsReturn

Marble_Zone_Act_1_FM2_0A_0_64:
	smpsSetvoice	$01
	dc.b nCs2, $08, nRst, $04, nCs2, nC2, $08, nRst, $04, nC2, nA2, $08, nRst, $04, nAb2, nA2
	dc.b nC2, nAb2, nE2
	smpsReturn

Marble_Zone_Act_1_FM2_0B_0_64:
	smpsSetvoice	$01
	dc.b nCs2, $08, nRst, $04, nCs2, nC2, $08, nRst, $04, nC2, nA2, $08, nRst, $04, nAb2, nC2
	dc.b nAb2, nFs2, nE2
	smpsReturn

Marble_Zone_Act_1_FM2_0C_0_64:
	smpsSetvoice	$01
	dc.b nFs2, $08, nRst, $04, nE2, nDs1, $08, nRst, $04, nAb2, $02, $02, $04, nRst, nC1, $18
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
	dc.b smpsNoAttack, $14
	smpsSetvoice	$00
	smpsPan		panRight, $00
	smpsModSet	$00, $01, $03, $04
	dc.b nA3, $04, nC3, nC4, nC4
	smpsReturn

Marble_Zone_Act_1_FM3_01_0_64:
	smpsSetvoice	$00
	dc.b nG4, $04, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nF4, nC4
	dc.b nC4
	smpsReturn

Marble_Zone_Act_1_FM3_02_0_64:
	smpsSetvoice	$00
	dc.b nDs4, $08, nF4, $04, nCs4, $30, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM3_03_0_64:
	smpsSetvoice	$00
	dc.b nF4, $04, nRst, nF4, nDs4, nF4, nRst, nF4, nDs4, nF4, nRst, nF4, nDs4, nF4, $08, nG4
	smpsReturn

Marble_Zone_Act_1_FM3_04_0_64:
	smpsSetvoice	$00
	dc.b nCs4, $0C, nC4, $20, nRst, $04, nA3, nC4, nC4, nF4
	smpsReturn

Marble_Zone_Act_1_FM3_05_0_64:
	dc.b smpsNoAttack, $01
	smpsSetvoice	$00
	dc.b nG4, $04, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nRst, nG4, nF4, nG4, nF4, nC4
	dc.b nC4, $03
	smpsReturn

Marble_Zone_Act_1_FM3_06_0_64:
	dc.b smpsNoAttack, $01
	smpsSetvoice	$00
	dc.b nDs4, $08, nF4, $04, nCs4, $30, nRst, $03
	smpsReturn

Marble_Zone_Act_1_FM3_07_0_64:
	dc.b smpsNoAttack, $01
	smpsSetvoice	$00
	dc.b nF4, $18, nG4, $08, nE4, $14, nRst, $03, nG4, $04, nRst
	smpsReturn

Marble_Zone_Act_1_FM3_08_0_64:
	smpsSetvoice	$00
	dc.b nG4, $0C, nF4, $34
	smpsReturn

Marble_Zone_Act_1_FM3_09_0_64:
	dc.b nRst, $40
	smpsReturn

Marble_Zone_Act_1_FM3_0A_0_64:
	dc.b smpsNoAttack, $30
	smpsSetvoice	$00
	dc.b nA3, $04, nC3, nC4, nC4
	smpsReturn

Marble_Zone_Act_1_FM3_0B_0_64:
	smpsSetvoice	$00
	dc.b nF4, $08, nRst, $04, nAb5, nG4, nDs4, nRst, nF4, $06, nRst, $02, nC4, $04, nF4, nG4
	dc.b nAb5, nG4, nF4, nG4
	smpsReturn

Marble_Zone_Act_1_FM3_0C_0_64:
	smpsSetvoice	$00
	dc.b nF4, $08, nRst, $04, nAb5, nG4, nDs4, $08, nF4, $04, nRst, nAb5, nG4, nDs4, nG4, nDs4
	dc.b nRst, nF4
	smpsReturn

Marble_Zone_Act_1_FM3_0D_0_64:
	smpsSetvoice	$00
	dc.b nC5, $08, nRst, $04, nC5, nBb5, nG4, $08, nAb5, nRst, nC5, $04, nBb5, nAb5, nF4, nC4
	smpsReturn

Marble_Zone_Act_1_FM3_0E_0_64:
	smpsSetvoice	$00
	dc.b nCs4, $08, nRst, $04, nC4, nCs4, nC4, nCs4, nE4, $08, nRst, $0C, nA3, $04, nC3, nC4
	dc.b nC4
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
	dc.b nE3, $02, $02, $04, nRst, nAb2, $14
	smpsSetvoice	$02
	smpsPan		panLeft, $00
	smpsAlterVol	$F0
	dc.b nDs4, $04
	smpsReturn

Marble_Zone_Act_1_FM4_01_0_64:
	dc.b nRst, $04, nDs4, $03, nRst, $01, nF4, $07, nRst, $01, nDs4, $08, nRst, $04, nDs4, nRst
	dc.b nDs4, $03, nRst, $01, nF4, $07, nRst, $01, nDs4, $0C, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM4_02_0_64:
	dc.b smpsNoAttack, $08, nF4, $03, nRst, $09, nF4, $04, nRst, $10, nF4, $03, nRst, $09, nF4, $04
	dc.b nRst, nC4
	smpsReturn

Marble_Zone_Act_1_FM4_03_0_64:
	dc.b nRst, $04, nCs4, $03, nRst, $01, nDs4, $07, nRst, $01, nCs4, $08, nRst, $04, nCs4, nRst
	dc.b nCs4, $03, nRst, $01, nDs4, $07, nRst, $01, nCs4, $0C, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM4_04_0_64_7B:
	dc.b smpsNoAttack, $08, nC4, $03, nRst, $09, nC4, $04, nRst, $10
	smpsSetvoice	$02
	smpsPan		panRight, $00
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$FC
	dc.b nE3, $08, nA3, nC4
	smpsReturn

Marble_Zone_Act_1_FM4_05_0_64:
	smpsSetvoice	$02
	dc.b nC4, $28, nF4, $04, nG4, nAb5, nG4, nDs4, nC4
	smpsReturn

Marble_Zone_Act_1_FM4_06_0_64:
	smpsSetvoice	$02
	dc.b nCs4, $40
	smpsReturn

Marble_Zone_Act_1_FM4_07_0_64:
	smpsSetvoice	$02
	dc.b nC5, $0C, nAb5, nF4, $08, nC5, $18, nC4, $08
	smpsReturn

Marble_Zone_Act_1_FM4_08_0_64:
	smpsSetvoice	$02
	dc.b nF4, $40
	smpsReturn

Marble_Zone_Act_1_FM4_09_0_64:
	dc.b nRst, $04
	smpsSetvoice	$00
	smpsModOff
	dc.b nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst, $06
	dc.b nF4, $02, nRst, nCs4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst
	smpsReturn

Marble_Zone_Act_1_FM4_0A_0_64:
	dc.b smpsNoAttack, $04
	smpsSetvoice	$00
	dc.b nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst, $06
	dc.b nF4, $02, nRst, nCs4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst
	smpsReturn

Marble_Zone_Act_1_FM4_0B_0_64_7F:
	dc.b smpsNoAttack, $04
	smpsSetvoice	$00
	dc.b nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst, $06
	dc.b nF4, $02, nRst, nCs4, nRst, nC4, nRst, $0E
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	dc.b nF4, $04
	smpsReturn

Marble_Zone_Act_1_FM4_0C_0_64:
	smpsSetvoice	$02
	dc.b nC5, $0C, $04, nBb5, $0C, $04, nAb5, $0C, $04, nG4, $0C, nDs4, $04
	smpsReturn

Marble_Zone_Act_1_FM4_0D_0_64_7D:
	smpsSetvoice	$02
	dc.b nCs4, $0C, $04, nC4, $0C
	smpsSetvoice	$04
	smpsPan		panCenter, $00
	smpsModOff
	smpsAlterVol	$12
	dc.b nE3, $02, $02, $04, nRst, nAb2, $14
	smpsSetvoice	$02
	smpsPan		panLeft, $00
	smpsAlterVol	$F0
	dc.b nDs4, $04
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
	dc.b nC5, $02, $02, $04, nRst, nC4, $14
	smpsSetvoice	$02
	smpsPan		panRight, $00
	smpsAlterVol	$F2
	dc.b nG4, $04
	smpsReturn

Marble_Zone_Act_1_FM5_01_0_64:
	dc.b nRst, $04
	smpsSetvoice	$02
	dc.b nG4, $03, nRst, $01, nAb5, $07, nRst, $01, nG4, $08, nRst, $04, nG4, nRst, nG4, $03
	dc.b nRst, $01, nAb5, $07, nRst, $01, nG4, $0C, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM5_02_0_64:
	dc.b smpsNoAttack, $08, nAb5, $03, nRst, $09, nAb5, $04, nRst, $10, nAb5, $03, nRst, $09, nAb5, $04
	dc.b nRst, nCs4
	smpsReturn

Marble_Zone_Act_1_FM5_03_0_64:
	dc.b nRst, $04, nF4, $03, nRst, $01, nG4, $07, nRst, $01, nF4, $08, nRst, $04, nF4, nRst
	dc.b nF4, $03, nRst, $01, nG4, $07, nRst, $01, nF4, $0C, nRst, $04
	smpsReturn

Marble_Zone_Act_1_FM5_04_0_64:
	dc.b smpsNoAttack, $08, nDs4, $03, nRst, $09, nDs4, $04, nRst, $10
	smpsSetvoice	$02
	smpsPan		panLeft, $00
	smpsModSet	$00, $01, $02, $04
	dc.b nE3, $08, nA3, nC4
	smpsReturn

Marble_Zone_Act_1_FM5_05_0_64:
	smpsSetvoice	$02
	dc.b nA3, $28, nC4, $04, nC4, nC4, nC4, nC4, nC4
	smpsReturn

Marble_Zone_Act_1_FM5_06_0_64:
	smpsSetvoice	$02
	dc.b nC4, $40
	smpsReturn

Marble_Zone_Act_1_FM5_07_0_64:
	smpsSetvoice	$02
	dc.b nAb5, $0C, nF4, nC4, $08, nG4, $18, nC4, $08
	smpsReturn

Marble_Zone_Act_1_FM5_08_0_64:
	smpsSetvoice	$02
	dc.b nC4, $40
	smpsReturn

Marble_Zone_Act_1_FM5_09_0_64_7B:
	dc.b nRst, $08, $04
	smpsSetvoice	$00
	smpsModOff
	smpsAlterVol	$FC
	dc.b nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02, nRst, nDs4, nRst, nC4, nRst, $06
	dc.b nF4, $02, nRst, nCs4, nRst, nC4, nRst, $06, nG4, $02, nRst
	smpsReturn

Marble_Zone_Act_1_FM5_0A_0_64:
	smpsSetvoice	$00
	dc.b nDs4, $02, nRst, nC4, nRst, $06, nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02
	dc.b nRst, nDs4, nRst, nC4, nRst, $06, nF4, $02, nRst, nCs4, nRst, nC4, nRst, $06, nG4, $02
	dc.b nRst
	smpsReturn

Marble_Zone_Act_1_FM5_0B_0_64_7F:
	smpsSetvoice	$00
	dc.b nDs4, $02, nRst, nC4, nRst, $06, nAb5, $02, nRst, nF4, nRst, nC4, nRst, $06, nG4, $02
	dc.b nRst, nDs4, nRst, nC4, nRst, $06, nF4, $02, nRst, nCs4, nRst, nC4, nRst, $06
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	dc.b nC4, $04
	smpsReturn

Marble_Zone_Act_1_FM5_0C_0_64:
	smpsSetvoice	$02
	dc.b nF4, $0C, $04, nDs4, $0C, $04, nCs4, $0C, $04, nDs4, $0C, nC4, $04
	smpsReturn

Marble_Zone_Act_1_FM5_0D_0_64_7D:
	smpsSetvoice	$02
	dc.b nC4, $0C, $04, nA3, $0C
	smpsSetvoice	$05
	smpsPan		panCenter, $00
	smpsModOff
	smpsAlterVol	$10
	dc.b nC5, $02, $02, $04, nRst, nC4, $14
	smpsSetvoice	$02
	smpsPan		panRight, $00
	smpsAlterVol	$F2
	dc.b nG4, $04
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
	dc.b nC0, $02, $02, $08, nC0, nC0, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_01_0_64:
	dc.b nC0, $08, $08, $08, $08, $08, $08, $08, $08
	smpsReturn

Marble_Zone_Act_1_DAC_02_0_64:
	dc.b nC0, $08, $08, $08, $08, $08, $08, $04, $04, nC0, nC0, $02, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_03_0_64:
	dc.b nC0, $06, $02, nC0, $04, nC0, nC0, $06, $02, nC0, $04, nC0, nC0, $06, $02, nC0
	dc.b $04, nC0, nC0, $06, $02, nC0, $04, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_04_0_64:
	dc.b nC0, $08, $08, $08, $08, $08, $08, $06, $02, nC0, $04, nC0, $02, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_05_0_64:
	dc.b nC0, $08, nC0, $04, nC0, $08, nC0, $04, nC0, nC0, nC0, $08, nC0, $04, nC0, $08
	dc.b nC0, $04, nC0, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_06_0_64:
	dc.b nC0, $08, nC0, $04, nC0, $08, nC0, $04, nC0, nC0, nC0, $08, nC0, $04, nC0, $08
	dc.b nC0, $04, nC0, nC0
	smpsReturn

Marble_Zone_Act_1_DAC_07_0_64:
	dc.b nC0, $08, nC0, $04, nC0, $08, nC0, $04, nC0, nC0, $02, $02, $08, nC0, nC0, nC0
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
	dc.b smpsNoAttack, $24
	smpsReturn

Marble_Zone_Act_1_PSG1_01_0_64:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nRst, $05
	smpsModOff
	dc.b smpsNoAttack, $38
	smpsReturn

Marble_Zone_Act_1_PSG1_02_0_64_08:
	dc.b smpsNoAttack, $23
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$01
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b $01
	smpsReturn

Marble_Zone_Act_1_PSG1_03_0_64:
	dc.b smpsNoAttack, $01, nMaxPSG, $02, nRst, $3D
	smpsReturn

Marble_Zone_Act_1_PSG1_04_0_64_07:
	dc.b smpsNoAttack, $1C
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FF
	dc.b nMaxPSG, $08, $04, nMaxPSG, $08, nMaxPSG, $04, nMaxPSG, $06, nRst, $03
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$03
	dc.b nMaxPSG, $02, nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_05_0_64_05:
	dc.b smpsNoAttack, $01
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $02
	smpsPSGAlterVol	$FF
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_06_0_64:
	dc.b smpsNoAttack, $01
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_07_0_64_06:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FC
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	dc.b nMaxPSG, $08
	smpsReturn

Marble_Zone_Act_1_PSG1_08_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $0C, nMaxPSG, $34
	smpsReturn

Marble_Zone_Act_1_PSG1_09_0_64_08:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	smpsPSGAlterVol	$02
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_0A_0_64:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_0B_0_64:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $01
	smpsReturn

Marble_Zone_Act_1_PSG1_0C_0_64:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nRst, $19
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
	dc.b smpsNoAttack, $24
	smpsReturn

Marble_Zone_Act_1_PSG2_01_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nRst, $08
	smpsModOff
	dc.b smpsNoAttack, $38
	smpsReturn

Marble_Zone_Act_1_PSG2_02_0_64_08:
	dc.b smpsNoAttack, $20
	smpsPSGAlterVol	$FE
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_03_0_64:
	dc.b nRst, $40
	smpsReturn

Marble_Zone_Act_1_PSG2_04_0_64_0A:
	dc.b smpsNoAttack, $1C
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	dc.b nMaxPSG, $08, $04, nMaxPSG, $08, nMaxPSG, $04, nMaxPSG, $06
	smpsPSGAlterVol	$01
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_05_0_64_09:
	smpsPSGvoice	fTone_07 ; Fade
	smpsPSGAlterVol	$FF
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_06_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $02, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_07_0_64_0A:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	dc.b nMaxPSG, $18, nMaxPSG, $08, nMaxPSG, $18, nMaxPSG, $08
	smpsReturn

Marble_Zone_Act_1_PSG2_08_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $0C, nMaxPSG, $34
	smpsReturn

Marble_Zone_Act_1_PSG2_09_0_64_08:
	smpsPSGvoice	fTone_07 ; Fade
	smpsModOff
	smpsPSGAlterVol	$FE
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_0A_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_0B_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, $02, nMaxPSG
	dc.b nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsReturn

Marble_Zone_Act_1_PSG2_0C_0_64:
	smpsPSGvoice	fTone_07 ; Fade
	dc.b nMaxPSG, $04, nMaxPSG, $02, nMaxPSG, nMaxPSG, $04, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nRst, $1C
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
	dc.b nMaxPSG, $02, $02, $08
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $18
	smpsReturn

Marble_Zone_Act_1_PSG3_01_0_64:
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $04, $04, $04, $04, $04
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $04, $04
	smpsReturn

Marble_Zone_Act_1_PSG3_02_0_64:
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $02, $02, $02, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $02, $02, $02, $02, $02, $02, $02, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $02, $02, $02, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $02, $02, $02, $02
	smpsReturn

Marble_Zone_Act_1_PSG3_03_0_64:
	dc.b smpsNoAttack, $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $02, $06, $02, $06, $02, $06, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $06
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b $02, $06, $02, $06, $02, $06, $02
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $02
	smpsReturn

Marble_Zone_Act_1_PSG3_04_0_64:
	dc.b smpsNoAttack, $04
	smpsPSGvoice	fTone_02 ; Pedal Hi-Hat
	dc.b nMaxPSG, $02, $06, $02, $06, $02, $06, $02, $02, $08
	smpsPSGvoice	fTone_04 ; Open Hi-Hat
	dc.b $18
	smpsReturn
