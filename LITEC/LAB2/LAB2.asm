;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module LAB2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _compare_PARM_2
	.globl _main
	.globl _abs
	.globl _srand
	.globl _rand
	.globl _putchar
	.globl _getchar
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _PB
	.globl _SS1
	.globl _SS0
	.globl _BILED1
	.globl _BILED0
	.globl _LED3
	.globl _LED2
	.globl _LED1
	.globl _LED0
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _TXBSY
	.globl _SLVSEL
	.globl _MSTEN
	.globl _SPIEN
	.globl _AD0EN
	.globl _ADCEN
	.globl _AD0TM
	.globl _ADCTM
	.globl _AD0INT
	.globl _ADCINT
	.globl _AD0BUSY
	.globl _ADBUSY
	.globl _AD0CM1
	.globl _ADSTM1
	.globl _AD0CM0
	.globl _ADSTM0
	.globl _AD0WINT
	.globl _ADWINT
	.globl _AD0LJST
	.globl _ADLJST
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _BUSY
	.globl _ENSMB
	.globl _STA
	.globl _STO
	.globl _SI
	.globl _AA
	.globl _SMBFTE
	.globl _SMBTOE
	.globl _PT2
	.globl _PS
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0MODE
	.globl _SM00
	.globl _SM0
	.globl _SM10
	.globl _SM1
	.globl _MCE0
	.globl _SM20
	.globl _SM2
	.globl _REN0
	.globl _REN
	.globl _TB80
	.globl _TB8
	.globl _RB80
	.globl _RB8
	.globl _TI0
	.globl _TI
	.globl _RI0
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _DAC1
	.globl _DAC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _RCAP4
	.globl _TMR4
	.globl _TMR3RL
	.globl _TMR3
	.globl _RCAP2
	.globl _TMR2
	.globl _TMR1
	.globl _TMR0
	.globl _WDTCN
	.globl _PCA0CPH4
	.globl _PCA0CPH3
	.globl _PCA0CPH2
	.globl _PCA0CPH1
	.globl _PCA0CPH0
	.globl _PCA0H
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _TH4
	.globl _TL4
	.globl _SADDR1
	.globl _SBUF1
	.globl _SCON1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPL4
	.globl _PCA0CPL3
	.globl _PCA0CPL2
	.globl _PCA0CPL1
	.globl _PCA0CPL0
	.globl _PCA0L
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _RCAP4H
	.globl _RCAP4L
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _DAC1CN
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0CN
	.globl _DAC0H
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T4CON
	.globl _T2CON
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _P1MDIN
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P74OUT
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl __XPAGE
	.globl _EMI0CN
	.globl _SADEN1
	.globl _P3IF
	.globl _AMX1SL
	.globl _ADC1CF
	.globl _ADC1CN
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _PRT3CF
	.globl _P2MDOUT
	.globl _PRT2CF
	.globl _P1MDOUT
	.globl _PRT1CF
	.globl _P0MDOUT
	.globl _PRT0CF
	.globl _EMI0CF
	.globl _EMI0TC
	.globl _P2
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _SPI0CKR
	.globl _ADC1
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF0
	.globl _SBUF
	.globl _SCON0
	.globl _SCON
	.globl _P7
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _read_AD_input_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _seed
	.globl _cur
	.globl _prev
	.globl _button
	.globl _error
	.globl _flash
	.globl _pot
	.globl _light
	.globl _tries
	.globl _gamescore
	.globl _score
	.globl _gamecounts
	.globl _wait
	.globl _current
	.globl _adcast
	.globl _counts
	.globl _overflows
	.globl _Game1
	.globl _Game2
	.globl _Game3
	.globl _LEDLighter
	.globl _Flash
	.globl _Flashall
	.globl _compare
	.globl _Port_Init
	.globl _ADC_Init
	.globl _read_AD_input
	.globl _Draw_Bar
	.globl _Interrupt_Init
	.globl _Timer_Init
	.globl _Timer0_ISR
	.globl _random
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$P4$0$0 == 0x0084
_P4	=	0x0084
G$P5$0$0 == 0x0085
_P5	=	0x0085
G$P6$0$0 == 0x0086
_P6	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$P7$0$0 == 0x0096
_P7	=	0x0096
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$ADC1$0$0 == 0x009c
_ADC1	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$CPT0CN$0$0 == 0x009e
_CPT0CN	=	0x009e
G$CPT1CN$0$0 == 0x009f
_CPT1CN	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$PRT0CF$0$0 == 0x00a4
_PRT0CF	=	0x00a4
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$PRT1CF$0$0 == 0x00a5
_PRT1CF	=	0x00a5
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$PRT2CF$0$0 == 0x00a6
_PRT2CF	=	0x00a6
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$PRT3CF$0$0 == 0x00a7
_PRT3CF	=	0x00a7
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$ADC1CN$0$0 == 0x00aa
_ADC1CN	=	0x00aa
G$ADC1CF$0$0 == 0x00ab
_ADC1CF	=	0x00ab
G$AMX1SL$0$0 == 0x00ac
_AMX1SL	=	0x00ac
G$P3IF$0$0 == 0x00ad
_P3IF	=	0x00ad
G$SADEN1$0$0 == 0x00ae
_SADEN1	=	0x00ae
G$EMI0CN$0$0 == 0x00af
_EMI0CN	=	0x00af
G$_XPAGE$0$0 == 0x00af
__XPAGE	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$P74OUT$0$0 == 0x00b5
_P74OUT	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$P1MDIN$0$0 == 0x00bd
_P1MDIN	=	0x00bd
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T4CON$0$0 == 0x00c9
_T4CON	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1L$0$0 == 0x00d5
_DAC1L	=	0x00d5
G$DAC1H$0$0 == 0x00d6
_DAC1H	=	0x00d6
G$DAC1CN$0$0 == 0x00d7
_DAC1CN	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$RCAP4L$0$0 == 0x00e4
_RCAP4L	=	0x00e4
G$RCAP4H$0$0 == 0x00e5
_RCAP4H	=	0x00e5
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0L$0$0 == 0x00e9
_PCA0L	=	0x00e9
G$PCA0CPL0$0$0 == 0x00ea
_PCA0CPL0	=	0x00ea
G$PCA0CPL1$0$0 == 0x00eb
_PCA0CPL1	=	0x00eb
G$PCA0CPL2$0$0 == 0x00ec
_PCA0CPL2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPL4$0$0 == 0x00ee
_PCA0CPL4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SCON1$0$0 == 0x00f1
_SCON1	=	0x00f1
G$SBUF1$0$0 == 0x00f2
_SBUF1	=	0x00f2
G$SADDR1$0$0 == 0x00f3
_SADDR1	=	0x00f3
G$TL4$0$0 == 0x00f4
_TL4	=	0x00f4
G$TH4$0$0 == 0x00f5
_TH4	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0H$0$0 == 0x00f9
_PCA0H	=	0x00f9
G$PCA0CPH0$0$0 == 0x00fa
_PCA0CPH0	=	0x00fa
G$PCA0CPH1$0$0 == 0x00fb
_PCA0CPH1	=	0x00fb
G$PCA0CPH2$0$0 == 0x00fc
_PCA0CPH2	=	0x00fc
G$PCA0CPH3$0$0 == 0x00fd
_PCA0CPH3	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$TMR0$0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TMR1$0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR4$0$0 == 0xf5f4
_TMR4	=	0xf5f4
G$RCAP4$0$0 == 0xe5e4
_RCAP4	=	0xe5e4
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd6d5
_DAC1	=	0xd6d5
G$PCA0$0$0 == 0xf9e9
_PCA0	=	0xf9e9
G$PCA0CP0$0$0 == 0xfaea
_PCA0CP0	=	0xfaea
G$PCA0CP1$0$0 == 0xfbeb
_PCA0CP1	=	0xfbeb
G$PCA0CP2$0$0 == 0xfcec
_PCA0CP2	=	0xfcec
G$PCA0CP3$0$0 == 0xfded
_PCA0CP3	=	0xfded
G$PCA0CP4$0$0 == 0xfeee
_PCA0CP4	=	0xfeee
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$ADLJST$0$0 == 0x00e8
_ADLJST	=	0x00e8
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$ADWINT$0$0 == 0x00e9
_ADWINT	=	0x00e9
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$ADSTM0$0$0 == 0x00ea
_ADSTM0	=	0x00ea
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$ADSTM1$0$0 == 0x00eb
_ADSTM1	=	0x00eb
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$ADBUSY$0$0 == 0x00ec
_ADBUSY	=	0x00ec
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$ADCINT$0$0 == 0x00ed
_ADCINT	=	0x00ed
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$ADCTM$0$0 == 0x00ee
_ADCTM	=	0x00ee
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$ADCEN$0$0 == 0x00ef
_ADCEN	=	0x00ef
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$MSTEN$0$0 == 0x00f9
_MSTEN	=	0x00f9
G$SLVSEL$0$0 == 0x00fa
_SLVSEL	=	0x00fa
G$TXBSY$0$0 == 0x00fb
_TXBSY	=	0x00fb
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$LED0$0$0 == 0x00a6
_LED0	=	0x00a6
G$LED1$0$0 == 0x00a2
_LED1	=	0x00a2
G$LED2$0$0 == 0x00a4
_LED2	=	0x00a4
G$LED3$0$0 == 0x00a7
_LED3	=	0x00a7
G$BILED0$0$0 == 0x00a5
_BILED0	=	0x00a5
G$BILED1$0$0 == 0x00a3
_BILED1	=	0x00a3
G$SS0$0$0 == 0x00b6
_SS0	=	0x00b6
G$SS1$0$0 == 0x00b7
_SS1	=	0x00b7
G$PB$0$0 == 0x00b4
_PB	=	0x00b4
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$overflows$0$0==.
_overflows::
	.ds 10
