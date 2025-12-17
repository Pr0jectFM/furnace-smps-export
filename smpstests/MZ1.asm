; ===========================================================================
; Name: Marble Zone Act 1
; Author: ProjectFM
; Album/Game: Sonic 1 Co-Op
; Given Tempo = 135.00 BPM
; Approximated Tempo = 135.00 BPM
; Loop Pattern = 01
; End Pattern = 0E
; End Place = 3F
; ===========================================================================
; Header
; ===========================================================================

Marble_Zone_Act_1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		Marble_Zone_Act_1_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$01, $0A	smpsHeaderDAC	Marble_Zone_Act_1_DAC
	smpsHeaderFM	Marble_Zone_Act_1_FM1,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM2,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM3,	$00, $00
	smpsHeaderFM	Marble_Zone_Act_1_FM4,	$00, $14
	smpsHeaderFM	Marble_Zone_Act_1_FM5,	$00, $12
	smpsHeaderPSG	Marble_Zone_Act_1_PSG1,	$F4, $07, $00, $00
	smpsHeaderPSG	Marble_Zone_Act_1_PSG2,	$F4, $07, $00, $00
	smpsHeaderPSG	Marble_Zone_Act_1_PSG3,	$F4, $04, $00, $00

; ===========================================================================
; Voices
; ===========================================================================

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

;	PSG Voice 03 -> fTone_02
;	vol:
;		dc.b $70, $70, $71, $74, $79, $7B, $7F
;	arp:
;		dc.b $60

;	PSG Voice 04 -> fTone_04
;	vol:
;		dc.b $70, $70, $70, $70, $71, $71, $72, $72, $73, $73, $74, $74, $75, $77, $79

;	PSG Voice 05 -> fTone_07
;	vol:
;		dc.b $71, $70, $70, $70, $70, $70, $71, $71, $71, $71, $71, $71, $72, $72, $72, $72
;		dc.b $72, $72, $73, $73, $73, $73, $73, $73, $74, $74, $74, $74, $74, $74, $75, $75
;		dc.b $75, $75, $75, $75, $76, $76, $76, $76, $76, $76, $77, $77, $77, $77, $77, $77
;		dc.b $78, $78, $78, $78, $78, $78, $7F

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

; ===========================================================================
; Pattern Data
; ===========================================================================

Marble_Zone_Act_1_FM1_00:
	dc.b smpsNoAttack, $3C
	smpsSetvoice	$00
	smpsPan		panLeft, $00
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $6C
	smpsReturn

Marble_Zone_Act_1_FM1_01:
	smpsSetvoice	$00
	smpsPan		panLeft, $00
	smpsAlterNote	$16
	dc.b nA4, $0C, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_02:
	smpsSetvoice	$00
	smpsAlterNote	$11
	dc.b nF4, $18
	smpsAlterNote	$14
	dc.b nG4, $0C
	smpsAlterNote	$10
	dc.b nDs4, $7F, smpsNoAttack, $11, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_03:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $0C, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, $18
	smpsAlterNote	$16
	dc.b nA4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_04:
	smpsSetvoice	$00
	smpsAlterNote	$10
	dc.b nDs4, $24
	smpsAlterNote	$0F
	dc.b nD4, $60, nRst, $0C
	smpsAlterNote	$14
	dc.b nG3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$14
	dc.b nG4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_05:
	smpsSetvoice	$00
	smpsAlterNote	$16
	dc.b nA4, $0C, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_07:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $48
	smpsAlterNote	$16
	dc.b nA4, $18
	smpsAlterNote	$13
	dc.b nFs4, $3C, nRst, $0C
	smpsAlterNote	$16
	dc.b nA4, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_08:
	smpsSetvoice	$00
	smpsAlterNote	$16
	dc.b nA4, $24
	smpsAlterNote	$14
	dc.b nG4, $7F, smpsNoAttack, $1D
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_09:
	dc.b nRst, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_0A:
	dc.b smpsNoAttack, $7F, smpsNoAttack, $11
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_0B:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$14
	dc.b nG4, $12, nRst, $06
	smpsAlterNote	$0F
	dc.b nD4, $0C
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_0C:
	smpsSetvoice	$00
	smpsAlterNote	$18
	dc.b nBb4, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD5
	smpsAlterNote	$11
	dc.b nF5
	smpsAlterNote	$0F
	dc.b nD5, $18
	smpsAlterNote	$0D
	dc.b nC5, $0C, nRst
	smpsAlterNote	$0F
	dc.b nD5
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$0F
	dc.b nD5, nRst, nD5
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_0D:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG5, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb5
	smpsAlterNote	$16
	dc.b nA5
	smpsAlterNote	$11
	dc.b nF5, $18
	smpsAlterNote	$14
	dc.b nG5, nRst, nG5, $0C
	smpsAlterNote	$11
	dc.b nF5
	smpsAlterNote	$0F
	dc.b nD5
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$14
	dc.b nG4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM1_0E:
	smpsSetvoice	$00
	smpsAlterNote	$0D
	dc.b nC5, $18, nRst, $0C
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$0F
	dc.b nD5, $18, nRst, $24
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; FM1 Data
Marble_Zone_Act_1_FM1:
	smpsCall Marble_Zone_Act_1_FM1_00

