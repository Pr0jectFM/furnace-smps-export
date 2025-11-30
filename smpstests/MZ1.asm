FM_Macros_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		FM_Macros_Voices
	smpsHeaderChan		$02, $00
	smpsHeaderTempo		$01, $00
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	FM_Macros_DAC
	smpsHeaderFM	FM_Macros_FM1,	$00, $00

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
	smpsVcTotalLevel	$00, $7F, $7F, $7F
;	macros:
;		vol: 126 117 110 104 100 91 93 96 99 101 103 110 112 110 106 92 71 67 65 63 60 60 60 63 74 95 119 127 127 127 127 126 125 124 122 120 119 118 117 116
;		arp: 3 4 6 7 7 7 7 7 6 4 3 1 -2 -3 -4 -5 -6 -6 -6 -6 -5 -5 -4 -3 -2 0 0 0 0 0
;		pitch: 18 22 26 30 32 34 37 39 42 45 47 50 52 54 57 62 64 64 62 56 50 49 47 46 44 42 35 30 24 19 16 13 10 8 6 6 6 6 9 12
;		panL: 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 2 2

	; Loop Pattern :  00
	; End Pattern :  01
	; End Place :  10


FM_Macros_FM1:

FM_Macros_FM1_Jump:
	smpsCall FM_Macros_FM1_00_0_16
	smpsJump FM_Macros_FM1_Jump

FM_Macros_FM1_00_0_16:
	
	smpsSetvoice	$00
	smpsAlterVol	$01
	smpsPan		panLeft, $00
3
	smpsAlterNote	$07
	dc.b nDs4, $01
	smpsAlterVol	$09
	dc.b $01
	smpsAlterVol	$07
	dc.b $01
	smpsAlterVol	$06
	dc.b $01
	smpsAlterVol	$04
	dc.b $01
	smpsAlterVol	$09
	smpsPan		panCenter, $00
	dc.b $01
	smpsAlterVol	$FE
7
	smpsAlterNote	$10
	dc.b nFs16
	smpsAlterVol	$FD
7
	smpsAlterNote	$11
	dc.b nFs16
	smpsAlterVol	$FD
6
	smpsAlterNote	$10
	dc.b nF16
	smpsAlterVol	$FE
4
	smpsAlterNote	$11
	dc.b nDs16
	smpsAlterVol	$FE
3
	smpsAlterNote	$0F
	dc.b nD16
	smpsAlterVol	$F9
1
	dc.b nC16
	smpsAlterVol	$FE
254
	smpsAlterNote	$10
	dc.b nCs16
	smpsAlterVol	$02
253
	dc.b nC16
	smpsAlterVol	$04
252
	smpsAlterNote	$1F
	dc.b nB15
	smpsAlterVol	$0E
	smpsPan		panRight, $00
251
	smpsAlterNote	$22
	dc.b nBb15
	smpsAlterVol	$15
250
	smpsAlterNote	$E1
	dc.b nBb15
	smpsAlterVol	$04
250
	dc.b nBb15
	smpsAlterVol	$02
250
	smpsAlterNote	$1F
	dc.b nA15
	smpsAlterVol	$02
250
	smpsAlterNote	$1C
	dc.b nA15
	smpsAlterVol	$03
251
	dc.b nBb15
251
	smpsAlterNote	$1B
	dc.b nBb15
252
	smpsAlterNote	$1A
	dc.b nB15
	smpsAlterVol	$FD
253
	smpsAlterNote	$0E
	dc.b nC16
	smpsAlterVol	$F5
254
	dc.b nCs16
	smpsAlterVol	$EB
0
	smpsAlterNote	$10
	dc.b nDs16
	smpsAlterVol	$E8
0
	smpsAlterNote	$0D
	dc.b nDs16
	smpsAlterVol	$F8
0
	smpsAlterNote	$0B
	dc.b nDs16
	smpsPan		panCenter, $00
0
	smpsAlterNote	$09
	dc.b nDs16
0
	smpsAlterNote	$07
	dc.b nDs16, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
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
	dc.b smpsNoAttack, $01
	smpsAlterVol	$01
	dc.b smpsNoAttack, $0E
	smpsPan		panLeft, $00
	dc.b smpsNoAttack, $2B
	smpsReturn

FM_Macros_DAC:

FM_Macros_DAC_Jump:
	smpsCall FM_Macros_DAC_00_0_16
	smpsJump FM_Macros_DAC_Jump

FM_Macros_DAC_00_0_16:
	dc.b smpsNoAttack, $60
	smpsReturn
