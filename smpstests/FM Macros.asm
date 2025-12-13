; ===========================================================================
; Name: FM Macros
; Author: ProjectFM
; Given Tempo = 150.00 BPM
; Approximated Tempo = 150.00 BPM
; Loop Pattern = 00
; End Pattern = 02
; End Place = 10
; ===========================================================================
; Header
; ===========================================================================

FM_Macros_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		FM_Macros_Voices
	smpsHeaderChan		$02, $01
	smpsHeaderTempo		$01, $00	smpsHeaderDAC	FM_Macros_DAC
	smpsHeaderFM	FM_Macros_FM1,	$00, $00
	smpsHeaderPSG	FM_Macros_PSG1,	$F4, $00, $00, $00

; ===========================================================================
; Voices
; ===========================================================================

FM_Macros_Voices:
;	FM Voice 00 -> 00: Instrument 0
	smpsVcAlgorithm		$00
	smpsVcFeedback		$00
	smpsVcDetune		$00, $00, $00, $00
	smpsVcCoarseFreq	$00, $00, $00, $00
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$1F, $1F, $1F, $1F
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$00, $00, $00, $00
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $0F, $10, $7F
;	vol:
;		dc.b $01, $0A, $11, $17, $1B, $24, $22, $1F, $1C, $1A, $18, $11, $0F, $11, $15, $23
;		dc.b $38, $3C, $3E, $40, $43, $43, $43, $40, $35, $20, $08, $00, $00, $00, $00, $01
;		dc.b $02, $03, $05, $07, $08, $09, $0A, $0B
;	arp:
;		dc.b $03, $04, $06, $07, $07, $07, $07, $07, $06, $04, $03, $01, $FE, $FD, $FC, $FB
;		dc.b $FA, $FA, $FA, $FA, $FB, $FB, $FC, $FD, $FE, $00, $00, $00, $00, $00
;	pitch:
;		dc.b $12, $16, $1A, $1E, $20, $22, $25, $27, $2A, $2D, $2F, $32, $34, $36, $39, $3E
;		dc.b $40, $40, $3E, $38, $32, $31, $2F, $2E, $2C, $2A, $23, $1E, $18, $13, $10, $0D
;		dc.b $0A, $08, $06, $06, $06, $06, $09, $0C
;	panL:
;		dc.b $02, $02, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01
;		dc.b $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
;		dc.b $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
;		dc.b $03, $03, $03, $03, $03, $02, $02

;	PSG Voice 01 -> fTone_00
;	arp:
;		dc.b $03, $04, $06, $07, $07, $07, $07, $07, $06, $04, $03, $01, $FE, $FD, $FC, $FB
;		dc.b $FA, $FA, $FA, $FA, $FB, $FB, $FC, $FD, $FE, $00, $00, $00, $00, $00
;	pitch:
;		dc.b $12, $16, $1A, $1E, $20, $22, $25, $27, $2A, $2D, $2F, $32, $34, $36, $39, $3E
;		dc.b $40, $40, $3E, $38, $32, $31, $2F, $2E, $2C, $2A, $23, $1E, $18, $13, $10, $0D
;		dc.b $0A, $08, $06, $06, $06, $06, $09, $0C

; ===========================================================================
; Pattern Data
; ===========================================================================