G$counts$0$0==.
_counts::
	.ds 2
G$adcast$0$0==.
_adcast::
	.ds 2
G$current$0$0==.
_current::
	.ds 2
G$wait$0$0==.
_wait::
	.ds 2
G$gamecounts$0$0==.
_gamecounts::
	.ds 2
G$score$0$0==.
_score::
	.ds 2
G$gamescore$0$0==.
_gamescore::
	.ds 2
G$tries$0$0==.
_tries::
	.ds 1
G$light$0$0==.
_light::
	.ds 1
G$pot$0$0==.
_pot::
	.ds 1
G$flash$0$0==.
_flash::
	.ds 1
G$error$0$0==.
_error::
	.ds 1
G$button$0$0==.
_button::
	.ds 1
G$prev$0$0==.
_prev::
	.ds 1
G$cur$0$0==.
_cur::
	.ds 1
G$seed$0$0==.
_seed::
	.ds 1
LLAB2.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
LLAB2.read_AD_input$cast$1$124==.
_read_AD_input_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LLAB2.compare$acquired$1$116==.
_compare_PARM_2:
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$LAB2.c$52$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:52: unsigned int overflows[5] = {507, 456, 412, 371, 338}; //sequentially decreasing delays
	mov	(_overflows + 0),#0xfb
	mov	(_overflows + 1),#0x01
	mov	((_overflows + 0x0002) + 0),#0xc8
	mov	((_overflows + 0x0002) + 1),#0x01
	mov	((_overflows + 0x0004) + 0),#0x9c
	mov	((_overflows + 0x0004) + 1),#0x01
	mov	((_overflows + 0x0006) + 0),#0x73
	mov	((_overflows + 0x0006) + 1),#0x01
	mov	((_overflows + 0x0008) + 0),#0x52
	mov	((_overflows + 0x0008) + 1),#0x01
	C$LAB2.c$58$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:58: unsigned int score = 0; //both ints because score can hypothetically grow huge with big delays
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$59$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:59: unsigned int gamescore = 0;
	mov	_gamescore,a
	mov	(_gamescore + 1),a
	C$LAB2.c$66$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:66: unsigned char prev = 0; //keeps the first step in the games from being "no lights lit" for gameplay purposes
;	1-genFromRTrack replaced	mov	_prev,#0x00
	mov	_prev,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SYSCLK_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$SYSCLK_Init$0$0 ==.
	C$c8051_SDCC.h$62$0$0 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
;	-----------------------------------------
;	 function SYSCLK_Init
;	-----------------------------------------
_SYSCLK_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$c8051_SDCC.h$66$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
	mov	_OSCXCN,#0x67
	C$c8051_SDCC.h$69$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
	mov	r6,#0x00
	mov	r7,#0x01
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$c8051_SDCC.h$71$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$c8051_SDCC.h$73$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
	mov	_OSCICN,#0x88
	C$c8051_SDCC.h$76$1$2 ==.
	XG$SYSCLK_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
	G$UART0_Init$0$0 ==.
	C$c8051_SDCC.h$84$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
	C$c8051_SDCC.h$86$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
	mov	_SCON0,#0x50
	C$c8051_SDCC.h$87$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
	mov	_TMOD,#0x20
	C$c8051_SDCC.h$88$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
	mov	_TH1,#0xdc
	C$c8051_SDCC.h$89$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
	setb	_TR1
	C$c8051_SDCC.h$90$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
	orl	_CKCON,#0x10
	C$c8051_SDCC.h$91$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
	orl	_PCON,#0x80
	C$c8051_SDCC.h$93$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
	setb	_TI0
	C$c8051_SDCC.h$94$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
	orl	_P0MDOUT,#0x01
	C$c8051_SDCC.h$95$1$4 ==.
	XG$UART0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sys_Init'
