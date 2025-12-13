Marble_Zone_Act_1_Header:
	sHeaderInit
	sHeaderPatch	Marble_Zone_Act_1_Voices
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
	sHeaderPSG	Marble_Zone_Act_1_PSG1,	$F4, $07, $00, $00
	sHeaderPSG	Marble_Zone_Act_1_PSG2,	$F4, $07, $00, $00
	sHeaderPSG	Marble_Zone_Act_1_PSG3,	$F4, $04, $00, $00
; ===========================================================================

Marble_Zone_Act_1_Voices:
;	FM Voice 00 -> 00: FM1&3 - Lead
	spAlgorithm		$02
	spFeedback		$04
	spDetune		$00, $00, $01, $01
	spMultiple		$0A, $05, $03, $01
	spRateScale		$00, $00, $00, $00
	spAttackRt		$03, $12, $12, $11
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$00, $13, $13, $00
	spSustainLv		$01, $00, $01, $00
	spDecayRt		$03, $02, $02, $01
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$1E, $26, $18, $16

;	FM Voice 01 -> 01: FM2 - Bass
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$06, $01, $03, $03
	spMultiple		$01, $04, $0C, $01
	spRateScale		$02, $02, $03, $03
	spAttackRt		$1C, $1C, $1B, $1A
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$0C, $04, $12, $0D
	spSustainLv		$02, $00, $03, $01
	spDecayRt		$03, $03, $01, $03
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$1F, $31, $29, $0D

;	FM Voice 02 -> 02: FM4&5 - Brass
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$00, $00, $00, $00
	spMultiple		$01, $01, $07, $01
	spRateScale		$02, $02, $02, $01
	spAttackRt		$0E, $0D, $0E, $13
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$0E, $0E, $0E, $03
	spSustainLv		$01, $01, $0F, $00
	spDecayRt		$00, $00, $00, $00
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$18, $27, $28, $17

;	PSG Voice 03 -> fTone_02
;	macros:
;		vol: 15 15 14 11 6 4 0
;		arp: 1073741920

;	PSG Voice 04 -> fTone_04
;	macros:
;		vol: 15 15 15 15 14 14 13 13 12 12 11 11 10 8 6

;	PSG Voice 05 -> fTone_07
;	macros:
;		vol: 14 15 15 15 15 15 14 14 14 14 14 14 13 13 13 13 13 13 12 12 12 12 12 12 11 11 11 11 11 11 10 10 10 10 10 10 9 9 9 9 9 9 8 8 8 8 8 8 7 7 7 7 7 7 0


;	FM Voice 07 -> 03: FM2 - Bass
	spAlgorithm		$02
	spFeedback		$07
	spDetune		$06, $01, $03, $03
	spMultiple		$01, $04, $0C, $01
	spRateScale		$02, $02, $03, $03
	spAttackRt		$1C, $1C, $1B, $1A
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$04, $04, $09, $03
	spSustainLv		$01, $00, $00, $0A
	spDecayRt		$03, $03, $01, $00
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$21, $31, $47, $0E

;	FM Voice 08 -> 04: Intro 1
	spAlgorithm		$03
	spFeedback		$04
	spDetune		$07, $00, $03, $00
	spMultiple		$0C, $00, $02, $00
	spRateScale		$01, $03, $01, $03
	spAttackRt		$1F, $1C, $18, $1F
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$04, $04, $0B, $04
	spSustainLv		$01, $0B, $01, $0B
	spDecayRt		$06, $08, $0C, $08
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$24, $16, $26, $00

;	FM Voice 09 -> 05: Intro 2
	spAlgorithm		$02
	spFeedback		$00
	spDetune		$03, $05, $03, $05
	spMultiple		$0C, $05, $02, $01
	spRateScale		$00, $00, $02, $02
	spAttackRt		$1F, $1F, $18, $1F
	spAmpMod		$00, $00, $00, $00
	spSustainRt		$0F, $0E, $11, $11
	spSustainLv		$05, $06, $00, $00
	spDecayRt		$0E, $08, $05, $05
	spReleaseRt		$0F, $0F, $0F, $0F
	spTotalLv		$2D, $2F, $2D, $00

	; Loop Pattern :  01
	; End Pattern :  0E
	; End Place :  3F

; ===========================================================================

Marble_Zone_Act_1_FM1_00:
	dc.b sHold, $3C
	sPatFM	$00
	sPan		spLeft, $00
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $6C
	sRet

Marble_Zone_Act_1_FM1_01:
	sPatFM	$00
	sPan		spLeft, $00
	ssDetune	$16
	dc.b nA4, $0C, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM1_02:
	sPatFM	$00
	ssDetune	$11
	dc.b nF4, $18
	ssDetune	$14
	dc.b nG4, $0C
	ssDetune	$10
	dc.b nEb4, $7F, sHold, $11, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM1_03:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $0C, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, $18
	ssDetune	$16
	dc.b nA4
	; $C0
	sRet

Marble_Zone_Act_1_FM1_04:
	sPatFM	$00
	ssDetune	$10
	dc.b nEb4, $24
	ssDetune	$0F
	dc.b nD4, $60, nRst, $0C
	ssDetune	$14
	dc.b nG3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	ssDetune	$14
	dc.b nG4
	; $C0
	sRet

Marble_Zone_Act_1_FM1_05:
	sPatFM	$00
	ssDetune	$16
	dc.b nA4, $0C, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM1_07:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $48
	ssDetune	$16
	dc.b nA4, $18
	ssDetune	$13
	dc.b nFs4, $3C, nRst, $0C
	ssDetune	$16
	dc.b nA4, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM1_08:
	sPatFM	$00
	ssDetune	$16
	dc.b nA4, $24
	ssDetune	$14
	dc.b nG4, $7F, sHold, $1D
	; $C0
	sRet