FM_Macros_FM1_00:
	smpsSetvoice	$00
	smpsAlterVol	$01
	smpsPan		panLeft, $00
	smpsAlterNote	$07
	dc.b nDs4, $01
	smpsAlterVol	$09
	smpsAlterNote	$08
	dc.b nE4
	smpsAlterVol	$07
	smpsAlterNote	$0C
	dc.b nFs4
	smpsAlterVol	$06
	smpsAlterNote	$0D
	dc.b nG4
	smpsAlterVol	$04
	smpsAlterNote	$0E
	dc.b nG4
	smpsAlterVol	$09
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nG4
	smpsAlterVol	$FE
	smpsAlterNote	$10
	dc.b nG4
	smpsAlterVol	$FD
	smpsAlterNote	$11
	dc.b nG4
	smpsAlterVol	$FD
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterVol	$FE
	smpsAlterNote	$11
	dc.b nE4
	smpsAlterVol	$FE
	dc.b nDs4
	smpsAlterVol	$F9
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterVol	$FE
	smpsAlterNote	$11
	dc.b nD3
	smpsAlterVol	$02
	dc.b nCs3
	smpsAlterVol	$04
	dc.b nC3
	smpsAlterVol	$0E
	smpsPan		panRight, $00
	smpsAlterNote	$22
	dc.b nB3
	smpsAlterVol	$15
	smpsAlterNote	$DD
	dc.b nB3
	smpsAlterVol	$04
	dc.b nB3
	smpsAlterVol	$02
	smpsAlterNote	$22
	dc.b nBb3
	smpsAlterVol	$02
	smpsAlterNote	$1F
	dc.b nBb3
	smpsAlterVol	$03
	smpsAlterNote	$1B
	dc.b nB3, nB3
	smpsAlterNote	$0E
	dc.b nC3
	smpsAlterVol	$FD
	smpsAlterNote	$0F
	dc.b nCs3
	smpsAlterVol	$F5
	smpsAlterNote	$0E
	dc.b nD3
	smpsAlterVol	$EB
	smpsAlterNote	$0C
	dc.b nC4
	smpsAlterVol	$E8
	smpsAlterNote	$0A
	dc.b nC4
	smpsAlterVol	$F8
	smpsAlterNote	$09
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$07
	dc.b nC4
	smpsAlterNote	$06
	dc.b nC4
	smpsAlterNote	$05
	dc.b nC4
	smpsAlterVol	$01
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00
	dc.b smpsNoAttack, $1F, nRst, $0C
	; $60
	smpsReturn

FM_Macros_FM1_01:
	dc.b smpsNoAttack, $18
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panLeft, $00
	smpsAlterNote	$07
	dc.b nF4, $01
	smpsAlterVol	$09
	smpsAlterNote	$0A
	dc.b nFs4
	smpsAlterVol	$07
	smpsAlterNote	$0C
	dc.b nAb4
	smpsAlterVol	$06
	smpsAlterNote	$0F
	dc.b nA4
	smpsAlterVol	$04
	smpsAlterNote	$10
	dc.b nA4
	smpsAlterVol	$09
	smpsPan		panCenter, $00
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterVol	$FE
	smpsAlterNote	$12
	dc.b nA4
	smpsAlterVol	$FD
	smpsAlterNote	$13
	dc.b nA4
	smpsAlterVol	$FD
	smpsAlterNote	$14
	dc.b nAb4
	smpsAlterVol	$FE
	smpsAlterNote	$13
	dc.b nFs4
	smpsAlterVol	$FE
	smpsAlterNote	$12
	dc.b nF4
	smpsAlterVol	$F9
	dc.b nDs4
	smpsAlterVol	$FE
	smpsAlterNote	$14
	dc.b nE4
	smpsAlterVol	$02
	dc.b nDs3
	smpsAlterVol	$04
	smpsAlterNote	$13
	dc.b nD3
	smpsAlterVol	$0E
	smpsPan		panRight, $00
	smpsAlterNote	$14
	dc.b nCs3
	smpsAlterVol	$15
	smpsAlterNote	$ED
	dc.b nCs3
	smpsAlterVol	$04
	dc.b nCs3
	smpsAlterVol	$02
	smpsAlterNote	$12
	dc.b nC3
	smpsAlterVol	$02
	smpsAlterNote	$10
	dc.b nC3
	smpsAlterVol	$03
	dc.b nCs3, nCs3
	smpsAlterNote	$0F
	dc.b nD3
	smpsAlterVol	$FD
	smpsAlterNote	$11
	dc.b nDs3
	smpsAlterVol	$F5
	dc.b nE4
	smpsAlterVol	$EB
	smpsAlterNote	$0E
	dc.b nD4
	smpsAlterVol	$E8
	smpsAlterNote	$0B
	dc.b nD4
	smpsAlterVol	$F8
	smpsAlterNote	$0A
	dc.b nD4
	smpsPan		panCenter, $00
	smpsAlterNote	$08
	dc.b nD4
	smpsAlterNote	$06
	dc.b nD4
	smpsAlterNote	$05
	dc.b nD4
	smpsAlterVol	$01
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$04
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00
	dc.b smpsNoAttack, $13
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 5
	;	74 7F
	; Failed match: 00 because of id 7
	;	0C 00
	; Failed to match pattern 00