;------------------------------------------------------------
	G$Sys_Init$0$0 ==.
	C$c8051_SDCC.h$103$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
;	-----------------------------------------
;	 function Sys_Init
;	-----------------------------------------
_Sys_Init:
	C$c8051_SDCC.h$105$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
	mov	_WDTCN,#0xde
	C$c8051_SDCC.h$106$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
	mov	_WDTCN,#0xad
	C$c8051_SDCC.h$108$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
	lcall	_SYSCLK_Init
	C$c8051_SDCC.h$109$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
	lcall	_UART0_Init
	C$c8051_SDCC.h$111$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
	orl	_XBR0,#0x04
	C$c8051_SDCC.h$112$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
	orl	_XBR2,#0x40
	C$c8051_SDCC.h$113$1$6 ==.
	XG$Sys_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$c8051_SDCC.h$129$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$c8051_SDCC.h$132$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
00101$:
	C$c8051_SDCC.h$133$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$134$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
	mov	_SBUF0,r7
	C$c8051_SDCC.h$135$1$8 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$c8051_SDCC.h$154$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$c8051_SDCC.h$157$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
00101$:
	C$c8051_SDCC.h$158$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
	jbc	_RI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$159$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
	mov	r7,_SBUF0
	C$c8051_SDCC.h$160$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
	mov	dpl,r7
	push	ar7
	lcall	_putchar
	pop	ar7
	C$c8051_SDCC.h$161$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
	mov	dpl,r7
	C$c8051_SDCC.h$162$1$10 ==.
	XG$getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_nw'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$getchar_nw$0$0 ==.
	C$c8051_SDCC.h$168$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
;	-----------------------------------------
;	 function getchar_nw
;	-----------------------------------------
_getchar_nw:
	C$c8051_SDCC.h$171$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
	jb	_RI0,00102$
	mov	dpl,#0xff
	sjmp	00104$
00102$:
	C$c8051_SDCC.h$174$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
	clr	_RI0
	C$c8051_SDCC.h$175$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
	mov	dpl,_SBUF0
	C$c8051_SDCC.h$176$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
	lcall	_putchar
	C$c8051_SDCC.h$177$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
	mov	dpl,_SBUF0