Marble_Zone_Act_1_FM1_09:
	dc.b nRst, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM1_0A:
	dc.b sHold, $7F, sHold, $11
	sPatFM	$00
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet

Marble_Zone_Act_1_FM1_0B:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$14
	dc.b nG4, $12, nRst, $06
	ssDetune	$0F
	dc.b nD4, $0C
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	; $C0
	sRet

Marble_Zone_Act_1_FM1_0C:
	sPatFM	$00
	ssDetune	$18
	dc.b nBb4, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD5
	ssDetune	$11
	dc.b nF5
	ssDetune	$0F
	dc.b nD5, $18
	ssDetune	$0D
	dc.b nC5, $0C, nRst
	ssDetune	$0F
	dc.b nD5
	ssDetune	$0D
	dc.b nC5
	ssDetune	$18
	dc.b nBb4
	ssDetune	$0D
	dc.b nC5
	ssDetune	$0F
	dc.b nD5, nRst, nD5
	; $C0
	sRet

Marble_Zone_Act_1_FM1_0D:
	sPatFM	$00
	ssDetune	$14
	dc.b nG5, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb5
	ssDetune	$16
	dc.b nA5
	ssDetune	$11
	dc.b nF5, $18
	ssDetune	$14
	dc.b nG5, nRst, nG5, $0C
	ssDetune	$11
	dc.b nF5
	ssDetune	$0F
	dc.b nD5
	ssDetune	$0D
	dc.b nC5
	ssDetune	$14
	dc.b nG4
	; $C0
	sRet

Marble_Zone_Act_1_FM1_0E:
	sPatFM	$00
	ssDetune	$0D
	dc.b nC5, $18, nRst, $0C
	ssDetune	$14
	dc.b nG4
	ssDetune	$0D
	dc.b nC5
	ssDetune	$14
	dc.b nG4
	ssDetune	$0D
	dc.b nC5
	ssDetune	$0F
	dc.b nD5, $18, nRst, $24
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_FM1:
	sCall Marble_Zone_Act_1_FM1_00

Marble_Zone_Act_1_FM1_Jump:
	sCall Marble_Zone_Act_1_FM1_01
	sCall Marble_Zone_Act_1_FM1_02
	sCall Marble_Zone_Act_1_FM1_03
	sCall Marble_Zone_Act_1_FM1_04
	sCall Marble_Zone_Act_1_FM1_05
	sCall Marble_Zone_Act_1_FM1_02
	sCall Marble_Zone_Act_1_FM1_07
	sCall Marble_Zone_Act_1_FM1_08
	sCall Marble_Zone_Act_1_FM1_09
	sCall Marble_Zone_Act_1_FM1_0A
	sCall Marble_Zone_Act_1_FM1_0B
	sCall Marble_Zone_Act_1_FM1_0C
	sCall Marble_Zone_Act_1_FM1_0D
	sCall Marble_Zone_Act_1_FM1_0E
	sJump Marble_Zone_Act_1_FM1_Jump

Marble_Zone_Act_1_FM2_00:
	sPatFM	$01
	ssDetune	$0F
	dc.b nD2, $06, $06, $0C, nRst, nD1, $48
	; $6C
	sRet

Marble_Zone_Act_1_FM2_01:
	sPatFM	$01
	ssDetune	$14
	dc.b nG1, $0C, $0C
	ssDetune	$0F
	dc.b nD2, nD2
	ssDetune	$0D
	dc.b nC2, nC2
	ssDetune	$0F
	dc.b nD2, nD2
	ssDetune	$14
	dc.b nG1, nG1
	ssDetune	$0F
	dc.b nD2, nD2
	ssDetune	$0D
	dc.b nC2, nC2
	ssDetune	$0F
	dc.b nD2, nD2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_02:
	sPatFM	$01
	ssDetune	$0D
	dc.b nC2, $0C, $0C
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$10
	dc.b nEb2, nEb2
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$0D
	dc.b nC2, nC2
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$10
	dc.b nEb2, nEb2
	ssDetune	$14
	dc.b nG2, nG2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_03:
	sPatFM	$01
	ssDetune	$0F
	dc.b nD2, $0C, $0C
	ssDetune	$16
	dc.b nA2, nA2
	ssDetune	$11
	dc.b nF2, nF2
	ssDetune	$16
	dc.b nA2, nA2
	ssDetune	$10
	dc.b nEb2, nEb2
	ssDetune	$18
	dc.b nBb2, nBb2
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$10
	dc.b nEb2, nEb2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_04:
	sPatFM	$01
	ssDetune	$0D
	dc.b nC2, $0C, $0C
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$10
	dc.b nEb2, nEb2
	ssDetune	$14
	dc.b nG2, nG2
	ssDetune	$0F
	dc.b nD2, nD2
	ssDetune	$16
	dc.b nA2, nA2
	ssDetune	$11
	dc.b nF2
	ssDetune	$0F
	dc.b nD2
	ssDetune	$18
	dc.b nBb1
	ssDetune	$16
	dc.b nA1
	; $C0
	sRet

Marble_Zone_Act_1_FM2_05:
	sPatFM	$01
	ssDetune	$14
	dc.b nG1, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2, $24, nRst, $0C
	ssDetune	$14
	dc.b nG1, $24, nRst, $0C
	ssDetune	$0F
	dc.b nD2, nD2, $18
	ssDetune	$18
	dc.b nBb1, $0C, nB1
	; $C0
	sRet

