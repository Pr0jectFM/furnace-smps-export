Marble_Zone_Act_1_Header:
	sHeaderInit
	sHeaderVoice	Marble_Zone_Act_1_Voices
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $0A
;	Given Tempo = 135.00 BPM
;	Approximated Tempo = 135.00 BPM

	sHeaderDAC	Marble_Zone_Act_1_DAC
	sHeaderFM	Marble_Zone_Act_1_FM1,	$00, $00
	sHeaderFM	Marble_Zone_Act_1_FM2,	$00, $00
	sHeaderFM	Marble_Zone_Act_1_FM3,	$00, $00
	sHeaderFM	Marble_Zone_Act_1_FM4,	$00, $14
	sHeaderFM	Marble_Zone_Act_1_FM5,	$00, $12
	sHeaderPSG	Marble_Zone_Act_1_PSG1,	$00, $07, $00, $00
	sHeaderPSG	Marble_Zone_Act_1_PSG2,	$00, $07, $00, $00
	sHeaderPSG	Marble_Zone_Act_1_PSG3,	$00, $08, $00, $00

Marble_Zone_Act_1_Voices:
;	FM Voice 00 -> 00: FM1&3 - Lead
	spAlgorithm		$02
	spFeedback		$04
	spDetune		$01, $00, $01, $00
	spMultiple		$01, $05, $03, $0A
	spRateScale		$00, $00, $00, $00
	spAttackRt		$11, $12, $12, $03
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$00, $13, $13, $00
	spDecayRt		$01, $02, $02, $03
	spSustainLv		$00, $00, $01, $01
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$16, $26, $18, $1E

;	FM Voice 01 -> 01: FM2 - Bass
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$03, $01, $03, $06
	spMultiple		$01, $04, $0C, $01
	spRateScale		$03, $02, $03, $02
	spAttackRt		$1A, $1C, $1B, $1C
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$0D, $04, $12, $0C
	spDecayRt		$03, $03, $01, $03
	spSustainLv		$01, $00, $03, $02
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$0D, $31, $29, $1F

;	FM Voice 02 -> 02: FM4&5 - Brass
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$00, $00, $00, $00
	spMultiple		$01, $01, $07, $01
	spRateScale		$01, $02, $02, $02
	spAttackRt		$13, $0D, $0E, $0E
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$03, $0E, $0E, $0E
	spDecayRt		$00, $00, $00, $00
	spSustainLv		$00, $01, $0F, $01
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$17, $27, $28, $18

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
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$03, $01, $03, $06
	spMultiple		$01, $04, $0C, $01
	spRateScale		$03, $02, $03, $02
	spAttackRt		$1A, $1C, $1B, $1C
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$03, $04, $09, $04
	spDecayRt		$00, $03, $01, $03
	spSustainLv		$0A, $00, $00, $01
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$0E, $31, $47, $21

;	FM Voice 08 -> 04: Intro 1
	spAlgorithm		$03
	spFeedback		$04
	spDetune		$00, $00, $03, $07
	spMultiple		$00, $00, $02, $0C
	spRateScale		$03, $03, $01, $01
	spAttackRt		$1F, $1C, $18, $1F
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$04, $04, $0B, $04
	spDecayRt		$08, $08, $0C, $06
	spSustainLv		$0B, $0B, $01, $01
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$00, $16, $26, $24

;	FM Voice 09 -> 05: Intro 2
	spAlgorithm		$02
	spFeedback		$00
	spDetune		$05, $05, $03, $03
	spMultiple		$01, $05, $02, $0C
	spRateScale		$02, $00, $02, $00
	spAttackRt		$1F, $1F, $18, $1F
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$11, $0E, $11, $0F
	spDecayRt		$05, $08, $05, $0E
	spSustainLv		$00, $06, $00, $05
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$00, $2F, $2D, $2D

	; Loop Pattern :  01
	; End Pattern :  0E
	; End Place :  3F


Marble_Zone_Act_1_FM1:
	sCall Marble_Zone_Act_1_FM1_00_0_36

Marble_Zone_Act_1_FM1_Jump:
	sCall Marble_Zone_Act_1_FM1_01_0_64
	sCall Marble_Zone_Act_1_FM1_02_0_64
	sCall Marble_Zone_Act_1_FM1_03_0_64
	sCall Marble_Zone_Act_1_FM1_04_0_64
	sCall Marble_Zone_Act_1_FM1_05_0_64
	sCall Marble_Zone_Act_1_FM1_02_0_64
	sCall Marble_Zone_Act_1_FM1_06_0_64
	sCall Marble_Zone_Act_1_FM1_07_0_64
	sCall Marble_Zone_Act_1_FM1_08_0_64
	sCall Marble_Zone_Act_1_FM1_09_0_64
	sCall Marble_Zone_Act_1_FM1_0A_0_64
	sCall Marble_Zone_Act_1_FM1_0B_0_64
	sCall Marble_Zone_Act_1_FM1_0C_0_64
	sCall Marble_Zone_Act_1_FM1_0D_0_64
	sJump Marble_Zone_Act_1_FM1_Jump

