PSG_Scale_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		PSG_Scale_Voices
	smpsHeaderChan		$00, $01
	smpsHeaderTempo		$01, $00
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	PSG_Scale_DAC
	smpsHeaderPSG	PSG_Scale_PSG1,	$F4, $00, $00, $00

PSG_Scale_Voices:
	; Loop Pattern :  00
	; End Pattern :  01
	; End Place :  4A


PSG_Scale_DAC:

PSG_Scale_DAC_Jump:
	smpsCall PSG_Scale_DAC_00_0_74
	smpsJump PSG_Scale_DAC_Jump

PSG_Scale_DAC_00_0_74:
	dc.b smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $3F
	smpsReturn

PSG_Scale_PSG1:

PSG_Scale_PSG1_Jump:
	smpsCall PSG_Scale_PSG1_00_0_74
	smpsJump PSG_Scale_PSG1_Jump

PSG_Scale_PSG1_00_0_74:
	dc.b 1152 1017 nA0, $06, 1280 960 nBb0, 1408 906 nB0, 1536 855 nC1, 1664 807 nCs1, 1792 762 nD1, 1920 719 nDs1, 2048 679 nE1, 2176 641 nF1, 2304 605 nFs1, 2432 571 nG1, 2560 539 nAb1, 2688 508 nA1, 2816 480 nBb1, 2944 453 nB1
	dc.b 3072 428 nC2, 3200 404 nCs2, 3328 381 nD2, 3456 360 nDs2, 3584 339 nE2, 3712 320 nF2, 3840 302 nFs2, 3968 285 nG2, 4096 269 nAb2, 4224 254 nA2, 4352 240 nBb2, 4480 226 nB2, 4608 214 nC3, 4736 202 nCs3, 4864 190 nD3, 4992 180 nDs3
	dc.b 5120 170 nE3, 5248 160 nF3, 5376 151 nFs3, 5504 143 nG3, 5632 135 nAb3, 5760 127 nA3, 5888 120 nBb3, 6016 113 nB3, 6144 107 nC4, 6272 101 nCs4, 6400 95 nD4, 6528 90 nDs4, 6656 85 nE4, 6784 80 nF4, 6912 76 nFs4, 7040 71 nG4
	dc.b 7168 67 nAb4, 7296 64 nA4, 7424 60 nBb4, 7552 57 nB4, 7680 53 nC5, 7808 50 nCs5, 7936 48 nD5, 8064 45 nDs5, 8192 42 nE5, 8320 40 nF5, 8448 38 nFs5, 8576 36 nG5, 8704 34 nAb5, 8832 32 nA5, 8960 30 nBb5, 9088 28 nB5
	dc.b 9216 27 nC6, 9344 25 nCs6, 9472 24 nD6, 9600 22 nDs6, 9728 21 nE6, 9856 20 nF6, 9984 19 nFs6, 10112 18 nG6, 10240 17 nAb6, 10368 16 nA6, nMaxPSG+12
	smpsReturn
