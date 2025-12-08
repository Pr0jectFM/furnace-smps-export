F3_F4_Test_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		F3_F4_Test_Voices
	smpsHeaderChan		$01, $01
	smpsHeaderTempo		$01, $00
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	F3_F4_Test_DAC
	smpsHeaderPSG	F3_F4_Test_PSG1,	$F4, $00, $00, $00

F3_F4_Test_Voices:
	; Loop Pattern :  00
	; End Pattern :  01
	; End Place :  1F


F3_F4_Test_DAC_00:
	dc.b nC0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $03
	; $180
	smpsReturn

F3_F4_Test_DAC_01:
	dc.b smpsNoAttack, $7F
	dc.b smpsNoAttack, $41
	; $C0
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed to match pattern 00
F3_F4_Test_DAC_02:
	dc.b nC0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $03
	; $180
	smpsReturn

F3_F4_Test_DAC:
	smpsCall F3_F4_Test_DAC_00

F3_F4_Test_DAC_Jump:
	smpsCall F3_F4_Test_DAC_01
	smpsCall F3_F4_Test_DAC_02
	smpsJump F3_F4_Test_DAC_Jump

F3_F4_Test_PSG1_00:
	dc.b nE4, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$F5
	dc.b nD4
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$04
	dc.b nB3, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	; $180
	smpsReturn

F3_F4_Test_PSG1_01:
	smpsPSGAlterVol	$FD
	dc.b nE3, $01
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$F3
	dc.b nFs3
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$F4
	dc.b nG3
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$F5
	dc.b nA3
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$02
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$FD
	dc.b nB3
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$0F
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$FC
	dc.b nC4
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$0E
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$FB
	dc.b nB3
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$0F
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $02, $01
	smpsPSGAlterVol	$FA
	dc.b nFs3
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$FE
	dc.b smpsNoAttack, $02
	smpsPSGAlterVol	$0E
	dc.b smpsNoAttack, $02, $02, $02, $02, $02, $02, $02, $01
	; $C0
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 2
	;	100 00
	; Failed to match pattern 00
F3_F4_Test_PSG1_02:
	smpsPSGAlterVol	$F1
	dc.b nE4, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$F5
	dc.b nD4
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$04
	dc.b nB3, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	; $180
	smpsReturn

F3_F4_Test_PSG1:
	smpsCall F3_F4_Test_PSG1_00

F3_F4_Test_PSG1_Jump:
	smpsCall F3_F4_Test_PSG1_01
	smpsCall F3_F4_Test_PSG1_02
	smpsJump F3_F4_Test_PSG1_Jump