Marble_Zone_Act_1_FM1_00_0_36:
	dc.b sHold, $3C
	sPatFM	$00
	sPan		panLeft, $00
	dc.b nA3, $0C, nB3, nC4, nE4
	sRet

Marble_Zone_Act_1_FM1_01_0_64:
	sPatFM	$00
	sPan		panLeft, $00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	sRet

Marble_Zone_Act_1_FM1_02_0_64:
	sPatFM	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, sHold, $11, nRst, $0C
	sRet

Marble_Zone_Act_1_FM1_03_0_64:
	sPatFM	$00
	dc.b nA4, $0C, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, $18, nB4
	sRet

Marble_Zone_Act_1_FM1_04_0_64:
	sPatFM	$00
	dc.b nF4, $24, nE4, $60, nRst, $0C, nA3, nC4, nE4, nA4
	sRet

Marble_Zone_Act_1_FM1_05_0_64:
	sPatFM	$00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	sRet

Marble_Zone_Act_1_FM1_06_0_64:
	sPatFM	$00
	dc.b nA4, $48, nB4, $18, nAb4, $3C, nRst, $0C, nB4, nRst
	sRet

Marble_Zone_Act_1_FM1_07_0_64:
	sPatFM	$00
	dc.b nB4, $24, nA4, $7F, sHold, $1D
	sRet

Marble_Zone_Act_1_FM1_08_0_64:
	dc.b nRst, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM1_09_0_64:
	dc.b sHold, $7F, sHold, $11
	sPatFM	$00
	dc.b nA3, $0C, nB3, nC4, nE4
	sRet

Marble_Zone_Act_1_FM1_0A_0_64:
	sPatFM	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, nRst, nA4, $12, nRst, $06, nE4, $0C, nA4, nB4
	dc.b nC5, nB4, nA4, nB4
	sRet

Marble_Zone_Act_1_FM1_0B_0_64:
	sPatFM	$00
	dc.b nC5, $18, nRst, $0C, nE5, nG5, nE5, $18, nD5, $0C, nRst, nE5, nD5, nC5, nD5, nE5
	dc.b nRst, nE5
	sRet

Marble_Zone_Act_1_FM1_0C_0_64:
	sPatFM	$00
	dc.b nA5, $18, nRst, $0C, nC6, nB5, nG5, $18, nA5, nRst, nA5, $0C, nG5, nE5, nD5, nA4
	sRet

Marble_Zone_Act_1_FM1_0D_0_64:
	sPatFM	$00
	dc.b nD5, $18, nRst, $0C, nA4, nD5, nA4, nD5, nE5, $18, nRst, $24, nA3, $0C, nB3, nC4
	dc.b nE4
	sRet

Marble_Zone_Act_1_FM2:
	sCall Marble_Zone_Act_1_FM2_00_0_36

Marble_Zone_Act_1_FM2_Jump:
	sCall Marble_Zone_Act_1_FM2_01_0_64
	sCall Marble_Zone_Act_1_FM2_02_0_64
	sCall Marble_Zone_Act_1_FM2_03_0_64
	sCall Marble_Zone_Act_1_FM2_04_0_64
	sCall Marble_Zone_Act_1_FM2_05_0_64
	sCall Marble_Zone_Act_1_FM2_06_0_64
	sCall Marble_Zone_Act_1_FM2_07_0_64
	sCall Marble_Zone_Act_1_FM2_08_0_64
	sCall Marble_Zone_Act_1_FM2_09_0_64
	sCall Marble_Zone_Act_1_FM2_0A_0_64
	sCall Marble_Zone_Act_1_FM2_09_0_64
	sCall Marble_Zone_Act_1_FM2_0A_0_64
	sCall Marble_Zone_Act_1_FM2_0B_0_64
	sCall Marble_Zone_Act_1_FM2_0C_0_64
	sJump Marble_Zone_Act_1_FM2_Jump

Marble_Zone_Act_1_FM2_00_0_36:
	sPatFM	$01
	dc.b nE2, $06, $06, $0C, nRst, nE1, $48
	sRet

Marble_Zone_Act_1_FM2_01_0_64:
	sPatFM	$01
	dc.b nA1, $0C, $0C, nE2, nE2, nD2, nD2, nE2, nE2, nA1, nA1, nE2, nE2, nD2, nD2, nE2
	dc.b nE2
	sRet

Marble_Zone_Act_1_FM2_02_0_64:
	sPatFM	$01
	dc.b nD2, $0C, $0C, nA2, nA2, nF2, nF2, nA2, nA2, nD2, nD2, nA2, nA2, nF2, nF2, nA2
	dc.b nA2
	sRet

Marble_Zone_Act_1_FM2_03_0_64:
	sPatFM	$01
	dc.b nE2, $0C, $0C, nB2, nB2, nG2, nG2, nB2, nB2, nF2, nF2, nC3, nC3, nA2, nA2, nF2
	dc.b nF2
	sRet