FM_Macros_FM1_03:
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panLeft, $00
	smpsAlterNote	$07
	dc.b nDs4, $01
	smpsAlterVol	$09
	smpsAlterNote	$08
	dc.b nE4
	smpsAlterVol	$07
	smpsAlterNote	$0C
	dc.b nFs4
	smpsAlterVol	$06
	smpsAlterNote	$0D
	dc.b nG4
	smpsAlterVol	$04
	smpsAlterNote	$0E
	dc.b nG4
	smpsAlterVol	$09
	smpsPan		panCenter, $00
	smpsAlterNote	$0F
	dc.b nG4
	smpsAlterVol	$FE
	smpsAlterNote	$10
	dc.b nG4
	smpsAlterVol	$FD
	smpsAlterNote	$11
	dc.b nG4
	smpsAlterVol	$FD
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterVol	$FE
	smpsAlterNote	$11
	dc.b nE4
	smpsAlterVol	$FE
	dc.b nDs4
	smpsAlterVol	$F9
	smpsAlterNote	$10
	dc.b nCs4
	smpsAlterVol	$FE
	smpsAlterNote	$11
	dc.b nD3
	smpsAlterVol	$02
	dc.b nCs3
	smpsAlterVol	$04
	dc.b nC3
	smpsAlterVol	$0E
	smpsPan		panRight, $00
	smpsAlterNote	$22
	dc.b nB3
	smpsAlterVol	$15
	smpsAlterNote	$DD
	dc.b nB3
	smpsAlterVol	$04
	dc.b nB3
	smpsAlterVol	$02
	smpsAlterNote	$22
	dc.b nBb3
	smpsAlterVol	$02
	smpsAlterNote	$1F
	dc.b nBb3
	smpsAlterVol	$03
	smpsAlterNote	$1B
	dc.b nB3, nB3
	smpsAlterNote	$0E
	dc.b nC3
	smpsAlterVol	$FD
	smpsAlterNote	$0F
	dc.b nCs3
	smpsAlterVol	$F5
	smpsAlterNote	$0E
	dc.b nD3
	smpsAlterVol	$EB
	smpsAlterNote	$0C
	dc.b nC4
	smpsAlterVol	$E8
	smpsAlterNote	$0A
	dc.b nC4
	smpsAlterVol	$F8
	smpsAlterNote	$09
	dc.b nC4
	smpsPan		panCenter, $00
	smpsAlterNote	$07
	dc.b nC4
	smpsAlterNote	$06
	dc.b nC4
	smpsAlterNote	$05
	dc.b nC4
	smpsAlterVol	$01
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00
	dc.b smpsNoAttack, $1F, nRst, $0C
	; $60
	smpsReturn
; ---------------------------------------------------------------------------

; FM1 Data
FM_Macros_FM1:
	smpsCall FM_Macros_FM1_00

FM_Macros_FM1_Jump:
	smpsCall FM_Macros_FM1_01
	smpsCall FM_Macros_FM1_01
	smpsCall FM_Macros_FM1_03
	smpsJump FM_Macros_FM1_Jump
; ===========================================================================

FM_Macros_DAC_00:
	dc.b nC0, $60
	; $60
	smpsReturn

FM_Macros_DAC_01:
	dc.b nC0, $60
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed to match pattern 00
FM_Macros_DAC_03:
	dc.b nC0, $60
	; $60
	smpsReturn