Marble_Zone_Act_1_FM1_Jump:
	smpsCall Marble_Zone_Act_1_FM1_01
	smpsCall Marble_Zone_Act_1_FM1_02
	smpsCall Marble_Zone_Act_1_FM1_03
	smpsCall Marble_Zone_Act_1_FM1_04
	smpsCall Marble_Zone_Act_1_FM1_05
	smpsCall Marble_Zone_Act_1_FM1_02
	smpsCall Marble_Zone_Act_1_FM1_07
	smpsCall Marble_Zone_Act_1_FM1_08
	smpsCall Marble_Zone_Act_1_FM1_09
	smpsCall Marble_Zone_Act_1_FM1_0A
	smpsCall Marble_Zone_Act_1_FM1_0B
	smpsCall Marble_Zone_Act_1_FM1_0C
	smpsCall Marble_Zone_Act_1_FM1_0D
	smpsCall Marble_Zone_Act_1_FM1_0E
	smpsJump Marble_Zone_Act_1_FM1_Jump
; ===========================================================================

Marble_Zone_Act_1_FM2_00:
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nD2, $06, $06, $0C, nRst, nD1, $48
	; $6C
	smpsReturn

Marble_Zone_Act_1_FM2_01:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG1, $0C, $0C
	smpsAlterNote	$0F
	dc.b nD2, nD2
	smpsAlterNote	$0D
	dc.b nC2, nC2
	smpsAlterNote	$0F
	dc.b nD2, nD2
	smpsAlterNote	$14
	dc.b nG1, nG1
	smpsAlterNote	$0F
	dc.b nD2, nD2
	smpsAlterNote	$0D
	dc.b nC2, nC2
	smpsAlterNote	$0F
	dc.b nD2, nD2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_02:
	smpsSetvoice	$01
	smpsAlterNote	$0D
	dc.b nC2, $0C, $0C
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$10
	dc.b nDs2, nDs2
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$0D
	dc.b nC2, nC2
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$10
	dc.b nDs2, nDs2
	smpsAlterNote	$14
	dc.b nG2, nG2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_03:
	smpsSetvoice	$01
	smpsAlterNote	$0F
	dc.b nD2, $0C, $0C
	smpsAlterNote	$16
	dc.b nA2, nA2
	smpsAlterNote	$11
	dc.b nF2, nF2
	smpsAlterNote	$16
	dc.b nA2, nA2
	smpsAlterNote	$10
	dc.b nDs2, nDs2
	smpsAlterNote	$18
	dc.b nBb2, nBb2
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$10
	dc.b nDs2, nDs2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_04:
	smpsSetvoice	$01
	smpsAlterNote	$0D
	dc.b nC2, $0C, $0C
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$10
	dc.b nDs2, nDs2
	smpsAlterNote	$14
	dc.b nG2, nG2
	smpsAlterNote	$0F
	dc.b nD2, nD2
	smpsAlterNote	$16
	dc.b nA2, nA2
	smpsAlterNote	$11
	dc.b nF2
	smpsAlterNote	$0F
	dc.b nD2
	smpsAlterNote	$18
	dc.b nBb1
	smpsAlterNote	$16
	dc.b nA1
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_05:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG1, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2, $24, nRst, $0C
	smpsAlterNote	$14
	dc.b nG1, $24, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2, nD2, $18
	smpsAlterNote	$18
	dc.b nBb1, $0C, nB1
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_06:
	smpsSetvoice	$01
	smpsAlterNote	$0D
	dc.b nC2, $18, nRst, $0C
	smpsAlterNote	$14
	dc.b nG2, $24, nRst, $0C
	smpsAlterNote	$0D
	dc.b nC2, $24, nRst, $0C
	smpsAlterNote	$14
	dc.b nG2, $24
	smpsAlterNote	$0D
	dc.b nC2, $0C
	smpsAlterNote	$0F
	dc.b nD2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_07:
	smpsSetvoice	$01
	smpsAlterNote	$10
	dc.b nDs2, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb2, $24, nRst, $0C
	smpsAlterNote	$10
	dc.b nDs2
	smpsAlterNote	$0F
	dc.b nD2, $18, nRst, $0C
	smpsAlterNote	$16
	dc.b nA2, $24
	smpsAlterNote	$11
	dc.b nF1, $0C
	smpsAlterNote	$13
	dc.b nFs1
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_08:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG1, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2, nD2, $18, nRst, $0C
	smpsAlterNote	$14
	dc.b nG2, nG2, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2, nD2, $18, nRst, $0C, nD2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_09:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG2, $18, nRst, $0C, nG2
	smpsAlterNote	$11
	dc.b nF2, $18, nRst, $0C, nF2
	smpsAlterNote	$10
	dc.b nDs2, $18, nRst, $0C, nDs2
	smpsAlterNote	$0F
	dc.b nD2, $18, nRst, $0C, nD2
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_0A:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG2, $18, nRst, $0C, nG2
	smpsAlterNote	$11
	dc.b nF2, $18, nRst, $0C, nF2
	smpsAlterNote	$10
	dc.b nDs2, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2
	smpsAlterNote	$10
	dc.b nDs2
	smpsAlterNote	$11
	dc.b nF2
	smpsAlterNote	$0F
	dc.b nD2
	smpsAlterNote	$18
	dc.b nBb1
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_0D:
	smpsSetvoice	$01
	smpsAlterNote	$14
	dc.b nG2, $18, nRst, $0C, nG2
	smpsAlterNote	$11
	dc.b nF2, $18, nRst, $0C, nF2
	smpsAlterNote	$10
	dc.b nDs2, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2
	smpsAlterNote	$11
	dc.b nF2
	smpsAlterNote	$0F
	dc.b nD2
	smpsAlterNote	$0D
	dc.b nC2
	smpsAlterNote	$18
	dc.b nBb1
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM2_0E:
	smpsSetvoice	$01
	smpsAlterNote	$0D
	dc.b nC2, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb1
	smpsAlterNote	$16
	dc.b nA1, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD2, $06, $06, $0C, nRst, nD1, $48
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; FM2 Data
Marble_Zone_Act_1_FM2:
	smpsCall Marble_Zone_Act_1_FM2_00

