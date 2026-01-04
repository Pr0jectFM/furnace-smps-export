; ===========================================================================
; Name: 03 Test
; Author: ProjectFM
; Given Tempo = 150.00 BPM
; Approximated Tempo = 150.00 BPM
; Loop Pattern = 00
; End Pattern = 00
; End Place = 40
; ===========================================================================
; Header
; ===========================================================================

03_Test_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		03_Test_Voices
	smpsHeaderChan		$02, $00
	smpsHeaderTempo		$01, $00
	smpsHeaderDAC	03_Test_DAC
	smpsHeaderFM	03_Test_FM1,	$00, $00

; ===========================================================================
; Voices
; ===========================================================================

03_Test_Voices:
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
	smpsVcTotalLevel	$00, $7F, $7F, $7F

; ===========================================================================
; Pattern Data
; ===========================================================================

03_Test_FM1_00:
	smpsSetvoice	$00
	dc.b nC5, $60
	smpsModSet		$00, $02, $01, $36
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $35
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $34
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $33
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $32
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $31
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $30
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $29
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $28
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $27
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $26
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $25
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $24
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $23
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $22
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $21
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $20
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $19
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $18
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $17
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $16
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $15
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $14
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $13
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $12
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $11
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $10
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $09
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $08
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $07
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $06
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $05
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $04
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $03
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $02
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $01
	dc.b smpsNoAttack, $01
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $6B
	; $180
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 3
	;	81 00
	; Failed match: 00 because of id 4
	;	02 00
	; Failed to match pattern 00
03_Test_FM1_01:
	smpsSetvoice	$00
	smpsModSet		$00, $02, $01, $36
	dc.b nC5, $01
	smpsModSet		$00, $02, $01, $35
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $34
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $33
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $32
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $31
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $30
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $2A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $29
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $28
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $27
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $26
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $25
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $24
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $23
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $22
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $21
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $20
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $1A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $19
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $18
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $17
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $16
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $15
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $14
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $13
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $12
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $11
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $10
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0F
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0E
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0D
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0C
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0B
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $0A
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $09
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $08
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $07
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $06
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $05
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $04
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $03
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $02
	dc.b smpsNoAttack, $01
	smpsModSet		$00, $02, $01, $01
	dc.b smpsNoAttack, $01
	smpsModOff
	dc.b smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $4C
	; $180
	smpsReturn
; ---------------------------------------------------------------------------

; FM1 Data
03_Test_FM1:
	smpsCall 03_Test_FM1_00

03_Test_FM1_Jump:
	smpsCall 03_Test_FM1_01
	; Failed to match second loop with first
	smpsJump 03_Test_FM1_Jump
; ===========================================================================

03_Test_DAC_00:
	dc.b nRst, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $03
	; $180
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed to match pattern 00
03_Test_DAC_01:
	dc.b nRst, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $03
	; $180
	smpsReturn
; ---------------------------------------------------------------------------

; DAC Data
03_Test_DAC:
	smpsCall 03_Test_DAC_00

03_Test_DAC_Jump:
	smpsCall 03_Test_DAC_01
	; Failed to match second loop with first
	smpsJump 03_Test_DAC_Jump
