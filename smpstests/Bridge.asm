Bridge_Zone_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice		Bridge_Zone_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$01, $02
;	Given Tempo = 150.00 BPM
;	Approximated Tempo = 150.00 BPM

	smpsHeaderDAC	Bridge_Zone_DAC
	smpsHeaderFM	Bridge_Zone_FM1,	$00, $01
	smpsHeaderFM	Bridge_Zone_FM2,	$00, $00
	smpsHeaderFM	Bridge_Zone_FM3,	$00, $03
	smpsHeaderFM	Bridge_Zone_FM4,	$00, $04
	smpsHeaderFM	Bridge_Zone_FM5,	$00, $05
	smpsHeaderPSG	Bridge_Zone_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG	Bridge_Zone_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG	Bridge_Zone_PSG3,	$00, $00, $00, $00

Bridge_Zone_Voices:
;	FM Voice 00 -> 00: pick bass
	smpsVcAlgorithm		$00
	smpsVcFeedback		$01
	smpsVcDetune		$00, $03, $07, $00
	smpsVcCoarseFreq	$00, $00, $00, $0A
	smpsVcRateScale		$01, $01, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0A, $0A, $0E, $12
	smpsVcDecayRate2	$03, $04, $04, $00
	smpsVcDecayLevel	$02, $02, $02, $02
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$0B, $13, $2D, $24

;	FM Voice 01 -> 01: brass
	smpsVcAlgorithm		$04
	smpsVcFeedback		$05
	smpsVcDetune		$03, $03, $07, $07
	smpsVcCoarseFreq	$04, $04, $04, $04
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $12, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$07, $00, $07, $00
	smpsVcDecayRate2	$07, $00, $07, $00
	smpsVcDecayLevel	$03, $00, $03, $00
	smpsVcReleaseRate	$08, $00, $08, $00
	smpsVcTotalLevel	$12, $17, $12, $16

;	FM Voice 02 -> 02: brass arp (UNUSED)
	smpsVcAlgorithm		$04
	smpsVcFeedback		$05
	smpsVcDetune		$03, $03, $07, $07
	smpsVcCoarseFreq	$04, $04, $04, $04
	smpsVcRateScale		$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $12, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$07, $00, $07, $00
	smpsVcDecayRate2	$07, $00, $07, $00
	smpsVcDecayLevel	$03, $00, $03, $00
	smpsVcReleaseRate	$08, $00, $08, $00
	smpsVcTotalLevel	$12, $17, $12, $16
;	macros:
;		arp: [SPEED 2] 1 0

;	FM Voice 03 -> 03: end brass
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
	smpsVcDetune		$00, $00, $00, $00
	smpsVcCoarseFreq	$02, $02, $02, $01
	smpsVcRateScale		$01, $01, $01, $00
	smpsVcAttackRate	$10, $10, $10, $10
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$08, $08, $08, $07
	smpsVcDecayRate2	$00, $00, $00, $01
	smpsVcDecayLevel	$01, $01, $01, $02
	smpsVcReleaseRate	$07, $07, $07, $00
	smpsVcTotalLevel	$1A, $1A, $1A, $1C

;	PSG Voice 04 -> fTone_02
;	macros:
;		vol: 14 12 11 10 10 9 8 7 6 5 5 4 3 3 2 1 0 0

;	PSG Voice 05 -> fTone_01
;	macros:
;		vol: 14 14 14 13 13 13 13 12 12 12 12 11 11 11 11

;	PSG Voice 06 -> fTone_02
;	macros:
;		vol: 14 10 7 5 3 1 0

;	PSG Voice 07 -> fTone_03
;	macros:
;		vol: 13 13 12 12 11 11 10 10 9 9 9 8 7 7 7 6 6 6 6 6 6 6 6 6 6 5 5


	; Loop Pattern :  00
	; End Pattern :  03
	; End Place :  3F


Bridge_Zone_FM1:

Bridge_Zone_FM1_Jump:
	smpsCall Bridge_Zone_FM1_00_0_64
	smpsCall Bridge_Zone_FM1_01_0_64
	smpsCall Bridge_Zone_FM1_02_0_64
	smpsCall Bridge_Zone_FM1_03_0_64
	smpsJump Bridge_Zone_FM1_Jump

Bridge_Zone_FM1_00_0_64:
	smpsSetvoice	$00
	dc.b nF2, $06, $06, nF3, nF2, nE2, nE2, nE3, nE2, nD2, nD2, nD3, nD2, nC2, nC2, nC3
	dc.b nC2, nBb1, nBb1, nBb2, nBb1, nA1, nA1, nA2, nA1, nBb1, nBb1, nBb2, nBb1, nC2, nC2, nC3
	dc.b nC2
	smpsReturn

Bridge_Zone_FM1_01_0_64:
	smpsSetvoice	$00
	dc.b nF2, $06, $06, nF3, nF2, nE2, nE2, nE3, nE2, nD2, nD2, nD3, nD2, nC2, nC2, nC3
	dc.b nC2, nBb1, nBb1, nBb2, nBb1, nA1, nA1, nA2, nA1, nDs2, nDs2, nDs3, nBb1, nC2, nC2, nC3
	dc.b nC2
	smpsReturn

Bridge_Zone_FM1_02_0_64:
	smpsSetvoice	$00
	dc.b nCs2, $06, $06, nCs3, nCs2, nCs2, nCs2, nCs3, nCs2, nDs2, nDs2, nDs3, nDs2, nDs2, nDs2, nDs3
	dc.b nDs2, nCs2, nCs2, nCs3, nCs2, nCs2, nCs2, nCs3, nCs2, nDs2, nDs2, nDs3, nDs2, nCs2, nCs2, nCs3
	dc.b nCs2
	smpsReturn

Bridge_Zone_FM1_03_0_64:
	smpsSetvoice	$00
	dc.b nCs2, $06, $06, nCs3, nCs2, nCs2, nCs2, nCs3, nCs2, nDs2, nDs2, nDs3, nDs2, nDs2, nDs2, nDs3
	dc.b nDs2, nF2, nF2, nF3, nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF3
	dc.b nF2
	smpsReturn

Bridge_Zone_FM2:

Bridge_Zone_FM2_Jump:
	smpsCall Bridge_Zone_FM2_00_0_64_7F
	smpsCall Bridge_Zone_FM2_01_0_64
	smpsCall Bridge_Zone_FM2_02_0_64
	smpsCall Bridge_Zone_FM2_03_0_64
	smpsAlterVol	$FF
	smpsJump Bridge_Zone_FM2_Jump

Bridge_Zone_FM2_00_0_64_7F:
	dc.b nRst, $0C
	smpsSetvoice	$01
	smpsModSet	$00, $01, $FC, $80
	smpsModOff
	smpsAlterVol	$01
	dc.b nA2, $06, nRst, nG2, nRst, nC3, nF2, $0C, $06, $06, nRst, nE2, nRst, nA2, nD2, $0C
	dc.b $06, $06, nRst, nC2, $03, nRst, nF2, $0C, nBb2, nA2, $06, nG2, nF2, nF2, $0C, nG2
	smpsReturn

Bridge_Zone_FM2_01_0_64:
	dc.b nRst, $0C
	smpsSetvoice	$01
	dc.b nA2, $06, nRst, nG2, nRst, nC3, nF2, $0C, $06, $06, nRst, nE2, nRst, nA2, nD2, $0C
	dc.b $06, $06, nRst, nC2, $03, nRst, nF2, $0C, nG2, $36
	smpsReturn

Bridge_Zone_FM2_02_0_64:
	smpsSetvoice	$01
	dc.b nF2, $1E, $06, nG2, nAb2, nAb2, $12, nG2, $1E, nAb2, nAb2, $06, nBb2, nC3, nBb2, nDs3
	dc.b $0C, nBb2, nG2, nF2, $06
	smpsReturn