Marble_Zone_Act_1_FM2_04_0_64:
	sPatFM	$01
	dc.b nD2, $0C, $0C, nA2, nA2, nF2, nF2, nA2, nA2, nE2, nE2, nB2, nB2, nG2, nE2, nC2
	dc.b nB1
	sRet

Marble_Zone_Act_1_FM2_05_0_64:
	sPatFM	$01
	dc.b nA1, $18, nRst, $0C, nE2, $24, nRst, $0C, nA1, $24, nRst, $0C, nE2, nE2, $18, nC2
	dc.b $0C, nCs2
	sRet

Marble_Zone_Act_1_FM2_06_0_64:
	sPatFM	$01
	dc.b nD2, $18, nRst, $0C, nA2, $24, nRst, $0C, nD2, $24, nRst, $0C, nA2, $24, nD2, $0C
	dc.b nE2
	sRet

Marble_Zone_Act_1_FM2_07_0_64:
	sPatFM	$01
	dc.b nF2, $18, nRst, $0C, nC3, $24, nRst, $0C, nF2, nE2, $18, nRst, $0C, nB2, $24, nG1
	dc.b $0C, nAb1
	sRet

Marble_Zone_Act_1_FM2_08_0_64:
	sPatFM	$01
	dc.b nA1, $18, nRst, $0C, nE2, nE2, $18, nRst, $0C, nA2, nA2, $18, nRst, $0C, nE2, nE2
	dc.b $18, nRst, $0C, nE2
	sRet

Marble_Zone_Act_1_FM2_09_0_64:
	sPatFM	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nF2, nE2
	dc.b $18, nRst, $0C, nE2
	sRet

Marble_Zone_Act_1_FM2_0A_0_64:
	sPatFM	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nE2, nF2
	dc.b nG2, nE2, nC2
	sRet

Marble_Zone_Act_1_FM2_0B_0_64:
	sPatFM	$01
	dc.b nA2, $18, nRst, $0C, nA2, nG2, $18, nRst, $0C, nG2, nF2, $18, nRst, $0C, nE2, nG2
	dc.b nE2, nD2, nC2
	sRet

Marble_Zone_Act_1_FM2_0C_0_64:
	sPatFM	$01
	dc.b nD2, $18, nRst, $0C, nC2, nB1, $18, nRst, $0C, nE2, $06, $06, $0C, nRst, nE1, $48
	sRet

Marble_Zone_Act_1_FM3:
	sCall Marble_Zone_Act_1_FM3_00_0_36

Marble_Zone_Act_1_FM3_Jump:
	sCall Marble_Zone_Act_1_FM3_01_0_64
	sCall Marble_Zone_Act_1_FM3_02_0_64
	sCall Marble_Zone_Act_1_FM3_03_0_64
	sCall Marble_Zone_Act_1_FM3_04_0_64
	sCall Marble_Zone_Act_1_FM3_05_0_64
	sCall Marble_Zone_Act_1_FM3_06_0_64
	sCall Marble_Zone_Act_1_FM3_07_0_64
	sCall Marble_Zone_Act_1_FM3_08_0_64
	sCall Marble_Zone_Act_1_FM3_09_0_64
	sCall Marble_Zone_Act_1_FM3_0A_0_64
	sCall Marble_Zone_Act_1_FM3_0B_0_64
	sCall Marble_Zone_Act_1_FM3_0C_0_64
	sCall Marble_Zone_Act_1_FM3_0D_0_64
	sCall Marble_Zone_Act_1_FM3_0E_0_64
	sJump Marble_Zone_Act_1_FM3_Jump

Marble_Zone_Act_1_FM3_00_0_36:
	dc.b sHold, $3C
	sPatFM	$00
	sMod68k	$00, $01, $03, $04
	sPan		panRight, $00
	dc.b nA3, $0C, nB3, nC4, nE4
	sRet

Marble_Zone_Act_1_FM3_01_0_64:
	sPatFM	$00
	sPan		panRight, $00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4
	sRet

Marble_Zone_Act_1_FM3_02_0_64:
	sPatFM	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, sHold, $11, nRst, $0C
	sRet

Marble_Zone_Act_1_FM3_03_0_64:
	sPatFM	$00
	dc.b nA4, $0C, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, nRst, nA4, nG4, nA4, $18, nB4
	sRet

Marble_Zone_Act_1_FM3_04_0_64:
	sPatFM	$00
	dc.b nF4, $24, nE4, $60, nRst, $0C, nA3, nC4, nE4, nA4
	sRet

Marble_Zone_Act_1_FM3_05_0_64:
	dc.b sHold, $03
	sPatFM	$00
	dc.b nB4, $0C, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nRst, nB4, nA4, nB4, nA4, nE4
	dc.b nC4, $09
	sRet