Marble_Zone_Act_1_FM2_Jump:
	smpsCall Marble_Zone_Act_1_FM2_01
	smpsCall Marble_Zone_Act_1_FM2_02
	smpsCall Marble_Zone_Act_1_FM2_03
	smpsCall Marble_Zone_Act_1_FM2_04
	smpsCall Marble_Zone_Act_1_FM2_05
	smpsCall Marble_Zone_Act_1_FM2_06
	smpsCall Marble_Zone_Act_1_FM2_07
	smpsCall Marble_Zone_Act_1_FM2_08
	smpsCall Marble_Zone_Act_1_FM2_09
	smpsCall Marble_Zone_Act_1_FM2_0A
	smpsCall Marble_Zone_Act_1_FM2_09
	smpsCall Marble_Zone_Act_1_FM2_0A
	smpsCall Marble_Zone_Act_1_FM2_0D
	smpsCall Marble_Zone_Act_1_FM2_0E
	smpsJump Marble_Zone_Act_1_FM2_Jump
; ===========================================================================

Marble_Zone_Act_1_FM3_00:
	dc.b smpsNoAttack, $3C
	smpsSetvoice	$00
	smpsModSet	$00, $01, $03, $04
	smpsPan		panRight, $00
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $6C
	smpsReturn

Marble_Zone_Act_1_FM3_01:
	smpsSetvoice	$00
	smpsPan		panRight, $00
	smpsAlterNote	$16
	dc.b nA4, $0C, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_02:
	smpsSetvoice	$00
	smpsAlterNote	$11
	dc.b nF4, $18
	smpsAlterNote	$14
	dc.b nG4, $0C
	smpsAlterNote	$10
	dc.b nDs4, $7F, smpsNoAttack, $11, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_03:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $0C, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, nRst, nG4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$14
	dc.b nG4, $18
	smpsAlterNote	$16
	dc.b nA4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_04:
	smpsSetvoice	$00
	smpsAlterNote	$10
	dc.b nDs4, $24
	smpsAlterNote	$0F
	dc.b nD4, $60, nRst, $0C
	smpsAlterNote	$14
	dc.b nG3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$14
	dc.b nG4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_05:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	smpsAlterNote	$16
	dc.b nA4, $0C, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4, nRst, nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$18
	dc.b nBb3, $09
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_06:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	smpsAlterNote	$11
	dc.b nF4, $18
	smpsAlterNote	$14
	dc.b nG4, $0C
	smpsAlterNote	$10
	dc.b nDs4, $7F, smpsNoAttack, $11, nRst, $09
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_07:
	dc.b smpsNoAttack, $03
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $48
	smpsAlterNote	$16
	dc.b nA4, $18
	smpsAlterNote	$13
	dc.b nFs4, $3C, nRst, $09
	smpsAlterNote	$16
	dc.b nA4, $0C, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_08:
	smpsSetvoice	$00
	smpsAlterNote	$16
	dc.b nA4, $24
	smpsAlterNote	$14
	dc.b nG4, $7F, smpsNoAttack, $1D
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_09:
	dc.b nRst, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_0A:
	dc.b smpsNoAttack, $7F, smpsNoAttack, $11
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_0B:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$14
	dc.b nG4, $12, nRst, $06
	smpsAlterNote	$0F
	dc.b nD4, $0C
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$16
	dc.b nA4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_0C:
	smpsSetvoice	$00
	smpsAlterNote	$14
	dc.b nG4, $18, nRst, $0C
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4, $18
	smpsAlterNote	$14
	dc.b nG4, $0C, nRst
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$14
	dc.b nG4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_0D:
	smpsSetvoice	$00
	smpsAlterNote	$0F
	dc.b nD5, $18, nRst, $0C, nD5
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$16
	dc.b nA4, $18
	smpsAlterNote	$18
	dc.b nBb4, nRst
	smpsAlterNote	$0F
	dc.b nD5, $0C
	smpsAlterNote	$0D
	dc.b nC5
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM3_0E:
	smpsSetvoice	$00
	smpsAlterNote	$10
	dc.b nDs4, $18, nRst, $0C
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$10
	dc.b nDs4
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$10
	dc.b nDs4
	smpsAlterNote	$13
	dc.b nFs4, $18, nRst, $24
	smpsAlterNote	$14
	dc.b nG3, $0C
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; FM3 Data
Marble_Zone_Act_1_FM3:
	smpsCall Marble_Zone_Act_1_FM3_00

Marble_Zone_Act_1_FM3_Jump:
	smpsCall Marble_Zone_Act_1_FM3_01
	smpsCall Marble_Zone_Act_1_FM3_02
	smpsCall Marble_Zone_Act_1_FM3_03
	smpsCall Marble_Zone_Act_1_FM3_04
	smpsCall Marble_Zone_Act_1_FM3_05
	smpsCall Marble_Zone_Act_1_FM3_06
	smpsCall Marble_Zone_Act_1_FM3_07
	smpsCall Marble_Zone_Act_1_FM3_08
	smpsCall Marble_Zone_Act_1_FM3_09
	smpsCall Marble_Zone_Act_1_FM3_0A
	smpsCall Marble_Zone_Act_1_FM3_0B
	smpsCall Marble_Zone_Act_1_FM3_0C
	smpsCall Marble_Zone_Act_1_FM3_0D
	smpsCall Marble_Zone_Act_1_FM3_0E
	smpsJump Marble_Zone_Act_1_FM3_Jump