Marble_Zone_Act_1_FM2_06:
	sPatFM	$01
	ssDetune	$0D
	dc.b nC2, $18, nRst, $0C
	ssDetune	$14
	dc.b nG2, $24, nRst, $0C
	ssDetune	$0D
	dc.b nC2, $24, nRst, $0C
	ssDetune	$14
	dc.b nG2, $24
	ssDetune	$0D
	dc.b nC2, $0C
	ssDetune	$0F
	dc.b nD2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_07:
	sPatFM	$01
	ssDetune	$10
	dc.b nEb2, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb2, $24, nRst, $0C
	ssDetune	$10
	dc.b nEb2
	ssDetune	$0F
	dc.b nD2, $18, nRst, $0C
	ssDetune	$16
	dc.b nA2, $24
	ssDetune	$11
	dc.b nF1, $0C
	ssDetune	$13
	dc.b nFs1
	; $C0
	sRet

Marble_Zone_Act_1_FM2_08:
	sPatFM	$01
	ssDetune	$14
	dc.b nG1, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2, nD2, $18, nRst, $0C
	ssDetune	$14
	dc.b nG2, nG2, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2, nD2, $18, nRst, $0C, nD2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_09:
	sPatFM	$01
	ssDetune	$14
	dc.b nG2, $18, nRst, $0C, nG2
	ssDetune	$11
	dc.b nF2, $18, nRst, $0C, nF2
	ssDetune	$10
	dc.b nEb2, $18, nRst, $0C, nEb2
	ssDetune	$0F
	dc.b nD2, $18, nRst, $0C, nD2
	; $C0
	sRet

Marble_Zone_Act_1_FM2_0A:
	sPatFM	$01
	ssDetune	$14
	dc.b nG2, $18, nRst, $0C, nG2
	ssDetune	$11
	dc.b nF2, $18, nRst, $0C, nF2
	ssDetune	$10
	dc.b nEb2, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2
	ssDetune	$10
	dc.b nEb2
	ssDetune	$11
	dc.b nF2
	ssDetune	$0F
	dc.b nD2
	ssDetune	$18
	dc.b nBb1
	; $C0
	sRet

Marble_Zone_Act_1_FM2_0D:
	sPatFM	$01
	ssDetune	$14
	dc.b nG2, $18, nRst, $0C, nG2
	ssDetune	$11
	dc.b nF2, $18, nRst, $0C, nF2
	ssDetune	$10
	dc.b nEb2, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2
	ssDetune	$11
	dc.b nF2
	ssDetune	$0F
	dc.b nD2
	ssDetune	$0D
	dc.b nC2
	ssDetune	$18
	dc.b nBb1
	; $C0
	sRet

Marble_Zone_Act_1_FM2_0E:
	sPatFM	$01
	ssDetune	$0D
	dc.b nC2, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb1
	ssDetune	$16
	dc.b nA1, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD2, $06, $06, $0C, nRst, nD1, $48
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_FM2:
	sCall Marble_Zone_Act_1_FM2_00

Marble_Zone_Act_1_FM2_Jump:
	sCall Marble_Zone_Act_1_FM2_01
	sCall Marble_Zone_Act_1_FM2_02
	sCall Marble_Zone_Act_1_FM2_03
	sCall Marble_Zone_Act_1_FM2_04
	sCall Marble_Zone_Act_1_FM2_05
	sCall Marble_Zone_Act_1_FM2_06
	sCall Marble_Zone_Act_1_FM2_07
	sCall Marble_Zone_Act_1_FM2_08
	sCall Marble_Zone_Act_1_FM2_09
	sCall Marble_Zone_Act_1_FM2_0A
	sCall Marble_Zone_Act_1_FM2_09
	sCall Marble_Zone_Act_1_FM2_0A
	sCall Marble_Zone_Act_1_FM2_0D
	sCall Marble_Zone_Act_1_FM2_0E
	sJump Marble_Zone_Act_1_FM2_Jump

Marble_Zone_Act_1_FM3_00:
	dc.b sHold, $3C
	sPatFM	$00
	ssMod68k	$00, $01, $03, $04
	sPan		spRight, $00
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $6C
	sRet

Marble_Zone_Act_1_FM3_01:
	sPatFM	$00
	sPan		spRight, $00
	ssDetune	$16
	dc.b nA4, $0C, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM3_02:
	sPatFM	$00
	ssDetune	$11
	dc.b nF4, $18
	ssDetune	$14
	dc.b nG4, $0C
	ssDetune	$10
	dc.b nEb4, $7F, sHold, $11, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM3_03:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $0C, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, nRst, nG4
	ssDetune	$11
	dc.b nF4
	ssDetune	$14
	dc.b nG4, $18
	ssDetune	$16
	dc.b nA4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_04:
	sPatFM	$00
	ssDetune	$10
	dc.b nEb4, $24
	ssDetune	$0F
	dc.b nD4, $60, nRst, $0C
	ssDetune	$14
	dc.b nG3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	ssDetune	$14
	dc.b nG4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_05:
	dc.b sHold, $03
	sPatFM	$00
	ssDetune	$16
	dc.b nA4, $0C, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4, nRst, nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4
	ssDetune	$18
	dc.b nBb3, $09
	; $C0
	sRet

Marble_Zone_Act_1_FM3_06:
	dc.b sHold, $03
	sPatFM	$00
	ssDetune	$11
	dc.b nF4, $18
	ssDetune	$14
	dc.b nG4, $0C
	ssDetune	$10
	dc.b nEb4, $7F, sHold, $11, nRst, $09
	; $C0
	sRet

Marble_Zone_Act_1_FM3_07:
	dc.b sHold, $03
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $48
	ssDetune	$16
	dc.b nA4, $18
	ssDetune	$13
	dc.b nFs4, $3C, nRst, $09
	ssDetune	$16
	dc.b nA4, $0C, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM3_08:
	sPatFM	$00
	ssDetune	$16
	dc.b nA4, $24
	ssDetune	$14
	dc.b nG4, $7F, sHold, $1D
	; $C0
	sRet