00104$:
	C$c8051_SDCC.h$179$1$12 ==.
	XG$getchar_nw$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$LAB2.c$70$1$12 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:70: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$LAB2.c$72$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:72: Sys_Init();      // System Initialization
	lcall	_Sys_Init
	C$LAB2.c$73$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:73: Port_Init();     // Initialize ports 2 and 3 
	lcall	_Port_Init
	C$LAB2.c$74$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:74: Interrupt_Init();
	lcall	_Interrupt_Init
	C$LAB2.c$75$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:75: Timer_Init();    // Initialize Timer 0 
	lcall	_Timer_Init
	C$LAB2.c$76$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:76: ADC_Init();
	lcall	_ADC_Init
	C$LAB2.c$78$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:78: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	mov	dpl,#0x20
	lcall	_putchar
	C$LAB2.c$80$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:80: printf("Feed the grim beast of randomness with a seed!\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$81$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:81: seed = getchar();
	lcall	_getchar
	mov	_seed,dpl
	C$LAB2.c$82$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:82: srand(seed); //seed rand() for the rest of the program for random gameplay
	mov	r6,_seed
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
	C$LAB2.c$84$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:84: while (1)
00123$:
	C$LAB2.c$86$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:86: TR0 = 1;
	setb	_TR0
	C$LAB2.c$87$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:87: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$88$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:88: printf("Use the slide switches to select your fate, press the button to begin.\r\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$89$3$65 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:89: while (PB) {
00101$:
	jnb	_PB,00103$
	C$LAB2.c$90$3$65 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:90: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	mov	c,_SS1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	c,_SS0
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00101$
00103$:
	C$LAB2.c$92$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:92: current = counts; //record time of push
	mov	_current,_counts
	mov	(_current + 1),(_counts + 1)
	C$LAB2.c$93$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:93: wait = counts + 28; //takes 28 overflows to make 80 ms
	mov	a,#0x1c
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$94$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:94: while (counts != wait) { //debouncing delay
00104$:
	mov	a,_wait
	cjne	a,_counts,00104$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00104$
	C$LAB2.c$97$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:97: if (SS0 && SS1) {
	jnb	_SS0,00119$
	jb	_SS1,00123$
00119$:
	C$LAB2.c$100$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:100: else if (!SS0 && SS1) {
	jb	_SS0,00115$
	jnb	_SS1,00115$
	C$LAB2.c$101$3$68 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:101: Game1();
	lcall	_Game1
	sjmp	00123$
00115$:
	C$LAB2.c$103$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:103: else if (SS0 && !SS1) {
	jnb	_SS0,00111$
	jb	_SS1,00111$
	C$LAB2.c$104$3$69 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:104: Game2();
	lcall	_Game2
	ljmp	00123$
00111$:
	C$LAB2.c$106$2$64 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:106: else if (!SS0 && !SS1) {
	jnb	_SS0,00172$
	ljmp	00123$
00172$:
	jnb	_SS1,00173$
	ljmp	00123$
00173$:
	C$LAB2.c$107$3$70 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:107: Game3();
	lcall	_Game3
	ljmp	00123$
	C$LAB2.c$111$1$63 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Game1'
;------------------------------------------------------------
	G$Game1$0$0 ==.
	C$LAB2.c$113$1$63 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:113: void Game1(void)
;	-----------------------------------------
;	 function Game1
;	-----------------------------------------
_Game1:
	C$LAB2.c$115$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:115: printf("For this gamemode, a low score wins. The computer will light a random number of LEDs, you must use the POT to match it.\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$116$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:116: printf("You get five tries, press the button to begin and to submit your answer. Good luck adventurer!\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$118$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:118: score = 0;
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$119$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:119: gamescore = 0;
	mov	_gamescore,a
	mov	(_gamescore + 1),a
	C$LAB2.c$120$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:120: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$121$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:121: tries = 0;
;	1-genFromRTrack replaced	mov	_tries,#0x00
	mov	_tries,a
	C$LAB2.c$122$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:122: P2 = 0xFF; //turn all LEDs off
	mov	_P2,#0xff
	C$LAB2.c$123$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:123: BILED1 = 0; //since we just turned everything off, this makes the BILED red
	clr	_BILED1
	C$LAB2.c$124$2$73 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:124: while (PB) 
00101$:
	jnb	_PB,00103$
	C$LAB2.c$126$2$73 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:126: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	mov	c,_SS1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	c,_SS0
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00101$
00103$:
	C$LAB2.c$128$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:128: current = counts; //record time of push
	mov	_current,_counts
	mov	(_current + 1),(_counts + 1)
	C$LAB2.c$129$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:129: wait = counts + 28; //takes 28 overflows to make 80 ms
	mov	a,#0x1c
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$130$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:130: while (counts != wait) { //debouncing delay
00104$:
	mov	a,_wait
	cjne	a,_counts,00104$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00104$
	C$LAB2.c$133$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:133: while (tries < 5) //five tries
00118$:
	mov	a,#0x100 - 0x05
	add	a,_tries
	jnc	00164$
	ljmp	00120$
00164$:
	C$LAB2.c$135$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:135: BILED0 = 1; //BILED off
	setb	_BILED0
	C$LAB2.c$136$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:136: BILED1 = 1;
	setb	_BILED1
	C$LAB2.c$137$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:137: light = random(); //get random number
	lcall	_random
	mov	_light,dpl
	C$LAB2.c$138$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:138: TR0 = 1;
	setb	_TR0
	C$LAB2.c$139$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:139: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$140$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:140: while (counts < 668) { //wait 2s
00107$:
	clr	c
	mov	a,_counts
	subb	a,#0x9c
	mov	a,(_counts + 1)
	subb	a,#0x02
	jnc	00109$
	C$LAB2.c$141$3$76 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:141: LEDLighter(light);
	mov	dpl,_light
	lcall	_LEDLighter
	sjmp	00107$
00109$:
	C$LAB2.c$143$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:143: P2 = 0xFF;
	mov	_P2,#0xff
	C$LAB2.c$144$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:144: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$145$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:145: while (PB) {
00110$:
	jnb	_PB,00112$
	C$LAB2.c$146$3$77 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:146: pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
	mov	_read_AD_input_PARM_2,#0x05
	mov	dpl,#0x04
	lcall	_read_AD_input
	C$LAB2.c$147$3$77 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:147: LEDLighter(pot);
	mov  _pot,dpl
	lcall	_LEDLighter
	sjmp	00110$
00112$:
	C$LAB2.c$149$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:149: TR0 = 0;
	clr	_TR0
	C$LAB2.c$150$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:150: gamecounts = counts;
	mov	_gamecounts,_counts
	mov	(_gamecounts + 1),(_counts + 1)
	C$LAB2.c$151$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:151: Flashall();
	lcall	_Flashall
	C$LAB2.c$152$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:152: compare(pot, light);
	mov	_compare_PARM_2,_light
	mov	dpl,_pot
	lcall	_compare
	C$LAB2.c$153$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:153: if (pot != light) { //check for answer correctness
	mov	a,_light
	cjne	a,_pot,00167$
	sjmp	00114$
00167$:
	C$LAB2.c$154$3$78 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:154: score += 10;
	mov	a,#0x0a
	add	a,_score
	mov	_score,a
	clr	a
	addc	a,(_score + 1)
	mov	(_score + 1),a
00114$:
	C$LAB2.c$156$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:156: score = score + (gamecounts / 167); //add points for time taken
	mov	__divuint_PARM_2,#0xa7
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_gamecounts
	mov	dph,(_gamecounts + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_score
	mov	_score,a
	mov	a,r7
	addc	a,(_score + 1)
	mov	(_score + 1),a
	C$LAB2.c$157$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:157: gamescore = gamescore + score;
	mov	a,_score
	add	a,_gamescore
	mov	_gamescore,a
	mov	a,(_score + 1)
	addc	a,(_gamescore + 1)
	mov	(_gamescore + 1),a
	C$LAB2.c$158$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:158: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	push	_score
	push	(_score + 1)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$LAB2.c$159$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:159: score = 0; //reset game score for the next try
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$160$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:160: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$161$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:161: TR0 = 1;
	setb	_TR0
	C$LAB2.c$162$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:162: while (counts < 334); //do nothing
00115$:
	clr	c
	mov	a,_counts
	subb	a,#0x4e
	mov	a,(_counts + 1)
	subb	a,#0x01
	jc	00115$
	C$LAB2.c$163$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:163: TR0 = 0;
	clr	_TR0
	C$LAB2.c$164$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:164: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$165$2$75 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:165: tries ++;
	inc	_tries
	ljmp	00118$
00120$:
	C$LAB2.c$167$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:167: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$LAB2.c$168$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:168: Flash();
	lcall	_Flash
	C$LAB2.c$169$1$72 ==.
	XG$Game1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Game2'
;------------------------------------------------------------
	G$Game2$0$0 ==.
	C$LAB2.c$171$1$72 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:171: void Game2(void)
;	-----------------------------------------
;	 function Game2
;	-----------------------------------------
_Game2:
	C$LAB2.c$173$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:173: printf("For this gamemode, you will duel another brave adventurer. One of you will set the POT, the other will press the BUTTON.\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$174$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:174: printf("High score wins, you get five tries, press the button to begin. Good luck adventurers!\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$176$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:176: score = 0;
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$177$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:177: gamescore = 0;
	mov	_gamescore,a
	mov	(_gamescore + 1),a
	C$LAB2.c$178$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:178: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$179$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:179: tries = 0;
;	1-genFromRTrack replaced	mov	_tries,#0x00
	mov	_tries,a
	C$LAB2.c$180$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:180: P2 = 0xFF; //turn all LEDs off
	mov	_P2,#0xff
	C$LAB2.c$181$2$81 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:181: while (PB) {
00101$:
	jnb	_PB,00103$
	C$LAB2.c$182$2$81 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:182: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	mov	c,_SS1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	c,_SS0
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00101$
00103$:
	C$LAB2.c$184$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:184: current = counts; //record time of push
	mov	_current,_counts
	mov	(_current + 1),(_counts + 1)
	C$LAB2.c$185$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:185: wait = counts + 28; //takes 28 overflows to make 80 ms
	mov	a,#0x1c
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$186$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:186: while (counts != wait) { //debouncing delay
00104$:
	mov	a,_wait
	cjne	a,_counts,00104$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00104$
	C$LAB2.c$189$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:189: while (tries < 5) //five tries
00132$:
	mov	a,#0x100 - 0x05
	add	a,_tries
	jnc	00205$
	ljmp	00134$
00205$:
	C$LAB2.c$191$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:191: button = 0;
	mov	_button,#0x00
	C$LAB2.c$192$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:192: BILED1 = 0; //BILED red
	clr	_BILED1
	C$LAB2.c$193$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:193: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$194$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:194: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$195$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:195: TR0 = 1;
	setb	_TR0
	C$LAB2.c$196$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:196: while (counts < 334); //wait 1s, do nothing
00107$:
	clr	c
	mov	a,_counts
	subb	a,#0x4e
	mov	a,(_counts + 1)
	subb	a,#0x01
	jc	00107$
	C$LAB2.c$197$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:197: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$198$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:198: pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
	mov	_read_AD_input_PARM_2,#0x05
	mov	dpl,#0x04
	lcall	_read_AD_input
	C$LAB2.c$199$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:199: LEDLighter(pot);
	mov  _pot,dpl
	lcall	_LEDLighter
	C$LAB2.c$200$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:200: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$201$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:201: while (counts < overflows[tries]) {
00121$:
	mov	a,_tries
	add	a,_tries
	add	a,#_overflows
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	subb	a,r7
	jnc	00123$
	C$LAB2.c$202$3$84 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:202: if (!PB) //push button pressed
	jb	_PB,00121$
	C$LAB2.c$204$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:204: current = counts; //record time of push
	mov	_current,_counts
	mov	(_current + 1),(_counts + 1)
	C$LAB2.c$205$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:205: wait = counts + 7; //takes 7 overflows to make 20 ms
	mov	a,#0x07
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$206$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:206: while (counts != wait) //debouncing delay
00110$:
	mov	a,_wait
	cjne	a,_counts,00110$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00110$
	C$LAB2.c$210$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:210: button ++; //increment button counter
	inc	_button
	C$LAB2.c$211$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:211: while (!PB) //wait for button release
00113$:
	jnb	_PB,00113$
	C$LAB2.c$215$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:215: wait = counts + 7; //7 overflows is 20 ms
	mov	a,#0x07
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$216$4$85 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:216: while (counts != wait) //debouncing delay
00116$:
	mov	a,_wait
	cjne	a,_counts,00116$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00116$
	sjmp	00121$
00123$:
	C$LAB2.c$222$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:222: TR0 = 0;
	clr	_TR0
	C$LAB2.c$223$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:223: Flashall();
	lcall	_Flashall
	C$LAB2.c$224$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:224: compare(pot, button);
	mov	_compare_PARM_2,_button
	mov	dpl,_pot
	lcall	_compare
	C$LAB2.c$225$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:225: if (pot == button) {
	mov	a,_button
	cjne	a,_pot,00125$
	C$LAB2.c$226$3$89 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:226: score += 10;
	mov	a,#0x0a
	add	a,_score
	mov	_score,a
	clr	a
	addc	a,(_score + 1)
	mov	(_score + 1),a
00125$:
	C$LAB2.c$228$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:228: gamescore = gamescore + score;
	mov	a,_score
	add	a,_gamescore
	mov	_gamescore,a
	mov	a,(_score + 1)
	addc	a,(_gamescore + 1)
	mov	(_gamescore + 1),a
	C$LAB2.c$229$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:229: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	push	_score
	push	(_score + 1)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$LAB2.c$230$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:230: score = 0; //reset game score for the next try
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$231$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:231: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$232$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:232: TR0 = 1;
	setb	_TR0
	C$LAB2.c$233$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:233: while (counts < 334); //do nothing
00126$:
	clr	c
	mov	a,_counts
	subb	a,#0x4e
	mov	a,(_counts + 1)
	subb	a,#0x01
	jc	00126$
	C$LAB2.c$234$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:234: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$235$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:235: BILED1 = 1;
	setb	_BILED1
	C$LAB2.c$236$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:236: while (counts < 501); //do nothing
00129$:
	clr	c
	mov	a,_counts
	subb	a,#0xf5
	mov	a,(_counts + 1)
	subb	a,#0x01
	jc	00129$
	C$LAB2.c$237$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:237: TR0 = 0;
	clr	_TR0
	C$LAB2.c$238$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:238: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$239$2$83 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:239: tries ++;
	inc	_tries
	ljmp	00132$
00134$:
	C$LAB2.c$241$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:241: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$LAB2.c$242$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:242: Flash();
	lcall	_Flash
	C$LAB2.c$243$1$80 ==.
	XG$Game2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Game3'
;------------------------------------------------------------
	G$Game3$0$0 ==.
	C$LAB2.c$245$1$80 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:245: void Game3(void)
;	-----------------------------------------
;	 function Game3
;	-----------------------------------------
_Game3:
	C$LAB2.c$247$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:247: printf("For this gamemode,high score wins. The computer will generate a test of your mettle, you will use the POT, the other will press the BUTTON.\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$248$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:248: printf("You get five tries, press the button to begin. Good luck adventurer!\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$LAB2.c$250$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:250: score = 0;
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$251$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:251: gamescore = 0;
	mov	_gamescore,a
	mov	(_gamescore + 1),a
	C$LAB2.c$252$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:252: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$253$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:253: tries = 0;
;	1-genFromRTrack replaced	mov	_tries,#0x00
	mov	_tries,a
	C$LAB2.c$254$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:254: P2 = 0xFF; //turn all LEDs off
	mov	_P2,#0xff
	C$LAB2.c$255$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:255: BILED0 = 0; //BILED red
	clr	_BILED0
	C$LAB2.c$256$2$92 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:256: while (PB) {
00101$:
	jnb	_PB,00103$
	C$LAB2.c$257$2$92 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:257: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	mov	c,_SS1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	c,_SS0
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00101$
00103$:
	C$LAB2.c$259$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:259: current = counts; //record time of push
	mov	_current,_counts
	mov	(_current + 1),(_counts + 1)
	C$LAB2.c$260$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:260: wait = counts + 28; //takes 28 overflows to make 80 ms
	mov	a,#0x1c
	add	a,_counts
	mov	_wait,a
	clr	a
	addc	a,(_counts + 1)
	mov	(_wait + 1),a
	C$LAB2.c$261$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:261: while (counts != wait) { //debouncing delay
00104$:
	mov	a,_wait
	cjne	a,_counts,00104$
	mov	a,(_wait + 1)
	cjne	a,(_counts + 1),00104$
	C$LAB2.c$264$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:264: while (tries < 5) //five tries
00119$:
	mov	a,#0x100 - 0x05
	add	a,_tries
	jnc	00165$
	ljmp	00121$
00165$:
	C$LAB2.c$266$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:266: light = random(); //get random number
	lcall	_random
	mov	_light,dpl
	C$LAB2.c$267$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:267: TR0 = 1;
	setb	_TR0
	C$LAB2.c$268$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:268: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$269$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:269: while (counts < 668) { //wait 2s
00107$:
	clr	c
	mov	a,_counts
	subb	a,#0x9c
	mov	a,(_counts + 1)
	subb	a,#0x02
	jnc	00109$
	C$LAB2.c$270$3$95 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:270: LEDLighter(light);
	mov	dpl,_light
	lcall	_LEDLighter
	sjmp	00107$
00109$:
	C$LAB2.c$272$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:272: P2 = 0xFF;
	mov	_P2,#0xff
	C$LAB2.c$273$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:273: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$274$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:274: while (counts < 668) { //wait 2s
00110$:
	clr	c
	mov	a,_counts
	subb	a,#0x9c
	mov	a,(_counts + 1)
	subb	a,#0x02
	jnc	00112$
	C$LAB2.c$275$3$96 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:275: pot = read_AD_input(4,0); //Read the A/D value on P1.4 and set casting as 0 for native AD values
	mov	_read_AD_input_PARM_2,#0x00
	mov	dpl,#0x04
	lcall	_read_AD_input
	C$LAB2.c$276$3$96 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:276: Draw_Bar(pot);
	mov  _pot,dpl
	lcall	_Draw_Bar
	sjmp	00110$
00112$:
	C$LAB2.c$278$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:278: TR0 = 0;
	clr	_TR0
	C$LAB2.c$279$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:279: Flashall();
	lcall	_Flashall
	C$LAB2.c$280$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:280: compare((pot/52), light);
	mov	b,#0x34
	mov	a,_pot
	div	ab
	mov	dpl,a
	mov	_compare_PARM_2,_light
	lcall	_compare
	C$LAB2.c$281$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:281: error = abs((light * 16) - (pot/4)) * 2;
	mov	a,_light
	mov	b,#0x10
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_pot
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	dpl,a
	mov	a,r7
	subb	a,r4
	mov	dph,a
	lcall	_abs
	mov	r6,dpl
	mov	a,r6
	add	a,r6
	mov	_error,a
	C$LAB2.c$282$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:282: if ((10 - error) > 0) {
	mov	r6,_error
	mov	r7,#0x00
	mov	a,#0x0a
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	C$LAB2.c$283$3$97 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:283: score += (10 - error);
	mov	r6,_error
	mov	r7,#0x00
	mov	a,#0x0a
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,r6
	add	a,_score
	mov	_score,a
	mov	a,r7
	addc	a,(_score + 1)
	mov	(_score + 1),a
	C$LAB2.c$286$3$98 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:286: score += 0;
00114$:
	C$LAB2.c$288$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:288: gamescore = gamescore + score;
	mov	a,_score
	add	a,_gamescore
	mov	_gamescore,a
	mov	a,(_score + 1)
	addc	a,(_gamescore + 1)
	mov	(_gamescore + 1),a
	C$LAB2.c$289$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:289: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	push	_score
	push	(_score + 1)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$LAB2.c$290$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:290: score = 0; //reset game score for the next try
	clr	a
	mov	_score,a
	mov	(_score + 1),a
	C$LAB2.c$291$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:291: counts = 0;
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$292$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:292: TR0 = 1;
	setb	_TR0
	C$LAB2.c$293$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:293: while (counts < 334); //do nothing
00116$:
	clr	c
	mov	a,_counts
	subb	a,#0x4e
	mov	a,(_counts + 1)
	subb	a,#0x01
	jc	00116$
	C$LAB2.c$294$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:294: TR0 = 0;
	clr	_TR0
	C$LAB2.c$295$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:295: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$296$2$94 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:296: tries ++;
	inc	_tries
	ljmp	00119$
00121$:
	C$LAB2.c$298$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:298: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	push	_gamescore
	push	(_gamescore + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$LAB2.c$299$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:299: Flash();
	lcall	_Flash
	C$LAB2.c$300$1$91 ==.
	XG$Game3$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LEDLighter'
;------------------------------------------------------------
;leds                      Allocated to registers r7 
;------------------------------------------------------------
	G$LEDLighter$0$0 ==.
	C$LAB2.c$302$1$91 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:302: void LEDLighter(unsigned char leds)
;	-----------------------------------------
;	 function LEDLighter
;	-----------------------------------------
_LEDLighter:
	mov	r7,dpl
	C$LAB2.c$304$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:304: LED0 = 1; //turn off all LEDs before assigning new values
	setb	_LED0
	C$LAB2.c$305$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:305: LED1 = 1;
	setb	_LED1
	C$LAB2.c$306$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:306: LED2 = 1;
	setb	_LED2
	C$LAB2.c$307$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:307: LED3 = 1; //not addressed by P2 to avoid changing BILED state
	setb	_LED3
	C$LAB2.c$309$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:309: if (leds == 0) {
	mov	a,r7
	jz	00115$
	C$LAB2.c$312$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:312: else if (leds == 1) { //handle 1 LED case
	cjne	r7,#0x01,00110$
	C$LAB2.c$313$2$102 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:313: LED0 = 0;
	clr	_LED0
	sjmp	00115$
00110$:
	C$LAB2.c$315$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:315: else if (leds == 2) { //handle 2 LED case
	cjne	r7,#0x02,00107$
	C$LAB2.c$316$2$103 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:316: LED0 = 0;
	clr	_LED0
	C$LAB2.c$317$2$103 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:317: LED1 = 0;
	clr	_LED1
	sjmp	00115$
00107$:
	C$LAB2.c$319$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:319: else if (leds == 3) { //handle 3 LED case
	cjne	r7,#0x03,00104$
	C$LAB2.c$320$2$104 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:320: LED0 = 0;
	clr	_LED0
	C$LAB2.c$321$2$104 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:321: LED1 = 0;
	clr	_LED1
	C$LAB2.c$322$2$104 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:322: LED2 = 0;
	clr	_LED2
	sjmp	00115$
00104$:
	C$LAB2.c$324$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:324: else if (leds == 4) { //handle 4 LED case
	cjne	r7,#0x04,00115$
	C$LAB2.c$325$2$105 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:325: LED0 = 0;
	clr	_LED0
	C$LAB2.c$326$2$105 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:326: LED1 = 0;
	clr	_LED1
	C$LAB2.c$327$2$105 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:327: LED2 = 0;
	clr	_LED2
	C$LAB2.c$328$2$105 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:328: LED3 = 0;
	clr	_LED3
00115$:
	C$LAB2.c$330$1$100 ==.
	XG$LEDLighter$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash'
;------------------------------------------------------------
	G$Flash$0$0 ==.
	C$LAB2.c$332$1$100 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:332: void Flash(void)
;	-----------------------------------------
;	 function Flash
;	-----------------------------------------
_Flash:
	C$LAB2.c$334$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:334: TR0 = 1;
	setb	_TR0
	C$LAB2.c$335$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:335: flash = 0;
	mov	_flash,#0x00
	C$LAB2.c$336$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:336: while (flash < 4) { //flash 8 times total, 4 red/green cycles
00107$:
	mov	a,#0x100 - 0x04
	add	a,_flash
	jc	00109$
	C$LAB2.c$337$2$108 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:337: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$338$2$108 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:338: while (counts < 42) { //1/8th of a second
00101$:
	clr	c
	mov	a,_counts
	subb	a,#0x2a
	mov	a,(_counts + 1)
	subb	a,#0x00
	jnc	00104$
	C$LAB2.c$339$3$109 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:339: BILED0 = 0;
	clr	_BILED0
	C$LAB2.c$340$3$109 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:340: BILED1 = 1;
	setb	_BILED1
	C$LAB2.c$342$2$108 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:342: while (counts < 84) { //1/4th of a second
	sjmp	00101$
00104$:
	clr	c
	mov	a,_counts
	subb	a,#0x54
	mov	a,(_counts + 1)
	subb	a,#0x00
	jnc	00106$
	C$LAB2.c$343$3$110 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:343: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$344$3$110 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:344: BILED1 = 0;
	clr	_BILED1
	sjmp	00104$
00106$:
	C$LAB2.c$346$2$108 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:346: flash ++;
	inc	_flash
	sjmp	00107$
00109$:
	C$LAB2.c$348$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:348: TR0 = 0;
	clr	_TR0
	C$LAB2.c$349$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:349: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$350$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:350: BILED1 = 1;
	setb	_BILED1
	C$LAB2.c$351$1$107 ==.
	XG$Flash$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flashall'
;------------------------------------------------------------
	G$Flashall$0$0 ==.
	C$LAB2.c$353$1$107 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:353: void Flashall(void)
;	-----------------------------------------
;	 function Flashall
;	-----------------------------------------
_Flashall:
	C$LAB2.c$355$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:355: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$356$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:356: TR0 = 1;
	setb	_TR0
	C$LAB2.c$357$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:357: while (counts < 167) { //flash LEDs on
00101$:
	clr	c
	mov	a,_counts
	subb	a,#0xa7
	mov	a,(_counts + 1)
	subb	a,#0x00
	jnc	00104$
	C$LAB2.c$358$2$113 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:358: P2 = 0x00;
	mov	_P2,#0x00
	C$LAB2.c$360$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:360: while (counts < 334) { //flash LEDs off
	sjmp	00101$
00104$:
	clr	c
	mov	a,_counts
	subb	a,#0x4e
	mov	a,(_counts + 1)
	subb	a,#0x01
	jnc	00107$
	C$LAB2.c$361$2$114 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:361: P2 = 0xFF;
	mov	_P2,#0xff
	C$LAB2.c$363$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:363: while (counts < 501) { //flash LEDs on
	sjmp	00104$
00107$:
	clr	c
	mov	a,_counts
	subb	a,#0xf5
	mov	a,(_counts + 1)
	subb	a,#0x01
	jnc	00109$
	C$LAB2.c$364$2$115 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:364: P2 = 0x00;
	mov	_P2,#0x00
	sjmp	00107$
00109$:
	C$LAB2.c$366$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:366: TR0 = 0;
	clr	_TR0
	C$LAB2.c$367$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:367: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$LAB2.c$368$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:368: P2 = 0xFF;
	mov	_P2,#0xff
	C$LAB2.c$369$1$112 ==.
	XG$Flashall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compare'
;------------------------------------------------------------
;acquired                  Allocated with name '_compare_PARM_2'
;desired                   Allocated to registers r7 
;------------------------------------------------------------
	G$compare$0$0 ==.
	C$LAB2.c$371$1$112 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:371: void compare(unsigned char desired, unsigned char acquired) {
;	-----------------------------------------
;	 function compare
;	-----------------------------------------
_compare:
	mov	r7,dpl
	C$LAB2.c$372$1$117 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:372: if (desired < acquired) {
	clr	c
	mov	a,r7
	subb	a,_compare_PARM_2
	jnc	00104$
	C$LAB2.c$373$2$118 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:373: BILED0 = 1;
	setb	_BILED0
	C$LAB2.c$374$2$118 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:374: BILED1 = 0;
	clr	_BILED1
	sjmp	00106$
00104$:
	C$LAB2.c$376$1$117 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:376: else if (desired > acquired) {
	clr	c
	mov	a,_compare_PARM_2
	subb	a,r7
	jnc	00106$
	C$LAB2.c$377$2$119 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:377: BILED0 = 0;
	clr	_BILED0
	C$LAB2.c$378$2$119 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:378: BILED1 = 1;
	setb	_BILED1
00106$:
	C$LAB2.c$380$1$117 ==.
	XG$compare$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$LAB2.c$382$1$117 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:382: void Port_Init(void)
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$LAB2.c$385$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:385: P1MDIN &= ~0x10; /* Set P1.4 for analog input */
	anl	_P1MDIN,#0xef
	C$LAB2.c$386$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:386: P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
	anl	_P1MDOUT,#0xef
	C$LAB2.c$387$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:387: P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
	orl	_P1,#0x10
	C$LAB2.c$390$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:390: P2MDOUT |= 0xFC; // set Port 2 output pins to push-pull mode 
	orl	_P2MDOUT,#0xfc
	C$LAB2.c$393$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:393: P3MDOUT &= 0x0F; // set Port 3 input pins to open drain mode
	anl	_P3MDOUT,#0x0f
	C$LAB2.c$394$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:394: P3 |= ~0x0F; // set Port 3 input pins to high impedance state
	orl	_P3,#0xf0
	C$LAB2.c$395$1$121 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$LAB2.c$397$1$121 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:397: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$LAB2.c$399$1$123 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:399: REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
	mov	_REF0CN,#0x03
	C$LAB2.c$400$1$123 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:400: ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
	mov	_ADC1CN,#0x80
	C$LAB2.c$401$1$123 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:401: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
	orl	_ADC1CF,#0x01
	C$LAB2.c$402$1$123 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;cast                      Allocated with name '_read_AD_input_PARM_2'
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$LAB2.c$404$1$123 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:404: unsigned char read_AD_input(unsigned char n, unsigned char cast)
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$LAB2.c$407$1$125 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:407: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
	anl	_ADC1CN,#0xdf
	C$LAB2.c$408$1$125 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:408: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
	orl	_ADC1CN,#0x10
	C$LAB2.c$409$1$125 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:409: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$LAB2.c$410$1$125 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:410: if (cast == 0) { //check for unmodified case
	mov	a,_read_AD_input_PARM_2
	jnz	00105$
	C$LAB2.c$411$2$126 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:411: return (ADC1); /* Return digital value in ADC1 register */
	mov	dpl,_ADC1
	sjmp	00107$
00105$:
	C$LAB2.c$414$2$127 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:414: adcast = (265 / cast) + 1; //create the casting gradient
	mov	__divsint_PARM_2,_read_AD_input_PARM_2
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dptr,#0x0109
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	_adcast,a
	clr	a
	addc	a,b
	mov	(_adcast + 1),a
	C$LAB2.c$415$2$127 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:415: return (ADC1/adcast); /* Return digital value in ADC1 register */
	mov	r6,_ADC1
	mov	r7,#0x00
	mov	__divuint_PARM_2,_adcast
	mov	(__divuint_PARM_2 + 1),(_adcast + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	C$LAB2.c$417$1$125 ==.
	XG$read_AD_input$0$0 ==.
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Draw_Bar'
;------------------------------------------------------------
;length                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$Draw_Bar$0$0 ==.
	C$LAB2.c$423$1$125 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:423: void Draw_Bar(unsigned char length)
;	-----------------------------------------
;	 function Draw_Bar
;	-----------------------------------------
_Draw_Bar:
	C$LAB2.c$426$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:426: length = length/4;
	mov	a,dpl
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
	C$LAB2.c$427$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:427: for(i=0; i<length; i++) putchar('#'); // print number of '#'
	mov	r6,#0x00
00104$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00101$
	mov	dpl,#0x23
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00104$
00101$:
	C$LAB2.c$428$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:428: length = 63 - length; // clear the rest of the line
	mov	a,#0x3f
	clr	c
	subb	a,r7
	mov	r7,a
	C$LAB2.c$429$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:429: for(i=0; i<length; i++) putchar(' '); // print (63 – length) spaces
	mov	r6,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00102$
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00107$
00102$:
	C$LAB2.c$430$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:430: putchar('|'); // print end mark '|'
	mov	dpl,#0x7c
	lcall	_putchar
	C$LAB2.c$431$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:431: putchar('\r'); // return to beginning of the line
	mov	dpl,#0x0d
	lcall	_putchar
	C$LAB2.c$432$1$129 ==.
	XG$Draw_Bar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$LAB2.c$434$1$129 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:434: void Interrupt_Init(void)
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$LAB2.c$436$1$131 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:436: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
	orl	_IE,#0x02
	C$LAB2.c$437$1$131 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:437: EA = 1;       // enable global interrupts (by sbit)
	setb	_EA
	C$LAB2.c$438$1$131 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$LAB2.c$441$1$131 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:441: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$LAB2.c$444$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:444: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
	orl	_CKCON,#0x08
	C$LAB2.c$445$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:445: TMOD &= 0xF0;   // clear the 4 least significant bits
	anl	_TMOD,#0xf0
	C$LAB2.c$446$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:446: TMOD |= 0x01;   // Timer0 in mode 1
	orl	_TMOD,#0x01
	C$LAB2.c$447$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:447: TR0 = 0;           // Stop Timer0
	clr	_TR0
	C$LAB2.c$448$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:448: TMR0 = 0;          // Clear high & low byte of T0
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$LAB2.c$449$1$133 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$LAB2.c$453$1$133 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:453: void Timer0_ISR(void) __interrupt 1
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	C$LAB2.c$455$1$135 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:455: counts ++; //incremend counts on each interrupt
	inc	_counts
	clr	a
	cjne	a,_counts,00103$
	inc	(_counts + 1)
00103$:
	pop	psw
	pop	acc
	C$LAB2.c$456$1$135 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
	G$random$0$0 ==.
	C$LAB2.c$460$1$135 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:460: unsigned char random(void)
;	-----------------------------------------
;	 function random
;	-----------------------------------------
_random:
	C$LAB2.c$462$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:462: cur = rand()%5;
	lcall	_rand
	mov	__modsint_PARM_2,#0x05
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_cur,r6
	C$LAB2.c$463$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:463: while (cur == prev) //check if the value generated was the last one we used
00101$:
	mov	a,_prev
	cjne	a,_cur,00103$
	C$LAB2.c$465$2$138 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:465: cur = rand()%5;
	lcall	_rand
	mov	__modsint_PARM_2,#0x05
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_cur,r6
	sjmp	00101$
00103$:
	C$LAB2.c$467$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:467: prev = cur;
	mov	_prev,_cur
	C$LAB2.c$468$1$137 ==.
;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:468: return cur;  // rand returns a random number between 0 and 32767.
	mov	dpl,_cur
	C$LAB2.c$471$1$137 ==.
	XG$random$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FLAB2$__str_0$0$0 == .
___str_0:
	.ascii "Feed the grim beast of randomness with a seed!"
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_1$0$0 == .
___str_1:
	.ascii "Use the slide switches to select your fate, press the button"
	.ascii " to begin."
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_2$0$0 == .
___str_2:
	.ascii "(0 means on) SS0: %d SS1: %d"
	.db 0x0d
	.db 0x00
FLAB2$__str_3$0$0 == .
___str_3:
	.ascii "For this gamemode, a low score wins. The computer will light"
	.ascii " a random number of LEDs, you must use the POT to match it."
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_4$0$0 == .
___str_4:
	.ascii "You get five tries, press the button to begin and to submit "
	.ascii "your answer. Good luck adventurer!"
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_5$0$0 == .
___str_5:
	.ascii "Your score for this try is %i, your score for the game so fa"
	.ascii "r is %i"
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_6$0$0 == .
___str_6:
	.ascii "Your final score is %i, you are a brave adventurer!"
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_7$0$0 == .
___str_7:
	.ascii "For this gamemode, you will duel another brave adventurer. O"
	.ascii "ne of you will set the POT, the other will press the BUTTON."
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_8$0$0 == .
___str_8:
	.ascii "High score wins, you get five tries, press the button to beg"
	.ascii "in. Good luck adventurers!"
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_9$0$0 == .
___str_9:
	.ascii "For this gamemode,high score wins. The computer will generat"
	.ascii "e a test of your mettle, you will use the POT, the other wil"
	.ascii "l press the BUTTON."
	.db 0x0d
	.db 0x0a
	.db 0x00
FLAB2$__str_10$0$0 == .
___str_10:
	.ascii "You get five tries, press the button to begin. Good luck adv"
	.ascii "enturer!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