Marble_Zone_Act_1_FM3_06_0_64:
	dc.b sHold, $03
	sPatFM	$00
	dc.b nG4, $18, nA4, $0C, nF4, $7F, sHold, $11, nRst, $09
	sRet

Marble_Zone_Act_1_FM3_07_0_64:
	dc.b sHold, $03
	sPatFM	$00
	dc.b nA4, $48, nB4, $18, nAb4, $3C, nRst, $09, nB4, $0C, nRst
	sRet

Marble_Zone_Act_1_FM3_08_0_64:
	sPatFM	$00
	dc.b nB4, $24, nA4, $7F, sHold, $1D
	sRet

Marble_Zone_Act_1_FM3_09_0_64:
	dc.b nRst, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM3_0A_0_64:
	dc.b sHold, $7F, sHold, $11
	sPatFM	$00
	dc.b nA3, $0C, nB3, nC4, nE4
	sRet

Marble_Zone_Act_1_FM3_0B_0_64:
	sPatFM	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, nRst, nA4, $12, nRst, $06, nE4, $0C, nA4, nB4
	dc.b nC5, nB4, nA4, nB4
	sRet

Marble_Zone_Act_1_FM3_0C_0_64:
	sPatFM	$00
	dc.b nA4, $18, nRst, $0C, nC5, nB4, nG4, $18, nA4, $0C, nRst, nC5, nB4, nG4, nB4, nG4
	dc.b nRst, nA4
	sRet

Marble_Zone_Act_1_FM3_0D_0_64:
	sPatFM	$00
	dc.b nE5, $18, nRst, $0C, nE5, nD5, nB4, $18, nC5, nRst, nE5, $0C, nD5, nC5, nA4, nE4
	sRet

Marble_Zone_Act_1_FM3_0E_0_64:
	sPatFM	$00
	dc.b nF4, $18, nRst, $0C, nE4, nF4, nC4, nF4, nAb4, $18, nRst, $24, nA3, $0C, nB3, nC4
	dc.b nE4
	sRet

Marble_Zone_Act_1_FM4:
	sCall Marble_Zone_Act_1_FM4_00_0_36_6B

Marble_Zone_Act_1_FM4_Jump:
	sCall Marble_Zone_Act_1_FM4_01_0_64
	sCall Marble_Zone_Act_1_FM4_02_0_64
	sCall Marble_Zone_Act_1_FM4_03_0_64
	sCall Marble_Zone_Act_1_FM4_04_0_64_7B
	sCall Marble_Zone_Act_1_FM4_05_0_64
	sCall Marble_Zone_Act_1_FM4_06_0_64
	sCall Marble_Zone_Act_1_FM4_07_0_64
	sCall Marble_Zone_Act_1_FM4_08_0_64
	sCall Marble_Zone_Act_1_FM4_09_0_64
	sCall Marble_Zone_Act_1_FM4_0A_0_64
	sCall Marble_Zone_Act_1_FM4_0A_0_64
	sCall Marble_Zone_Act_1_FM4_0B_0_64_7F
	sCall Marble_Zone_Act_1_FM4_0C_0_64
	sCall Marble_Zone_Act_1_FM4_0D_0_64_7D
	sJump Marble_Zone_Act_1_FM4_Jump

Marble_Zone_Act_1_FM4_00_0_36_6B:
	sPatFM	$04
	dc.b nE3, $06, $06, $0C, nRst, nE2, $3C
	sPatFM	$02
	saVolFM	$F0
	sPan		panLeft, $00
	dc.b nG4, $0C
	sRet

Marble_Zone_Act_1_FM4_01_0_64:
	dc.b nRst, $0C, nG4, $09, nRst, $03, nA4, $15, nRst, $03, nG4, $18, nRst, $0C, nG4, nRst
	dc.b nG4, $09, nRst, $03, nA4, $15, nRst, $03, nG4, $24, nRst, $0C
	sRet

Marble_Zone_Act_1_FM4_02_0_64:
	dc.b sHold, $18, nA4, $09, nRst, $1B, nA4, $0C, nRst, $30, nA4, $09, nRst, $1B, nA4, $0C
	dc.b nRst, nD4
	sRet

Marble_Zone_Act_1_FM4_03_0_64:
	dc.b nRst, $0C, nF4, $09, nRst, $03, nG4, $15, nRst, $03, nF4, $18, nRst, $0C, nF4, nRst
	dc.b nF4, $09, nRst, $03, nG4, $15, nRst, $03, nF4, $24, nRst, $0C
	sRet

Marble_Zone_Act_1_FM4_04_0_64_7B:
	dc.b sHold, $18, nE4, $09, nRst, $1B, nE4, $0C, nRst, $30
	sPatFM	$02
	sMod68k	$00, $01, $02, $04
	saVolFM	$FC
	sPan		panRight, $00
	dc.b nE3, $18, nA3, nC4
	sRet

Marble_Zone_Act_1_FM4_05_0_64:
	sPatFM	$02
	dc.b nE4, $78, nA4, $0C, nB4, nC5, nB4, nG4, nE4
	sRet