Marble_Zone_Act_1_FM3_09:
	dc.b nRst, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM3_0A:
	dc.b sHold, $7F, sHold, $11
	sPatFM	$00
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_0B:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$14
	dc.b nG4, $12, nRst, $06
	ssDetune	$0F
	dc.b nD4, $0C
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$14
	dc.b nG4
	ssDetune	$16
	dc.b nA4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_0C:
	sPatFM	$00
	ssDetune	$14
	dc.b nG4, $18, nRst, $0C
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4, $18
	ssDetune	$14
	dc.b nG4, $0C, nRst
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$14
	dc.b nG4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_0D:
	sPatFM	$00
	ssDetune	$0F
	dc.b nD5, $18, nRst, $0C, nD5
	ssDetune	$0D
	dc.b nC5
	ssDetune	$16
	dc.b nA4, $18
	ssDetune	$18
	dc.b nBb4, nRst
	ssDetune	$0F
	dc.b nD5, $0C
	ssDetune	$0D
	dc.b nC5
	ssDetune	$18
	dc.b nBb4
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet

Marble_Zone_Act_1_FM3_0E:
	sPatFM	$00
	ssDetune	$10
	dc.b nEb4, $18, nRst, $0C
	ssDetune	$0F
	dc.b nD4
	ssDetune	$10
	dc.b nEb4
	ssDetune	$18
	dc.b nBb3
	ssDetune	$10
	dc.b nEb4
	ssDetune	$13
	dc.b nFs4, $18, nRst, $24
	ssDetune	$14
	dc.b nG3, $0C
	ssDetune	$16
	dc.b nA3
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_FM3:
	sCall Marble_Zone_Act_1_FM3_00

Marble_Zone_Act_1_FM3_Jump:
	sCall Marble_Zone_Act_1_FM3_01
	sCall Marble_Zone_Act_1_FM3_02
	sCall Marble_Zone_Act_1_FM3_03
	sCall Marble_Zone_Act_1_FM3_04
	sCall Marble_Zone_Act_1_FM3_05
	sCall Marble_Zone_Act_1_FM3_06
	sCall Marble_Zone_Act_1_FM3_07
	sCall Marble_Zone_Act_1_FM3_08
	sCall Marble_Zone_Act_1_FM3_09
	sCall Marble_Zone_Act_1_FM3_0A
	sCall Marble_Zone_Act_1_FM3_0B
	sCall Marble_Zone_Act_1_FM3_0C
	sCall Marble_Zone_Act_1_FM3_0D
	sCall Marble_Zone_Act_1_FM3_0E
	sJump Marble_Zone_Act_1_FM3_Jump

Marble_Zone_Act_1_FM4_00:
	sPatFM	$04
	ssDetune	$0F
	dc.b nD3, $06, $06, $0C, nRst, nD2, $3C
	sPatFM	$02
	saVolFM	$F0
	sPan		spLeft, $00
	ssDetune	$11
	dc.b nF4, $0C
	; $6C
	sRet

Marble_Zone_Act_1_FM4_01:
	saVolFM	$FC
	dc.b nRst, $0C
	ssDetune	$11
	dc.b nF4, $09, nRst, $03
	ssDetune	$14
	dc.b nG4, $15, nRst, $03
	ssDetune	$11
	dc.b nF4, $18, nRst, $0C, nF4, nRst, nF4, $09, nRst, $03
	ssDetune	$14
	dc.b nG4, $15, nRst, $03
	ssDetune	$11
	dc.b nF4, $24, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM4_02:
	dc.b sHold, $18
	ssDetune	$14
	dc.b nG4, $09, nRst, $1B, nG4, $0C, nRst, $30, nG4, $09, nRst, $1B, nG4, $0C, nRst
	ssDetune	$0D
	dc.b nC4
	; $C0
	sRet

Marble_Zone_Act_1_FM4_03:
	dc.b nRst, $0C
	ssDetune	$10
	dc.b nEb4, $09, nRst, $03
	ssDetune	$11
	dc.b nF4, $15, nRst, $03
	ssDetune	$10
	dc.b nEb4, $18, nRst, $0C, nEb4, nRst, nEb4, $09, nRst, $03
	ssDetune	$11
	dc.b nF4, $15, nRst, $03
	ssDetune	$10
	dc.b nEb4, $24, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM4_04:
	dc.b sHold, $18
	ssDetune	$0F
	dc.b nD4, $09, nRst, $1B, nD4, $0C, nRst, $30
	sPatFM	$02
	ssMod68k	$00, $01, $02, $04
	sPan		spRight, $00
	dc.b nD3, $18
	ssDetune	$14
	dc.b nG3
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM4_05:
	sPatFM	$02
	ssDetune	$0F
	dc.b nD4, $78
	ssDetune	$14
	dc.b nG4, $0C
	ssDetune	$16
	dc.b nA4
	ssDetune	$18
	dc.b nBb4
	ssDetune	$16
	dc.b nA4
	ssDetune	$11
	dc.b nF4
	ssDetune	$0F
	dc.b nD4
	; $C0
	sRet

Marble_Zone_Act_1_FM4_06:
	sPatFM	$02
	ssDetune	$10
	dc.b nEb4, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM4_07:
	sPatFM	$02
	ssDetune	$10
	dc.b nEb5, $24
	ssDetune	$18
	dc.b nBb4
	ssDetune	$14
	dc.b nG4, $18
	ssDetune	$0F
	dc.b nD5, $48, nD4, $18
	; $C0
	sRet