; ===========================================================================

Marble_Zone_Act_1_FM4_00:
	smpsSetvoice	$04
	smpsAlterNote	$0F
	dc.b nD3, $06, $06, $0C, nRst, nD2, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F0
	smpsPan		panLeft, $00
	smpsAlterNote	$11
	dc.b nF4, $0C
	; $6C
	smpsReturn

Marble_Zone_Act_1_FM4_01:
	smpsAlterVol	$FC
	dc.b nRst, $0C
	smpsAlterNote	$11
	dc.b nF4, $09, nRst, $03
	smpsAlterNote	$14
	dc.b nG4, $15, nRst, $03
	smpsAlterNote	$11
	dc.b nF4, $18, nRst, $0C, nF4, nRst, nF4, $09, nRst, $03
	smpsAlterNote	$14
	dc.b nG4, $15, nRst, $03
	smpsAlterNote	$11
	dc.b nF4, $24, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_02:
	dc.b smpsNoAttack, $18
	smpsAlterNote	$14
	dc.b nG4, $09, nRst, $1B, nG4, $0C, nRst, $30, nG4, $09, nRst, $1B, nG4, $0C, nRst
	smpsAlterNote	$0D
	dc.b nC4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_03:
	dc.b nRst, $0C
	smpsAlterNote	$10
	dc.b nDs4, $09, nRst, $03
	smpsAlterNote	$11
	dc.b nF4, $15, nRst, $03
	smpsAlterNote	$10
	dc.b nDs4, $18, nRst, $0C, nDs4, nRst, nDs4, $09, nRst, $03
	smpsAlterNote	$11
	dc.b nF4, $15, nRst, $03
	smpsAlterNote	$10
	dc.b nDs4, $24, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_04:
	dc.b smpsNoAttack, $18
	smpsAlterNote	$0F
	dc.b nD4, $09, nRst, $1B, nD4, $0C, nRst, $30
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsPan		panRight, $00
	dc.b nD3, $18
	smpsAlterNote	$14
	dc.b nG3
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_05:
	smpsSetvoice	$02
	smpsAlterNote	$0F
	dc.b nD4, $78
	smpsAlterNote	$14
	dc.b nG4, $0C
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$16
	dc.b nA4
	smpsAlterNote	$11
	dc.b nF4
	smpsAlterNote	$0F
	dc.b nD4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_06:
	smpsSetvoice	$02
	smpsAlterNote	$10
	dc.b nDs4, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_07:
	smpsSetvoice	$02
	smpsAlterNote	$10
	dc.b nDs5, $24
	smpsAlterNote	$18
	dc.b nBb4
	smpsAlterNote	$14
	dc.b nG4, $18
	smpsAlterNote	$0F
	dc.b nD5, $48, nD4, $18
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_08:
	smpsSetvoice	$02
	smpsAlterNote	$14
	dc.b nG4, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_09:
	dc.b nRst, $0C
	smpsSetvoice	$00
	smpsModOff
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_0A:
	dc.b smpsNoAttack, $0C
	smpsSetvoice	$00
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_0C:
	dc.b smpsNoAttack, $0C
	smpsSetvoice	$00
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $2A
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	smpsAlterNote	$14
	dc.b nG4, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_0D:
	smpsSetvoice	$02
	smpsAlterVol	$FE
	smpsAlterNote	$0F
	dc.b nD5, $24, $0C
	smpsAlterNote	$0D
	dc.b nC5, $24, $0C
	smpsAlterNote	$18
	dc.b nBb4, $24, $0C
	smpsAlterNote	$16
	dc.b nA4, $24
	smpsAlterNote	$11
	dc.b nF4, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM4_0E:
	smpsSetvoice	$02
	smpsAlterNote	$10
	dc.b nDs4, $24, $0C
	smpsAlterNote	$0D
	dc.b nC4, $24
	smpsSetvoice	$04
	smpsModOff
	smpsAlterVol	$14
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nD3, $06, $06, $0C, nRst, nD2, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F0
	smpsPan		panLeft, $00
	smpsAlterNote	$11
	dc.b nF4, $0C
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; FM4 Data
Marble_Zone_Act_1_FM4:
	smpsCall Marble_Zone_Act_1_FM4_00

Marble_Zone_Act_1_FM4_Jump:
	smpsCall Marble_Zone_Act_1_FM4_01
	smpsCall Marble_Zone_Act_1_FM4_02
	smpsCall Marble_Zone_Act_1_FM4_03
	smpsCall Marble_Zone_Act_1_FM4_04
	smpsCall Marble_Zone_Act_1_FM4_05
	smpsCall Marble_Zone_Act_1_FM4_06
	smpsCall Marble_Zone_Act_1_FM4_07
	smpsCall Marble_Zone_Act_1_FM4_08
	smpsCall Marble_Zone_Act_1_FM4_09
	smpsCall Marble_Zone_Act_1_FM4_0A
	smpsCall Marble_Zone_Act_1_FM4_0A
	smpsCall Marble_Zone_Act_1_FM4_0C
	smpsCall Marble_Zone_Act_1_FM4_0D
	smpsCall Marble_Zone_Act_1_FM4_0E
	smpsJump Marble_Zone_Act_1_FM4_Jump
; ===========================================================================