Marble_Zone_Act_1_FM4_06_0_64:
	sPatFM	$02
	dc.b nF4, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM4_07_0_64:
	sPatFM	$02
	dc.b nF5, $24, nC5, nA4, $18, nE5, $48, nE4, $18
	sRet

Marble_Zone_Act_1_FM4_08_0_64:
	sPatFM	$02
	dc.b nA4, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM4_09_0_64:
	dc.b nRst, $0C
	sPatFM	$00
	sModOff
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst
	sRet

Marble_Zone_Act_1_FM4_0A_0_64:
	dc.b sHold, $0C
	sPatFM	$00
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst
	sRet

Marble_Zone_Act_1_FM4_0B_0_64_7F:
	dc.b sHold, $0C
	sPatFM	$00
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $2A
	sPatFM	$02
	sMod68k	$00, $01, $02, $04
	saVolFM	$02
	dc.b nA4, $0C
	sRet

Marble_Zone_Act_1_FM4_0C_0_64:
	sPatFM	$02
	dc.b nE5, $24, $0C, nD5, $24, $0C, nC5, $24, $0C, nB4, $24, nG4, $0C
	sRet

Marble_Zone_Act_1_FM4_0D_0_64_7D:
	sPatFM	$02
	dc.b nF4, $24, $0C, nD4, $24
	sPatFM	$04
	sModOff
	saVolFM	$12
	dc.b nE3, $06, $06, $0C, nRst, nE2, $3C
	sPatFM	$02
	saVolFM	$F0
	sPan		panLeft, $00
	dc.b nG4, $0C
	sRet

Marble_Zone_Act_1_FM5:
	sCall Marble_Zone_Act_1_FM5_00_0_36_6D

Marble_Zone_Act_1_FM5_Jump:
	sCall Marble_Zone_Act_1_FM5_01_0_64
	sCall Marble_Zone_Act_1_FM5_02_0_64
	sCall Marble_Zone_Act_1_FM5_03_0_64
	sCall Marble_Zone_Act_1_FM5_04_0_64
	sCall Marble_Zone_Act_1_FM5_05_0_64
	sCall Marble_Zone_Act_1_FM5_06_0_64
	sCall Marble_Zone_Act_1_FM5_07_0_64
	sCall Marble_Zone_Act_1_FM5_08_0_64
	sCall Marble_Zone_Act_1_FM5_09_0_64_7B
	sCall Marble_Zone_Act_1_FM5_0A_0_64
	sCall Marble_Zone_Act_1_FM5_0A_0_64
	sCall Marble_Zone_Act_1_FM5_0B_0_64_7F
	sCall Marble_Zone_Act_1_FM5_0C_0_64
	sCall Marble_Zone_Act_1_FM5_0D_0_64_7D
	sJump Marble_Zone_Act_1_FM5_Jump

Marble_Zone_Act_1_FM5_00_0_36_6D:
	sPatFM	$05
	dc.b nE5, $06, $06, $0C, nRst, nE4, $3C
	sPatFM	$02
	saVolFM	$F2
	sPan		panRight, $00
	dc.b nB4, $0C
	sRet

Marble_Zone_Act_1_FM5_01_0_64:
	dc.b nRst, $0C
	sPatFM	$02
	dc.b nB4, $09, nRst, $03, nC5, $15, nRst, $03, nB4, $18, nRst, $0C, nB4, nRst, nB4, $09
	dc.b nRst, $03, nC5, $15, nRst, $03, nB4, $24, nRst, $0C
	sRet

Marble_Zone_Act_1_FM5_02_0_64:
	dc.b sHold, $18, nC5, $09, nRst, $1B, nC5, $0C, nRst, $30, nC5, $09, nRst, $1B, nC5, $0C
	dc.b nRst, nF4
	sRet

Marble_Zone_Act_1_FM5_03_0_64:
	dc.b nRst, $0C, nA4, $09, nRst, $03, nB4, $15, nRst, $03, nA4, $18, nRst, $0C, nA4, nRst
	dc.b nA4, $09, nRst, $03, nB4, $15, nRst, $03, nA4, $24, nRst, $0C
	sRet

Marble_Zone_Act_1_FM5_04_0_64:
	dc.b sHold, $18, nG4, $09, nRst, $1B, nG4, $0C, nRst, $30
	sPatFM	$02
	sMod68k	$00, $01, $02, $04
	sPan		panLeft, $00
	dc.b nE3, $18, nA3, nC4
	sRet

Marble_Zone_Act_1_FM5_05_0_64:
	sPatFM	$02
	dc.b nA3, $78, nE4, $0C, nD4, nC4, nD4, nE4, nC4
	sRet

Marble_Zone_Act_1_FM5_06_0_64:
	sPatFM	$02
	dc.b nD4, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM5_07_0_64:
	sPatFM	$02
	dc.b nC5, $24, nA4, nE4, $18, nB4, $48, nC4, $18
	sRet