Marble_Zone_Act_1_FM4_08:
	sPatFM	$02
	ssDetune	$14
	dc.b nG4, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM4_09:
	dc.b nRst, $0C
	sPatFM	$00
	sModOff
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM4_0A:
	dc.b sHold, $0C
	sPatFM	$00
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM4_0C:
	dc.b sHold, $0C
	sPatFM	$00
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $2A
	sPatFM	$02
	ssMod68k	$00, $01, $02, $04
	saVolFM	$02
	ssDetune	$14
	dc.b nG4, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM4_0D:
	sPatFM	$02
	saVolFM	$FE
	ssDetune	$0F
	dc.b nD5, $24, $0C
	ssDetune	$0D
	dc.b nC5, $24, $0C
	ssDetune	$18
	dc.b nBb4, $24, $0C
	ssDetune	$16
	dc.b nA4, $24
	ssDetune	$11
	dc.b nF4, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM4_0E:
	sPatFM	$02
	ssDetune	$10
	dc.b nEb4, $24, $0C
	ssDetune	$0D
	dc.b nC4, $24
	sPatFM	$04
	sModOff
	saVolFM	$14
	sPan		spCenter, $00
	ssDetune	$0F
	dc.b nD3, $06, $06, $0C, nRst, nD2, $3C
	sPatFM	$02
	saVolFM	$F0
	sPan		spLeft, $00
	ssDetune	$11
	dc.b nF4, $0C
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_FM4:
	sCall Marble_Zone_Act_1_FM4_00

Marble_Zone_Act_1_FM4_Jump:
	sCall Marble_Zone_Act_1_FM4_01
	sCall Marble_Zone_Act_1_FM4_02
	sCall Marble_Zone_Act_1_FM4_03
	sCall Marble_Zone_Act_1_FM4_04
	sCall Marble_Zone_Act_1_FM4_05
	sCall Marble_Zone_Act_1_FM4_06
	sCall Marble_Zone_Act_1_FM4_07
	sCall Marble_Zone_Act_1_FM4_08
	sCall Marble_Zone_Act_1_FM4_09
	sCall Marble_Zone_Act_1_FM4_0A
	sCall Marble_Zone_Act_1_FM4_0A
	sCall Marble_Zone_Act_1_FM4_0C
	sCall Marble_Zone_Act_1_FM4_0D
	sCall Marble_Zone_Act_1_FM4_0E
	sJump Marble_Zone_Act_1_FM4_Jump

Marble_Zone_Act_1_FM5_00:
	sPatFM	$05
	ssDetune	$0F
	dc.b nD5, $06, $06, $0C, nRst, nD4, $3C
	sPatFM	$02
	saVolFM	$F2
	sPan		spRight, $00
	ssDetune	$16
	dc.b nA4, $0C
	; $6C
	sRet

Marble_Zone_Act_1_FM5_01:
	saVolFM	$FC
	dc.b nRst, $0C
	sPatFM	$02
	ssDetune	$16
	dc.b nA4, $09, nRst, $03
	ssDetune	$18
	dc.b nBb4, $15, nRst, $03
	ssDetune	$16
	dc.b nA4, $18, nRst, $0C, nA4, nRst, nA4, $09, nRst, $03
	ssDetune	$18
	dc.b nBb4, $15, nRst, $03
	ssDetune	$16
	dc.b nA4, $24, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM5_02:
	dc.b sHold, $18
	ssDetune	$18
	dc.b nBb4, $09, nRst, $1B, nBb4, $0C, nRst, $30, nBb4, $09, nRst, $1B, nBb4, $0C, nRst
	ssDetune	$10
	dc.b nEb4
	; $C0
	sRet

Marble_Zone_Act_1_FM5_03:
	dc.b nRst, $0C
	ssDetune	$14
	dc.b nG4, $09, nRst, $03
	ssDetune	$16
	dc.b nA4, $15, nRst, $03
	ssDetune	$14
	dc.b nG4, $18, nRst, $0C, nG4, nRst, nG4, $09, nRst, $03
	ssDetune	$16
	dc.b nA4, $15, nRst, $03
	ssDetune	$14
	dc.b nG4, $24, nRst, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM5_04:
	dc.b sHold, $18
	ssDetune	$11
	dc.b nF4, $09, nRst, $1B, nF4, $0C, nRst, $30
	sPatFM	$02
	ssMod68k	$00, $01, $02, $04
	saVolFM	$04
	sPan		spLeft, $00
	ssDetune	$0F
	dc.b nD3, $18
	ssDetune	$14
	dc.b nG3
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM5_05:
	sPatFM	$02
	saVolFM	$FC
	ssDetune	$14
	dc.b nG3, $78
	ssDetune	$0F
	dc.b nD4, $0C
	ssDetune	$0D
	dc.b nC4
	ssDetune	$18
	dc.b nBb3
	ssDetune	$0D
	dc.b nC4
	ssDetune	$0F
	dc.b nD4
	ssDetune	$18
	dc.b nBb3
	; $C0
	sRet

Marble_Zone_Act_1_FM5_06:
	sPatFM	$02
	ssDetune	$0D
	dc.b nC4, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM5_07:
	sPatFM	$02
	ssDetune	$18
	dc.b nBb4, $24
	ssDetune	$14
	dc.b nG4
	ssDetune	$0F
	dc.b nD4, $18
	ssDetune	$16
	dc.b nA4, $48
	ssDetune	$18
	dc.b nBb3, $18
	; $C0
	sRet

Marble_Zone_Act_1_FM5_08:
	sPatFM	$02
	ssDetune	$0F
	dc.b nD4, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_FM5_09:
	dc.b nRst, $18, $0C
	sPatFM	$00
	sModOff
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM5_0A:
	sPatFM	$00
	ssDetune	$11
	dc.b nF4, $06, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	; $C0
	sRet

