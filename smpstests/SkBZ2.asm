F3_F4_Test_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		F3_F4_Test_Voices
	smpsHeaderChan		$00, $01
	smpsHeaderTempo		$01, $00
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderPSG	F3_F4_Test_PSG1,	$F4, $0F, $00, $00

F3_F4_Test_Voices:
	; Loop Pattern :  00
	; End Pattern :  00
	; End Place :  40


F3_F4_Test_PSG1_00:
		; fine volume slide down
	dc.b nE4, $08
	smpsPSGAlterVol	$F1
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$19
	dc.b nD4
	smpsPSGAlterVol	$F1
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
		; fine volume slide up
	smpsPSGAlterVol	$0A
	dc.b nB3, $10
	smpsPSGAlterVol	$0F
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	; $180
	smpsReturn

	; Failed match: 00 because of id 1
	;	FFFFFFFF 00
	; Failed match: 00 because of id 2
	;	10 00
	; Failed to match pattern 00
F3_F4_Test_PSG1_01:
		; fine volume slide down
	dc.b nE4, $08
	smpsPSGAlterVol	$F1
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$19
	dc.b nD4
	smpsPSGAlterVol	$F1
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $08
		; fine volume slide up
	smpsPSGAlterVol	$0A
	dc.b nB3, $10
	smpsPSGAlterVol	$0F
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$01
	dc.b smpsNoAttack, $10
	smpsPSGAlterVol	$FF
	dc.b smpsNoAttack, $10
	; $180
	smpsReturn

F3_F4_Test_PSG1:

F3_F4_Test_PSG1_Jump:
	smpsCall F3_F4_Test_PSG1_00
	smpsCall F3_F4_Test_PSG1_01
	; Failed to match second loop with first
	smpsJump F3_F4_Test_PSG1_Jump