Bridge_Zone_FM2_03_0_64:
	dc.b smpsNoAttack, $1E
	smpsSetvoice	$01
	smpsModOff
	smpsModSet	$00, $01, $FC, $80
	dc.b nF2, $06, nG2, nAb2, nG2, nBb2, nRst, nG2, nBb2, nDs2, nG2, nF2
	smpsModSet	$00, $01, $03, $05
	dc.b smpsNoAttack, $5A, nRst, $06
	smpsReturn

Bridge_Zone_FM3:

Bridge_Zone_FM3_Jump:
	smpsCall Bridge_Zone_FM3_00_0_64
	smpsCall Bridge_Zone_FM3_01_0_64
	smpsCall Bridge_Zone_FM3_02_0_64
	smpsCall Bridge_Zone_FM3_03_0_64
	smpsJump Bridge_Zone_FM3_Jump

Bridge_Zone_FM3_00_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $03, $04
	dc.b nF5, $18, nE5, nD5, nC5, nBb4, nA4, nBb4, nC5
	smpsReturn

Bridge_Zone_FM3_01_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $03, $04
	dc.b nF5, $18, nE5, nD5, nC5, nBb4, nA4, nDs5, nC5
	smpsReturn

Bridge_Zone_FM3_02_0_64:
	smpsSetvoice	$03
	dc.b nCs4, $30, nDs4, $06, $06, nCs4, nDs4, $0C, $06, $06, nCs4, nCs4, $2A, $06, nDs4, $0C
	dc.b $06, $06, nCs4, nDs4, $0C, nCs4, $06
	smpsReturn

Bridge_Zone_FM3_03_0_64:
	dc.b smpsNoAttack, $1E
	smpsSetvoice	$03
	dc.b nF4, $0C, nAb4, nBb4, nG4, nDs4, nF4, $06, $54, nRst, $0C
	smpsReturn

Bridge_Zone_FM4:

Bridge_Zone_FM4_Jump:
	smpsCall Bridge_Zone_FM4_00_0_64
	smpsCall Bridge_Zone_FM4_01_0_64
	smpsCall Bridge_Zone_FM4_02_0_64
	smpsCall Bridge_Zone_FM4_03_0_64
	smpsJump Bridge_Zone_FM4_Jump

Bridge_Zone_FM4_00_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $03, $04
	dc.b nD5, $18, nC5, nBb4, nA4, nG4, nF4, nG4, nA4
	smpsReturn

Bridge_Zone_FM4_01_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $03, $04
	dc.b nD5, $18, nC5, nBb4, nA4, nG4, nF4, nB4, nA4
	smpsReturn

Bridge_Zone_FM4_02_0_64:
	smpsSetvoice	$03
	dc.b nFs3, $30, nAb3, $06, $06, nFs3, nAb3, $0C, $06, $06, nFs3, nFs3, $2A, $06, nAb3, $0C
	dc.b $06, $06, nFs3, nAb3, $0C, nFs3, $06
	smpsReturn

Bridge_Zone_FM4_03_0_64:
	dc.b smpsNoAttack, $1E
	smpsSetvoice	$03
	dc.b nCs4, $18, nDs4, nAb4, $0C, nDs4, $06, nA3, $54, nRst, $0C
	smpsReturn

Bridge_Zone_FM5:

Bridge_Zone_FM5_Jump:
	smpsCall Bridge_Zone_FM5_00_0_64
	smpsCall Bridge_Zone_FM5_01_0_64
	smpsCall Bridge_Zone_FM5_02_0_64
	smpsCall Bridge_Zone_FM5_03_0_64
	smpsJump Bridge_Zone_FM5_Jump

Bridge_Zone_FM5_00_0_64:
	smpsSetvoice	$03
	smpsModSet	$00, $01, $03, $04
	dc.b nBb4, $18, nA4, nG4, nF4, nDs4, nC4, nDs4, nF4
	smpsReturn

Bridge_Zone_FM5_01_0_64:
	smpsSetvoice	$03
	dc.b nBb4, $18, nA4, nG4, nF4, nDs4, nC4, nFs4, nF4
	smpsReturn