Marble_Zone_Act_1_FM5_0C:
	sPatFM	$00
	ssDetune	$11
	dc.b nF4, $06, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$18
	dc.b nBb4, $06, nRst
	ssDetune	$14
	dc.b nG4, nRst
	ssDetune	$0F
	dc.b nD4, nRst, $12
	ssDetune	$16
	dc.b nA4, $06, nRst
	ssDetune	$11
	dc.b nF4, nRst
	ssDetune	$0D
	dc.b nC4, nRst, $12
	ssDetune	$14
	dc.b nG4, $06, nRst
	ssDetune	$10
	dc.b nEb4, nRst
	ssDetune	$18
	dc.b nBb3, nRst, $12
	sPatFM	$02
	ssMod68k	$00, $01, $02, $04
	saVolFM	$02
	ssDetune	$0F
	dc.b nD4, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM5_0D:
	sPatFM	$02
	saVolFM	$FE
	ssDetune	$14
	dc.b nG4, $24, $0C
	ssDetune	$11
	dc.b nF4, $24, $0C
	ssDetune	$10
	dc.b nEb4, $24, $0C
	ssDetune	$11
	dc.b nF4, $24
	ssDetune	$18
	dc.b nBb3, $0C
	; $C0
	sRet

Marble_Zone_Act_1_FM5_0E:
	sPatFM	$02
	ssDetune	$0D
	dc.b nC4, $24, $0C
	ssDetune	$14
	dc.b nG3, $24
	sPatFM	$05
	sModOff
	saVolFM	$12
	sPan		spCenter, $00
	ssDetune	$0F
	dc.b nD5, $06, $06, $0C, nRst, nD4, $3C
	sPatFM	$02
	saVolFM	$F2
	sPan		spRight, $00
	ssDetune	$16
	dc.b nA4, $0C
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_FM5:
	sCall Marble_Zone_Act_1_FM5_00

Marble_Zone_Act_1_FM5_Jump:
	sCall Marble_Zone_Act_1_FM5_01
	sCall Marble_Zone_Act_1_FM5_02
	sCall Marble_Zone_Act_1_FM5_03
	sCall Marble_Zone_Act_1_FM5_04
	sCall Marble_Zone_Act_1_FM5_05
	sCall Marble_Zone_Act_1_FM5_06
	sCall Marble_Zone_Act_1_FM5_07
	sCall Marble_Zone_Act_1_FM5_08
	sCall Marble_Zone_Act_1_FM5_09
	sCall Marble_Zone_Act_1_FM5_0A
	sCall Marble_Zone_Act_1_FM5_0A
	sCall Marble_Zone_Act_1_FM5_0C
	sCall Marble_Zone_Act_1_FM5_0D
	sCall Marble_Zone_Act_1_FM5_0E
	sJump Marble_Zone_Act_1_FM5_Jump

Marble_Zone_Act_1_DAC_00:
	dc.b nCs0, $06, $06, $18, nC0, nC0, nC0
	; $6C
	sRet

Marble_Zone_Act_1_DAC_01:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $18, $18
	; $C0
	sRet

Marble_Zone_Act_1_DAC_04:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $0C, $0C, nCs0, nC0, $06, nCs0
	; $C0
	sRet

Marble_Zone_Act_1_DAC_05:
	dc.b nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0
	dc.b $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0
	; $C0
	sRet

Marble_Zone_Act_1_DAC_08:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $12, $06, nCs0, $0C, nC0, $06, nCs0
	; $C0
	sRet

Marble_Zone_Act_1_DAC_09:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nC0
	; $C0
	sRet

Marble_Zone_Act_1_DAC_0A:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nD0
	; $C0
	sRet

Marble_Zone_Act_1_DAC_0E:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nCs0, $06, $06, $18, nC0, nC0, nC0
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_DAC:
	sCall Marble_Zone_Act_1_DAC_00

Marble_Zone_Act_1_DAC_Jump:
	sCall Marble_Zone_Act_1_DAC_01
	sCall Marble_Zone_Act_1_DAC_01
	sCall Marble_Zone_Act_1_DAC_01
	sCall Marble_Zone_Act_1_DAC_04
	sCall Marble_Zone_Act_1_DAC_05
	sCall Marble_Zone_Act_1_DAC_05
	sCall Marble_Zone_Act_1_DAC_05
	sCall Marble_Zone_Act_1_DAC_08
	sCall Marble_Zone_Act_1_DAC_09
	sCall Marble_Zone_Act_1_DAC_0A
	sCall Marble_Zone_Act_1_DAC_09
	sCall Marble_Zone_Act_1_DAC_0A
	sCall Marble_Zone_Act_1_DAC_09
	sCall Marble_Zone_Act_1_DAC_0E
	sJump Marble_Zone_Act_1_DAC_Jump

Marble_Zone_Act_1_PSG1_00:
	dc.b sHold, $6C
	; $6C
	sRet