Marble_Zone_Act_1_FM5_00:
	smpsSetvoice	$05
	smpsAlterNote	$0F
	dc.b nD5, $06, $06, $0C, nRst, nD4, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F2
	smpsPan		panRight, $00
	smpsAlterNote	$16
	dc.b nA4, $0C
	; $6C
	smpsReturn

Marble_Zone_Act_1_FM5_01:
	smpsAlterVol	$FC
	dc.b nRst, $0C
	smpsSetvoice	$02
	smpsAlterNote	$16
	dc.b nA4, $09, nRst, $03
	smpsAlterNote	$18
	dc.b nBb4, $15, nRst, $03
	smpsAlterNote	$16
	dc.b nA4, $18, nRst, $0C, nA4, nRst, nA4, $09, nRst, $03
	smpsAlterNote	$18
	dc.b nBb4, $15, nRst, $03
	smpsAlterNote	$16
	dc.b nA4, $24, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_02:
	dc.b smpsNoAttack, $18
	smpsAlterNote	$18
	dc.b nBb4, $09, nRst, $1B, nBb4, $0C, nRst, $30, nBb4, $09, nRst, $1B, nBb4, $0C, nRst
	smpsAlterNote	$10
	dc.b nDs4
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_03:
	dc.b nRst, $0C
	smpsAlterNote	$14
	dc.b nG4, $09, nRst, $03
	smpsAlterNote	$16
	dc.b nA4, $15, nRst, $03
	smpsAlterNote	$14
	dc.b nG4, $18, nRst, $0C, nG4, nRst, nG4, $09, nRst, $03
	smpsAlterNote	$16
	dc.b nA4, $15, nRst, $03
	smpsAlterNote	$14
	dc.b nG4, $24, nRst, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_04:
	dc.b smpsNoAttack, $18
	smpsAlterNote	$11
	dc.b nF4, $09, nRst, $1B, nF4, $0C, nRst, $30
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$04
	smpsPan		panLeft, $00
	smpsAlterNote	$0F
	dc.b nD3, $18
	smpsAlterNote	$14
	dc.b nG3
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_05:
	smpsSetvoice	$02
	smpsAlterVol	$FC
	smpsAlterNote	$14
	dc.b nG3, $78
	smpsAlterNote	$0F
	dc.b nD4, $0C
	smpsAlterNote	$0D
	dc.b nC4
	smpsAlterNote	$18
	dc.b nBb3
	smpsAlterNote	$0D
	dc.b nC4
	smpsAlterNote	$0F
	dc.b nD4
	smpsAlterNote	$18
	dc.b nBb3
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_06:
	smpsSetvoice	$02
	smpsAlterNote	$0D
	dc.b nC4, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_07:
	smpsSetvoice	$02
	smpsAlterNote	$18
	dc.b nBb4, $24
	smpsAlterNote	$14
	dc.b nG4
	smpsAlterNote	$0F
	dc.b nD4, $18
	smpsAlterNote	$16
	dc.b nA4, $48
	smpsAlterNote	$18
	dc.b nBb3, $18
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_08:
	smpsSetvoice	$02
	smpsAlterNote	$0F
	dc.b nD4, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_09:
	dc.b nRst, $18, $0C
	smpsSetvoice	$00
	smpsModOff
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_0A:
	smpsSetvoice	$00
	smpsAlterNote	$11
	dc.b nF4, $06, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_0C:
	smpsSetvoice	$00
	smpsAlterNote	$11
	dc.b nF4, $06, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$18
	dc.b nBb4, $06, nRst
	smpsAlterNote	$14
	dc.b nG4, nRst
	smpsAlterNote	$0F
	dc.b nD4, nRst, $12
	smpsAlterNote	$16
	dc.b nA4, $06, nRst
	smpsAlterNote	$11
	dc.b nF4, nRst
	smpsAlterNote	$0D
	dc.b nC4, nRst, $12
	smpsAlterNote	$14
	dc.b nG4, $06, nRst
	smpsAlterNote	$10
	dc.b nDs4, nRst
	smpsAlterNote	$18
	dc.b nBb3, nRst, $12
	smpsSetvoice	$02
	smpsModSet	$00, $01, $02, $04
	smpsAlterVol	$02
	smpsAlterNote	$0F
	dc.b nD4, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_0D:
	smpsSetvoice	$02
	smpsAlterVol	$FE
	smpsAlterNote	$14
	dc.b nG4, $24, $0C
	smpsAlterNote	$11
	dc.b nF4, $24, $0C
	smpsAlterNote	$10
	dc.b nDs4, $24, $0C
	smpsAlterNote	$11
	dc.b nF4, $24
	smpsAlterNote	$18
	dc.b nBb3, $0C
	; $C0
	smpsReturn

Marble_Zone_Act_1_FM5_0E:
	smpsSetvoice	$02
	smpsAlterNote	$0D
	dc.b nC4, $24, $0C
	smpsAlterNote	$14
	dc.b nG3, $24
	smpsSetvoice	$05
	smpsModOff
	smpsAlterVol	$12
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nD5, $06, $06, $0C, nRst, nD4, $3C
	smpsSetvoice	$02
	smpsAlterVol	$F2
	smpsPan		panRight, $00
	smpsAlterNote	$16
	dc.b nA4, $0C
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; FM5 Data
Marble_Zone_Act_1_FM5:
	smpsCall Marble_Zone_Act_1_FM5_00

