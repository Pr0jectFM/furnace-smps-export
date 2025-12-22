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
	smpsHeaderTempo		$01, $00
	smpsHeaderDAC	FM_Macros_DAC
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
;		dc.b $03, $04, $06, $07, $07, $07, $07, $07, $06, $04, $03, $3C, $3C, $3C, $3B, $3A
;		dc.b $3A, $38, $36, $35, $34, $33, $31, $2F, $2D, $00, $00, $00, $00, $00
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
	smpsPan		panLeft, $00 3 111
	smpsAlterNote	$07
	dc.b nDs4, $01
	smpsAlterVol	$09 4 112
	smpsAlterNote	$08
	dc.b nE4
	smpsAlterVol	$07 6 114
	smpsAlterNote	$0C
	dc.b nFs4
	smpsAlterVol	$06 7 115
	smpsAlterNote	$0D
	dc.b nG4
	smpsAlterVol	$04 7 115
	smpsAlterNote	$0E
	dc.b nG4
	smpsAlterVol	$09
	smpsPan		panCenter, $00 7 115
	smpsAlterNote	$0F
	dc.b nG4
	smpsAlterVol	$FE 7 115
	smpsAlterNote	$10
	dc.b nG4
	smpsAlterVol	$FD 7 115
	smpsAlterNote	$11
	dc.b nG4
	smpsAlterVol	$FD 6 114
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterVol	$FE 4 112
	smpsAlterNote	$11
	dc.b nE4
	smpsAlterVol	$FE 3 111
	dc.b nDs4
	smpsAlterVol	$F9 120 120
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterVol	$FE 120 120
	dc.b nC5
	smpsAlterVol	$02 120 120
	smpsAlterNote	$10
	dc.b nC5
	smpsAlterVol	$04 119 119
	smpsAlterNote	$1F
	dc.b nB4
	smpsAlterVol	$0E
	smpsPan		panRight, $00 118 118
	smpsAlterNote	$22
	dc.b nBb4
	smpsAlterVol	$15 118 118
	smpsAlterNote	$DD
	dc.b nB4
	smpsAlterVol	$04 116 116
	smpsAlterNote	$1E
	dc.b nAb4
	smpsAlterVol	$02 114 114
	smpsAlterNote	$1B
	dc.b nFs4
	smpsAlterVol	$02 113 113
	smpsAlterNote	$16
	dc.b nF4
	smpsAlterVol	$03 112 112
	smpsAlterNote	$13
	dc.b nE4 111 111
	smpsAlterNote	$12
	dc.b nDs4 109 109
	smpsAlterNote	$0F
	dc.b nCs4
	smpsAlterVol	$FD 107 107
	smpsAlterNote	$19
	dc.b nB3
	smpsAlterVol	$F5 105 105
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterVol	$EB 0 108
	smpsAlterNote	$0C
	dc.b nC4
	smpsAlterVol	$E8 0 108
	smpsAlterNote	$0A
	dc.b nC4
	smpsAlterVol	$F8 0 108
	smpsAlterNote	$09
	dc.b nC4
	smpsPan		panCenter, $00 0 108
	smpsAlterNote	$07
	dc.b nC4 0 108
	smpsAlterNote	$06
	dc.b nC4 0 108
	smpsAlterNote	$05
	dc.b nC4
	smpsAlterVol	$01 0 108
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00 0 108
	dc.b smpsNoAttack, $1F, nRst, $0C
	; $60
	smpsReturn