Marble_Zone_Act_1_PSG1_01:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	dc.b nRst, $0F
	sModOff
	dc.b sHold, $7F, sHold, $29
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_02:
	dc.b sHold, $69
	ssMod68k	$00, $01, $01, $03
	saVolPSG	$01
	ssDetune	$FE
	dc.b nC4, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_03:
	dc.b sHold, $03
	saVolPSG	$F8
	ssDetune	$F7
	dc.b nC2, $06, nRst, $7F, sHold, $38
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_04:
	dc.b sHold, $54
	sVolEnvPSG	fTone_07
	sModOff
	saVolPSG	$07
	ssDetune	$FE
	dc.b nBb3, $18, $0C
	ssDetune	$FD
	dc.b nG3, $18, nFs3, $0C, nD3, $12, nRst, $09
	ssMod68k	$00, $01, $01, $03
	saVolPSG	$03
	ssDetune	$FB
	dc.b nBb2, $06
	ssDetune	$FD
	dc.b nD3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_05:
	dc.b sHold, $03
	sVolEnvPSG	fTone_07
	saVolPSG	$F6
	ssDetune	$FD
	dc.b nG3, $06
	saVolPSG	$09
	ssDetune	$FE
	dc.b nBb3
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F4
	dc.b nG1
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$FD
	dc.b nD3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_06:
	dc.b sHold, $03
	sVolEnvPSG	fTone_07
	saVolPSG	$F7
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FE
	dc.b nC4
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F4
	dc.b nG1
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3, nEb3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3, nEb3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_07:
	sVolEnvPSG	fTone_07
	sModOff
	saVolPSG	$05
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$F6
	dc.b nBb1, nA1
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FA
	dc.b nFs2
	ssDetune	$FB
	dc.b nA2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FA
	dc.b nFs2
	ssDetune	$FB
	dc.b nA2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FA
	dc.b nFs2
	ssDetune	$FB
	dc.b nA2
	ssDetune	$FD
	dc.b nD3, nFs3
	ssMod68k	$00, $01, $01, $03
	saVolPSG	$02
	dc.b nD3, $18
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_08:
	sVolEnvPSG	fTone_07
	saVolPSG	$F9
	ssDetune	$F7
	dc.b nC2, $24
	ssDetune	$F6
	dc.b nBb1, $7F, sHold, $1D
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_09:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	saVolPSG	$09
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_0A:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	saVolPSG	$F7
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_0B:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_0D:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nD3
	ssDetune	$FB
	dc.b nBb2
	ssDetune	$FD
	dc.b nF3, $03
	; $C0
	sRet

Marble_Zone_Act_1_PSG1_0E:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	ssDetune	$FC
	dc.b nC3, $0C, nEb3, $06, nC3, nEb3, $0C, nC3
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nD3, nRst, $4B
	; $C0
	sRet

	; Failed to match pattern 01
Marble_Zone_Act_1_PSG1_0F:
	dc.b sHold, $09
	sVolEnvPSG	fTone_07
	saVolPSG	$07
	dc.b nRst, $0F
	sModOff
	dc.b sHold, $7F, sHold, $29
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_PSG1:
	sCall Marble_Zone_Act_1_PSG1_00
	sCall Marble_Zone_Act_1_PSG1_01

Marble_Zone_Act_1_PSG1_Jump:
	sCall Marble_Zone_Act_1_PSG1_02
	sCall Marble_Zone_Act_1_PSG1_03
	sCall Marble_Zone_Act_1_PSG1_04
	sCall Marble_Zone_Act_1_PSG1_05
	sCall Marble_Zone_Act_1_PSG1_06
	sCall Marble_Zone_Act_1_PSG1_07
	sCall Marble_Zone_Act_1_PSG1_08
	sCall Marble_Zone_Act_1_PSG1_09
	sCall Marble_Zone_Act_1_PSG1_0A
	sCall Marble_Zone_Act_1_PSG1_0B
	sCall Marble_Zone_Act_1_PSG1_0B
	sCall Marble_Zone_Act_1_PSG1_0D
	sCall Marble_Zone_Act_1_PSG1_0E
	sCall Marble_Zone_Act_1_PSG1_0F
	sJump Marble_Zone_Act_1_PSG1_Jump

Marble_Zone_Act_1_PSG2_00:
	dc.b sHold, $6C
	; $6C
	sRet

Marble_Zone_Act_1_PSG2_01:
	sVolEnvPSG	fTone_07
	dc.b nRst, $18
	sModOff
	dc.b sHold, $7F, sHold, $29
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_02:
	dc.b sHold, $60
	saVolPSG	$FE
	ssDetune	$FE
	dc.b nC4, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$F7
	dc.b nC2
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_03:
	saVolPSG	$FB
	dc.b nRst, $7F, sHold, $41
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_04:
	dc.b sHold, $54
	sVolEnvPSG	fTone_07
	sModOff
	saVolPSG	$05
	ssDetune	$FE
	dc.b nEb4, $18, $0C, nC4, $18, nA3, $0C
	ssDetune	$FD
	dc.b nFs3, $12
	saVolPSG	$01
	ssDetune	$FB
	dc.b nBb2, $06
	ssDetune	$FD
	dc.b nD3, nG3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_05:
	sVolEnvPSG	fTone_07
	saVolPSG	$FF
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2
	ssDetune	$FD
	dc.b nG3, nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F4
	dc.b nG1
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F6
	dc.b nBb1
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$F8
	dc.b nD2
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nG2, nBb2
	ssDetune	$FD
	dc.b nD3, nG3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_06:
	sVolEnvPSG	fTone_07
	saVolPSG	$FB
	ssDetune	$FE
	dc.b nC4, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nEb3, nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F4
	dc.b nG1
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$F7
	dc.b nC2
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3
	ssDetune	$F8
	dc.b nEb2
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3, nEb3
	ssDetune	$FB
	dc.b nG2
	ssDetune	$FC
	dc.b nC3, nEb3
	ssDetune	$FD
	dc.b nG3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_07:
	sVolEnvPSG	fTone_07
	ssMod68k	$00, $01, $01, $03
	saVolPSG	$07
	ssDetune	$FC
	dc.b nEb3, $48
	ssDetune	$FD
	dc.b nF3, $18, nD3, $48
	ssDetune	$FB
	dc.b nBb2, $18
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_08:
	sVolEnvPSG	fTone_07
	saVolPSG	$F9
	ssDetune	$F8
	dc.b nEb2, $24, nD2, $7F, sHold, $1D
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_09:
	sVolEnvPSG	fTone_07
	sModOff
	saVolPSG	$05
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_0A:
	sVolEnvPSG	fTone_07
	saVolPSG	$FB
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_0B:
	sVolEnvPSG	fTone_07
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_0D:
	sVolEnvPSG	fTone_07
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FE
	dc.b nBb3, $06
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nBb3, $0C
	ssDetune	$FD
	dc.b nG3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FD
	dc.b nF3
	ssDetune	$FC
	dc.b nC3
	ssDetune	$FE
	dc.b nA3
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $06
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nG3, $0C
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nF3, nD3
	ssDetune	$FB
	dc.b nBb2
	ssDetune	$FD
	dc.b nF3
	; $C0
	sRet