Marble_Zone_Act_1_FM5_08_0_64:
	sPatFM	$02
	dc.b nE4, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_FM5_09_0_64_7B:
	dc.b nRst, $18, $0C
	sPatFM	$00
	sModOff
	saVolFM	$FC
	dc.b nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06, nRst, nG4, nRst, nD4, nRst, $12
	dc.b nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06, nRst
	sRet

Marble_Zone_Act_1_FM5_0A_0_64:
	sPatFM	$00
	dc.b nG4, $06, nRst, nD4, nRst, $12, nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06
	dc.b nRst, nG4, nRst, nD4, nRst, $12, nA4, $06, nRst, nF4, nRst, nC4, nRst, $12, nB4, $06
	dc.b nRst
	sRet

Marble_Zone_Act_1_FM5_0B_0_64_7F:
	sPatFM	$00
	dc.b nG4, $06, nRst, nD4, nRst, $12, nC5, $06, nRst, nA4, nRst, nE4, nRst, $12, nB4, $06
	dc.b nRst, nG4, nRst, nD4, nRst, $12, nA4, $06, nRst, nF4, nRst, nC4, nRst, $12
	sPatFM	$02
	sMod68k	$00, $01, $02, $04
	saVolFM	$02
	dc.b nE4, $0C
	sRet

Marble_Zone_Act_1_FM5_0C_0_64:
	sPatFM	$02
	dc.b nA4, $24, $0C, nG4, $24, $0C, nF4, $24, $0C, nG4, $24, nC4, $0C
	sRet

Marble_Zone_Act_1_FM5_0D_0_64_7D:
	sPatFM	$02
	dc.b nD4, $24, $0C, nA3, $24
	sPatFM	$05
	sModOff
	saVolFM	$10
	dc.b nE5, $06, $06, $0C, nRst, nE4, $3C
	sPatFM	$02
	saVolFM	$F2
	sPan		panRight, $00
	dc.b nB4, $0C
	sRet

Marble_Zone_Act_1_DAC:
	sCall Marble_Zone_Act_1_DAC_00_0_36

Marble_Zone_Act_1_DAC_Jump:
	sCall Marble_Zone_Act_1_DAC_01_0_64
	sCall Marble_Zone_Act_1_DAC_01_0_64
	sCall Marble_Zone_Act_1_DAC_01_0_64
	sCall Marble_Zone_Act_1_DAC_02_0_64
	sCall Marble_Zone_Act_1_DAC_03_0_64
	sCall Marble_Zone_Act_1_DAC_03_0_64
	sCall Marble_Zone_Act_1_DAC_03_0_64
	sCall Marble_Zone_Act_1_DAC_04_0_64
	sCall Marble_Zone_Act_1_DAC_05_0_64
	sCall Marble_Zone_Act_1_DAC_06_0_64
	sCall Marble_Zone_Act_1_DAC_05_0_64
	sCall Marble_Zone_Act_1_DAC_06_0_64
	sCall Marble_Zone_Act_1_DAC_05_0_64
	sCall Marble_Zone_Act_1_DAC_07_0_64
	sJump Marble_Zone_Act_1_DAC_Jump

Marble_Zone_Act_1_DAC_00_0_36:
	dc.b nCs0, $06, $06, $18, nC0, nC0, nC0
	sRet

Marble_Zone_Act_1_DAC_01_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $18, $18
	sRet

Marble_Zone_Act_1_DAC_02_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $0C, $0C, nCs0, nC0, $06, nCs0
	sRet

Marble_Zone_Act_1_DAC_03_0_64:
	dc.b nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0
	dc.b $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0
	sRet

Marble_Zone_Act_1_DAC_04_0_64:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $12, $06, nCs0, $0C, nC0, $06, nCs0
	sRet

Marble_Zone_Act_1_DAC_05_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nC0
	sRet

Marble_Zone_Act_1_DAC_06_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nD0
	sRet

Marble_Zone_Act_1_DAC_07_0_64:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nCs0, $06, $06, $18, nC0, nC0, nC0
	sRet

Marble_Zone_Act_1_PSG1:
	sCall Marble_Zone_Act_1_PSG1_00_0_36

Marble_Zone_Act_1_PSG1_Jump:
	sCall Marble_Zone_Act_1_PSG1_01_0_64
	sCall Marble_Zone_Act_1_PSG1_02_0_64_08
	sCall Marble_Zone_Act_1_PSG1_03_0_64
	sCall Marble_Zone_Act_1_PSG1_04_0_64_07
	sCall Marble_Zone_Act_1_PSG1_05_0_64_05
	sCall Marble_Zone_Act_1_PSG1_06_0_64
	sCall Marble_Zone_Act_1_PSG1_07_0_64_06
	sCall Marble_Zone_Act_1_PSG1_08_0_64
	sCall Marble_Zone_Act_1_PSG1_09_0_64_08
	sCall Marble_Zone_Act_1_PSG1_0A_0_64
	sCall Marble_Zone_Act_1_PSG1_0A_0_64
	sCall Marble_Zone_Act_1_PSG1_0A_0_64
	sCall Marble_Zone_Act_1_PSG1_0B_0_64
	sCall Marble_Zone_Act_1_PSG1_0C_0_64
	saVolPSG	$FE
	sJump Marble_Zone_Act_1_PSG1_Jump