FM_Macros_FM1_01:
	dc.b smpsNoAttack, $18
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panLeft, $00 3 113
	smpsAlterNote	$07
	dc.b nF4, $01
	smpsAlterVol	$09 4 114
	smpsAlterNote	$0A
	dc.b nFs4
	smpsAlterVol	$07 6 116
	smpsAlterNote	$0C
	dc.b nAb4
	smpsAlterVol	$06 7 117
	smpsAlterNote	$0F
	dc.b nA4
	smpsAlterVol	$04 7 117
	smpsAlterNote	$10
	dc.b nA4
	smpsAlterVol	$09
	smpsPan		panCenter, $00 7 117
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterVol	$FE 7 117
	smpsAlterNote	$12
	dc.b nA4
	smpsAlterVol	$FD 7 117
	smpsAlterNote	$13
	dc.b nA4
	smpsAlterVol	$FD 6 116
	smpsAlterNote	$14
	dc.b nAb4
	smpsAlterVol	$FE 4 114
	smpsAlterNote	$13
	dc.b nFs4
	smpsAlterVol	$FE 3 113
	smpsAlterNote	$12
	dc.b nF4
	smpsAlterVol	$F9 120 120
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterVol	$FE 120 120
	dc.b nC5
	smpsAlterVol	$02 120 120
	smpsAlterNote	$10
	dc.b nC5
	smpsAlterVol	$04 119 119
	smpsAlterNote	$1F
	dc.b nB4
	smpsAlterVol	$0E
	smpsPan		panRight, $00 118 118
	smpsAlterNote	$22
	dc.b nBb4
	smpsAlterVol	$15 118 118
	smpsAlterNote	$DD
	dc.b nB4
	smpsAlterVol	$04 116 116
	smpsAlterNote	$1E
	dc.b nAb4
	smpsAlterVol	$02 114 114
	smpsAlterNote	$1B
	dc.b nFs4
	smpsAlterVol	$02 113 113
	smpsAlterNote	$16
	dc.b nF4
	smpsAlterVol	$03 112 112
	smpsAlterNote	$13
	dc.b nE4 111 111
	smpsAlterNote	$12
	dc.b nDs4 109 109
	smpsAlterNote	$0F
	dc.b nCs4
	smpsAlterVol	$FD 107 107
	smpsAlterNote	$19
	dc.b nB3
	smpsAlterVol	$F5 105 105
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterVol	$EB 0 110
	smpsAlterNote	$0E
	dc.b nD4
	smpsAlterVol	$E8 0 110
	smpsAlterNote	$0B
	dc.b nD4
	smpsAlterVol	$F8 0 110
	smpsAlterNote	$0A
	dc.b nD4
	smpsPan		panCenter, $00 0 110
	smpsAlterNote	$08
	dc.b nD4 0 110
	smpsAlterNote	$06
	dc.b nD4 0 110
	smpsAlterNote	$05
	dc.b nD4
	smpsAlterVol	$01 0 110
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$04
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00 0 110
	dc.b smpsNoAttack, $13
	; $60
	smpsReturn

	; Failed match: 01 because of id 8
	;	6E FD