; ---------------------------------------------------------------------------

; DAC Data
FM_Macros_DAC:
	smpsCall FM_Macros_DAC_00

FM_Macros_DAC_Jump:
	smpsCall FM_Macros_DAC_01
	smpsCall FM_Macros_DAC_01
	smpsCall FM_Macros_DAC_03
	smpsJump FM_Macros_DAC_Jump
; ===========================================================================

FM_Macros_PSG1_00:
	smpsPSGvoice	$00
	smpsAlterNote	$FD
	dc.b nDs2, $01, nE2, nFs2, nG2
	smpsAlterNote	$FC
	dc.b nG2, nG2, nG2
	smpsAlterNote	$FB
	dc.b nG2, nFs2
	smpsAlterNote	$FA
	dc.b nE2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$F7
	dc.b nCs2
	smpsAlterNote	$00
	dc.b nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12
	smpsAlterNote	$F8
	dc.b nC2
	smpsAlterNote	$F9
	dc.b nC2
	smpsAlterNote	$FA
	dc.b nC2
	smpsAlterNote	$FB
	dc.b nC2
	smpsAlterNote	$FC
	dc.b nC2, nC2
	smpsAlterNote	$FD
	dc.b nC2
	smpsAlterNote	$FE
	dc.b nC2, nC2, nC2, $04, $01
	smpsAlterNote	$FD
	dc.b $2D, nRst, $0C
	; $60
	smpsReturn

FM_Macros_PSG1_01:
	dc.b smpsNoAttack, $18
	smpsPSGvoice	$00
	smpsAlterNote	$FF
	dc.b nF4, $01, nFs4
	smpsAlterNote	$00
	dc.b nAb4
	smpsAlterNote	$FF
	dc.b nA4, nA4, nA4, nA4
	smpsAlterNote	$FE
	dc.b nA4
	smpsAlterNote	$FF
	dc.b nAb4
	smpsAlterNote	$FE
	dc.b nFs4, nF4, nDs4
	smpsAlterNote	$00
	dc.b nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12
	smpsAlterNote	$FE
	dc.b nD4
	smpsAlterNote	$FF
	dc.b nD4, nD4, nD4, nD4
	smpsAlterNote	$00
	dc.b nD4, nD4, nD4, nD4, nD4, $04, $01, $21
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 7
	;	0C 00
	; Failed to match pattern 00
FM_Macros_PSG1_03:
	smpsPSGvoice	$00
	smpsAlterNote	$FD
	dc.b nDs2, $01, nE2, nFs2, nG2
	smpsAlterNote	$FC
	dc.b nG2, nG2, nG2
	smpsAlterNote	$FB
	dc.b nG2, nFs2
	smpsAlterNote	$FA
	dc.b nE2
	smpsAlterNote	$F8
	dc.b nDs2
	smpsAlterNote	$F7
	dc.b nCs2
	smpsAlterNote	$00
	dc.b nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12, nMaxPSG+12
	smpsAlterNote	$F8
	dc.b nC2
	smpsAlterNote	$F9
	dc.b nC2
	smpsAlterNote	$FA
	dc.b nC2
	smpsAlterNote	$FB
	dc.b nC2
	smpsAlterNote	$FC
	dc.b nC2, nC2
	smpsAlterNote	$FD
	dc.b nC2
	smpsAlterNote	$FE
	dc.b nC2, nC2, nC2, $04, $01
	smpsAlterNote	$FD
	dc.b $2D, nRst, $0C
	; $60
	smpsReturn
; ---------------------------------------------------------------------------

; PSG1 Data
FM_Macros_PSG1:
	smpsCall FM_Macros_PSG1_00

FM_Macros_PSG1_Jump:
	smpsCall FM_Macros_PSG1_01
	smpsCall FM_Macros_PSG1_01
	smpsCall FM_Macros_PSG1_03
	smpsJump FM_Macros_PSG1_Jump