Marble_Zone_Act_1_PSG1_00_0_36:
	dc.b sHold, $6C
	sRet

Marble_Zone_Act_1_PSG1_01_0_64:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nRst, $0F
	sModOff
	dc.b sHold, $7F, sHold, $29
	sRet

Marble_Zone_Act_1_PSG1_02_0_64_08:
	dc.b sHold, $69
	sMod68k	$00, $01, $01, $03
	saVolPSG	$01
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b $03
	sRet

Marble_Zone_Act_1_PSG1_03_0_64:
	dc.b sHold, $03, nD2, $06, nRst, $7F, sHold, $38
	sRet

Marble_Zone_Act_1_PSG1_04_0_64_07:
	dc.b sHold, $54
	sVolEnvPSG	fTone_07 ; Fade
	sModOff
	saVolPSG	$FF
	dc.b nC4, $18, $0C, nA3, $18, nAb3, $0C, nE3, $12, nRst, $09
	sMod68k	$00, $01, $01, $03
	saVolPSG	$03
	dc.b nC3, $06, nE3, $03
	sRet

Marble_Zone_Act_1_PSG1_05_0_64_05:
	dc.b sHold, $03
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $06
	saVolPSG	$FF
	dc.b nC4, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2, nC2
	dc.b nA1, nC2, nE2, nA2, nC2, nE2, nA2, nC3, nE2, nA2, nC3, nE3, nA2, nC3, nE3, $03
	sRet

Marble_Zone_Act_1_PSG1_06_0_64:
	dc.b sHold, $03
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $06, nD4, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2
	dc.b nF2, nD2, nA1, nD2, nF2, nA2, nD2, nF2, nA2, nD3, nF2, nA2, nD3, nF3, nA2, nD3
	dc.b nF3, $03
	sRet

Marble_Zone_Act_1_PSG1_07_0_64_06:
	sVolEnvPSG	fTone_07 ; Fade
	sModOff
	saVolPSG	$FC
	dc.b nC4, $06, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2
	dc.b nC2, nB1, nE2, nAb2, nB2, nE2, nAb2, nB2, nE3, nAb2, nB2, nE3, nAb3
	sMod68k	$00, $01, $01, $03
	saVolPSG	$02
	dc.b nE3, $18
	sRet

Marble_Zone_Act_1_PSG1_08_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nD2, $24, nC2, $7F, sHold, $1D
	sRet

Marble_Zone_Act_1_PSG1_09_0_64_08:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07 ; Fade
	saVolPSG	$02
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3, $03
	sRet

Marble_Zone_Act_1_PSG1_0A_0_64:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3, $03
	sRet

Marble_Zone_Act_1_PSG1_0B_0_64:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nE3, nC3, nG3, $03
	sRet

Marble_Zone_Act_1_PSG1_0C_0_64:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nD3, $0C, nF3, $06, nD3, nF3, $0C, nD3, nE3, nC3, nA2, nF3, nE3, nRst, $4B
	sRet

Marble_Zone_Act_1_PSG2:
	sCall Marble_Zone_Act_1_PSG2_00_0_36

Marble_Zone_Act_1_PSG2_Jump:
	sCall Marble_Zone_Act_1_PSG2_01_0_64
	sCall Marble_Zone_Act_1_PSG2_02_0_64_08
	sCall Marble_Zone_Act_1_PSG2_03_0_64
	sCall Marble_Zone_Act_1_PSG2_04_0_64_0A
	sCall Marble_Zone_Act_1_PSG2_05_0_64_09
	sCall Marble_Zone_Act_1_PSG2_06_0_64
	sCall Marble_Zone_Act_1_PSG2_07_0_64_0A
	sCall Marble_Zone_Act_1_PSG2_08_0_64
	sCall Marble_Zone_Act_1_PSG2_09_0_64_08
	sCall Marble_Zone_Act_1_PSG2_0A_0_64
	sCall Marble_Zone_Act_1_PSG2_0A_0_64
	sCall Marble_Zone_Act_1_PSG2_0A_0_64
	sCall Marble_Zone_Act_1_PSG2_0B_0_64
	sCall Marble_Zone_Act_1_PSG2_0C_0_64
	saVolPSG	$02
	sJump Marble_Zone_Act_1_PSG2_Jump

Marble_Zone_Act_1_PSG2_00_0_36:
	dc.b sHold, $6C
	sRet

Marble_Zone_Act_1_PSG2_01_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nRst, $18
	sModOff
	dc.b sHold, $7F, sHold, $29
	sRet

Marble_Zone_Act_1_PSG2_02_0_64_08:
	dc.b sHold, $60
	saVolPSG	$FE
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b nD2
	sRet