FM_Macros_FM1_02:
	dc.b smpsNoAttack, $18
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panLeft, $00 3 113
	smpsAlterNote	$07
	dc.b nF4, $01
	smpsAlterVol	$09 4 114
	smpsAlterNote	$0A
	dc.b nFs4
	smpsAlterVol	$07 6 116
	smpsAlterNote	$0C
	dc.b nAb4
	smpsAlterVol	$06 7 117
	smpsAlterNote	$0F
	dc.b nA4
	smpsAlterVol	$04 7 117
	smpsAlterNote	$10
	dc.b nA4
	smpsAlterVol	$09
	smpsPan		panCenter, $00 7 117
	smpsAlterNote	$11
	dc.b nA4
	smpsAlterVol	$FE 7 117
	smpsAlterNote	$12
	dc.b nA4
	smpsAlterVol	$FD 7 117
	smpsAlterNote	$13
	dc.b nA4
	smpsAlterVol	$FD 6 116
	smpsAlterNote	$14
	dc.b nAb4
	smpsAlterVol	$FE 4 114
	smpsAlterNote	$13
	dc.b nFs4
	smpsAlterVol	$FE 3 113
	smpsAlterNote	$12
	dc.b nF4
	smpsAlterVol	$F9 120 120
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterVol	$FE 120 120
	dc.b nC5
	smpsAlterVol	$02 120 120
	smpsAlterNote	$10
	dc.b nC5
	smpsAlterVol	$04 119 119
	smpsAlterNote	$1F
	dc.b nB4
	smpsAlterVol	$0E
	smpsPan		panRight, $00 118 118
	smpsAlterNote	$22
	dc.b nBb4
	smpsAlterVol	$15 118 118
	smpsAlterNote	$DD
	dc.b nB4
	smpsAlterVol	$04 116 116
	smpsAlterNote	$1E
	dc.b nAb4
	smpsAlterVol	$02 114 114
	smpsAlterNote	$1B
	dc.b nFs4
	smpsAlterVol	$02 113 113
	smpsAlterNote	$16
	dc.b nF4
	smpsAlterVol	$03 112 112
	smpsAlterNote	$13
	dc.b nE4 111 111
	smpsAlterNote	$12
	dc.b nDs4 109 109
	smpsAlterNote	$0F
	dc.b nCs4
	smpsAlterVol	$FD 107 107
	smpsAlterNote	$19
	dc.b nB3
	smpsAlterVol	$F5 105 105
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterVol	$EB 0 110
	smpsAlterNote	$0E
	dc.b nD4
	smpsAlterVol	$E8 0 110
	smpsAlterNote	$0B
	dc.b nD4
	smpsAlterVol	$F8 0 110
	smpsAlterNote	$0A
	dc.b nD4
	smpsPan		panCenter, $00 0 110
	smpsAlterNote	$08
	dc.b nD4 0 110
	smpsAlterNote	$06
	dc.b nD4 0 110
	smpsAlterNote	$05
	dc.b nD4
	smpsAlterVol	$01 0 110
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 110
	smpsAlterNote	$04
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00 0 110
	dc.b smpsNoAttack, $13
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 5
	;	74 7F
	; Failed match: 00 because of id 7
	;	0C 00
	; Failed match: 00 because of id 8
	;	6E 00
	; Failed match: 00 because of id 9
	;	00 FFFFFFFF
	; Failed to match pattern 00
FM_Macros_FM1_03:
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panLeft, $00 3 111
	smpsAlterNote	$07
	dc.b nDs4, $01
	smpsAlterVol	$09 4 112
	smpsAlterNote	$08
	dc.b nE4
	smpsAlterVol	$07 6 114
	smpsAlterNote	$0C
	dc.b nFs4
	smpsAlterVol	$06 7 115
	smpsAlterNote	$0D
	dc.b nG4
	smpsAlterVol	$04 7 115
	smpsAlterNote	$0E
	dc.b nG4
	smpsAlterVol	$09
	smpsPan		panCenter, $00 7 115
	smpsAlterNote	$0F
	dc.b nG4
	smpsAlterVol	$FE 7 115
	smpsAlterNote	$10
	dc.b nG4
	smpsAlterVol	$FD 7 115
	smpsAlterNote	$11
	dc.b nG4
	smpsAlterVol	$FD 6 114
	smpsAlterNote	$12
	dc.b nFs4
	smpsAlterVol	$FE 4 112
	smpsAlterNote	$11
	dc.b nE4
	smpsAlterVol	$FE 3 111
	dc.b nDs4
	smpsAlterVol	$F9 120 120
	smpsAlterNote	$0F
	dc.b nC5
	smpsAlterVol	$FE 120 120
	dc.b nC5
	smpsAlterVol	$02 120 120
	smpsAlterNote	$10
	dc.b nC5
	smpsAlterVol	$04 119 119
	smpsAlterNote	$1F
	dc.b nB4
	smpsAlterVol	$0E
	smpsPan		panRight, $00 118 118
	smpsAlterNote	$22
	dc.b nBb4
	smpsAlterVol	$15 118 118
	smpsAlterNote	$DD
	dc.b nB4
	smpsAlterVol	$04 116 116
	smpsAlterNote	$1E
	dc.b nAb4
	smpsAlterVol	$02 114 114
	smpsAlterNote	$1B
	dc.b nFs4
	smpsAlterVol	$02 113 113
	smpsAlterNote	$16
	dc.b nF4
	smpsAlterVol	$03 112 112
	smpsAlterNote	$13
	dc.b nE4 111 111
	smpsAlterNote	$12
	dc.b nDs4 109 109
	smpsAlterNote	$0F
	dc.b nCs4
	smpsAlterVol	$FD 107 107
	smpsAlterNote	$19
	dc.b nB3
	smpsAlterVol	$F5 105 105
	smpsAlterNote	$16
	dc.b nA3
	smpsAlterVol	$EB 0 108
	smpsAlterNote	$0C
	dc.b nC4
	smpsAlterVol	$E8 0 108
	smpsAlterNote	$0A
	dc.b nC4
	smpsAlterVol	$F8 0 108
	smpsAlterNote	$09
	dc.b nC4
	smpsPan		panCenter, $00 0 108
	smpsAlterNote	$07
	dc.b nC4 0 108
	smpsAlterNote	$06
	dc.b nC4 0 108
	smpsAlterNote	$05
	dc.b nC4
	smpsAlterVol	$01 0 108
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$02 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01 0 108
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00 0 108
	dc.b smpsNoAttack, $1F, nRst, $0C
	; $60
	smpsReturn