Bridge_Zone_FM5_02_0_64:
	smpsSetvoice	$03
	dc.b nFs2, $30, nAb2, $06, $06, nFs2, nAb2, $0C, $06, $06, nFs2, nFs2, $2A, $06, nAb2, $0C
	dc.b $06, $06, nFs2, nAb2, $0C, nFs2, $06
	smpsReturn

Bridge_Zone_FM5_03_0_64:
	dc.b smpsNoAttack, $1E
	smpsSetvoice	$03
	dc.b nF3, $0C, nAb3, nBb3, nG3, nDs3, nF3, $06, nC4, $54, nRst, $0C
	smpsReturn

Bridge_Zone_DAC:

Bridge_Zone_DAC_Jump:
	smpsCall Bridge_Zone_DAC_00_0_64
	smpsCall Bridge_Zone_DAC_00_0_64
	smpsCall Bridge_Zone_DAC_01_0_64
	smpsCall Bridge_Zone_DAC_02_0_64
	smpsJump Bridge_Zone_DAC_Jump

Bridge_Zone_DAC_00_0_64:
	dc.b dKick, $06, dKick, dSnare, dTimpani, dKick, dKick, dSnare, dKick, $0C, dKick, $06, dSnare, $0C, dKick, $06
	dc.b dKick, dSnare, dTimpani, $0C, dKick, $06, dSnare, $0C, dKick, $06, dKick, dSnare, dTimpani, $0C, dKick, $06
	dc.b dSnare, $0C, dKick, $06, dKick, dSnare, $03, $03, $06
	smpsReturn

Bridge_Zone_DAC_01_0_64:
	dc.b dTimpani, $06, dKick, dSnare, $03, dTimpani, dKick, $06, dKick, dKick, dSnare, $03, $03, dTimpani, $06, dKick
	dc.b dKick, dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, dKick, dSnare, dTimpani, dKick
	dc.b dKick, dSnare, dKick, dSnare, dKick, dTimpani, $03, $03, dKick, $06
	smpsReturn

Bridge_Zone_DAC_02_0_64:
	dc.b dKick, $06, dKick, dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, dKick, dSnare, dKick, $0C, dKick, $06
	dc.b dSnare, dKick, dTimpani, $03, $03, dKick, $06, dKick, dKick, dSnare, dKick, dKick, dKick, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, dSnare, $03, $03, $06
	smpsReturn

Bridge_Zone_PSG1:

Bridge_Zone_PSG1_Jump:
	smpsCall Bridge_Zone_PSG1_00_0_64
	smpsCall Bridge_Zone_PSG1_01_0_64
	smpsCall Bridge_Zone_PSG1_02_0_64
	smpsCall Bridge_Zone_PSG1_03_0_64
	smpsJump Bridge_Zone_PSG1_Jump

Bridge_Zone_PSG1_00_0_64:
	smpsPSGvoice	fTone_02
	dc.b nF1, $06, nF1, nF2, nF1, nE1, nE1, nE2, nE1, nD1, nD1, nD2, nD1, nC1, nC1, nC2
	dc.b nC1, nBb0, nBb0, nBb1, nBb0, nA0, nA0, nA1, nA0, nBb0, nBb0, nBb1, nBb0, nC1, nC1, nC2
	dc.b $0C
	smpsReturn

Bridge_Zone_PSG1_01_0_64:
	dc.b nF1, $06, nF1, nF2, nF1, nE1, nE1, nE2, nE1, nD1, nD1, nD2, nD1, nC1, nC1, nC2
	dc.b nC1, nBb0, nBb0, nBb1, nBb0, nA0, nA0, nA1, nA0, nDs1, nDs1, nDs2, nBb0, nC1, nC1, nC2
	dc.b nC1
	smpsReturn

Bridge_Zone_PSG1_02_0_64:
	smpsPSGvoice	fTone_01
	dc.b nCs2, $03, nAb1, nCs2, nF2, nAb2, nF2, nCs2, nAb1, nCs2, nAb1, nCs2, nF2, nAb2, nF2, nCs2
	dc.b nAb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nDs2, nBb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nDs2
	dc.b nBb1, nCs2, nAb1, nCs2, nF2, nAb2, nF2, nCs2, nAb1, nCs2, nAb1, nCs2, nF2, nAb2, nF2, nCs2
	dc.b nAb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nDs2, nBb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nDs2
	dc.b nBb1
	smpsReturn