Marble_Zone_Act_1_PSG2_03_0_64:
	dc.b nRst, $7F, sHold, $41
	sRet

Marble_Zone_Act_1_PSG2_04_0_64_0A:
	dc.b sHold, $54
	sVolEnvPSG	fTone_07 ; Fade
	sModOff
	dc.b nF4, $18, $0C, nD4, $18, nB3, $0C, nAb3, $12
	saVolPSG	$01
	dc.b nC3, $06, nE3, nA3
	sRet

Marble_Zone_Act_1_PSG2_05_0_64_09:
	sVolEnvPSG	fTone_07 ; Fade
	saVolPSG	$FF
	dc.b nC4, $06, nA3, nE3, nC3, nA3, nE3, nC3, nA2, nE3, nC3, nA2, nE2, nC3, nA2, nE2
	dc.b nC2, nA1, nC2, nE2, nA2, nC2, nE2, nA2, nC3, nE2, nA2, nC3, nE3, nA2, nC3, nE3
	dc.b nA3
	sRet

Marble_Zone_Act_1_PSG2_06_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nD4, $06, nA3, nF3, nD3, nA3, nF3, nD3, nA2, nF3, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b nD2, nA1, nD2, nF2, nA2, nD2, nF2, nA2, nD3, nF2, nA2, nD3, nF3, nA2, nD3, nF3
	dc.b nA3
	sRet

Marble_Zone_Act_1_PSG2_07_0_64_0A:
	sVolEnvPSG	fTone_07 ; Fade
	sMod68k	$00, $01, $01, $03
	saVolPSG	$02
	dc.b nF3, $48, nG3, $18, nE3, $48, nC3, $18
	sRet

Marble_Zone_Act_1_PSG2_08_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nF2, $24, nE2, $7F, sHold, $1D
	sRet

Marble_Zone_Act_1_PSG2_09_0_64_08:
	sVolEnvPSG	fTone_07 ; Fade
	sModOff
	saVolPSG	$FE
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3
	sRet

Marble_Zone_Act_1_PSG2_0A_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nA3, nB3, nG3
	sRet

Marble_Zone_Act_1_PSG2_0B_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nA3, $0C, nC4, $06, nA3, nC4, $0C, nA3, nB3, nG3, nD3, nB3, nF3, nA3, $06, nF3
	dc.b nA3, $0C, nF3, nG3, nE3, nC3, nG3
	sRet

Marble_Zone_Act_1_PSG2_0C_0_64:
	sVolEnvPSG	fTone_07 ; Fade
	dc.b nD3, $0C, nF3, $06, nD3, nF3, $0C, nD3, nE3, nC3, nA2, nF3, nE3, nRst, $54
	sRet

Marble_Zone_Act_1_PSG3:
	sNoisePSG	$E7
	sCall Marble_Zone_Act_1_PSG3_00_0_36

Marble_Zone_Act_1_PSG3_Jump:
	sCall Marble_Zone_Act_1_PSG3_01_0_64
	sCall Marble_Zone_Act_1_PSG3_01_0_64
	sCall Marble_Zone_Act_1_PSG3_01_0_64
	sCall Marble_Zone_Act_1_PSG3_01_0_64
	sCall Marble_Zone_Act_1_PSG3_02_0_64
	sCall Marble_Zone_Act_1_PSG3_02_0_64
	sCall Marble_Zone_Act_1_PSG3_02_0_64
	sCall Marble_Zone_Act_1_PSG3_02_0_64
	sCall Marble_Zone_Act_1_PSG3_03_0_64
	sCall Marble_Zone_Act_1_PSG3_03_0_64
	sCall Marble_Zone_Act_1_PSG3_03_0_64
	sCall Marble_Zone_Act_1_PSG3_03_0_64
	sCall Marble_Zone_Act_1_PSG3_03_0_64
	sCall Marble_Zone_Act_1_PSG3_04_0_64
	sJump Marble_Zone_Act_1_PSG3_Jump

Marble_Zone_Act_1_PSG3_00_0_36:
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b nHiHat, $06, $06, $18
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $48
	sRet

Marble_Zone_Act_1_PSG3_01_0_64:
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b nHiHat, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $0C, $0C
	sRet

Marble_Zone_Act_1_PSG3_02_0_64:
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b nHiHat, $06, $06, $06, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $06, $06, $06
	sRet

Marble_Zone_Act_1_PSG3_03_0_64:
	dc.b sHold, $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b nHiHat, $06, $12, $06, $12, $06, $12, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $12
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b $06, $12, $06, $12, $06, $12, $06
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $06
	sRet

Marble_Zone_Act_1_PSG3_04_0_64:
	dc.b sHold, $0C
	sVolEnvPSG	fTone_02 ; Pedal Hi-Hat
	dc.b nHiHat, $06, $12, $06, $12, $06, $12, $06, $06, $18
	sVolEnvPSG	fTone_04 ; Open Hi-Hat
	dc.b $48
	sRet