Marble_Zone_Act_1_FM5_Jump:
	smpsCall Marble_Zone_Act_1_FM5_01
	smpsCall Marble_Zone_Act_1_FM5_02
	smpsCall Marble_Zone_Act_1_FM5_03
	smpsCall Marble_Zone_Act_1_FM5_04
	smpsCall Marble_Zone_Act_1_FM5_05
	smpsCall Marble_Zone_Act_1_FM5_06
	smpsCall Marble_Zone_Act_1_FM5_07
	smpsCall Marble_Zone_Act_1_FM5_08
	smpsCall Marble_Zone_Act_1_FM5_09
	smpsCall Marble_Zone_Act_1_FM5_0A
	smpsCall Marble_Zone_Act_1_FM5_0A
	smpsCall Marble_Zone_Act_1_FM5_0C
	smpsCall Marble_Zone_Act_1_FM5_0D
	smpsCall Marble_Zone_Act_1_FM5_0E
	smpsJump Marble_Zone_Act_1_FM5_Jump
; ===========================================================================

Marble_Zone_Act_1_DAC_00:
	dc.b nCs0, $06, $06, $18, nC0, nC0, nC0
	; $6C
	smpsReturn

Marble_Zone_Act_1_DAC_01:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $18, $18
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_04:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $0C, $0C, nCs0, nC0, $06, nCs0
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_05:
	dc.b nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0, nC0, $12, $06, nCs0
	dc.b $0C, nC0, nC0, $12, $06, nCs0, $0C, nC0
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_08:
	dc.b nC0, $18, $18, $18, $18, $18, $18, $12, $06, nCs0, $0C, nC0, $06, nCs0
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_09:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nC0
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_0A:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nC0, nC0, $18, nCs0, $0C, nC0, $18
	dc.b nD0, $0C, nCs0, nD0
	; $C0
	smpsReturn

Marble_Zone_Act_1_DAC_0E:
	dc.b nC0, $18, nCs0, $0C, nC0, $18, nD0, $0C, nCs0, nCs0, $06, $06, $18, nC0, nC0, nC0
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; DAC Data
Marble_Zone_Act_1_DAC:
	smpsCall Marble_Zone_Act_1_DAC_00

Marble_Zone_Act_1_DAC_Jump:
	smpsCall Marble_Zone_Act_1_DAC_01
	smpsCall Marble_Zone_Act_1_DAC_01
	smpsCall Marble_Zone_Act_1_DAC_01
	smpsCall Marble_Zone_Act_1_DAC_04
	smpsCall Marble_Zone_Act_1_DAC_05
	smpsCall Marble_Zone_Act_1_DAC_05
	smpsCall Marble_Zone_Act_1_DAC_05
	smpsCall Marble_Zone_Act_1_DAC_08
	smpsCall Marble_Zone_Act_1_DAC_09
	smpsCall Marble_Zone_Act_1_DAC_0A
	smpsCall Marble_Zone_Act_1_DAC_09
	smpsCall Marble_Zone_Act_1_DAC_0A
	smpsCall Marble_Zone_Act_1_DAC_09
	smpsCall Marble_Zone_Act_1_DAC_0E
	smpsJump Marble_Zone_Act_1_DAC_Jump
; ===========================================================================

Marble_Zone_Act_1_PSG1_00:
	dc.b smpsNoAttack, $6C
	; $6C
	smpsReturn

Marble_Zone_Act_1_PSG1_01:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	dc.b nRst, $0F
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_02:
	dc.b smpsNoAttack, $69
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$01
	smpsAlterNote	$FE
	dc.b nC4, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_03:
	dc.b smpsNoAttack, $03
	smpsPSGAlterVol	$F8
	smpsAlterNote	$F7
	dc.b nC2, $06, nRst, $7F, smpsNoAttack, $38
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_04:
	dc.b smpsNoAttack, $54
	smpsPSGvoice	fTone_07
	smpsModOff
	smpsPSGAlterVol	$07
	smpsAlterNote	$FE
	dc.b nBb3, $18, $0C
	smpsAlterNote	$FD
	dc.b nG3, $18, nFs3, $0C, nD3, $12, nRst, $09
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$03
	smpsAlterNote	$FB
	dc.b nBb2, $06
	smpsAlterNote	$FD
	dc.b nD3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_05:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$F6
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsPSGAlterVol	$09
	smpsAlterNote	$FE
	dc.b nBb3
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F4
	dc.b nG1
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$FD
	dc.b nD3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_06:
	dc.b smpsNoAttack, $03
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$F7
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FE
	dc.b nC4
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F4
	dc.b nG1
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3, nDs3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3, nDs3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_07:
	smpsPSGvoice	fTone_07
	smpsModOff
	smpsPSGAlterVol	$05
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$F6
	dc.b nBb1, nA1
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FA
	dc.b nFs2
	smpsAlterNote	$FB
	dc.b nA2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FA
	dc.b nFs2
	smpsAlterNote	$FB
	dc.b nA2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FA
	dc.b nFs2
	smpsAlterNote	$FB
	dc.b nA2
	smpsAlterNote	$FD
	dc.b nD3, nFs3
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$02
	dc.b nD3, $18
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_08:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$F9
	smpsAlterNote	$F7
	dc.b nC2, $24
	smpsAlterNote	$F6
	dc.b nBb1, $7F, smpsNoAttack, $1D
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_09:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$09
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_0A:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$F7
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_0B:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_0D:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nD3
	smpsAlterNote	$FB
	dc.b nBb2
	smpsAlterNote	$FD
	dc.b nF3, $03
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG1_0E:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FC
	dc.b nC3, $0C, nDs3, $06, nC3, nDs3, $0C, nC3
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nD3, nRst, $4B
	; $C0
	smpsReturn

	; Failed match: 01 because of id 8
	;	FD 00
	; Failed match: 01 because of id 9
	;	05 FFFFFFFF
	; Failed to match pattern 01
