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
	smpsAlterVol	$01
	dc.b smpsNoAttack
	smpsAlterVol	$01
	dc.b smpsNoAttack
	smpsAlterVol	$01
	dc.b smpsNoAttack
	smpsAlterVol	$02
	dc.b smpsNoAttack
	smpsAlterVol	$02
	dc.b smpsNoAttack
	smpsAlterVol	$01
	dc.b smpsNoAttack
	smpsAlterVol	$01
	dc.b smpsNoAttack
	smpsAlterVol	$01
	dc.b smpsNoAttack
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