Bridge_Zone_PSG1_03_0_64:
	smpsPSGvoice	fTone_01
	dc.b nCs2, $03, nAb1, nCs2, nF2, nAb2, nF2, nCs2, nAb1, nCs2, nAb1, nCs2, nF2, nAb2, nF2, nCs2
	dc.b nAb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nDs2, nBb1, nDs2, nBb1, nDs2, nG2, nBb2, nG2, nA2
	dc.b nF2, nA2, nC3, nF3, nC3, nF3, nA3, nA2, nF2, nA2, nC3, nF3, nC3, nF3, nA3, nA2
	dc.b nF2, nA2, nC3, nF3, nC3, nF3, nA3, nA2, nF2, nA2, nC3, nF3, nC3, nF3, nA3, nF3
	dc.b $06
	smpsReturn

Bridge_Zone_PSG2:

Bridge_Zone_PSG2_Jump:
	smpsCall Bridge_Zone_PSG2_00_0_64
	smpsCall Bridge_Zone_PSG2_01_0_64
	smpsCall Bridge_Zone_PSG2_02_0_64
	smpsCall Bridge_Zone_PSG2_03_0_64
	smpsJump Bridge_Zone_PSG2_Jump

Bridge_Zone_PSG2_00_0_64:
	dc.b nRst, $0C
	smpsPSGvoice	fTone_01
	dc.b nA2, $06, nRst, nG2, nRst, nC3, nF2, $0C, nF2, $06, nF2, nRst, nE2, nRst, nA2, nD2
	dc.b $0C, nD2, $06, nD2, nRst, nC2, $03, nRst, nF2, $0C, nBb2, nA2, $06, nG2, nF2, nF2
	dc.b $0C, nG2
	smpsReturn

Bridge_Zone_PSG2_01_0_64:
	dc.b nRst, $0C, nA2, $06, nRst, nG2, nRst, nC3, nF2, $0C, nF2, $06, nF2, nRst, nE2, nRst
	dc.b nA2, nD2, $0C, nD2, $06, nD2, nRst, nC2, $03, nRst, nF2, $0C, nG2, $36
	smpsReturn

Bridge_Zone_PSG2_02_0_64:
	dc.b nF2, $1E, nF2, $06, nG2, nAb2, nAb2, $12, nG2, $1E, nAb2, nAb2, $06, nBb2, nC3, nBb2
	dc.b nDs3, $0C, nBb2, nG2, nF2, $06
	smpsReturn

Bridge_Zone_PSG2_03_0_64:
	smpsPSGvoice	fTone_02
	dc.b nCs0, $06, nCs0, nCs1, nCs0, nCs0, nCs0, nCs1, nCs0, nDs0, nDs0, nDs1, nDs0, nDs0, nDs0, nDs1
	dc.b nDs0, nF0, nF0, nF1, nF0, nF0, nF0, nF1, nF0, nF0, nF0, nF1, nF0, nF0, nF0, nF1
	dc.b nF0
	smpsReturn

Bridge_Zone_PSG3:
	smpsPSGform	$E7

Bridge_Zone_PSG3_Jump:
	smpsCall Bridge_Zone_PSG3_00_0_64
	smpsCall Bridge_Zone_PSG3_00_0_64
	smpsCall Bridge_Zone_PSG3_00_0_64
	smpsCall Bridge_Zone_PSG3_01_0_64
	smpsJump Bridge_Zone_PSG3_Jump

Bridge_Zone_PSG3_00_0_64:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG
	smpsReturn

Bridge_Zone_PSG3_01_0_64:
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG, $03, nMaxPSG
	smpsPSGvoice	fTone_03
	dc.b nMaxPSG, $06, nMaxPSG
	smpsPSGvoice	fTone_02
	dc.b nMaxPSG
	smpsReturn