Marble_Zone_Act_1_PSG1_0F:
	dc.b smpsNoAttack, $09
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$07
	dc.b nRst, $0F
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; PSG1 Data
Marble_Zone_Act_1_PSG1:
	smpsCall Marble_Zone_Act_1_PSG1_00
	smpsCall Marble_Zone_Act_1_PSG1_01

Marble_Zone_Act_1_PSG1_Jump:
	smpsCall Marble_Zone_Act_1_PSG1_02
	smpsCall Marble_Zone_Act_1_PSG1_03
	smpsCall Marble_Zone_Act_1_PSG1_04
	smpsCall Marble_Zone_Act_1_PSG1_05
	smpsCall Marble_Zone_Act_1_PSG1_06
	smpsCall Marble_Zone_Act_1_PSG1_07
	smpsCall Marble_Zone_Act_1_PSG1_08
	smpsCall Marble_Zone_Act_1_PSG1_09
	smpsCall Marble_Zone_Act_1_PSG1_0A
	smpsCall Marble_Zone_Act_1_PSG1_0B
	smpsCall Marble_Zone_Act_1_PSG1_0B
	smpsCall Marble_Zone_Act_1_PSG1_0D
	smpsCall Marble_Zone_Act_1_PSG1_0E
	smpsCall Marble_Zone_Act_1_PSG1_0F
	smpsJump Marble_Zone_Act_1_PSG1_Jump
; ===========================================================================

Marble_Zone_Act_1_PSG2_00:
	dc.b smpsNoAttack, $6C
	; $6C
	smpsReturn

Marble_Zone_Act_1_PSG2_01:
	smpsPSGvoice	fTone_07
	dc.b nRst, $18
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_02:
	dc.b smpsNoAttack, $60
	smpsPSGAlterVol	$FE
	smpsAlterNote	$FE
	dc.b nC4, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$F7
	dc.b nC2
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_03:
	smpsPSGAlterVol	$FB
	dc.b nRst, $7F, smpsNoAttack, $41
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_04:
	dc.b smpsNoAttack, $54
	smpsPSGvoice	fTone_07
	smpsModOff
	smpsPSGAlterVol	$05
	smpsAlterNote	$FE
	dc.b nDs4, $18, $0C, nC4, $18, nA3, $0C
	smpsAlterNote	$FD
	dc.b nFs3, $12
	smpsPSGAlterVol	$01
	smpsAlterNote	$FB
	dc.b nBb2, $06
	smpsAlterNote	$FD
	dc.b nD3, nG3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_05:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$FF
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2
	smpsAlterNote	$FD
	dc.b nG3, nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F4
	dc.b nG1
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F6
	dc.b nBb1
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$F8
	dc.b nD2
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nG2, nBb2
	smpsAlterNote	$FD
	dc.b nD3, nG3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_06:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$FB
	smpsAlterNote	$FE
	dc.b nC4, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nDs3, nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F4
	dc.b nG1
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$F7
	dc.b nC2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3, nDs3
	smpsAlterNote	$FB
	dc.b nG2
	smpsAlterNote	$FC
	dc.b nC3, nDs3
	smpsAlterNote	$FD
	dc.b nG3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_07:
	smpsPSGvoice	fTone_07
	smpsModSet	$00, $01, $01, $03
	smpsPSGAlterVol	$07
	smpsAlterNote	$FC
	dc.b nDs3, $48
	smpsAlterNote	$FD
	dc.b nF3, $18, nD3, $48
	smpsAlterNote	$FB
	dc.b nBb2, $18
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_08:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$F9
	smpsAlterNote	$F8
	dc.b nDs2, $24, nD2, $7F, smpsNoAttack, $1D
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_09:
	smpsPSGvoice	fTone_07
	smpsModOff
	smpsPSGAlterVol	$05
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_0A:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$FB
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_0B:
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_0D:
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FE
	dc.b nBb3, $06
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nBb3, $0C
	smpsAlterNote	$FD
	dc.b nG3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FD
	dc.b nF3
	smpsAlterNote	$FC
	dc.b nC3
	smpsAlterNote	$FE
	dc.b nA3
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $06
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nG3, $0C
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nF3, nD3
	smpsAlterNote	$FB
	dc.b nBb2
	smpsAlterNote	$FD
	dc.b nF3
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG2_0E:
	smpsPSGvoice	fTone_07
	smpsAlterNote	$FC
	dc.b nC3, $0C, nDs3, $06, nC3, nDs3, $0C, nC3
	smpsAlterNote	$FD
	dc.b nD3
	smpsAlterNote	$FB
	dc.b nBb2, nG2
	smpsAlterNote	$FC
	dc.b nDs3
	smpsAlterNote	$FD
	dc.b nD3, nRst, $54
	; $C0
	smpsReturn

	; Failed match: 01 because of id 8
	;	FD 00
	; Failed match: 01 because of id 9
	;	05 FFFFFFFF
	; Failed to match pattern 01
Marble_Zone_Act_1_PSG2_0F:
	smpsPSGvoice	fTone_07
	smpsPSGAlterVol	$07
	dc.b nRst, $18
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $29
	; $C0
	smpsReturn
; ---------------------------------------------------------------------------

; PSG2 Data
Marble_Zone_Act_1_PSG2:
	smpsCall Marble_Zone_Act_1_PSG2_00
	smpsCall Marble_Zone_Act_1_PSG2_01

