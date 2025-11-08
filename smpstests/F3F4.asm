F3_F4_Test_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		F3_F4_Test_Voices
	smpsHeaderChan		$00, $01
	smpsHeaderTempo		$01, $02
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	F3_F4_Test_DAC
	smpsHeaderPSG	F3_F4_Test_PSG1,	$00, $00, $00, $00

F3_F4_Test_Voices:
	; Loop Pattern :  00
	; End Pattern :  01
	; End Place :  40


F3_F4_Test_DAC:

F3_F4_Test_DAC_Jump:
	smpsCall F3_F4_Test_DAC_00_0_64
	smpsPSGAlterVol	$80
	smpsJump F3_F4_Test_DAC_Jump

F3_F4_Test_DAC_00_0_64:
	dc.b smpsNoAttack, $7E, smpsNoAttack, $42
	smpsReturn

F3_F4_Test_PSG1:

F3_F4_Test_PSG1_Jump:
	smpsCall F3_F4_Test_PSG1_00_0_64_0F
	smpsJump F3_F4_Test_PSG1_Jump

F3_F4_Test_PSG1_00_0_64_0F:	; fine volume slide down
	dc.b nE3, $30, nD3
	smpsPSGAlterVol	$0F	; fine volume slide up
	dc.b nB2, $60
	smpsReturn