; ---------------------------------------------------------------------------

; FM1 Data
FM_Macros_FM1:
	smpsCall FM_Macros_FM1_00

FM_Macros_FM1_Jump:
	smpsCall FM_Macros_FM1_01
	smpsCall FM_Macros_FM1_02
	smpsCall FM_Macros_FM1_03
	smpsJump FM_Macros_FM1_Jump
; ===========================================================================

FM_Macros_DAC_00: 0 60
	dc.b nC0, $60
	; $60
	smpsReturn

FM_Macros_DAC_01: 0 60
	dc.b nC0, $60
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed to match pattern 00
FM_Macros_DAC_03: 0 60
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
	smpsPSGvoice	$00 3 87
	smpsAlterNote	$FD
	dc.b nDs2, $01 4 88, nE2 6 90, nFs2 7 91, nG2 7 91
	smpsAlterNote	$FC
	dc.b nG2 7 91, nG2 7 91, nG2 7 91
	smpsAlterNote	$FB
	dc.b nG2 6 90, nFs2 4 88
	smpsAlterNote	$FA
	dc.b nE2 3 87
	smpsAlterNote	$F8
	dc.b nDs2 1 85
	smpsAlterNote	$F7
	dc.b nCs2 254 338
	smpsAlterNote	$00
	dc.b nMaxPSG+12 253 337, nMaxPSG+12 252 336, nMaxPSG+12 251 335, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 251 335, nMaxPSG+12 251 335, nMaxPSG+12 252 336, nMaxPSG+12 253 337, nMaxPSG+12 254 338, nMaxPSG+12 0 84
	smpsAlterNote	$F8
	dc.b nC2 0 84
	smpsAlterNote	$F9
	dc.b nC2 0 84
	smpsAlterNote	$FA
	dc.b nC2 0 84
	smpsAlterNote	$FB
	dc.b nC2 0 84
	smpsAlterNote	$FC
	dc.b nC2 0 84, nC2 0 84
	smpsAlterNote	$FD
	dc.b nC2 0 84
	smpsAlterNote	$FE
	dc.b nC2 0 84, nC2 0 84, nC2, $04 0 84, $01 0 84
	smpsAlterNote	$FD
	dc.b $2D, nRst, $0C
	; $60
	smpsReturn

FM_Macros_PSG1_01:
	dc.b smpsNoAttack, $18
	smpsPSGvoice	$00 3 113
	smpsAlterNote	$FF
	dc.b nF4, $01 4 114, nFs4 6 116
	smpsAlterNote	$00
	dc.b nAb4 7 117
	smpsAlterNote	$FF
	dc.b nA4 7 117, nA4 7 117, nA4 7 117, nA4 7 117
	smpsAlterNote	$FE
	dc.b nA4 6 116
	smpsAlterNote	$FF
	dc.b nAb4 4 114
	smpsAlterNote	$FE
	dc.b nFs4 3 113, nF4 1 111, nDs4 254 364
	smpsAlterNote	$00
	dc.b nMaxPSG+12 253 363, nMaxPSG+12 252 362, nMaxPSG+12 251 361, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 251 361, nMaxPSG+12 251 361, nMaxPSG+12 252 362, nMaxPSG+12 253 363, nMaxPSG+12 254 364, nMaxPSG+12 0 110
	smpsAlterNote	$FE
	dc.b nD4 0 110
	smpsAlterNote	$FF
	dc.b nD4 0 110, nD4 0 110, nD4 0 110, nD4 0 110
	smpsAlterNote	$00
	dc.b nD4 0 110, nD4 0 110, nD4 0 110, nD4 0 110, nD4, $04 0 110, $01 0 110, $21
	; $60
	smpsReturn

	; Failed match: 01 because of id 8
	;	6E FD
