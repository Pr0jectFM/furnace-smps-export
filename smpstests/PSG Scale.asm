PSG_Scale_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		PSG_Scale_Voices
	smpsHeaderChan		$00, $01
	smpsHeaderTempo		$02, $02
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 225.00 BPM

	smpsHeaderDAC	PSG_Scale_DAC
	smpsHeaderPSG	PSG_Scale_PSG1,	$00, $00, $00, $00

PSG_Scale_Voices:
	; Loop Pattern :  00
	; End Pattern :  01
	; End Place :  40


PSG_Scale_DAC:

PSG_Scale_DAC_Jump:
	smpsCall PSG_Scale_DAC_00_0_64
	smpsJump PSG_Scale_DAC_Jump

PSG_Scale_DAC_00_0_64:
	dc.b smpsNoAttack, $40
	smpsReturn

PSG_Scale_PSG1:

PSG_Scale_PSG1_Jump:
	smpsCall PSG_Scale_PSG1_00_0_64
	smpsJump PSG_Scale_PSG1_Jump

PSG_Scale_PSG1_00_0_64:-3456 8135 
	dc.b nA0, $01-3328 7679 
	smpsAlterNote	$FF
	dc.b nBb-1-3200 7248 
	smpsAlterNote	$00
	dc.b nB-1-3072 6841 , nC0-2944 6457 , nCs0-2816 6095 
	smpsAlterNote	$FF
	dc.b nD0-2688 5753 
	smpsAlterNote	$00
	dc.b nDs0-2560 5430 
	smpsAlterNote	$FF
	dc.b nE0-2432 5125 , nF0-2304 4837 , nFs0-2176 4566 , nG0-2048 4310 , nAb0-1920 4068 
	smpsAlterNote	$00
	dc.b nA0-1792 3839 
	smpsAlterNote	$FF
	dc.b nBb0-1664 3624 
	smpsAlterNote	$00
	dc.b nB0-1536 3420 , nC1-1408 3229 , nCs1-1280 3047 
	smpsAlterNote	$FF
	dc.b nD1-1152 2876 
	smpsAlterNote	$00
	dc.b nDs1-1024 2715 
	smpsAlterNote	$FF
	dc.b nE1-896 2562 , nF1-768 2419 , nFs1-640 2283 , nG1-512 2155 , nAb1-384 2034 
	smpsAlterNote	$00
	dc.b nA1-256 1920 , nBb1-128 1812 , nB10 1710 , nC2128 1614 , nCs2256 1524 , nD2384 1438 , nDs2512 1357 
	smpsAlterNote	$FF
	dc.b nE2640 1281 , nF2768 1209 , nFs2896 1141 , nG21024 1077 , nAb21152 1017 
	smpsAlterNote	$00
	dc.b nA21280 960 , nBb21408 906 , nB21536 855 , nC31664 807 , nCs31792 762 , nD31920 719 , nDs32048 679 , nE32176 641 , nF32304 605 , nFs32432 571 , nG32560 539 , nAb32688 508 , nA32816 480 , nBb32944 453 , nB33072 428 
	smpsAlterNote	$31
	dc.b nCs43200 404 
	smpsAlterNote	$01
	dc.b nCs43328 381 
	smpsAlterNote	$00
	dc.b nD43456 360 
	smpsAlterNote	$01
	dc.b nDs43584 339 
	smpsAlterNote	$FF
	dc.b nE43712 320 , nF43840 302 , nFs43968 285 , nG44096 269 , nAb44224 254 
	smpsAlterNote	$00
	dc.b nMaxPSG4352 240 , nMaxPSG4480 226 
	smpsAlterNote	$FF
	dc.b nMaxPSG4608 214 
	smpsAlterNote	$31
	dc.b nMaxPSG
	smpsReturn