Marble_Zone_Act_1_PSG2_Jump:
	smpsCall Marble_Zone_Act_1_PSG2_02
	smpsCall Marble_Zone_Act_1_PSG2_03
	smpsCall Marble_Zone_Act_1_PSG2_04
	smpsCall Marble_Zone_Act_1_PSG2_05
	smpsCall Marble_Zone_Act_1_PSG2_06
	smpsCall Marble_Zone_Act_1_PSG2_07
	smpsCall Marble_Zone_Act_1_PSG2_08
	smpsCall Marble_Zone_Act_1_PSG2_09
	smpsCall Marble_Zone_Act_1_PSG2_0A
	smpsCall Marble_Zone_Act_1_PSG2_0B
	smpsCall Marble_Zone_Act_1_PSG2_0B
	smpsCall Marble_Zone_Act_1_PSG2_0D
	smpsCall Marble_Zone_Act_1_PSG2_0E
	smpsCall Marble_Zone_Act_1_PSG2_0F
	smpsJump Marble_Zone_Act_1_PSG2_Jump
; ===========================================================================

Marble_Zone_Act_1_PSG3_00:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $06, $06, $18
	smpsPSGvoice	fTone_04
	dc.b $48
	; $6C
	smpsReturn

Marble_Zone_Act_1_PSG3_01:
	smpsPSGvoice	fTone_02
	smpsPSGAlterVol	$FC
	dc.b nMaxPSG+12, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C
	; $C0
	smpsReturn

	; Failed match: 01 because of id 8
	;	9C 8C
	; Failed match: 01 because of id 9
	;	03 04
Marble_Zone_Act_1_PSG3_02:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C
	; $C0
	smpsReturn

	; Failed match: 01 because of id 8
	;	9C 8C
	; Failed match: 01 because of id 9
	;	03 04
	; Failed match: 01 because of id 8
	;	9C 8C
	; Failed match: 01 because of id 9
	;	03 04
Marble_Zone_Act_1_PSG3_05:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $06, $06, $06, $06
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $06, $06, $06, $06
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $06, $06, $06, $06
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $06, $06, $06, $06
	; $C0
	smpsReturn

Marble_Zone_Act_1_PSG3_09:
	dc.b smpsNoAttack, $0C
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04
	dc.b $12
	smpsPSGvoice	fTone_02
	dc.b $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04
	dc.b $06
	; $C0
	smpsReturn

	; Failed match: 09 because of id 8
	;	8C 9C
	; Failed match: 09 because of id 9
	;	04 03
Marble_Zone_Act_1_PSG3_0A:
	dc.b smpsNoAttack, $0C
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04
	dc.b $12
	smpsPSGvoice	fTone_02
	dc.b $06, $12, $06, $12, $06, $12, $06
	smpsPSGvoice	fTone_04
	dc.b $06
	; $C0
	smpsReturn

	; Failed match: 09 because of id 8
	;	8C 9C
	; Failed match: 09 because of id 9
	;	04 03
	; Failed match: 09 because of id 8
	;	8C 9C
	; Failed match: 09 because of id 9
	;	04 03
	; Failed match: 09 because of id 8
	;	8C 9C
	; Failed match: 09 because of id 9
	;	04 03
Marble_Zone_Act_1_PSG3_0E:
	dc.b smpsNoAttack, $0C
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $06, $12, $06, $12, $06, $12, $06, $06, $18
	smpsPSGvoice	fTone_04
	dc.b $48
	; $C0
	smpsReturn

	; Failed match: 02 because of id 8
	;	8C 9C
	; Failed match: 02 because of id 9
	;	04 03
	; Failed match: 03 because of id 8
	;	8C 9C
	; Failed match: 03 because of id 9
	;	04 03
	; Failed match: 04 because of id 8
	;	8C 9C
	; Failed match: 04 because of id 9
	;	04 03
	; Failed to match pattern 01
Marble_Zone_Act_1_PSG3_0F:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG+12, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	fTone_04
	dc.b $0C
	smpsPSGvoice	fTone_02
	dc.b $0C, $0C
	; $C0
	smpsReturn

	; Failed match: 01 because of id 8
	;	9C 8C
	; Failed match: 01 because of id 9
	;	03 04; ---------------------------------------------------------------------------

; PSG3 Data
Marble_Zone_Act_1_PSG3:
	smpsPSGform	$E7
	smpsCall Marble_Zone_Act_1_PSG3_00
	smpsCall Marble_Zone_Act_1_PSG3_01

Marble_Zone_Act_1_PSG3_Jump:
	smpsCall Marble_Zone_Act_1_PSG3_02
	smpsCall Marble_Zone_Act_1_PSG3_02
	smpsCall Marble_Zone_Act_1_PSG3_02
	smpsCall Marble_Zone_Act_1_PSG3_05
	smpsCall Marble_Zone_Act_1_PSG3_05
	smpsCall Marble_Zone_Act_1_PSG3_05
	smpsCall Marble_Zone_Act_1_PSG3_05
	smpsCall Marble_Zone_Act_1_PSG3_09
	smpsCall Marble_Zone_Act_1_PSG3_0A
	smpsCall Marble_Zone_Act_1_PSG3_0A
	smpsCall Marble_Zone_Act_1_PSG3_0A
	smpsCall Marble_Zone_Act_1_PSG3_0A
	smpsCall Marble_Zone_Act_1_PSG3_0E
	smpsCall Marble_Zone_Act_1_PSG3_0F
	smpsJump Marble_Zone_Act_1_PSG3_Jump