FM_Macros_PSG1_02:
	dc.b smpsNoAttack, $18
	smpsPSGvoice	$00 3 113
	smpsAlterNote	$FF
	dc.b nF4, $01 4 114, nFs4 6 116
	smpsAlterNote	$00
	dc.b nAb4 7 117
	smpsAlterNote	$FF
	dc.b nA4 7 117, nA4 7 117, nA4 7 117, nA4 7 117
	smpsAlterNote	$FE
	dc.b nA4 6 116
	smpsAlterNote	$FF
	dc.b nAb4 4 114
	smpsAlterNote	$FE
	dc.b nFs4 3 113, nF4 1 111, nDs4 254 364
	smpsAlterNote	$00
	dc.b nMaxPSG+12 253 363, nMaxPSG+12 252 362, nMaxPSG+12 251 361, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 250 360, nMaxPSG+12 251 361, nMaxPSG+12 251 361, nMaxPSG+12 252 362, nMaxPSG+12 253 363, nMaxPSG+12 254 364, nMaxPSG+12 0 110
	smpsAlterNote	$FE
	dc.b nD4 0 110
	smpsAlterNote	$FF
	dc.b nD4 0 110, nD4 0 110, nD4 0 110, nD4 0 110
	smpsAlterNote	$00
	dc.b nD4 0 110, nD4 0 110, nD4 0 110, nD4 0 110, nD4, $04 0 110, $01 0 110, $21
	; $60
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 7
	;	0C 00
	; Failed match: 00 because of id 8
	;	6E 00
	; Failed match: 00 because of id 9
	;	01 FFFFFFFF
	; Failed to match pattern 00
FM_Macros_PSG1_03:
	smpsPSGvoice	$00 3 87
	smpsAlterNote	$FD
	dc.b nDs2, $01 4 88, nE2 6 90, nFs2 7 91, nG2 7 91
	smpsAlterNote	$FC
	dc.b nG2 7 91, nG2 7 91, nG2 7 91
	smpsAlterNote	$FB
	dc.b nG2 6 90, nFs2 4 88
	smpsAlterNote	$FA
	dc.b nE2 3 87
	smpsAlterNote	$F8
	dc.b nDs2 1 85
	smpsAlterNote	$F7
	dc.b nCs2 254 338
	smpsAlterNote	$00
	dc.b nMaxPSG+12 253 337, nMaxPSG+12 252 336, nMaxPSG+12 251 335, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 250 334, nMaxPSG+12 251 335, nMaxPSG+12 251 335, nMaxPSG+12 252 336, nMaxPSG+12 253 337, nMaxPSG+12 254 338, nMaxPSG+12 0 84
	smpsAlterNote	$F8
	dc.b nC2 0 84
	smpsAlterNote	$F9
	dc.b nC2 0 84
	smpsAlterNote	$FA
	dc.b nC2 0 84
	smpsAlterNote	$FB
	dc.b nC2 0 84
	smpsAlterNote	$FC
	dc.b nC2 0 84, nC2 0 84
	smpsAlterNote	$FD
	dc.b nC2 0 84
	smpsAlterNote	$FE
	dc.b nC2 0 84, nC2 0 84, nC2, $04 0 84, $01 0 84
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
	smpsCall FM_Macros_PSG1_02
	smpsCall FM_Macros_PSG1_03
	smpsJump FM_Macros_PSG1_Jump