Marble_Zone_Act_1_PSG2_0E:
	sVolEnvPSG	fTone_07
	ssDetune	$FC
	dc.b nC3, $0C, nEb3, $06, nC3, nEb3, $0C, nC3
	ssDetune	$FD
	dc.b nD3
	ssDetune	$FB
	dc.b nBb2, nG2
	ssDetune	$FC
	dc.b nEb3
	ssDetune	$FD
	dc.b nD3, nRst, $54
	; $C0
	sRet

	; Failed to match pattern 01
Marble_Zone_Act_1_PSG2_0F:
	sVolEnvPSG	fTone_07
	saVolPSG	$07
	dc.b nRst, $18
	sModOff
	dc.b sHold, $7F, sHold, $29
	; $C0
	sRet
; ---------------------------------------------------------------------------

Marble_Zone_Act_1_PSG2:
	sCall Marble_Zone_Act_1_PSG2_00
	sCall Marble_Zone_Act_1_PSG2_01

Marble_Zone_Act_1_PSG2_Jump:
	sCall Marble_Zone_Act_1_PSG2_02
	sCall Marble_Zone_Act_1_PSG2_03
	sCall Marble_Zone_Act_1_PSG2_04
	sCall Marble_Zone_Act_1_PSG2_05
	sCall Marble_Zone_Act_1_PSG2_06
	sCall Marble_Zone_Act_1_PSG2_07
	sCall Marble_Zone_Act_1_PSG2_08
	sCall Marble_Zone_Act_1_PSG2_09
	sCall Marble_Zone_Act_1_PSG2_0A
	sCall Marble_Zone_Act_1_PSG2_0B
	sCall Marble_Zone_Act_1_PSG2_0B
	sCall Marble_Zone_Act_1_PSG2_0D
	sCall Marble_Zone_Act_1_PSG2_0E
	sCall Marble_Zone_Act_1_PSG2_0F
	sJump Marble_Zone_Act_1_PSG2_Jump

Marble_Zone_Act_1_PSG3_00:
	sVolEnvPSG	fTone_02
	dc.b nA6, $06, $06, $18
	sVolEnvPSG	fTone_04
	dc.b $48
	; $6C
	sRet

Marble_Zone_Act_1_PSG3_01:
	sVolEnvPSG	fTone_02
	saVolPSG	$FC
	dc.b nA6, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $0C, $0C
	; $C0
	sRet

Marble_Zone_Act_1_PSG3_02:
	sVolEnvPSG	fTone_02
	dc.b nA6, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $0C, $0C
	; $C0
	sRet

Marble_Zone_Act_1_PSG3_05:
	sVolEnvPSG	fTone_02
	dc.b nA6, $06, $06, $06, $06
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $06, $06, $06, $06
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $06, $06, $06, $06
	sVolEnvPSG	fTone_04
	dc.b $0C
	sVolEnvPSG	fTone_02
	dc.b $06, $06, $06, $06
	; $C0
	sRet

Marble_Zone_Act_1_PSG3_09:
	dc.b sHold, $0C
	sVolEnvPSG	fTone_02
	dc.b nA6, $06, $12, $06, $12, $06, $12, $06
	sVolEnvPSG	fTone_04
	dc.b $12
	sVolEnvPSG	fTone_02
	dc.b $06, $12, $06, $12, $06, $12, $06
	sVolEnvPSG	fTone_04
	dc.b $06
	; $C0
	sRet

Marble_Zone_Act_1_PSG3_0E:
	dc.b sHold, $0C
	sVolEnvPSG	fTone_02
	dc.b nA6, $06, $12, $06, $12, $06, $12, $06, $06, $18
	sVolEnvPSG	fTone_04
	dc.b $48
	; $C0
	sRet

	; Failed to match pattern 01; ---------------------------------------------------------------------------

Marble_Zone_Act_1_PSG3:
	sNoisePSG	$E7
	sCall Marble_Zone_Act_1_PSG3_00
	sCall Marble_Zone_Act_1_PSG3_01

Marble_Zone_Act_1_PSG3_Jump:
	sCall Marble_Zone_Act_1_PSG3_02
	sCall Marble_Zone_Act_1_PSG3_02
	sCall Marble_Zone_Act_1_PSG3_02
	sCall Marble_Zone_Act_1_PSG3_05
	sCall Marble_Zone_Act_1_PSG3_05
	sCall Marble_Zone_Act_1_PSG3_05
	sCall Marble_Zone_Act_1_PSG3_05
	sCall Marble_Zone_Act_1_PSG3_09
	sCall Marble_Zone_Act_1_PSG3_09
	sCall Marble_Zone_Act_1_PSG3_09
	sCall Marble_Zone_Act_1_PSG3_09
	sCall Marble_Zone_Act_1_PSG3_09
	sCall Marble_Zone_Act_1_PSG3_0E
	sCall Marble_Zone_Act_1_PSG3_02
	sJump Marble_Zone_Act_1_PSG3_Jump
