                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LAB2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _compare_PARM_2
                                     12 	.globl _main
                                     13 	.globl _abs
                                     14 	.globl _srand
                                     15 	.globl _rand
                                     16 	.globl _putchar
                                     17 	.globl _getchar
                                     18 	.globl _printf
                                     19 	.globl _getchar_nw
                                     20 	.globl _Sys_Init
                                     21 	.globl _UART0_Init
                                     22 	.globl _SYSCLK_Init
                                     23 	.globl _PB
                                     24 	.globl _SS1
                                     25 	.globl _SS0
                                     26 	.globl _BILED1
                                     27 	.globl _BILED0
                                     28 	.globl _LED3
                                     29 	.globl _LED2
                                     30 	.globl _LED1
                                     31 	.globl _LED0
                                     32 	.globl _SPIF
                                     33 	.globl _WCOL
                                     34 	.globl _MODF
                                     35 	.globl _RXOVRN
                                     36 	.globl _TXBSY
                                     37 	.globl _SLVSEL
                                     38 	.globl _MSTEN
                                     39 	.globl _SPIEN
                                     40 	.globl _AD0EN
                                     41 	.globl _ADCEN
                                     42 	.globl _AD0TM
                                     43 	.globl _ADCTM
                                     44 	.globl _AD0INT
                                     45 	.globl _ADCINT
                                     46 	.globl _AD0BUSY
                                     47 	.globl _ADBUSY
                                     48 	.globl _AD0CM1
                                     49 	.globl _ADSTM1
                                     50 	.globl _AD0CM0
                                     51 	.globl _ADSTM0
                                     52 	.globl _AD0WINT
                                     53 	.globl _ADWINT
                                     54 	.globl _AD0LJST
                                     55 	.globl _ADLJST
                                     56 	.globl _CF
                                     57 	.globl _CR
                                     58 	.globl _CCF4
                                     59 	.globl _CCF3
                                     60 	.globl _CCF2
                                     61 	.globl _CCF1
                                     62 	.globl _CCF0
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _TF2
                                     72 	.globl _EXF2
                                     73 	.globl _RCLK
                                     74 	.globl _TCLK
                                     75 	.globl _EXEN2
                                     76 	.globl _TR2
                                     77 	.globl _CT2
                                     78 	.globl _CPRL2
                                     79 	.globl _BUSY
                                     80 	.globl _ENSMB
                                     81 	.globl _STA
                                     82 	.globl _STO
                                     83 	.globl _SI
                                     84 	.globl _AA
                                     85 	.globl _SMBFTE
                                     86 	.globl _SMBTOE
                                     87 	.globl _PT2
                                     88 	.globl _PS
                                     89 	.globl _PS0
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ET2
                                    104 	.globl _ES
                                    105 	.globl _ES0
                                    106 	.globl _ET1
                                    107 	.globl _EX1
                                    108 	.globl _ET0
                                    109 	.globl _EX0
                                    110 	.globl _P2_7
                                    111 	.globl _P2_6
                                    112 	.globl _P2_5
                                    113 	.globl _P2_4
                                    114 	.globl _P2_3
                                    115 	.globl _P2_2
                                    116 	.globl _P2_1
                                    117 	.globl _P2_0
                                    118 	.globl _S0MODE
                                    119 	.globl _SM00
                                    120 	.globl _SM0
                                    121 	.globl _SM10
                                    122 	.globl _SM1
                                    123 	.globl _MCE0
                                    124 	.globl _SM20
                                    125 	.globl _SM2
                                    126 	.globl _REN0
                                    127 	.globl _REN
                                    128 	.globl _TB80
                                    129 	.globl _TB8
                                    130 	.globl _RB80
                                    131 	.globl _RB8
                                    132 	.globl _TI0
                                    133 	.globl _TI
                                    134 	.globl _RI0
                                    135 	.globl _RI
                                    136 	.globl _P1_7
                                    137 	.globl _P1_6
                                    138 	.globl _P1_5
                                    139 	.globl _P1_4
                                    140 	.globl _P1_3
                                    141 	.globl _P1_2
                                    142 	.globl _P1_1
                                    143 	.globl _P1_0
                                    144 	.globl _TF1
                                    145 	.globl _TR1
                                    146 	.globl _TF0
                                    147 	.globl _TR0
                                    148 	.globl _IE1
                                    149 	.globl _IT1
                                    150 	.globl _IE0
                                    151 	.globl _IT0
                                    152 	.globl _P0_7
                                    153 	.globl _P0_6
                                    154 	.globl _P0_5
                                    155 	.globl _P0_4
                                    156 	.globl _P0_3
                                    157 	.globl _P0_2
                                    158 	.globl _P0_1
                                    159 	.globl _P0_0
                                    160 	.globl _PCA0CP4
                                    161 	.globl _PCA0CP3
                                    162 	.globl _PCA0CP2
                                    163 	.globl _PCA0CP1
                                    164 	.globl _PCA0CP0
                                    165 	.globl _PCA0
                                    166 	.globl _DAC1
                                    167 	.globl _DAC0
                                    168 	.globl _ADC0LT
                                    169 	.globl _ADC0GT
                                    170 	.globl _ADC0
                                    171 	.globl _RCAP4
                                    172 	.globl _TMR4
                                    173 	.globl _TMR3RL
                                    174 	.globl _TMR3
                                    175 	.globl _RCAP2
                                    176 	.globl _TMR2
                                    177 	.globl _TMR1
                                    178 	.globl _TMR0
                                    179 	.globl _WDTCN
                                    180 	.globl _PCA0CPH4
                                    181 	.globl _PCA0CPH3
                                    182 	.globl _PCA0CPH2
                                    183 	.globl _PCA0CPH1
                                    184 	.globl _PCA0CPH0
                                    185 	.globl _PCA0H
                                    186 	.globl _SPI0CN
                                    187 	.globl _EIP2
                                    188 	.globl _EIP1
                                    189 	.globl _TH4
                                    190 	.globl _TL4
                                    191 	.globl _SADDR1
                                    192 	.globl _SBUF1
                                    193 	.globl _SCON1
                                    194 	.globl _B
                                    195 	.globl _RSTSRC
                                    196 	.globl _PCA0CPL4
                                    197 	.globl _PCA0CPL3
                                    198 	.globl _PCA0CPL2
                                    199 	.globl _PCA0CPL1
                                    200 	.globl _PCA0CPL0
                                    201 	.globl _PCA0L
                                    202 	.globl _ADC0CN
                                    203 	.globl _EIE2
                                    204 	.globl _EIE1
                                    205 	.globl _RCAP4H
                                    206 	.globl _RCAP4L
                                    207 	.globl _XBR2
                                    208 	.globl _XBR1
                                    209 	.globl _XBR0
                                    210 	.globl _ACC
                                    211 	.globl _PCA0CPM4
                                    212 	.globl _PCA0CPM3
                                    213 	.globl _PCA0CPM2
                                    214 	.globl _PCA0CPM1
                                    215 	.globl _PCA0CPM0
                                    216 	.globl _PCA0MD
                                    217 	.globl _PCA0CN
                                    218 	.globl _DAC1CN
                                    219 	.globl _DAC1H
                                    220 	.globl _DAC1L
                                    221 	.globl _DAC0CN
                                    222 	.globl _DAC0H
                                    223 	.globl _DAC0L
                                    224 	.globl _REF0CN
                                    225 	.globl _PSW
                                    226 	.globl _SMB0CR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T4CON
                                    232 	.globl _T2CON
                                    233 	.globl _ADC0LTH
                                    234 	.globl _ADC0LTL
                                    235 	.globl _ADC0GTH
                                    236 	.globl _ADC0GTL
                                    237 	.globl _SMB0ADR
                                    238 	.globl _SMB0DAT
                                    239 	.globl _SMB0STA
                                    240 	.globl _SMB0CN
                                    241 	.globl _ADC0H
                                    242 	.globl _ADC0L
                                    243 	.globl _P1MDIN
                                    244 	.globl _ADC0CF
                                    245 	.globl _AMX0SL
                                    246 	.globl _AMX0CF
                                    247 	.globl _SADEN0
                                    248 	.globl _IP
                                    249 	.globl _FLACL
                                    250 	.globl _FLSCL
                                    251 	.globl _P74OUT
                                    252 	.globl _OSCICN
                                    253 	.globl _OSCXCN
                                    254 	.globl _P3
                                    255 	.globl __XPAGE
                                    256 	.globl _EMI0CN
                                    257 	.globl _SADEN1
                                    258 	.globl _P3IF
                                    259 	.globl _AMX1SL
                                    260 	.globl _ADC1CF
                                    261 	.globl _ADC1CN
                                    262 	.globl _SADDR0
                                    263 	.globl _IE
                                    264 	.globl _P3MDOUT
                                    265 	.globl _PRT3CF
                                    266 	.globl _P2MDOUT
                                    267 	.globl _PRT2CF
                                    268 	.globl _P1MDOUT
                                    269 	.globl _PRT1CF
                                    270 	.globl _P0MDOUT
                                    271 	.globl _PRT0CF
                                    272 	.globl _EMI0CF
                                    273 	.globl _EMI0TC
                                    274 	.globl _P2
                                    275 	.globl _CPT1CN
                                    276 	.globl _CPT0CN
                                    277 	.globl _SPI0CKR
                                    278 	.globl _ADC1
                                    279 	.globl _SPI0DAT
                                    280 	.globl _SPI0CFG
                                    281 	.globl _SBUF0
                                    282 	.globl _SBUF
                                    283 	.globl _SCON0
                                    284 	.globl _SCON
                                    285 	.globl _P7
                                    286 	.globl _TMR3H
                                    287 	.globl _TMR3L
                                    288 	.globl _TMR3RLH
                                    289 	.globl _TMR3RLL
                                    290 	.globl _TMR3CN
                                    291 	.globl _P1
                                    292 	.globl _PSCTL
                                    293 	.globl _CKCON
                                    294 	.globl _TH1
                                    295 	.globl _TH0
                                    296 	.globl _TL1
                                    297 	.globl _TL0
                                    298 	.globl _TMOD
                                    299 	.globl _TCON
                                    300 	.globl _PCON
                                    301 	.globl _P6
                                    302 	.globl _P5
                                    303 	.globl _P4
                                    304 	.globl _DPH
                                    305 	.globl _DPL
                                    306 	.globl _SP
                                    307 	.globl _P0
                                    308 	.globl _read_AD_input_PARM_2
                                    309 	.globl _aligned_alloc_PARM_2
                                    310 	.globl _seed
                                    311 	.globl _cur
                                    312 	.globl _prev
                                    313 	.globl _button
                                    314 	.globl _error
                                    315 	.globl _flash
                                    316 	.globl _pot
                                    317 	.globl _light
                                    318 	.globl _tries
                                    319 	.globl _gamescore
                                    320 	.globl _score
                                    321 	.globl _gamecounts
                                    322 	.globl _wait
                                    323 	.globl _current
                                    324 	.globl _adcast
                                    325 	.globl _counts
                                    326 	.globl _overflows
                                    327 	.globl _Game1
                                    328 	.globl _Game2
                                    329 	.globl _Game3
                                    330 	.globl _LEDLighter
                                    331 	.globl _Flash
                                    332 	.globl _Flashall
                                    333 	.globl _compare
                                    334 	.globl _Port_Init
                                    335 	.globl _ADC_Init
                                    336 	.globl _read_AD_input
                                    337 	.globl _Draw_Bar
                                    338 	.globl _Interrupt_Init
                                    339 	.globl _Timer_Init
                                    340 	.globl _Timer0_ISR
                                    341 	.globl _random
                                    342 ;--------------------------------------------------------
                                    343 ; special function registers
                                    344 ;--------------------------------------------------------
                                    345 	.area RSEG    (ABS,DATA)
      000000                        346 	.org 0x0000
                           000080   347 G$P0$0$0 == 0x0080
                           000080   348 _P0	=	0x0080
                           000081   349 G$SP$0$0 == 0x0081
                           000081   350 _SP	=	0x0081
                           000082   351 G$DPL$0$0 == 0x0082
                           000082   352 _DPL	=	0x0082
                           000083   353 G$DPH$0$0 == 0x0083
                           000083   354 _DPH	=	0x0083
                           000084   355 G$P4$0$0 == 0x0084
                           000084   356 _P4	=	0x0084
                           000085   357 G$P5$0$0 == 0x0085
                           000085   358 _P5	=	0x0085
                           000086   359 G$P6$0$0 == 0x0086
                           000086   360 _P6	=	0x0086
                           000087   361 G$PCON$0$0 == 0x0087
                           000087   362 _PCON	=	0x0087
                           000088   363 G$TCON$0$0 == 0x0088
                           000088   364 _TCON	=	0x0088
                           000089   365 G$TMOD$0$0 == 0x0089
                           000089   366 _TMOD	=	0x0089
                           00008A   367 G$TL0$0$0 == 0x008a
                           00008A   368 _TL0	=	0x008a
                           00008B   369 G$TL1$0$0 == 0x008b
                           00008B   370 _TL1	=	0x008b
                           00008C   371 G$TH0$0$0 == 0x008c
                           00008C   372 _TH0	=	0x008c
                           00008D   373 G$TH1$0$0 == 0x008d
                           00008D   374 _TH1	=	0x008d
                           00008E   375 G$CKCON$0$0 == 0x008e
                           00008E   376 _CKCON	=	0x008e
                           00008F   377 G$PSCTL$0$0 == 0x008f
                           00008F   378 _PSCTL	=	0x008f
                           000090   379 G$P1$0$0 == 0x0090
                           000090   380 _P1	=	0x0090
                           000091   381 G$TMR3CN$0$0 == 0x0091
                           000091   382 _TMR3CN	=	0x0091
                           000092   383 G$TMR3RLL$0$0 == 0x0092
                           000092   384 _TMR3RLL	=	0x0092
                           000093   385 G$TMR3RLH$0$0 == 0x0093
                           000093   386 _TMR3RLH	=	0x0093
                           000094   387 G$TMR3L$0$0 == 0x0094
                           000094   388 _TMR3L	=	0x0094
                           000095   389 G$TMR3H$0$0 == 0x0095
                           000095   390 _TMR3H	=	0x0095
                           000096   391 G$P7$0$0 == 0x0096
                           000096   392 _P7	=	0x0096
                           000098   393 G$SCON$0$0 == 0x0098
                           000098   394 _SCON	=	0x0098
                           000098   395 G$SCON0$0$0 == 0x0098
                           000098   396 _SCON0	=	0x0098
                           000099   397 G$SBUF$0$0 == 0x0099
                           000099   398 _SBUF	=	0x0099
                           000099   399 G$SBUF0$0$0 == 0x0099
                           000099   400 _SBUF0	=	0x0099
                           00009A   401 G$SPI0CFG$0$0 == 0x009a
                           00009A   402 _SPI0CFG	=	0x009a
                           00009B   403 G$SPI0DAT$0$0 == 0x009b
                           00009B   404 _SPI0DAT	=	0x009b
                           00009C   405 G$ADC1$0$0 == 0x009c
                           00009C   406 _ADC1	=	0x009c
                           00009D   407 G$SPI0CKR$0$0 == 0x009d
                           00009D   408 _SPI0CKR	=	0x009d
                           00009E   409 G$CPT0CN$0$0 == 0x009e
                           00009E   410 _CPT0CN	=	0x009e
                           00009F   411 G$CPT1CN$0$0 == 0x009f
                           00009F   412 _CPT1CN	=	0x009f
                           0000A0   413 G$P2$0$0 == 0x00a0
                           0000A0   414 _P2	=	0x00a0
                           0000A1   415 G$EMI0TC$0$0 == 0x00a1
                           0000A1   416 _EMI0TC	=	0x00a1
                           0000A3   417 G$EMI0CF$0$0 == 0x00a3
                           0000A3   418 _EMI0CF	=	0x00a3
                           0000A4   419 G$PRT0CF$0$0 == 0x00a4
                           0000A4   420 _PRT0CF	=	0x00a4
                           0000A4   421 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   422 _P0MDOUT	=	0x00a4
                           0000A5   423 G$PRT1CF$0$0 == 0x00a5
                           0000A5   424 _PRT1CF	=	0x00a5
                           0000A5   425 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   426 _P1MDOUT	=	0x00a5
                           0000A6   427 G$PRT2CF$0$0 == 0x00a6
                           0000A6   428 _PRT2CF	=	0x00a6
                           0000A6   429 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   430 _P2MDOUT	=	0x00a6
                           0000A7   431 G$PRT3CF$0$0 == 0x00a7
                           0000A7   432 _PRT3CF	=	0x00a7
                           0000A7   433 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   434 _P3MDOUT	=	0x00a7
                           0000A8   435 G$IE$0$0 == 0x00a8
                           0000A8   436 _IE	=	0x00a8
                           0000A9   437 G$SADDR0$0$0 == 0x00a9
                           0000A9   438 _SADDR0	=	0x00a9
                           0000AA   439 G$ADC1CN$0$0 == 0x00aa
                           0000AA   440 _ADC1CN	=	0x00aa
                           0000AB   441 G$ADC1CF$0$0 == 0x00ab
                           0000AB   442 _ADC1CF	=	0x00ab
                           0000AC   443 G$AMX1SL$0$0 == 0x00ac
                           0000AC   444 _AMX1SL	=	0x00ac
                           0000AD   445 G$P3IF$0$0 == 0x00ad
                           0000AD   446 _P3IF	=	0x00ad
                           0000AE   447 G$SADEN1$0$0 == 0x00ae
                           0000AE   448 _SADEN1	=	0x00ae
                           0000AF   449 G$EMI0CN$0$0 == 0x00af
                           0000AF   450 _EMI0CN	=	0x00af
                           0000AF   451 G$_XPAGE$0$0 == 0x00af
                           0000AF   452 __XPAGE	=	0x00af
                           0000B0   453 G$P3$0$0 == 0x00b0
                           0000B0   454 _P3	=	0x00b0
                           0000B1   455 G$OSCXCN$0$0 == 0x00b1
                           0000B1   456 _OSCXCN	=	0x00b1
                           0000B2   457 G$OSCICN$0$0 == 0x00b2
                           0000B2   458 _OSCICN	=	0x00b2
                           0000B5   459 G$P74OUT$0$0 == 0x00b5
                           0000B5   460 _P74OUT	=	0x00b5
                           0000B6   461 G$FLSCL$0$0 == 0x00b6
                           0000B6   462 _FLSCL	=	0x00b6
                           0000B7   463 G$FLACL$0$0 == 0x00b7
                           0000B7   464 _FLACL	=	0x00b7
                           0000B8   465 G$IP$0$0 == 0x00b8
                           0000B8   466 _IP	=	0x00b8
                           0000B9   467 G$SADEN0$0$0 == 0x00b9
                           0000B9   468 _SADEN0	=	0x00b9
                           0000BA   469 G$AMX0CF$0$0 == 0x00ba
                           0000BA   470 _AMX0CF	=	0x00ba
                           0000BB   471 G$AMX0SL$0$0 == 0x00bb
                           0000BB   472 _AMX0SL	=	0x00bb
                           0000BC   473 G$ADC0CF$0$0 == 0x00bc
                           0000BC   474 _ADC0CF	=	0x00bc
                           0000BD   475 G$P1MDIN$0$0 == 0x00bd
                           0000BD   476 _P1MDIN	=	0x00bd
                           0000BE   477 G$ADC0L$0$0 == 0x00be
                           0000BE   478 _ADC0L	=	0x00be
                           0000BF   479 G$ADC0H$0$0 == 0x00bf
                           0000BF   480 _ADC0H	=	0x00bf
                           0000C0   481 G$SMB0CN$0$0 == 0x00c0
                           0000C0   482 _SMB0CN	=	0x00c0
                           0000C1   483 G$SMB0STA$0$0 == 0x00c1
                           0000C1   484 _SMB0STA	=	0x00c1
                           0000C2   485 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   486 _SMB0DAT	=	0x00c2
                           0000C3   487 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   488 _SMB0ADR	=	0x00c3
                           0000C4   489 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   490 _ADC0GTL	=	0x00c4
                           0000C5   491 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   492 _ADC0GTH	=	0x00c5
                           0000C6   493 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   494 _ADC0LTL	=	0x00c6
                           0000C7   495 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   496 _ADC0LTH	=	0x00c7
                           0000C8   497 G$T2CON$0$0 == 0x00c8
                           0000C8   498 _T2CON	=	0x00c8
                           0000C9   499 G$T4CON$0$0 == 0x00c9
                           0000C9   500 _T4CON	=	0x00c9
                           0000CA   501 G$RCAP2L$0$0 == 0x00ca
                           0000CA   502 _RCAP2L	=	0x00ca
                           0000CB   503 G$RCAP2H$0$0 == 0x00cb
                           0000CB   504 _RCAP2H	=	0x00cb
                           0000CC   505 G$TL2$0$0 == 0x00cc
                           0000CC   506 _TL2	=	0x00cc
                           0000CD   507 G$TH2$0$0 == 0x00cd
                           0000CD   508 _TH2	=	0x00cd
                           0000CF   509 G$SMB0CR$0$0 == 0x00cf
                           0000CF   510 _SMB0CR	=	0x00cf
                           0000D0   511 G$PSW$0$0 == 0x00d0
                           0000D0   512 _PSW	=	0x00d0
                           0000D1   513 G$REF0CN$0$0 == 0x00d1
                           0000D1   514 _REF0CN	=	0x00d1
                           0000D2   515 G$DAC0L$0$0 == 0x00d2
                           0000D2   516 _DAC0L	=	0x00d2
                           0000D3   517 G$DAC0H$0$0 == 0x00d3
                           0000D3   518 _DAC0H	=	0x00d3
                           0000D4   519 G$DAC0CN$0$0 == 0x00d4
                           0000D4   520 _DAC0CN	=	0x00d4
                           0000D5   521 G$DAC1L$0$0 == 0x00d5
                           0000D5   522 _DAC1L	=	0x00d5
                           0000D6   523 G$DAC1H$0$0 == 0x00d6
                           0000D6   524 _DAC1H	=	0x00d6
                           0000D7   525 G$DAC1CN$0$0 == 0x00d7
                           0000D7   526 _DAC1CN	=	0x00d7
                           0000D8   527 G$PCA0CN$0$0 == 0x00d8
                           0000D8   528 _PCA0CN	=	0x00d8
                           0000D9   529 G$PCA0MD$0$0 == 0x00d9
                           0000D9   530 _PCA0MD	=	0x00d9
                           0000DA   531 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   532 _PCA0CPM0	=	0x00da
                           0000DB   533 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   534 _PCA0CPM1	=	0x00db
                           0000DC   535 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   536 _PCA0CPM2	=	0x00dc
                           0000DD   537 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   538 _PCA0CPM3	=	0x00dd
                           0000DE   539 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   540 _PCA0CPM4	=	0x00de
                           0000E0   541 G$ACC$0$0 == 0x00e0
                           0000E0   542 _ACC	=	0x00e0
                           0000E1   543 G$XBR0$0$0 == 0x00e1
                           0000E1   544 _XBR0	=	0x00e1
                           0000E2   545 G$XBR1$0$0 == 0x00e2
                           0000E2   546 _XBR1	=	0x00e2
                           0000E3   547 G$XBR2$0$0 == 0x00e3
                           0000E3   548 _XBR2	=	0x00e3
                           0000E4   549 G$RCAP4L$0$0 == 0x00e4
                           0000E4   550 _RCAP4L	=	0x00e4
                           0000E5   551 G$RCAP4H$0$0 == 0x00e5
                           0000E5   552 _RCAP4H	=	0x00e5
                           0000E6   553 G$EIE1$0$0 == 0x00e6
                           0000E6   554 _EIE1	=	0x00e6
                           0000E7   555 G$EIE2$0$0 == 0x00e7
                           0000E7   556 _EIE2	=	0x00e7
                           0000E8   557 G$ADC0CN$0$0 == 0x00e8
                           0000E8   558 _ADC0CN	=	0x00e8
                           0000E9   559 G$PCA0L$0$0 == 0x00e9
                           0000E9   560 _PCA0L	=	0x00e9
                           0000EA   561 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   562 _PCA0CPL0	=	0x00ea
                           0000EB   563 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   564 _PCA0CPL1	=	0x00eb
                           0000EC   565 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   566 _PCA0CPL2	=	0x00ec
                           0000ED   567 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   568 _PCA0CPL3	=	0x00ed
                           0000EE   569 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   570 _PCA0CPL4	=	0x00ee
                           0000EF   571 G$RSTSRC$0$0 == 0x00ef
                           0000EF   572 _RSTSRC	=	0x00ef
                           0000F0   573 G$B$0$0 == 0x00f0
                           0000F0   574 _B	=	0x00f0
                           0000F1   575 G$SCON1$0$0 == 0x00f1
                           0000F1   576 _SCON1	=	0x00f1
                           0000F2   577 G$SBUF1$0$0 == 0x00f2
                           0000F2   578 _SBUF1	=	0x00f2
                           0000F3   579 G$SADDR1$0$0 == 0x00f3
                           0000F3   580 _SADDR1	=	0x00f3
                           0000F4   581 G$TL4$0$0 == 0x00f4
                           0000F4   582 _TL4	=	0x00f4
                           0000F5   583 G$TH4$0$0 == 0x00f5
                           0000F5   584 _TH4	=	0x00f5
                           0000F6   585 G$EIP1$0$0 == 0x00f6
                           0000F6   586 _EIP1	=	0x00f6
                           0000F7   587 G$EIP2$0$0 == 0x00f7
                           0000F7   588 _EIP2	=	0x00f7
                           0000F8   589 G$SPI0CN$0$0 == 0x00f8
                           0000F8   590 _SPI0CN	=	0x00f8
                           0000F9   591 G$PCA0H$0$0 == 0x00f9
                           0000F9   592 _PCA0H	=	0x00f9
                           0000FA   593 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   594 _PCA0CPH0	=	0x00fa
                           0000FB   595 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   596 _PCA0CPH1	=	0x00fb
                           0000FC   597 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   598 _PCA0CPH2	=	0x00fc
                           0000FD   599 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   600 _PCA0CPH3	=	0x00fd
                           0000FE   601 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   602 _PCA0CPH4	=	0x00fe
                           0000FF   603 G$WDTCN$0$0 == 0x00ff
                           0000FF   604 _WDTCN	=	0x00ff
                           008C8A   605 G$TMR0$0$0 == 0x8c8a
                           008C8A   606 _TMR0	=	0x8c8a
                           008D8B   607 G$TMR1$0$0 == 0x8d8b
                           008D8B   608 _TMR1	=	0x8d8b
                           00CDCC   609 G$TMR2$0$0 == 0xcdcc
                           00CDCC   610 _TMR2	=	0xcdcc
                           00CBCA   611 G$RCAP2$0$0 == 0xcbca
                           00CBCA   612 _RCAP2	=	0xcbca
                           009594   613 G$TMR3$0$0 == 0x9594
                           009594   614 _TMR3	=	0x9594
                           009392   615 G$TMR3RL$0$0 == 0x9392
                           009392   616 _TMR3RL	=	0x9392
                           00F5F4   617 G$TMR4$0$0 == 0xf5f4
                           00F5F4   618 _TMR4	=	0xf5f4
                           00E5E4   619 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   620 _RCAP4	=	0xe5e4
                           00BFBE   621 G$ADC0$0$0 == 0xbfbe
                           00BFBE   622 _ADC0	=	0xbfbe
                           00C5C4   623 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   624 _ADC0GT	=	0xc5c4
                           00C7C6   625 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   626 _ADC0LT	=	0xc7c6
                           00D3D2   627 G$DAC0$0$0 == 0xd3d2
                           00D3D2   628 _DAC0	=	0xd3d2
                           00D6D5   629 G$DAC1$0$0 == 0xd6d5
                           00D6D5   630 _DAC1	=	0xd6d5
                           00F9E9   631 G$PCA0$0$0 == 0xf9e9
                           00F9E9   632 _PCA0	=	0xf9e9
                           00FAEA   633 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   634 _PCA0CP0	=	0xfaea
                           00FBEB   635 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   636 _PCA0CP1	=	0xfbeb
                           00FCEC   637 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   638 _PCA0CP2	=	0xfcec
                           00FDED   639 G$PCA0CP3$0$0 == 0xfded
                           00FDED   640 _PCA0CP3	=	0xfded
                           00FEEE   641 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   642 _PCA0CP4	=	0xfeee
                                    643 ;--------------------------------------------------------
                                    644 ; special function bits
                                    645 ;--------------------------------------------------------
                                    646 	.area RSEG    (ABS,DATA)
      000000                        647 	.org 0x0000
                           000080   648 G$P0_0$0$0 == 0x0080
                           000080   649 _P0_0	=	0x0080
                           000081   650 G$P0_1$0$0 == 0x0081
                           000081   651 _P0_1	=	0x0081
                           000082   652 G$P0_2$0$0 == 0x0082
                           000082   653 _P0_2	=	0x0082
                           000083   654 G$P0_3$0$0 == 0x0083
                           000083   655 _P0_3	=	0x0083
                           000084   656 G$P0_4$0$0 == 0x0084
                           000084   657 _P0_4	=	0x0084
                           000085   658 G$P0_5$0$0 == 0x0085
                           000085   659 _P0_5	=	0x0085
                           000086   660 G$P0_6$0$0 == 0x0086
                           000086   661 _P0_6	=	0x0086
                           000087   662 G$P0_7$0$0 == 0x0087
                           000087   663 _P0_7	=	0x0087
                           000088   664 G$IT0$0$0 == 0x0088
                           000088   665 _IT0	=	0x0088
                           000089   666 G$IE0$0$0 == 0x0089
                           000089   667 _IE0	=	0x0089
                           00008A   668 G$IT1$0$0 == 0x008a
                           00008A   669 _IT1	=	0x008a
                           00008B   670 G$IE1$0$0 == 0x008b
                           00008B   671 _IE1	=	0x008b
                           00008C   672 G$TR0$0$0 == 0x008c
                           00008C   673 _TR0	=	0x008c
                           00008D   674 G$TF0$0$0 == 0x008d
                           00008D   675 _TF0	=	0x008d
                           00008E   676 G$TR1$0$0 == 0x008e
                           00008E   677 _TR1	=	0x008e
                           00008F   678 G$TF1$0$0 == 0x008f
                           00008F   679 _TF1	=	0x008f
                           000090   680 G$P1_0$0$0 == 0x0090
                           000090   681 _P1_0	=	0x0090
                           000091   682 G$P1_1$0$0 == 0x0091
                           000091   683 _P1_1	=	0x0091
                           000092   684 G$P1_2$0$0 == 0x0092
                           000092   685 _P1_2	=	0x0092
                           000093   686 G$P1_3$0$0 == 0x0093
                           000093   687 _P1_3	=	0x0093
                           000094   688 G$P1_4$0$0 == 0x0094
                           000094   689 _P1_4	=	0x0094
                           000095   690 G$P1_5$0$0 == 0x0095
                           000095   691 _P1_5	=	0x0095
                           000096   692 G$P1_6$0$0 == 0x0096
                           000096   693 _P1_6	=	0x0096
                           000097   694 G$P1_7$0$0 == 0x0097
                           000097   695 _P1_7	=	0x0097
                           000098   696 G$RI$0$0 == 0x0098
                           000098   697 _RI	=	0x0098
                           000098   698 G$RI0$0$0 == 0x0098
                           000098   699 _RI0	=	0x0098
                           000099   700 G$TI$0$0 == 0x0099
                           000099   701 _TI	=	0x0099
                           000099   702 G$TI0$0$0 == 0x0099
                           000099   703 _TI0	=	0x0099
                           00009A   704 G$RB8$0$0 == 0x009a
                           00009A   705 _RB8	=	0x009a
                           00009A   706 G$RB80$0$0 == 0x009a
                           00009A   707 _RB80	=	0x009a
                           00009B   708 G$TB8$0$0 == 0x009b
                           00009B   709 _TB8	=	0x009b
                           00009B   710 G$TB80$0$0 == 0x009b
                           00009B   711 _TB80	=	0x009b
                           00009C   712 G$REN$0$0 == 0x009c
                           00009C   713 _REN	=	0x009c
                           00009C   714 G$REN0$0$0 == 0x009c
                           00009C   715 _REN0	=	0x009c
                           00009D   716 G$SM2$0$0 == 0x009d
                           00009D   717 _SM2	=	0x009d
                           00009D   718 G$SM20$0$0 == 0x009d
                           00009D   719 _SM20	=	0x009d
                           00009D   720 G$MCE0$0$0 == 0x009d
                           00009D   721 _MCE0	=	0x009d
                           00009E   722 G$SM1$0$0 == 0x009e
                           00009E   723 _SM1	=	0x009e
                           00009E   724 G$SM10$0$0 == 0x009e
                           00009E   725 _SM10	=	0x009e
                           00009F   726 G$SM0$0$0 == 0x009f
                           00009F   727 _SM0	=	0x009f
                           00009F   728 G$SM00$0$0 == 0x009f
                           00009F   729 _SM00	=	0x009f
                           00009F   730 G$S0MODE$0$0 == 0x009f
                           00009F   731 _S0MODE	=	0x009f
                           0000A0   732 G$P2_0$0$0 == 0x00a0
                           0000A0   733 _P2_0	=	0x00a0
                           0000A1   734 G$P2_1$0$0 == 0x00a1
                           0000A1   735 _P2_1	=	0x00a1
                           0000A2   736 G$P2_2$0$0 == 0x00a2
                           0000A2   737 _P2_2	=	0x00a2
                           0000A3   738 G$P2_3$0$0 == 0x00a3
                           0000A3   739 _P2_3	=	0x00a3
                           0000A4   740 G$P2_4$0$0 == 0x00a4
                           0000A4   741 _P2_4	=	0x00a4
                           0000A5   742 G$P2_5$0$0 == 0x00a5
                           0000A5   743 _P2_5	=	0x00a5
                           0000A6   744 G$P2_6$0$0 == 0x00a6
                           0000A6   745 _P2_6	=	0x00a6
                           0000A7   746 G$P2_7$0$0 == 0x00a7
                           0000A7   747 _P2_7	=	0x00a7
                           0000A8   748 G$EX0$0$0 == 0x00a8
                           0000A8   749 _EX0	=	0x00a8
                           0000A9   750 G$ET0$0$0 == 0x00a9
                           0000A9   751 _ET0	=	0x00a9
                           0000AA   752 G$EX1$0$0 == 0x00aa
                           0000AA   753 _EX1	=	0x00aa
                           0000AB   754 G$ET1$0$0 == 0x00ab
                           0000AB   755 _ET1	=	0x00ab
                           0000AC   756 G$ES0$0$0 == 0x00ac
                           0000AC   757 _ES0	=	0x00ac
                           0000AC   758 G$ES$0$0 == 0x00ac
                           0000AC   759 _ES	=	0x00ac
                           0000AD   760 G$ET2$0$0 == 0x00ad
                           0000AD   761 _ET2	=	0x00ad
                           0000AF   762 G$EA$0$0 == 0x00af
                           0000AF   763 _EA	=	0x00af
                           0000B0   764 G$P3_0$0$0 == 0x00b0
                           0000B0   765 _P3_0	=	0x00b0
                           0000B1   766 G$P3_1$0$0 == 0x00b1
                           0000B1   767 _P3_1	=	0x00b1
                           0000B2   768 G$P3_2$0$0 == 0x00b2
                           0000B2   769 _P3_2	=	0x00b2
                           0000B3   770 G$P3_3$0$0 == 0x00b3
                           0000B3   771 _P3_3	=	0x00b3
                           0000B4   772 G$P3_4$0$0 == 0x00b4
                           0000B4   773 _P3_4	=	0x00b4
                           0000B5   774 G$P3_5$0$0 == 0x00b5
                           0000B5   775 _P3_5	=	0x00b5
                           0000B6   776 G$P3_6$0$0 == 0x00b6
                           0000B6   777 _P3_6	=	0x00b6
                           0000B7   778 G$P3_7$0$0 == 0x00b7
                           0000B7   779 _P3_7	=	0x00b7
                           0000B8   780 G$PX0$0$0 == 0x00b8
                           0000B8   781 _PX0	=	0x00b8
                           0000B9   782 G$PT0$0$0 == 0x00b9
                           0000B9   783 _PT0	=	0x00b9
                           0000BA   784 G$PX1$0$0 == 0x00ba
                           0000BA   785 _PX1	=	0x00ba
                           0000BB   786 G$PT1$0$0 == 0x00bb
                           0000BB   787 _PT1	=	0x00bb
                           0000BC   788 G$PS0$0$0 == 0x00bc
                           0000BC   789 _PS0	=	0x00bc
                           0000BC   790 G$PS$0$0 == 0x00bc
                           0000BC   791 _PS	=	0x00bc
                           0000BD   792 G$PT2$0$0 == 0x00bd
                           0000BD   793 _PT2	=	0x00bd
                           0000C0   794 G$SMBTOE$0$0 == 0x00c0
                           0000C0   795 _SMBTOE	=	0x00c0
                           0000C1   796 G$SMBFTE$0$0 == 0x00c1
                           0000C1   797 _SMBFTE	=	0x00c1
                           0000C2   798 G$AA$0$0 == 0x00c2
                           0000C2   799 _AA	=	0x00c2
                           0000C3   800 G$SI$0$0 == 0x00c3
                           0000C3   801 _SI	=	0x00c3
                           0000C4   802 G$STO$0$0 == 0x00c4
                           0000C4   803 _STO	=	0x00c4
                           0000C5   804 G$STA$0$0 == 0x00c5
                           0000C5   805 _STA	=	0x00c5
                           0000C6   806 G$ENSMB$0$0 == 0x00c6
                           0000C6   807 _ENSMB	=	0x00c6
                           0000C7   808 G$BUSY$0$0 == 0x00c7
                           0000C7   809 _BUSY	=	0x00c7
                           0000C8   810 G$CPRL2$0$0 == 0x00c8
                           0000C8   811 _CPRL2	=	0x00c8
                           0000C9   812 G$CT2$0$0 == 0x00c9
                           0000C9   813 _CT2	=	0x00c9
                           0000CA   814 G$TR2$0$0 == 0x00ca
                           0000CA   815 _TR2	=	0x00ca
                           0000CB   816 G$EXEN2$0$0 == 0x00cb
                           0000CB   817 _EXEN2	=	0x00cb
                           0000CC   818 G$TCLK$0$0 == 0x00cc
                           0000CC   819 _TCLK	=	0x00cc
                           0000CD   820 G$RCLK$0$0 == 0x00cd
                           0000CD   821 _RCLK	=	0x00cd
                           0000CE   822 G$EXF2$0$0 == 0x00ce
                           0000CE   823 _EXF2	=	0x00ce
                           0000CF   824 G$TF2$0$0 == 0x00cf
                           0000CF   825 _TF2	=	0x00cf
                           0000D0   826 G$P$0$0 == 0x00d0
                           0000D0   827 _P	=	0x00d0
                           0000D1   828 G$F1$0$0 == 0x00d1
                           0000D1   829 _F1	=	0x00d1
                           0000D2   830 G$OV$0$0 == 0x00d2
                           0000D2   831 _OV	=	0x00d2
                           0000D3   832 G$RS0$0$0 == 0x00d3
                           0000D3   833 _RS0	=	0x00d3
                           0000D4   834 G$RS1$0$0 == 0x00d4
                           0000D4   835 _RS1	=	0x00d4
                           0000D5   836 G$F0$0$0 == 0x00d5
                           0000D5   837 _F0	=	0x00d5
                           0000D6   838 G$AC$0$0 == 0x00d6
                           0000D6   839 _AC	=	0x00d6
                           0000D7   840 G$CY$0$0 == 0x00d7
                           0000D7   841 _CY	=	0x00d7
                           0000D8   842 G$CCF0$0$0 == 0x00d8
                           0000D8   843 _CCF0	=	0x00d8
                           0000D9   844 G$CCF1$0$0 == 0x00d9
                           0000D9   845 _CCF1	=	0x00d9
                           0000DA   846 G$CCF2$0$0 == 0x00da
                           0000DA   847 _CCF2	=	0x00da
                           0000DB   848 G$CCF3$0$0 == 0x00db
                           0000DB   849 _CCF3	=	0x00db
                           0000DC   850 G$CCF4$0$0 == 0x00dc
                           0000DC   851 _CCF4	=	0x00dc
                           0000DE   852 G$CR$0$0 == 0x00de
                           0000DE   853 _CR	=	0x00de
                           0000DF   854 G$CF$0$0 == 0x00df
                           0000DF   855 _CF	=	0x00df
                           0000E8   856 G$ADLJST$0$0 == 0x00e8
                           0000E8   857 _ADLJST	=	0x00e8
                           0000E8   858 G$AD0LJST$0$0 == 0x00e8
                           0000E8   859 _AD0LJST	=	0x00e8
                           0000E9   860 G$ADWINT$0$0 == 0x00e9
                           0000E9   861 _ADWINT	=	0x00e9
                           0000E9   862 G$AD0WINT$0$0 == 0x00e9
                           0000E9   863 _AD0WINT	=	0x00e9
                           0000EA   864 G$ADSTM0$0$0 == 0x00ea
                           0000EA   865 _ADSTM0	=	0x00ea
                           0000EA   866 G$AD0CM0$0$0 == 0x00ea
                           0000EA   867 _AD0CM0	=	0x00ea
                           0000EB   868 G$ADSTM1$0$0 == 0x00eb
                           0000EB   869 _ADSTM1	=	0x00eb
                           0000EB   870 G$AD0CM1$0$0 == 0x00eb
                           0000EB   871 _AD0CM1	=	0x00eb
                           0000EC   872 G$ADBUSY$0$0 == 0x00ec
                           0000EC   873 _ADBUSY	=	0x00ec
                           0000EC   874 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   875 _AD0BUSY	=	0x00ec
                           0000ED   876 G$ADCINT$0$0 == 0x00ed
                           0000ED   877 _ADCINT	=	0x00ed
                           0000ED   878 G$AD0INT$0$0 == 0x00ed
                           0000ED   879 _AD0INT	=	0x00ed
                           0000EE   880 G$ADCTM$0$0 == 0x00ee
                           0000EE   881 _ADCTM	=	0x00ee
                           0000EE   882 G$AD0TM$0$0 == 0x00ee
                           0000EE   883 _AD0TM	=	0x00ee
                           0000EF   884 G$ADCEN$0$0 == 0x00ef
                           0000EF   885 _ADCEN	=	0x00ef
                           0000EF   886 G$AD0EN$0$0 == 0x00ef
                           0000EF   887 _AD0EN	=	0x00ef
                           0000F8   888 G$SPIEN$0$0 == 0x00f8
                           0000F8   889 _SPIEN	=	0x00f8
                           0000F9   890 G$MSTEN$0$0 == 0x00f9
                           0000F9   891 _MSTEN	=	0x00f9
                           0000FA   892 G$SLVSEL$0$0 == 0x00fa
                           0000FA   893 _SLVSEL	=	0x00fa
                           0000FB   894 G$TXBSY$0$0 == 0x00fb
                           0000FB   895 _TXBSY	=	0x00fb
                           0000FC   896 G$RXOVRN$0$0 == 0x00fc
                           0000FC   897 _RXOVRN	=	0x00fc
                           0000FD   898 G$MODF$0$0 == 0x00fd
                           0000FD   899 _MODF	=	0x00fd
                           0000FE   900 G$WCOL$0$0 == 0x00fe
                           0000FE   901 _WCOL	=	0x00fe
                           0000FF   902 G$SPIF$0$0 == 0x00ff
                           0000FF   903 _SPIF	=	0x00ff
                           0000A6   904 G$LED0$0$0 == 0x00a6
                           0000A6   905 _LED0	=	0x00a6
                           0000A2   906 G$LED1$0$0 == 0x00a2
                           0000A2   907 _LED1	=	0x00a2
                           0000A4   908 G$LED2$0$0 == 0x00a4
                           0000A4   909 _LED2	=	0x00a4
                           0000A7   910 G$LED3$0$0 == 0x00a7
                           0000A7   911 _LED3	=	0x00a7
                           0000A5   912 G$BILED0$0$0 == 0x00a5
                           0000A5   913 _BILED0	=	0x00a5
                           0000A3   914 G$BILED1$0$0 == 0x00a3
                           0000A3   915 _BILED1	=	0x00a3
                           0000B6   916 G$SS0$0$0 == 0x00b6
                           0000B6   917 _SS0	=	0x00b6
                           0000B7   918 G$SS1$0$0 == 0x00b7
                           0000B7   919 _SS1	=	0x00b7
                           0000B4   920 G$PB$0$0 == 0x00b4
                           0000B4   921 _PB	=	0x00b4
                                    922 ;--------------------------------------------------------
                                    923 ; overlayable register banks
                                    924 ;--------------------------------------------------------
                                    925 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        926 	.ds 8
                                    927 ;--------------------------------------------------------
                                    928 ; internal ram data
                                    929 ;--------------------------------------------------------
                                    930 	.area DSEG    (DATA)
                           000000   931 G$overflows$0$0==.
      000022                        932 _overflows::
      000022                        933 	.ds 10
                           00000A   934 G$counts$0$0==.
      00002C                        935 _counts::
      00002C                        936 	.ds 2
                           00000C   937 G$adcast$0$0==.
      00002E                        938 _adcast::
      00002E                        939 	.ds 2
                           00000E   940 G$current$0$0==.
      000030                        941 _current::
      000030                        942 	.ds 2
                           000010   943 G$wait$0$0==.
      000032                        944 _wait::
      000032                        945 	.ds 2
                           000012   946 G$gamecounts$0$0==.
      000034                        947 _gamecounts::
      000034                        948 	.ds 2
                           000014   949 G$score$0$0==.
      000036                        950 _score::
      000036                        951 	.ds 2
                           000016   952 G$gamescore$0$0==.
      000038                        953 _gamescore::
      000038                        954 	.ds 2
                           000018   955 G$tries$0$0==.
      00003A                        956 _tries::
      00003A                        957 	.ds 1
                           000019   958 G$light$0$0==.
      00003B                        959 _light::
      00003B                        960 	.ds 1
                           00001A   961 G$pot$0$0==.
      00003C                        962 _pot::
      00003C                        963 	.ds 1
                           00001B   964 G$flash$0$0==.
      00003D                        965 _flash::
      00003D                        966 	.ds 1
                           00001C   967 G$error$0$0==.
      00003E                        968 _error::
      00003E                        969 	.ds 1
                           00001D   970 G$button$0$0==.
      00003F                        971 _button::
      00003F                        972 	.ds 1
                           00001E   973 G$prev$0$0==.
      000040                        974 _prev::
      000040                        975 	.ds 1
                           00001F   976 G$cur$0$0==.
      000041                        977 _cur::
      000041                        978 	.ds 1
                           000020   979 G$seed$0$0==.
      000042                        980 _seed::
      000042                        981 	.ds 1
                           000021   982 LLAB2.aligned_alloc$size$1$39==.
      000043                        983 _aligned_alloc_PARM_2:
      000043                        984 	.ds 2
                           000023   985 LLAB2.read_AD_input$cast$1$124==.
      000045                        986 _read_AD_input_PARM_2:
      000045                        987 	.ds 1
                                    988 ;--------------------------------------------------------
                                    989 ; overlayable items in internal ram 
                                    990 ;--------------------------------------------------------
                                    991 	.area	OSEG    (OVR,DATA)
                                    992 	.area	OSEG    (OVR,DATA)
                                    993 	.area	OSEG    (OVR,DATA)
                                    994 	.area	OSEG    (OVR,DATA)
                           000000   995 LLAB2.compare$acquired$1$116==.
      00000E                        996 _compare_PARM_2:
      00000E                        997 	.ds 1
                                    998 ;--------------------------------------------------------
                                    999 ; Stack segment in internal ram 
                                   1000 ;--------------------------------------------------------
                                   1001 	.area	SSEG
      000060                       1002 __start__stack:
      000060                       1003 	.ds	1
                                   1004 
                                   1005 ;--------------------------------------------------------
                                   1006 ; indirectly addressable internal ram data
                                   1007 ;--------------------------------------------------------
                                   1008 	.area ISEG    (DATA)
                                   1009 ;--------------------------------------------------------
                                   1010 ; absolute internal ram data
                                   1011 ;--------------------------------------------------------
                                   1012 	.area IABS    (ABS,DATA)
                                   1013 	.area IABS    (ABS,DATA)
                                   1014 ;--------------------------------------------------------
                                   1015 ; bit data
                                   1016 ;--------------------------------------------------------
                                   1017 	.area BSEG    (BIT)
                                   1018 ;--------------------------------------------------------
                                   1019 ; paged external ram data
                                   1020 ;--------------------------------------------------------
                                   1021 	.area PSEG    (PAG,XDATA)
                                   1022 ;--------------------------------------------------------
                                   1023 ; external ram data
                                   1024 ;--------------------------------------------------------
                                   1025 	.area XSEG    (XDATA)
                                   1026 ;--------------------------------------------------------
                                   1027 ; absolute external ram data
                                   1028 ;--------------------------------------------------------
                                   1029 	.area XABS    (ABS,XDATA)
                                   1030 ;--------------------------------------------------------
                                   1031 ; external initialized ram data
                                   1032 ;--------------------------------------------------------
                                   1033 	.area XISEG   (XDATA)
                                   1034 	.area HOME    (CODE)
                                   1035 	.area GSINIT0 (CODE)
                                   1036 	.area GSINIT1 (CODE)
                                   1037 	.area GSINIT2 (CODE)
                                   1038 	.area GSINIT3 (CODE)
                                   1039 	.area GSINIT4 (CODE)
                                   1040 	.area GSINIT5 (CODE)
                                   1041 	.area GSINIT  (CODE)
                                   1042 	.area GSFINAL (CODE)
                                   1043 	.area CSEG    (CODE)
                                   1044 ;--------------------------------------------------------
                                   1045 ; interrupt vector 
                                   1046 ;--------------------------------------------------------
                                   1047 	.area HOME    (CODE)
      000000                       1048 __interrupt_vect:
      000000 02 00 11         [24] 1049 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1050 	reti
      000004                       1051 	.ds	7
      00000B 02 08 3F         [24] 1052 	ljmp	_Timer0_ISR
                                   1053 ;--------------------------------------------------------
                                   1054 ; global & static initialisations
                                   1055 ;--------------------------------------------------------
                                   1056 	.area HOME    (CODE)
                                   1057 	.area GSINIT  (CODE)
                                   1058 	.area GSFINAL (CODE)
                                   1059 	.area GSINIT  (CODE)
                                   1060 	.globl __sdcc_gsinit_startup
                                   1061 	.globl __sdcc_program_startup
                                   1062 	.globl __start__stack
                                   1063 	.globl __mcs51_genXINIT
                                   1064 	.globl __mcs51_genXRAMCLEAR
                                   1065 	.globl __mcs51_genRAMCLEAR
                           000000  1066 	C$LAB2.c$52$1$137 ==.
                                   1067 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:52: unsigned int overflows[5] = {507, 456, 412, 371, 338}; //sequentially decreasing delays
      00006A 75 22 FB         [24] 1068 	mov	(_overflows + 0),#0xfb
      00006D 75 23 01         [24] 1069 	mov	(_overflows + 1),#0x01
      000070 75 24 C8         [24] 1070 	mov	((_overflows + 0x0002) + 0),#0xc8
      000073 75 25 01         [24] 1071 	mov	((_overflows + 0x0002) + 1),#0x01
      000076 75 26 9C         [24] 1072 	mov	((_overflows + 0x0004) + 0),#0x9c
      000079 75 27 01         [24] 1073 	mov	((_overflows + 0x0004) + 1),#0x01
      00007C 75 28 73         [24] 1074 	mov	((_overflows + 0x0006) + 0),#0x73
      00007F 75 29 01         [24] 1075 	mov	((_overflows + 0x0006) + 1),#0x01
      000082 75 2A 52         [24] 1076 	mov	((_overflows + 0x0008) + 0),#0x52
      000085 75 2B 01         [24] 1077 	mov	((_overflows + 0x0008) + 1),#0x01
                           00001E  1078 	C$LAB2.c$58$1$137 ==.
                                   1079 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:58: unsigned int score = 0; //both ints because score can hypothetically grow huge with big delays
      000088 E4               [12] 1080 	clr	a
      000089 F5 36            [12] 1081 	mov	_score,a
      00008B F5 37            [12] 1082 	mov	(_score + 1),a
                           000023  1083 	C$LAB2.c$59$1$137 ==.
                                   1084 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:59: unsigned int gamescore = 0;
      00008D F5 38            [12] 1085 	mov	_gamescore,a
      00008F F5 39            [12] 1086 	mov	(_gamescore + 1),a
                           000027  1087 	C$LAB2.c$66$1$137 ==.
                                   1088 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:66: unsigned char prev = 0; //keeps the first step in the games from being "no lights lit" for gameplay purposes
                                   1089 ;	1-genFromRTrack replaced	mov	_prev,#0x00
      000091 F5 40            [12] 1090 	mov	_prev,a
                                   1091 	.area GSFINAL (CODE)
      00009D 02 00 0E         [24] 1092 	ljmp	__sdcc_program_startup
                                   1093 ;--------------------------------------------------------
                                   1094 ; Home
                                   1095 ;--------------------------------------------------------
                                   1096 	.area HOME    (CODE)
                                   1097 	.area HOME    (CODE)
      00000E                       1098 __sdcc_program_startup:
      00000E 02 01 1B         [24] 1099 	ljmp	_main
                                   1100 ;	return from main will return to caller
                                   1101 ;--------------------------------------------------------
                                   1102 ; code
                                   1103 ;--------------------------------------------------------
                                   1104 	.area CSEG    (CODE)
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1107 ;------------------------------------------------------------
                                   1108 ;i                         Allocated to registers r6 r7 
                                   1109 ;------------------------------------------------------------
                           000000  1110 	G$SYSCLK_Init$0$0 ==.
                           000000  1111 	C$c8051_SDCC.h$62$0$0 ==.
                                   1112 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1113 ;	-----------------------------------------
                                   1114 ;	 function SYSCLK_Init
                                   1115 ;	-----------------------------------------
      0000A0                       1116 _SYSCLK_Init:
                           000007  1117 	ar7 = 0x07
                           000006  1118 	ar6 = 0x06
                           000005  1119 	ar5 = 0x05
                           000004  1120 	ar4 = 0x04
                           000003  1121 	ar3 = 0x03
                           000002  1122 	ar2 = 0x02
                           000001  1123 	ar1 = 0x01
                           000000  1124 	ar0 = 0x00
                           000000  1125 	C$c8051_SDCC.h$66$1$2 ==.
                                   1126 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000A0 75 B1 67         [24] 1127 	mov	_OSCXCN,#0x67
                           000003  1128 	C$c8051_SDCC.h$69$1$2 ==.
                                   1129 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000A3 7E 00            [12] 1130 	mov	r6,#0x00
      0000A5 7F 01            [12] 1131 	mov	r7,#0x01
      0000A7                       1132 00107$:
      0000A7 EE               [12] 1133 	mov	a,r6
      0000A8 24 FF            [12] 1134 	add	a,#0xff
      0000AA FC               [12] 1135 	mov	r4,a
      0000AB EF               [12] 1136 	mov	a,r7
      0000AC 34 FF            [12] 1137 	addc	a,#0xff
      0000AE FD               [12] 1138 	mov	r5,a
      0000AF 8C 06            [24] 1139 	mov	ar6,r4
      0000B1 8D 07            [24] 1140 	mov	ar7,r5
      0000B3 EC               [12] 1141 	mov	a,r4
      0000B4 4D               [12] 1142 	orl	a,r5
      0000B5 70 F0            [24] 1143 	jnz	00107$
                           000017  1144 	C$c8051_SDCC.h$71$1$2 ==.
                                   1145 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000B7                       1146 00102$:
      0000B7 E5 B1            [12] 1147 	mov	a,_OSCXCN
      0000B9 30 E7 FB         [24] 1148 	jnb	acc.7,00102$
                           00001C  1149 	C$c8051_SDCC.h$73$1$2 ==.
                                   1150 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000BC 75 B2 88         [24] 1151 	mov	_OSCICN,#0x88
                           00001F  1152 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1153 	XG$SYSCLK_Init$0$0 ==.
      0000BF 22               [24] 1154 	ret
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'UART0_Init'
                                   1157 ;------------------------------------------------------------
                           000020  1158 	G$UART0_Init$0$0 ==.
                           000020  1159 	C$c8051_SDCC.h$84$1$2 ==.
                                   1160 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function UART0_Init
                                   1163 ;	-----------------------------------------
      0000C0                       1164 _UART0_Init:
                           000020  1165 	C$c8051_SDCC.h$86$1$4 ==.
                                   1166 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000C0 75 98 50         [24] 1167 	mov	_SCON0,#0x50
                           000023  1168 	C$c8051_SDCC.h$87$1$4 ==.
                                   1169 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000C3 75 89 20         [24] 1170 	mov	_TMOD,#0x20
                           000026  1171 	C$c8051_SDCC.h$88$1$4 ==.
                                   1172 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000C6 75 8D DC         [24] 1173 	mov	_TH1,#0xdc
                           000029  1174 	C$c8051_SDCC.h$89$1$4 ==.
                                   1175 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000C9 D2 8E            [12] 1176 	setb	_TR1
                           00002B  1177 	C$c8051_SDCC.h$90$1$4 ==.
                                   1178 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000CB 43 8E 10         [24] 1179 	orl	_CKCON,#0x10
                           00002E  1180 	C$c8051_SDCC.h$91$1$4 ==.
                                   1181 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000CE 43 87 80         [24] 1182 	orl	_PCON,#0x80
                           000031  1183 	C$c8051_SDCC.h$93$1$4 ==.
                                   1184 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000D1 D2 99            [12] 1185 	setb	_TI0
                           000033  1186 	C$c8051_SDCC.h$94$1$4 ==.
                                   1187 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000D3 43 A4 01         [24] 1188 	orl	_P0MDOUT,#0x01
                           000036  1189 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1190 	XG$UART0_Init$0$0 ==.
      0000D6 22               [24] 1191 	ret
                                   1192 ;------------------------------------------------------------
                                   1193 ;Allocation info for local variables in function 'Sys_Init'
                                   1194 ;------------------------------------------------------------
                           000037  1195 	G$Sys_Init$0$0 ==.
                           000037  1196 	C$c8051_SDCC.h$103$1$4 ==.
                                   1197 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function Sys_Init
                                   1200 ;	-----------------------------------------
      0000D7                       1201 _Sys_Init:
                           000037  1202 	C$c8051_SDCC.h$105$1$6 ==.
                                   1203 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000D7 75 FF DE         [24] 1204 	mov	_WDTCN,#0xde
                           00003A  1205 	C$c8051_SDCC.h$106$1$6 ==.
                                   1206 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000DA 75 FF AD         [24] 1207 	mov	_WDTCN,#0xad
                           00003D  1208 	C$c8051_SDCC.h$108$1$6 ==.
                                   1209 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000DD 12 00 A0         [24] 1210 	lcall	_SYSCLK_Init
                           000040  1211 	C$c8051_SDCC.h$109$1$6 ==.
                                   1212 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000E0 12 00 C0         [24] 1213 	lcall	_UART0_Init
                           000043  1214 	C$c8051_SDCC.h$111$1$6 ==.
                                   1215 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000E3 43 E1 04         [24] 1216 	orl	_XBR0,#0x04
                           000046  1217 	C$c8051_SDCC.h$112$1$6 ==.
                                   1218 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000E6 43 E3 40         [24] 1219 	orl	_XBR2,#0x40
                           000049  1220 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1221 	XG$Sys_Init$0$0 ==.
      0000E9 22               [24] 1222 	ret
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'putchar'
                                   1225 ;------------------------------------------------------------
                                   1226 ;c                         Allocated to registers r7 
                                   1227 ;------------------------------------------------------------
                           00004A  1228 	G$putchar$0$0 ==.
                           00004A  1229 	C$c8051_SDCC.h$129$1$6 ==.
                                   1230 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function putchar
                                   1233 ;	-----------------------------------------
      0000EA                       1234 _putchar:
      0000EA AF 82            [24] 1235 	mov	r7,dpl
                           00004C  1236 	C$c8051_SDCC.h$132$1$8 ==.
                                   1237 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000EC                       1238 00101$:
                           00004C  1239 	C$c8051_SDCC.h$133$1$8 ==.
                                   1240 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000EC 10 99 02         [24] 1241 	jbc	_TI0,00112$
      0000EF 80 FB            [24] 1242 	sjmp	00101$
      0000F1                       1243 00112$:
                           000051  1244 	C$c8051_SDCC.h$134$1$8 ==.
                                   1245 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000F1 8F 99            [24] 1246 	mov	_SBUF0,r7
                           000053  1247 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1248 	XG$putchar$0$0 ==.
      0000F3 22               [24] 1249 	ret
                                   1250 ;------------------------------------------------------------
                                   1251 ;Allocation info for local variables in function 'getchar'
                                   1252 ;------------------------------------------------------------
                                   1253 ;c                         Allocated to registers r7 
                                   1254 ;------------------------------------------------------------
                           000054  1255 	G$getchar$0$0 ==.
                           000054  1256 	C$c8051_SDCC.h$154$1$8 ==.
                                   1257 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function getchar
                                   1260 ;	-----------------------------------------
      0000F4                       1261 _getchar:
                           000054  1262 	C$c8051_SDCC.h$157$1$10 ==.
                                   1263 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000F4                       1264 00101$:
                           000054  1265 	C$c8051_SDCC.h$158$1$10 ==.
                                   1266 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000F4 10 98 02         [24] 1267 	jbc	_RI0,00112$
      0000F7 80 FB            [24] 1268 	sjmp	00101$
      0000F9                       1269 00112$:
                           000059  1270 	C$c8051_SDCC.h$159$1$10 ==.
                                   1271 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000F9 AF 99            [24] 1272 	mov	r7,_SBUF0
                           00005B  1273 	C$c8051_SDCC.h$160$1$10 ==.
                                   1274 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000FB 8F 82            [24] 1275 	mov	dpl,r7
      0000FD C0 07            [24] 1276 	push	ar7
      0000FF 12 00 EA         [24] 1277 	lcall	_putchar
      000102 D0 07            [24] 1278 	pop	ar7
                           000064  1279 	C$c8051_SDCC.h$161$1$10 ==.
                                   1280 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000104 8F 82            [24] 1281 	mov	dpl,r7
                           000066  1282 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1283 	XG$getchar$0$0 ==.
      000106 22               [24] 1284 	ret
                                   1285 ;------------------------------------------------------------
                                   1286 ;Allocation info for local variables in function 'getchar_nw'
                                   1287 ;------------------------------------------------------------
                                   1288 ;c                         Allocated to registers 
                                   1289 ;------------------------------------------------------------
                           000067  1290 	G$getchar_nw$0$0 ==.
                           000067  1291 	C$c8051_SDCC.h$168$1$10 ==.
                                   1292 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function getchar_nw
                                   1295 ;	-----------------------------------------
      000107                       1296 _getchar_nw:
                           000067  1297 	C$c8051_SDCC.h$171$1$12 ==.
                                   1298 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000107 20 98 05         [24] 1299 	jb	_RI0,00102$
      00010A 75 82 FF         [24] 1300 	mov	dpl,#0xff
      00010D 80 0B            [24] 1301 	sjmp	00104$
      00010F                       1302 00102$:
                           00006F  1303 	C$c8051_SDCC.h$174$2$13 ==.
                                   1304 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00010F C2 98            [12] 1305 	clr	_RI0
                           000071  1306 	C$c8051_SDCC.h$175$2$13 ==.
                                   1307 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000111 85 99 82         [24] 1308 	mov	dpl,_SBUF0
                           000074  1309 	C$c8051_SDCC.h$176$2$13 ==.
                                   1310 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000114 12 00 EA         [24] 1311 	lcall	_putchar
                           000077  1312 	C$c8051_SDCC.h$177$2$13 ==.
                                   1313 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000117 85 99 82         [24] 1314 	mov	dpl,_SBUF0
      00011A                       1315 00104$:
                           00007A  1316 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1317 	XG$getchar_nw$0$0 ==.
      00011A 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'main'
                                   1321 ;------------------------------------------------------------
                           00007B  1322 	G$main$0$0 ==.
                           00007B  1323 	C$LAB2.c$70$1$12 ==.
                                   1324 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:70: void main(void)
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function main
                                   1327 ;	-----------------------------------------
      00011B                       1328 _main:
                           00007B  1329 	C$LAB2.c$72$1$63 ==.
                                   1330 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:72: Sys_Init();      // System Initialization
      00011B 12 00 D7         [24] 1331 	lcall	_Sys_Init
                           00007E  1332 	C$LAB2.c$73$1$63 ==.
                                   1333 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:73: Port_Init();     // Initialize ports 2 and 3 
      00011E 12 07 7F         [24] 1334 	lcall	_Port_Init
                           000081  1335 	C$LAB2.c$74$1$63 ==.
                                   1336 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:74: Interrupt_Init();
      000121 12 08 28         [24] 1337 	lcall	_Interrupt_Init
                           000084  1338 	C$LAB2.c$75$1$63 ==.
                                   1339 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:75: Timer_Init();    // Initialize Timer 0 
      000124 12 08 2E         [24] 1340 	lcall	_Timer_Init
                           000087  1341 	C$LAB2.c$76$1$63 ==.
                                   1342 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:76: ADC_Init();
      000127 12 07 92         [24] 1343 	lcall	_ADC_Init
                           00008A  1344 	C$LAB2.c$78$1$63 ==.
                                   1345 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:78: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
      00012A 75 82 20         [24] 1346 	mov	dpl,#0x20
      00012D 12 00 EA         [24] 1347 	lcall	_putchar
                           000090  1348 	C$LAB2.c$80$1$63 ==.
                                   1349 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:80: printf("Feed the grim beast of randomness with a seed!\r\n");
      000130 74 6B            [12] 1350 	mov	a,#___str_0
      000132 C0 E0            [24] 1351 	push	acc
      000134 74 10            [12] 1352 	mov	a,#(___str_0 >> 8)
      000136 C0 E0            [24] 1353 	push	acc
      000138 74 80            [12] 1354 	mov	a,#0x80
      00013A C0 E0            [24] 1355 	push	acc
      00013C 12 09 E2         [24] 1356 	lcall	_printf
      00013F 15 81            [12] 1357 	dec	sp
      000141 15 81            [12] 1358 	dec	sp
      000143 15 81            [12] 1359 	dec	sp
                           0000A5  1360 	C$LAB2.c$81$1$63 ==.
                                   1361 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:81: seed = getchar();
      000145 12 00 F4         [24] 1362 	lcall	_getchar
      000148 85 82 42         [24] 1363 	mov	_seed,dpl
                           0000AB  1364 	C$LAB2.c$82$1$63 ==.
                                   1365 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:82: srand(seed); //seed rand() for the rest of the program for random gameplay
      00014B AE 42            [24] 1366 	mov	r6,_seed
      00014D 7F 00            [12] 1367 	mov	r7,#0x00
      00014F 8E 82            [24] 1368 	mov	dpl,r6
      000151 8F 83            [24] 1369 	mov	dph,r7
      000153 12 08 E7         [24] 1370 	lcall	_srand
                           0000B6  1371 	C$LAB2.c$84$1$63 ==.
                                   1372 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:84: while (1)
      000156                       1373 00123$:
                           0000B6  1374 	C$LAB2.c$86$2$64 ==.
                                   1375 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:86: TR0 = 1;
      000156 D2 8C            [12] 1376 	setb	_TR0
                           0000B8  1377 	C$LAB2.c$87$2$64 ==.
                                   1378 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:87: counts = 0;
      000158 E4               [12] 1379 	clr	a
      000159 F5 2C            [12] 1380 	mov	_counts,a
      00015B F5 2D            [12] 1381 	mov	(_counts + 1),a
                           0000BD  1382 	C$LAB2.c$88$2$64 ==.
                                   1383 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:88: printf("Use the slide switches to select your fate, press the button to begin.\r\n");
      00015D 74 9C            [12] 1384 	mov	a,#___str_1
      00015F C0 E0            [24] 1385 	push	acc
      000161 74 10            [12] 1386 	mov	a,#(___str_1 >> 8)
      000163 C0 E0            [24] 1387 	push	acc
      000165 74 80            [12] 1388 	mov	a,#0x80
      000167 C0 E0            [24] 1389 	push	acc
      000169 12 09 E2         [24] 1390 	lcall	_printf
      00016C 15 81            [12] 1391 	dec	sp
      00016E 15 81            [12] 1392 	dec	sp
      000170 15 81            [12] 1393 	dec	sp
                           0000D2  1394 	C$LAB2.c$89$3$65 ==.
                                   1395 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:89: while (PB) {
      000172                       1396 00101$:
      000172 30 B4 2D         [24] 1397 	jnb	_PB,00103$
                           0000D5  1398 	C$LAB2.c$90$3$65 ==.
                                   1399 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:90: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
      000175 A2 B7            [12] 1400 	mov	c,_SS1
      000177 E4               [12] 1401 	clr	a
      000178 33               [12] 1402 	rlc	a
      000179 FE               [12] 1403 	mov	r6,a
      00017A 7F 00            [12] 1404 	mov	r7,#0x00
      00017C A2 B6            [12] 1405 	mov	c,_SS0
      00017E E4               [12] 1406 	clr	a
      00017F 33               [12] 1407 	rlc	a
      000180 FC               [12] 1408 	mov	r4,a
      000181 7D 00            [12] 1409 	mov	r5,#0x00
      000183 C0 06            [24] 1410 	push	ar6
      000185 C0 07            [24] 1411 	push	ar7
      000187 C0 04            [24] 1412 	push	ar4
      000189 C0 05            [24] 1413 	push	ar5
      00018B 74 E5            [12] 1414 	mov	a,#___str_2
      00018D C0 E0            [24] 1415 	push	acc
      00018F 74 10            [12] 1416 	mov	a,#(___str_2 >> 8)
      000191 C0 E0            [24] 1417 	push	acc
      000193 74 80            [12] 1418 	mov	a,#0x80
      000195 C0 E0            [24] 1419 	push	acc
      000197 12 09 E2         [24] 1420 	lcall	_printf
      00019A E5 81            [12] 1421 	mov	a,sp
      00019C 24 F9            [12] 1422 	add	a,#0xf9
      00019E F5 81            [12] 1423 	mov	sp,a
      0001A0 80 D0            [24] 1424 	sjmp	00101$
      0001A2                       1425 00103$:
                           000102  1426 	C$LAB2.c$92$2$64 ==.
                                   1427 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:92: current = counts; //record time of push
      0001A2 85 2C 30         [24] 1428 	mov	_current,_counts
      0001A5 85 2D 31         [24] 1429 	mov	(_current + 1),(_counts + 1)
                           000108  1430 	C$LAB2.c$93$2$64 ==.
                                   1431 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:93: wait = counts + 28; //takes 28 overflows to make 80 ms
      0001A8 74 1C            [12] 1432 	mov	a,#0x1c
      0001AA 25 2C            [12] 1433 	add	a,_counts
      0001AC F5 32            [12] 1434 	mov	_wait,a
      0001AE E4               [12] 1435 	clr	a
      0001AF 35 2D            [12] 1436 	addc	a,(_counts + 1)
      0001B1 F5 33            [12] 1437 	mov	(_wait + 1),a
                           000113  1438 	C$LAB2.c$94$2$64 ==.
                                   1439 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:94: while (counts != wait) { //debouncing delay
      0001B3                       1440 00104$:
      0001B3 E5 32            [12] 1441 	mov	a,_wait
      0001B5 B5 2C FB         [24] 1442 	cjne	a,_counts,00104$
      0001B8 E5 33            [12] 1443 	mov	a,(_wait + 1)
      0001BA B5 2D F6         [24] 1444 	cjne	a,(_counts + 1),00104$
                           00011D  1445 	C$LAB2.c$97$2$64 ==.
                                   1446 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:97: if (SS0 && SS1) {
      0001BD 30 B6 03         [24] 1447 	jnb	_SS0,00119$
      0001C0 20 B7 93         [24] 1448 	jb	_SS1,00123$
      0001C3                       1449 00119$:
                           000123  1450 	C$LAB2.c$100$2$64 ==.
                                   1451 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:100: else if (!SS0 && SS1) {
      0001C3 20 B6 08         [24] 1452 	jb	_SS0,00115$
      0001C6 30 B7 05         [24] 1453 	jnb	_SS1,00115$
                           000129  1454 	C$LAB2.c$101$3$68 ==.
                                   1455 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:101: Game1();
      0001C9 12 01 ED         [24] 1456 	lcall	_Game1
      0001CC 80 88            [24] 1457 	sjmp	00123$
      0001CE                       1458 00115$:
                           00012E  1459 	C$LAB2.c$103$2$64 ==.
                                   1460 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:103: else if (SS0 && !SS1) {
      0001CE 30 B6 09         [24] 1461 	jnb	_SS0,00111$
      0001D1 20 B7 06         [24] 1462 	jb	_SS1,00111$
                           000134  1463 	C$LAB2.c$104$3$69 ==.
                                   1464 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:104: Game2();
      0001D4 12 03 6A         [24] 1465 	lcall	_Game2
      0001D7 02 01 56         [24] 1466 	ljmp	00123$
      0001DA                       1467 00111$:
                           00013A  1468 	C$LAB2.c$106$2$64 ==.
                                   1469 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:106: else if (!SS0 && !SS1) {
      0001DA 30 B6 03         [24] 1470 	jnb	_SS0,00172$
      0001DD 02 01 56         [24] 1471 	ljmp	00123$
      0001E0                       1472 00172$:
      0001E0 30 B7 03         [24] 1473 	jnb	_SS1,00173$
      0001E3 02 01 56         [24] 1474 	ljmp	00123$
      0001E6                       1475 00173$:
                           000146  1476 	C$LAB2.c$107$3$70 ==.
                                   1477 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:107: Game3();
      0001E6 12 05 0E         [24] 1478 	lcall	_Game3
      0001E9 02 01 56         [24] 1479 	ljmp	00123$
                           00014C  1480 	C$LAB2.c$111$1$63 ==.
                           00014C  1481 	XG$main$0$0 ==.
      0001EC 22               [24] 1482 	ret
                                   1483 ;------------------------------------------------------------
                                   1484 ;Allocation info for local variables in function 'Game1'
                                   1485 ;------------------------------------------------------------
                           00014D  1486 	G$Game1$0$0 ==.
                           00014D  1487 	C$LAB2.c$113$1$63 ==.
                                   1488 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:113: void Game1(void)
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function Game1
                                   1491 ;	-----------------------------------------
      0001ED                       1492 _Game1:
                           00014D  1493 	C$LAB2.c$115$1$72 ==.
                                   1494 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:115: printf("For this gamemode, a low score wins. The computer will light a random number of LEDs, you must use the POT to match it.\r\n");
      0001ED 74 03            [12] 1495 	mov	a,#___str_3
      0001EF C0 E0            [24] 1496 	push	acc
      0001F1 74 11            [12] 1497 	mov	a,#(___str_3 >> 8)
      0001F3 C0 E0            [24] 1498 	push	acc
      0001F5 74 80            [12] 1499 	mov	a,#0x80
      0001F7 C0 E0            [24] 1500 	push	acc
      0001F9 12 09 E2         [24] 1501 	lcall	_printf
      0001FC 15 81            [12] 1502 	dec	sp
      0001FE 15 81            [12] 1503 	dec	sp
      000200 15 81            [12] 1504 	dec	sp
                           000162  1505 	C$LAB2.c$116$1$72 ==.
                                   1506 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:116: printf("You get five tries, press the button to begin and to submit your answer. Good luck adventurer!\r\n");
      000202 74 7D            [12] 1507 	mov	a,#___str_4
      000204 C0 E0            [24] 1508 	push	acc
      000206 74 11            [12] 1509 	mov	a,#(___str_4 >> 8)
      000208 C0 E0            [24] 1510 	push	acc
      00020A 74 80            [12] 1511 	mov	a,#0x80
      00020C C0 E0            [24] 1512 	push	acc
      00020E 12 09 E2         [24] 1513 	lcall	_printf
      000211 15 81            [12] 1514 	dec	sp
      000213 15 81            [12] 1515 	dec	sp
      000215 15 81            [12] 1516 	dec	sp
                           000177  1517 	C$LAB2.c$118$1$72 ==.
                                   1518 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:118: score = 0;
      000217 E4               [12] 1519 	clr	a
      000218 F5 36            [12] 1520 	mov	_score,a
      00021A F5 37            [12] 1521 	mov	(_score + 1),a
                           00017C  1522 	C$LAB2.c$119$1$72 ==.
                                   1523 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:119: gamescore = 0;
      00021C F5 38            [12] 1524 	mov	_gamescore,a
      00021E F5 39            [12] 1525 	mov	(_gamescore + 1),a
                           000180  1526 	C$LAB2.c$120$1$72 ==.
                                   1527 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:120: counts = 0;
      000220 F5 2C            [12] 1528 	mov	_counts,a
      000222 F5 2D            [12] 1529 	mov	(_counts + 1),a
                           000184  1530 	C$LAB2.c$121$1$72 ==.
                                   1531 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:121: tries = 0;
                                   1532 ;	1-genFromRTrack replaced	mov	_tries,#0x00
      000224 F5 3A            [12] 1533 	mov	_tries,a
                           000186  1534 	C$LAB2.c$122$1$72 ==.
                                   1535 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:122: P2 = 0xFF; //turn all LEDs off
      000226 75 A0 FF         [24] 1536 	mov	_P2,#0xff
                           000189  1537 	C$LAB2.c$123$1$72 ==.
                                   1538 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:123: BILED1 = 0; //since we just turned everything off, this makes the BILED red
      000229 C2 A3            [12] 1539 	clr	_BILED1
                           00018B  1540 	C$LAB2.c$124$2$73 ==.
                                   1541 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:124: while (PB) 
      00022B                       1542 00101$:
      00022B 30 B4 2D         [24] 1543 	jnb	_PB,00103$
                           00018E  1544 	C$LAB2.c$126$2$73 ==.
                                   1545 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:126: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
      00022E A2 B7            [12] 1546 	mov	c,_SS1
      000230 E4               [12] 1547 	clr	a
      000231 33               [12] 1548 	rlc	a
      000232 FE               [12] 1549 	mov	r6,a
      000233 7F 00            [12] 1550 	mov	r7,#0x00
      000235 A2 B6            [12] 1551 	mov	c,_SS0
      000237 E4               [12] 1552 	clr	a
      000238 33               [12] 1553 	rlc	a
      000239 FC               [12] 1554 	mov	r4,a
      00023A 7D 00            [12] 1555 	mov	r5,#0x00
      00023C C0 06            [24] 1556 	push	ar6
      00023E C0 07            [24] 1557 	push	ar7
      000240 C0 04            [24] 1558 	push	ar4
      000242 C0 05            [24] 1559 	push	ar5
      000244 74 E5            [12] 1560 	mov	a,#___str_2
      000246 C0 E0            [24] 1561 	push	acc
      000248 74 10            [12] 1562 	mov	a,#(___str_2 >> 8)
      00024A C0 E0            [24] 1563 	push	acc
      00024C 74 80            [12] 1564 	mov	a,#0x80
      00024E C0 E0            [24] 1565 	push	acc
      000250 12 09 E2         [24] 1566 	lcall	_printf
      000253 E5 81            [12] 1567 	mov	a,sp
      000255 24 F9            [12] 1568 	add	a,#0xf9
      000257 F5 81            [12] 1569 	mov	sp,a
      000259 80 D0            [24] 1570 	sjmp	00101$
      00025B                       1571 00103$:
                           0001BB  1572 	C$LAB2.c$128$1$72 ==.
                                   1573 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:128: current = counts; //record time of push
      00025B 85 2C 30         [24] 1574 	mov	_current,_counts
      00025E 85 2D 31         [24] 1575 	mov	(_current + 1),(_counts + 1)
                           0001C1  1576 	C$LAB2.c$129$1$72 ==.
                                   1577 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:129: wait = counts + 28; //takes 28 overflows to make 80 ms
      000261 74 1C            [12] 1578 	mov	a,#0x1c
      000263 25 2C            [12] 1579 	add	a,_counts
      000265 F5 32            [12] 1580 	mov	_wait,a
      000267 E4               [12] 1581 	clr	a
      000268 35 2D            [12] 1582 	addc	a,(_counts + 1)
      00026A F5 33            [12] 1583 	mov	(_wait + 1),a
                           0001CC  1584 	C$LAB2.c$130$1$72 ==.
                                   1585 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:130: while (counts != wait) { //debouncing delay
      00026C                       1586 00104$:
      00026C E5 32            [12] 1587 	mov	a,_wait
      00026E B5 2C FB         [24] 1588 	cjne	a,_counts,00104$
      000271 E5 33            [12] 1589 	mov	a,(_wait + 1)
      000273 B5 2D F6         [24] 1590 	cjne	a,(_counts + 1),00104$
                           0001D6  1591 	C$LAB2.c$133$2$75 ==.
                                   1592 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:133: while (tries < 5) //five tries
      000276                       1593 00118$:
      000276 74 FB            [12] 1594 	mov	a,#0x100 - 0x05
      000278 25 3A            [12] 1595 	add	a,_tries
      00027A 50 03            [24] 1596 	jnc	00164$
      00027C 02 03 4D         [24] 1597 	ljmp	00120$
      00027F                       1598 00164$:
                           0001DF  1599 	C$LAB2.c$135$2$75 ==.
                                   1600 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:135: BILED0 = 1; //BILED off
      00027F D2 A5            [12] 1601 	setb	_BILED0
                           0001E1  1602 	C$LAB2.c$136$2$75 ==.
                                   1603 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:136: BILED1 = 1;
      000281 D2 A3            [12] 1604 	setb	_BILED1
                           0001E3  1605 	C$LAB2.c$137$2$75 ==.
                                   1606 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:137: light = random(); //get random number
      000283 12 08 50         [24] 1607 	lcall	_random
      000286 85 82 3B         [24] 1608 	mov	_light,dpl
                           0001E9  1609 	C$LAB2.c$138$2$75 ==.
                                   1610 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:138: TR0 = 1;
      000289 D2 8C            [12] 1611 	setb	_TR0
                           0001EB  1612 	C$LAB2.c$139$2$75 ==.
                                   1613 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:139: counts = 0;
      00028B E4               [12] 1614 	clr	a
      00028C F5 2C            [12] 1615 	mov	_counts,a
      00028E F5 2D            [12] 1616 	mov	(_counts + 1),a
                           0001F0  1617 	C$LAB2.c$140$2$75 ==.
                                   1618 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:140: while (counts < 668) { //wait 2s
      000290                       1619 00107$:
      000290 C3               [12] 1620 	clr	c
      000291 E5 2C            [12] 1621 	mov	a,_counts
      000293 94 9C            [12] 1622 	subb	a,#0x9c
      000295 E5 2D            [12] 1623 	mov	a,(_counts + 1)
      000297 94 02            [12] 1624 	subb	a,#0x02
      000299 50 08            [24] 1625 	jnc	00109$
                           0001FB  1626 	C$LAB2.c$141$3$76 ==.
                                   1627 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:141: LEDLighter(light);
      00029B 85 3B 82         [24] 1628 	mov	dpl,_light
      00029E 12 06 B3         [24] 1629 	lcall	_LEDLighter
      0002A1 80 ED            [24] 1630 	sjmp	00107$
      0002A3                       1631 00109$:
                           000203  1632 	C$LAB2.c$143$2$75 ==.
                                   1633 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:143: P2 = 0xFF;
      0002A3 75 A0 FF         [24] 1634 	mov	_P2,#0xff
                           000206  1635 	C$LAB2.c$144$2$75 ==.
                                   1636 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:144: counts = 0;
      0002A6 E4               [12] 1637 	clr	a
      0002A7 F5 2C            [12] 1638 	mov	_counts,a
      0002A9 F5 2D            [12] 1639 	mov	(_counts + 1),a
                           00020B  1640 	C$LAB2.c$145$2$75 ==.
                                   1641 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:145: while (PB) {
      0002AB                       1642 00110$:
      0002AB 30 B4 11         [24] 1643 	jnb	_PB,00112$
                           00020E  1644 	C$LAB2.c$146$3$77 ==.
                                   1645 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:146: pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
      0002AE 75 45 05         [24] 1646 	mov	_read_AD_input_PARM_2,#0x05
      0002B1 75 82 04         [24] 1647 	mov	dpl,#0x04
      0002B4 12 07 9C         [24] 1648 	lcall	_read_AD_input
                           000217  1649 	C$LAB2.c$147$3$77 ==.
                                   1650 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:147: LEDLighter(pot);
      0002B7 85 82 3C         [24] 1651 	mov  _pot,dpl
      0002BA 12 06 B3         [24] 1652 	lcall	_LEDLighter
      0002BD 80 EC            [24] 1653 	sjmp	00110$
      0002BF                       1654 00112$:
                           00021F  1655 	C$LAB2.c$149$2$75 ==.
                                   1656 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:149: TR0 = 0;
      0002BF C2 8C            [12] 1657 	clr	_TR0
                           000221  1658 	C$LAB2.c$150$2$75 ==.
                                   1659 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:150: gamecounts = counts;
      0002C1 85 2C 34         [24] 1660 	mov	_gamecounts,_counts
      0002C4 85 2D 35         [24] 1661 	mov	(_gamecounts + 1),(_counts + 1)
                           000227  1662 	C$LAB2.c$151$2$75 ==.
                                   1663 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:151: Flashall();
      0002C7 12 07 24         [24] 1664 	lcall	_Flashall
                           00022A  1665 	C$LAB2.c$152$2$75 ==.
                                   1666 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:152: compare(pot, light);
      0002CA 85 3B 0E         [24] 1667 	mov	_compare_PARM_2,_light
      0002CD 85 3C 82         [24] 1668 	mov	dpl,_pot
      0002D0 12 07 66         [24] 1669 	lcall	_compare
                           000233  1670 	C$LAB2.c$153$2$75 ==.
                                   1671 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:153: if (pot != light) { //check for answer correctness
      0002D3 E5 3B            [12] 1672 	mov	a,_light
      0002D5 B5 3C 02         [24] 1673 	cjne	a,_pot,00167$
      0002D8 80 0B            [24] 1674 	sjmp	00114$
      0002DA                       1675 00167$:
                           00023A  1676 	C$LAB2.c$154$3$78 ==.
                                   1677 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:154: score += 10;
      0002DA 74 0A            [12] 1678 	mov	a,#0x0a
      0002DC 25 36            [12] 1679 	add	a,_score
      0002DE F5 36            [12] 1680 	mov	_score,a
      0002E0 E4               [12] 1681 	clr	a
      0002E1 35 37            [12] 1682 	addc	a,(_score + 1)
      0002E3 F5 37            [12] 1683 	mov	(_score + 1),a
      0002E5                       1684 00114$:
                           000245  1685 	C$LAB2.c$156$1$72 ==.
                                   1686 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:156: score = score + (gamecounts / 167); //add points for time taken
      0002E5 75 0E A7         [24] 1687 	mov	__divuint_PARM_2,#0xa7
      0002E8 75 0F 00         [24] 1688 	mov	(__divuint_PARM_2 + 1),#0x00
      0002EB 85 34 82         [24] 1689 	mov	dpl,_gamecounts
      0002EE 85 35 83         [24] 1690 	mov	dph,(_gamecounts + 1)
      0002F1 12 08 82         [24] 1691 	lcall	__divuint
      0002F4 AE 82            [24] 1692 	mov	r6,dpl
      0002F6 AF 83            [24] 1693 	mov	r7,dph
      0002F8 EE               [12] 1694 	mov	a,r6
      0002F9 25 36            [12] 1695 	add	a,_score
      0002FB F5 36            [12] 1696 	mov	_score,a
      0002FD EF               [12] 1697 	mov	a,r7
      0002FE 35 37            [12] 1698 	addc	a,(_score + 1)
      000300 F5 37            [12] 1699 	mov	(_score + 1),a
                           000262  1700 	C$LAB2.c$157$2$75 ==.
                                   1701 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:157: gamescore = gamescore + score;
      000302 E5 36            [12] 1702 	mov	a,_score
      000304 25 38            [12] 1703 	add	a,_gamescore
      000306 F5 38            [12] 1704 	mov	_gamescore,a
      000308 E5 37            [12] 1705 	mov	a,(_score + 1)
      00030A 35 39            [12] 1706 	addc	a,(_gamescore + 1)
      00030C F5 39            [12] 1707 	mov	(_gamescore + 1),a
                           00026E  1708 	C$LAB2.c$158$2$75 ==.
                                   1709 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:158: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
      00030E C0 38            [24] 1710 	push	_gamescore
      000310 C0 39            [24] 1711 	push	(_gamescore + 1)
      000312 C0 36            [24] 1712 	push	_score
      000314 C0 37            [24] 1713 	push	(_score + 1)
      000316 74 DE            [12] 1714 	mov	a,#___str_5
      000318 C0 E0            [24] 1715 	push	acc
      00031A 74 11            [12] 1716 	mov	a,#(___str_5 >> 8)
      00031C C0 E0            [24] 1717 	push	acc
      00031E 74 80            [12] 1718 	mov	a,#0x80
      000320 C0 E0            [24] 1719 	push	acc
      000322 12 09 E2         [24] 1720 	lcall	_printf
      000325 E5 81            [12] 1721 	mov	a,sp
      000327 24 F9            [12] 1722 	add	a,#0xf9
      000329 F5 81            [12] 1723 	mov	sp,a
                           00028B  1724 	C$LAB2.c$159$2$75 ==.
                                   1725 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:159: score = 0; //reset game score for the next try
      00032B E4               [12] 1726 	clr	a
      00032C F5 36            [12] 1727 	mov	_score,a
      00032E F5 37            [12] 1728 	mov	(_score + 1),a
                           000290  1729 	C$LAB2.c$160$2$75 ==.
                                   1730 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:160: counts = 0;
      000330 F5 2C            [12] 1731 	mov	_counts,a
      000332 F5 2D            [12] 1732 	mov	(_counts + 1),a
                           000294  1733 	C$LAB2.c$161$2$75 ==.
                                   1734 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:161: TR0 = 1;
      000334 D2 8C            [12] 1735 	setb	_TR0
                           000296  1736 	C$LAB2.c$162$2$75 ==.
                                   1737 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:162: while (counts < 334); //do nothing
      000336                       1738 00115$:
      000336 C3               [12] 1739 	clr	c
      000337 E5 2C            [12] 1740 	mov	a,_counts
      000339 94 4E            [12] 1741 	subb	a,#0x4e
      00033B E5 2D            [12] 1742 	mov	a,(_counts + 1)
      00033D 94 01            [12] 1743 	subb	a,#0x01
      00033F 40 F5            [24] 1744 	jc	00115$
                           0002A1  1745 	C$LAB2.c$163$2$75 ==.
                                   1746 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:163: TR0 = 0;
      000341 C2 8C            [12] 1747 	clr	_TR0
                           0002A3  1748 	C$LAB2.c$164$2$75 ==.
                                   1749 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:164: counts = 0;
      000343 E4               [12] 1750 	clr	a
      000344 F5 2C            [12] 1751 	mov	_counts,a
      000346 F5 2D            [12] 1752 	mov	(_counts + 1),a
                           0002A8  1753 	C$LAB2.c$165$2$75 ==.
                                   1754 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:165: tries ++;
      000348 05 3A            [12] 1755 	inc	_tries
      00034A 02 02 76         [24] 1756 	ljmp	00118$
      00034D                       1757 00120$:
                           0002AD  1758 	C$LAB2.c$167$1$72 ==.
                                   1759 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:167: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
      00034D C0 38            [24] 1760 	push	_gamescore
      00034F C0 39            [24] 1761 	push	(_gamescore + 1)
      000351 74 24            [12] 1762 	mov	a,#___str_6
      000353 C0 E0            [24] 1763 	push	acc
      000355 74 12            [12] 1764 	mov	a,#(___str_6 >> 8)
      000357 C0 E0            [24] 1765 	push	acc
      000359 74 80            [12] 1766 	mov	a,#0x80
      00035B C0 E0            [24] 1767 	push	acc
      00035D 12 09 E2         [24] 1768 	lcall	_printf
      000360 E5 81            [12] 1769 	mov	a,sp
      000362 24 FB            [12] 1770 	add	a,#0xfb
      000364 F5 81            [12] 1771 	mov	sp,a
                           0002C6  1772 	C$LAB2.c$168$1$72 ==.
                                   1773 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:168: Flash();
      000366 12 06 E7         [24] 1774 	lcall	_Flash
                           0002C9  1775 	C$LAB2.c$169$1$72 ==.
                           0002C9  1776 	XG$Game1$0$0 ==.
      000369 22               [24] 1777 	ret
                                   1778 ;------------------------------------------------------------
                                   1779 ;Allocation info for local variables in function 'Game2'
                                   1780 ;------------------------------------------------------------
                           0002CA  1781 	G$Game2$0$0 ==.
                           0002CA  1782 	C$LAB2.c$171$1$72 ==.
                                   1783 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:171: void Game2(void)
                                   1784 ;	-----------------------------------------
                                   1785 ;	 function Game2
                                   1786 ;	-----------------------------------------
      00036A                       1787 _Game2:
                           0002CA  1788 	C$LAB2.c$173$1$80 ==.
                                   1789 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:173: printf("For this gamemode, you will duel another brave adventurer. One of you will set the POT, the other will press the BUTTON.\r\n");
      00036A 74 5A            [12] 1790 	mov	a,#___str_7
      00036C C0 E0            [24] 1791 	push	acc
      00036E 74 12            [12] 1792 	mov	a,#(___str_7 >> 8)
      000370 C0 E0            [24] 1793 	push	acc
      000372 74 80            [12] 1794 	mov	a,#0x80
      000374 C0 E0            [24] 1795 	push	acc
      000376 12 09 E2         [24] 1796 	lcall	_printf
      000379 15 81            [12] 1797 	dec	sp
      00037B 15 81            [12] 1798 	dec	sp
      00037D 15 81            [12] 1799 	dec	sp
                           0002DF  1800 	C$LAB2.c$174$1$80 ==.
                                   1801 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:174: printf("High score wins, you get five tries, press the button to begin. Good luck adventurers!\r\n");
      00037F 74 D5            [12] 1802 	mov	a,#___str_8
      000381 C0 E0            [24] 1803 	push	acc
      000383 74 12            [12] 1804 	mov	a,#(___str_8 >> 8)
      000385 C0 E0            [24] 1805 	push	acc
      000387 74 80            [12] 1806 	mov	a,#0x80
      000389 C0 E0            [24] 1807 	push	acc
      00038B 12 09 E2         [24] 1808 	lcall	_printf
      00038E 15 81            [12] 1809 	dec	sp
      000390 15 81            [12] 1810 	dec	sp
      000392 15 81            [12] 1811 	dec	sp
                           0002F4  1812 	C$LAB2.c$176$1$80 ==.
                                   1813 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:176: score = 0;
      000394 E4               [12] 1814 	clr	a
      000395 F5 36            [12] 1815 	mov	_score,a
      000397 F5 37            [12] 1816 	mov	(_score + 1),a
                           0002F9  1817 	C$LAB2.c$177$1$80 ==.
                                   1818 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:177: gamescore = 0;
      000399 F5 38            [12] 1819 	mov	_gamescore,a
      00039B F5 39            [12] 1820 	mov	(_gamescore + 1),a
                           0002FD  1821 	C$LAB2.c$178$1$80 ==.
                                   1822 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:178: counts = 0;
      00039D F5 2C            [12] 1823 	mov	_counts,a
      00039F F5 2D            [12] 1824 	mov	(_counts + 1),a
                           000301  1825 	C$LAB2.c$179$1$80 ==.
                                   1826 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:179: tries = 0;
                                   1827 ;	1-genFromRTrack replaced	mov	_tries,#0x00
      0003A1 F5 3A            [12] 1828 	mov	_tries,a
                           000303  1829 	C$LAB2.c$180$1$80 ==.
                                   1830 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:180: P2 = 0xFF; //turn all LEDs off
      0003A3 75 A0 FF         [24] 1831 	mov	_P2,#0xff
                           000306  1832 	C$LAB2.c$181$2$81 ==.
                                   1833 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:181: while (PB) {
      0003A6                       1834 00101$:
      0003A6 30 B4 2D         [24] 1835 	jnb	_PB,00103$
                           000309  1836 	C$LAB2.c$182$2$81 ==.
                                   1837 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:182: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
      0003A9 A2 B7            [12] 1838 	mov	c,_SS1
      0003AB E4               [12] 1839 	clr	a
      0003AC 33               [12] 1840 	rlc	a
      0003AD FE               [12] 1841 	mov	r6,a
      0003AE 7F 00            [12] 1842 	mov	r7,#0x00
      0003B0 A2 B6            [12] 1843 	mov	c,_SS0
      0003B2 E4               [12] 1844 	clr	a
      0003B3 33               [12] 1845 	rlc	a
      0003B4 FC               [12] 1846 	mov	r4,a
      0003B5 7D 00            [12] 1847 	mov	r5,#0x00
      0003B7 C0 06            [24] 1848 	push	ar6
      0003B9 C0 07            [24] 1849 	push	ar7
      0003BB C0 04            [24] 1850 	push	ar4
      0003BD C0 05            [24] 1851 	push	ar5
      0003BF 74 E5            [12] 1852 	mov	a,#___str_2
      0003C1 C0 E0            [24] 1853 	push	acc
      0003C3 74 10            [12] 1854 	mov	a,#(___str_2 >> 8)
      0003C5 C0 E0            [24] 1855 	push	acc
      0003C7 74 80            [12] 1856 	mov	a,#0x80
      0003C9 C0 E0            [24] 1857 	push	acc
      0003CB 12 09 E2         [24] 1858 	lcall	_printf
      0003CE E5 81            [12] 1859 	mov	a,sp
      0003D0 24 F9            [12] 1860 	add	a,#0xf9
      0003D2 F5 81            [12] 1861 	mov	sp,a
      0003D4 80 D0            [24] 1862 	sjmp	00101$
      0003D6                       1863 00103$:
                           000336  1864 	C$LAB2.c$184$1$80 ==.
                                   1865 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:184: current = counts; //record time of push
      0003D6 85 2C 30         [24] 1866 	mov	_current,_counts
      0003D9 85 2D 31         [24] 1867 	mov	(_current + 1),(_counts + 1)
                           00033C  1868 	C$LAB2.c$185$1$80 ==.
                                   1869 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:185: wait = counts + 28; //takes 28 overflows to make 80 ms
      0003DC 74 1C            [12] 1870 	mov	a,#0x1c
      0003DE 25 2C            [12] 1871 	add	a,_counts
      0003E0 F5 32            [12] 1872 	mov	_wait,a
      0003E2 E4               [12] 1873 	clr	a
      0003E3 35 2D            [12] 1874 	addc	a,(_counts + 1)
      0003E5 F5 33            [12] 1875 	mov	(_wait + 1),a
                           000347  1876 	C$LAB2.c$186$1$80 ==.
                                   1877 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:186: while (counts != wait) { //debouncing delay
      0003E7                       1878 00104$:
      0003E7 E5 32            [12] 1879 	mov	a,_wait
      0003E9 B5 2C FB         [24] 1880 	cjne	a,_counts,00104$
      0003EC E5 33            [12] 1881 	mov	a,(_wait + 1)
      0003EE B5 2D F6         [24] 1882 	cjne	a,(_counts + 1),00104$
                           000351  1883 	C$LAB2.c$189$2$83 ==.
                                   1884 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:189: while (tries < 5) //five tries
      0003F1                       1885 00132$:
      0003F1 74 FB            [12] 1886 	mov	a,#0x100 - 0x05
      0003F3 25 3A            [12] 1887 	add	a,_tries
      0003F5 50 03            [24] 1888 	jnc	00205$
      0003F7 02 04 F1         [24] 1889 	ljmp	00134$
      0003FA                       1890 00205$:
                           00035A  1891 	C$LAB2.c$191$2$83 ==.
                                   1892 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:191: button = 0;
      0003FA 75 3F 00         [24] 1893 	mov	_button,#0x00
                           00035D  1894 	C$LAB2.c$192$2$83 ==.
                                   1895 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:192: BILED1 = 0; //BILED red
      0003FD C2 A3            [12] 1896 	clr	_BILED1
                           00035F  1897 	C$LAB2.c$193$2$83 ==.
                                   1898 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:193: BILED0 = 1;
      0003FF D2 A5            [12] 1899 	setb	_BILED0
                           000361  1900 	C$LAB2.c$194$2$83 ==.
                                   1901 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:194: counts = 0;
      000401 E4               [12] 1902 	clr	a
      000402 F5 2C            [12] 1903 	mov	_counts,a
      000404 F5 2D            [12] 1904 	mov	(_counts + 1),a
                           000366  1905 	C$LAB2.c$195$2$83 ==.
                                   1906 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:195: TR0 = 1;
      000406 D2 8C            [12] 1907 	setb	_TR0
                           000368  1908 	C$LAB2.c$196$2$83 ==.
                                   1909 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:196: while (counts < 334); //wait 1s, do nothing
      000408                       1910 00107$:
      000408 C3               [12] 1911 	clr	c
      000409 E5 2C            [12] 1912 	mov	a,_counts
      00040B 94 4E            [12] 1913 	subb	a,#0x4e
      00040D E5 2D            [12] 1914 	mov	a,(_counts + 1)
      00040F 94 01            [12] 1915 	subb	a,#0x01
      000411 40 F5            [24] 1916 	jc	00107$
                           000373  1917 	C$LAB2.c$197$2$83 ==.
                                   1918 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:197: BILED0 = 1;
      000413 D2 A5            [12] 1919 	setb	_BILED0
                           000375  1920 	C$LAB2.c$198$2$83 ==.
                                   1921 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:198: pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
      000415 75 45 05         [24] 1922 	mov	_read_AD_input_PARM_2,#0x05
      000418 75 82 04         [24] 1923 	mov	dpl,#0x04
      00041B 12 07 9C         [24] 1924 	lcall	_read_AD_input
                           00037E  1925 	C$LAB2.c$199$2$83 ==.
                                   1926 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:199: LEDLighter(pot);
      00041E 85 82 3C         [24] 1927 	mov  _pot,dpl
      000421 12 06 B3         [24] 1928 	lcall	_LEDLighter
                           000384  1929 	C$LAB2.c$200$2$83 ==.
                                   1930 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:200: counts = 0;
      000424 E4               [12] 1931 	clr	a
      000425 F5 2C            [12] 1932 	mov	_counts,a
      000427 F5 2D            [12] 1933 	mov	(_counts + 1),a
                           000389  1934 	C$LAB2.c$201$2$83 ==.
                                   1935 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:201: while (counts < overflows[tries]) {
      000429                       1936 00121$:
      000429 E5 3A            [12] 1937 	mov	a,_tries
      00042B 25 3A            [12] 1938 	add	a,_tries
      00042D 24 22            [12] 1939 	add	a,#_overflows
      00042F F9               [12] 1940 	mov	r1,a
      000430 87 06            [24] 1941 	mov	ar6,@r1
      000432 09               [12] 1942 	inc	r1
      000433 87 07            [24] 1943 	mov	ar7,@r1
      000435 19               [12] 1944 	dec	r1
      000436 C3               [12] 1945 	clr	c
      000437 E5 2C            [12] 1946 	mov	a,_counts
      000439 9E               [12] 1947 	subb	a,r6
      00043A E5 2D            [12] 1948 	mov	a,(_counts + 1)
      00043C 9F               [12] 1949 	subb	a,r7
      00043D 50 3A            [24] 1950 	jnc	00123$
                           00039F  1951 	C$LAB2.c$202$3$84 ==.
                                   1952 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:202: if (!PB) //push button pressed
      00043F 20 B4 E7         [24] 1953 	jb	_PB,00121$
                           0003A2  1954 	C$LAB2.c$204$4$85 ==.
                                   1955 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:204: current = counts; //record time of push
      000442 85 2C 30         [24] 1956 	mov	_current,_counts
      000445 85 2D 31         [24] 1957 	mov	(_current + 1),(_counts + 1)
                           0003A8  1958 	C$LAB2.c$205$4$85 ==.
                                   1959 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:205: wait = counts + 7; //takes 7 overflows to make 20 ms
      000448 74 07            [12] 1960 	mov	a,#0x07
      00044A 25 2C            [12] 1961 	add	a,_counts
      00044C F5 32            [12] 1962 	mov	_wait,a
      00044E E4               [12] 1963 	clr	a
      00044F 35 2D            [12] 1964 	addc	a,(_counts + 1)
      000451 F5 33            [12] 1965 	mov	(_wait + 1),a
                           0003B3  1966 	C$LAB2.c$206$4$85 ==.
                                   1967 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:206: while (counts != wait) //debouncing delay
      000453                       1968 00110$:
      000453 E5 32            [12] 1969 	mov	a,_wait
      000455 B5 2C FB         [24] 1970 	cjne	a,_counts,00110$
      000458 E5 33            [12] 1971 	mov	a,(_wait + 1)
      00045A B5 2D F6         [24] 1972 	cjne	a,(_counts + 1),00110$
                           0003BD  1973 	C$LAB2.c$210$4$85 ==.
                                   1974 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:210: button ++; //increment button counter
      00045D 05 3F            [12] 1975 	inc	_button
                           0003BF  1976 	C$LAB2.c$211$4$85 ==.
                                   1977 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:211: while (!PB) //wait for button release
      00045F                       1978 00113$:
      00045F 30 B4 FD         [24] 1979 	jnb	_PB,00113$
                           0003C2  1980 	C$LAB2.c$215$4$85 ==.
                                   1981 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:215: wait = counts + 7; //7 overflows is 20 ms
      000462 74 07            [12] 1982 	mov	a,#0x07
      000464 25 2C            [12] 1983 	add	a,_counts
      000466 F5 32            [12] 1984 	mov	_wait,a
      000468 E4               [12] 1985 	clr	a
      000469 35 2D            [12] 1986 	addc	a,(_counts + 1)
      00046B F5 33            [12] 1987 	mov	(_wait + 1),a
                           0003CD  1988 	C$LAB2.c$216$4$85 ==.
                                   1989 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:216: while (counts != wait) //debouncing delay
      00046D                       1990 00116$:
      00046D E5 32            [12] 1991 	mov	a,_wait
      00046F B5 2C FB         [24] 1992 	cjne	a,_counts,00116$
      000472 E5 33            [12] 1993 	mov	a,(_wait + 1)
      000474 B5 2D F6         [24] 1994 	cjne	a,(_counts + 1),00116$
      000477 80 B0            [24] 1995 	sjmp	00121$
      000479                       1996 00123$:
                           0003D9  1997 	C$LAB2.c$222$2$83 ==.
                                   1998 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:222: TR0 = 0;
      000479 C2 8C            [12] 1999 	clr	_TR0
                           0003DB  2000 	C$LAB2.c$223$2$83 ==.
                                   2001 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:223: Flashall();
      00047B 12 07 24         [24] 2002 	lcall	_Flashall
                           0003DE  2003 	C$LAB2.c$224$2$83 ==.
                                   2004 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:224: compare(pot, button);
      00047E 85 3F 0E         [24] 2005 	mov	_compare_PARM_2,_button
      000481 85 3C 82         [24] 2006 	mov	dpl,_pot
      000484 12 07 66         [24] 2007 	lcall	_compare
                           0003E7  2008 	C$LAB2.c$225$2$83 ==.
                                   2009 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:225: if (pot == button) {
      000487 E5 3F            [12] 2010 	mov	a,_button
      000489 B5 3C 0B         [24] 2011 	cjne	a,_pot,00125$
                           0003EC  2012 	C$LAB2.c$226$3$89 ==.
                                   2013 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:226: score += 10;
      00048C 74 0A            [12] 2014 	mov	a,#0x0a
      00048E 25 36            [12] 2015 	add	a,_score
      000490 F5 36            [12] 2016 	mov	_score,a
      000492 E4               [12] 2017 	clr	a
      000493 35 37            [12] 2018 	addc	a,(_score + 1)
      000495 F5 37            [12] 2019 	mov	(_score + 1),a
      000497                       2020 00125$:
                           0003F7  2021 	C$LAB2.c$228$2$83 ==.
                                   2022 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:228: gamescore = gamescore + score;
      000497 E5 36            [12] 2023 	mov	a,_score
      000499 25 38            [12] 2024 	add	a,_gamescore
      00049B F5 38            [12] 2025 	mov	_gamescore,a
      00049D E5 37            [12] 2026 	mov	a,(_score + 1)
      00049F 35 39            [12] 2027 	addc	a,(_gamescore + 1)
      0004A1 F5 39            [12] 2028 	mov	(_gamescore + 1),a
                           000403  2029 	C$LAB2.c$229$2$83 ==.
                                   2030 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:229: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
      0004A3 C0 38            [24] 2031 	push	_gamescore
      0004A5 C0 39            [24] 2032 	push	(_gamescore + 1)
      0004A7 C0 36            [24] 2033 	push	_score
      0004A9 C0 37            [24] 2034 	push	(_score + 1)
      0004AB 74 DE            [12] 2035 	mov	a,#___str_5
      0004AD C0 E0            [24] 2036 	push	acc
      0004AF 74 11            [12] 2037 	mov	a,#(___str_5 >> 8)
      0004B1 C0 E0            [24] 2038 	push	acc
      0004B3 74 80            [12] 2039 	mov	a,#0x80
      0004B5 C0 E0            [24] 2040 	push	acc
      0004B7 12 09 E2         [24] 2041 	lcall	_printf
      0004BA E5 81            [12] 2042 	mov	a,sp
      0004BC 24 F9            [12] 2043 	add	a,#0xf9
      0004BE F5 81            [12] 2044 	mov	sp,a
                           000420  2045 	C$LAB2.c$230$2$83 ==.
                                   2046 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:230: score = 0; //reset game score for the next try
      0004C0 E4               [12] 2047 	clr	a
      0004C1 F5 36            [12] 2048 	mov	_score,a
      0004C3 F5 37            [12] 2049 	mov	(_score + 1),a
                           000425  2050 	C$LAB2.c$231$2$83 ==.
                                   2051 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:231: counts = 0;
      0004C5 F5 2C            [12] 2052 	mov	_counts,a
      0004C7 F5 2D            [12] 2053 	mov	(_counts + 1),a
                           000429  2054 	C$LAB2.c$232$2$83 ==.
                                   2055 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:232: TR0 = 1;
      0004C9 D2 8C            [12] 2056 	setb	_TR0
                           00042B  2057 	C$LAB2.c$233$2$83 ==.
                                   2058 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:233: while (counts < 334); //do nothing
      0004CB                       2059 00126$:
      0004CB C3               [12] 2060 	clr	c
      0004CC E5 2C            [12] 2061 	mov	a,_counts
      0004CE 94 4E            [12] 2062 	subb	a,#0x4e
      0004D0 E5 2D            [12] 2063 	mov	a,(_counts + 1)
      0004D2 94 01            [12] 2064 	subb	a,#0x01
      0004D4 40 F5            [24] 2065 	jc	00126$
                           000436  2066 	C$LAB2.c$234$2$83 ==.
                                   2067 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:234: BILED0 = 1;
      0004D6 D2 A5            [12] 2068 	setb	_BILED0
                           000438  2069 	C$LAB2.c$235$2$83 ==.
                                   2070 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:235: BILED1 = 1;
      0004D8 D2 A3            [12] 2071 	setb	_BILED1
                           00043A  2072 	C$LAB2.c$236$2$83 ==.
                                   2073 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:236: while (counts < 501); //do nothing
      0004DA                       2074 00129$:
      0004DA C3               [12] 2075 	clr	c
      0004DB E5 2C            [12] 2076 	mov	a,_counts
      0004DD 94 F5            [12] 2077 	subb	a,#0xf5
      0004DF E5 2D            [12] 2078 	mov	a,(_counts + 1)
      0004E1 94 01            [12] 2079 	subb	a,#0x01
      0004E3 40 F5            [24] 2080 	jc	00129$
                           000445  2081 	C$LAB2.c$237$2$83 ==.
                                   2082 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:237: TR0 = 0;
      0004E5 C2 8C            [12] 2083 	clr	_TR0
                           000447  2084 	C$LAB2.c$238$2$83 ==.
                                   2085 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:238: counts = 0;
      0004E7 E4               [12] 2086 	clr	a
      0004E8 F5 2C            [12] 2087 	mov	_counts,a
      0004EA F5 2D            [12] 2088 	mov	(_counts + 1),a
                           00044C  2089 	C$LAB2.c$239$2$83 ==.
                                   2090 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:239: tries ++;
      0004EC 05 3A            [12] 2091 	inc	_tries
      0004EE 02 03 F1         [24] 2092 	ljmp	00132$
      0004F1                       2093 00134$:
                           000451  2094 	C$LAB2.c$241$1$80 ==.
                                   2095 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:241: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
      0004F1 C0 38            [24] 2096 	push	_gamescore
      0004F3 C0 39            [24] 2097 	push	(_gamescore + 1)
      0004F5 74 24            [12] 2098 	mov	a,#___str_6
      0004F7 C0 E0            [24] 2099 	push	acc
      0004F9 74 12            [12] 2100 	mov	a,#(___str_6 >> 8)
      0004FB C0 E0            [24] 2101 	push	acc
      0004FD 74 80            [12] 2102 	mov	a,#0x80
      0004FF C0 E0            [24] 2103 	push	acc
      000501 12 09 E2         [24] 2104 	lcall	_printf
      000504 E5 81            [12] 2105 	mov	a,sp
      000506 24 FB            [12] 2106 	add	a,#0xfb
      000508 F5 81            [12] 2107 	mov	sp,a
                           00046A  2108 	C$LAB2.c$242$1$80 ==.
                                   2109 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:242: Flash();
      00050A 12 06 E7         [24] 2110 	lcall	_Flash
                           00046D  2111 	C$LAB2.c$243$1$80 ==.
                           00046D  2112 	XG$Game2$0$0 ==.
      00050D 22               [24] 2113 	ret
                                   2114 ;------------------------------------------------------------
                                   2115 ;Allocation info for local variables in function 'Game3'
                                   2116 ;------------------------------------------------------------
                           00046E  2117 	G$Game3$0$0 ==.
                           00046E  2118 	C$LAB2.c$245$1$80 ==.
                                   2119 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:245: void Game3(void)
                                   2120 ;	-----------------------------------------
                                   2121 ;	 function Game3
                                   2122 ;	-----------------------------------------
      00050E                       2123 _Game3:
                           00046E  2124 	C$LAB2.c$247$1$91 ==.
                                   2125 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:247: printf("For this gamemode,high score wins. The computer will generate a test of your mettle, you will use the POT, the other will press the BUTTON.\r\n");
      00050E 74 2E            [12] 2126 	mov	a,#___str_9
      000510 C0 E0            [24] 2127 	push	acc
      000512 74 13            [12] 2128 	mov	a,#(___str_9 >> 8)
      000514 C0 E0            [24] 2129 	push	acc
      000516 74 80            [12] 2130 	mov	a,#0x80
      000518 C0 E0            [24] 2131 	push	acc
      00051A 12 09 E2         [24] 2132 	lcall	_printf
      00051D 15 81            [12] 2133 	dec	sp
      00051F 15 81            [12] 2134 	dec	sp
      000521 15 81            [12] 2135 	dec	sp
                           000483  2136 	C$LAB2.c$248$1$91 ==.
                                   2137 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:248: printf("You get five tries, press the button to begin. Good luck adventurer!\r\n");
      000523 74 BC            [12] 2138 	mov	a,#___str_10
      000525 C0 E0            [24] 2139 	push	acc
      000527 74 13            [12] 2140 	mov	a,#(___str_10 >> 8)
      000529 C0 E0            [24] 2141 	push	acc
      00052B 74 80            [12] 2142 	mov	a,#0x80
      00052D C0 E0            [24] 2143 	push	acc
      00052F 12 09 E2         [24] 2144 	lcall	_printf
      000532 15 81            [12] 2145 	dec	sp
      000534 15 81            [12] 2146 	dec	sp
      000536 15 81            [12] 2147 	dec	sp
                           000498  2148 	C$LAB2.c$250$1$91 ==.
                                   2149 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:250: score = 0;
      000538 E4               [12] 2150 	clr	a
      000539 F5 36            [12] 2151 	mov	_score,a
      00053B F5 37            [12] 2152 	mov	(_score + 1),a
                           00049D  2153 	C$LAB2.c$251$1$91 ==.
                                   2154 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:251: gamescore = 0;
      00053D F5 38            [12] 2155 	mov	_gamescore,a
      00053F F5 39            [12] 2156 	mov	(_gamescore + 1),a
                           0004A1  2157 	C$LAB2.c$252$1$91 ==.
                                   2158 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:252: counts = 0;
      000541 F5 2C            [12] 2159 	mov	_counts,a
      000543 F5 2D            [12] 2160 	mov	(_counts + 1),a
                           0004A5  2161 	C$LAB2.c$253$1$91 ==.
                                   2162 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:253: tries = 0;
                                   2163 ;	1-genFromRTrack replaced	mov	_tries,#0x00
      000545 F5 3A            [12] 2164 	mov	_tries,a
                           0004A7  2165 	C$LAB2.c$254$1$91 ==.
                                   2166 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:254: P2 = 0xFF; //turn all LEDs off
      000547 75 A0 FF         [24] 2167 	mov	_P2,#0xff
                           0004AA  2168 	C$LAB2.c$255$1$91 ==.
                                   2169 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:255: BILED0 = 0; //BILED red
      00054A C2 A5            [12] 2170 	clr	_BILED0
                           0004AC  2171 	C$LAB2.c$256$2$92 ==.
                                   2172 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:256: while (PB) {
      00054C                       2173 00101$:
      00054C 30 B4 2D         [24] 2174 	jnb	_PB,00103$
                           0004AF  2175 	C$LAB2.c$257$2$92 ==.
                                   2176 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:257: printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
      00054F A2 B7            [12] 2177 	mov	c,_SS1
      000551 E4               [12] 2178 	clr	a
      000552 33               [12] 2179 	rlc	a
      000553 FE               [12] 2180 	mov	r6,a
      000554 7F 00            [12] 2181 	mov	r7,#0x00
      000556 A2 B6            [12] 2182 	mov	c,_SS0
      000558 E4               [12] 2183 	clr	a
      000559 33               [12] 2184 	rlc	a
      00055A FC               [12] 2185 	mov	r4,a
      00055B 7D 00            [12] 2186 	mov	r5,#0x00
      00055D C0 06            [24] 2187 	push	ar6
      00055F C0 07            [24] 2188 	push	ar7
      000561 C0 04            [24] 2189 	push	ar4
      000563 C0 05            [24] 2190 	push	ar5
      000565 74 E5            [12] 2191 	mov	a,#___str_2
      000567 C0 E0            [24] 2192 	push	acc
      000569 74 10            [12] 2193 	mov	a,#(___str_2 >> 8)
      00056B C0 E0            [24] 2194 	push	acc
      00056D 74 80            [12] 2195 	mov	a,#0x80
      00056F C0 E0            [24] 2196 	push	acc
      000571 12 09 E2         [24] 2197 	lcall	_printf
      000574 E5 81            [12] 2198 	mov	a,sp
      000576 24 F9            [12] 2199 	add	a,#0xf9
      000578 F5 81            [12] 2200 	mov	sp,a
      00057A 80 D0            [24] 2201 	sjmp	00101$
      00057C                       2202 00103$:
                           0004DC  2203 	C$LAB2.c$259$1$91 ==.
                                   2204 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:259: current = counts; //record time of push
      00057C 85 2C 30         [24] 2205 	mov	_current,_counts
      00057F 85 2D 31         [24] 2206 	mov	(_current + 1),(_counts + 1)
                           0004E2  2207 	C$LAB2.c$260$1$91 ==.
                                   2208 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:260: wait = counts + 28; //takes 28 overflows to make 80 ms
      000582 74 1C            [12] 2209 	mov	a,#0x1c
      000584 25 2C            [12] 2210 	add	a,_counts
      000586 F5 32            [12] 2211 	mov	_wait,a
      000588 E4               [12] 2212 	clr	a
      000589 35 2D            [12] 2213 	addc	a,(_counts + 1)
      00058B F5 33            [12] 2214 	mov	(_wait + 1),a
                           0004ED  2215 	C$LAB2.c$261$1$91 ==.
                                   2216 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:261: while (counts != wait) { //debouncing delay
      00058D                       2217 00104$:
      00058D E5 32            [12] 2218 	mov	a,_wait
      00058F B5 2C FB         [24] 2219 	cjne	a,_counts,00104$
      000592 E5 33            [12] 2220 	mov	a,(_wait + 1)
      000594 B5 2D F6         [24] 2221 	cjne	a,(_counts + 1),00104$
                           0004F7  2222 	C$LAB2.c$264$2$94 ==.
                                   2223 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:264: while (tries < 5) //five tries
      000597                       2224 00119$:
      000597 74 FB            [12] 2225 	mov	a,#0x100 - 0x05
      000599 25 3A            [12] 2226 	add	a,_tries
      00059B 50 03            [24] 2227 	jnc	00165$
      00059D 02 06 96         [24] 2228 	ljmp	00121$
      0005A0                       2229 00165$:
                           000500  2230 	C$LAB2.c$266$2$94 ==.
                                   2231 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:266: light = random(); //get random number
      0005A0 12 08 50         [24] 2232 	lcall	_random
      0005A3 85 82 3B         [24] 2233 	mov	_light,dpl
                           000506  2234 	C$LAB2.c$267$2$94 ==.
                                   2235 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:267: TR0 = 1;
      0005A6 D2 8C            [12] 2236 	setb	_TR0
                           000508  2237 	C$LAB2.c$268$2$94 ==.
                                   2238 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:268: counts = 0;
      0005A8 E4               [12] 2239 	clr	a
      0005A9 F5 2C            [12] 2240 	mov	_counts,a
      0005AB F5 2D            [12] 2241 	mov	(_counts + 1),a
                           00050D  2242 	C$LAB2.c$269$2$94 ==.
                                   2243 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:269: while (counts < 668) { //wait 2s
      0005AD                       2244 00107$:
      0005AD C3               [12] 2245 	clr	c
      0005AE E5 2C            [12] 2246 	mov	a,_counts
      0005B0 94 9C            [12] 2247 	subb	a,#0x9c
      0005B2 E5 2D            [12] 2248 	mov	a,(_counts + 1)
      0005B4 94 02            [12] 2249 	subb	a,#0x02
      0005B6 50 08            [24] 2250 	jnc	00109$
                           000518  2251 	C$LAB2.c$270$3$95 ==.
                                   2252 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:270: LEDLighter(light);
      0005B8 85 3B 82         [24] 2253 	mov	dpl,_light
      0005BB 12 06 B3         [24] 2254 	lcall	_LEDLighter
      0005BE 80 ED            [24] 2255 	sjmp	00107$
      0005C0                       2256 00109$:
                           000520  2257 	C$LAB2.c$272$2$94 ==.
                                   2258 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:272: P2 = 0xFF;
      0005C0 75 A0 FF         [24] 2259 	mov	_P2,#0xff
                           000523  2260 	C$LAB2.c$273$2$94 ==.
                                   2261 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:273: counts = 0;
      0005C3 E4               [12] 2262 	clr	a
      0005C4 F5 2C            [12] 2263 	mov	_counts,a
      0005C6 F5 2D            [12] 2264 	mov	(_counts + 1),a
                           000528  2265 	C$LAB2.c$274$2$94 ==.
                                   2266 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:274: while (counts < 668) { //wait 2s
      0005C8                       2267 00110$:
      0005C8 C3               [12] 2268 	clr	c
      0005C9 E5 2C            [12] 2269 	mov	a,_counts
      0005CB 94 9C            [12] 2270 	subb	a,#0x9c
      0005CD E5 2D            [12] 2271 	mov	a,(_counts + 1)
      0005CF 94 02            [12] 2272 	subb	a,#0x02
      0005D1 50 11            [24] 2273 	jnc	00112$
                           000533  2274 	C$LAB2.c$275$3$96 ==.
                                   2275 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:275: pot = read_AD_input(4,0); //Read the A/D value on P1.4 and set casting as 0 for native AD values
      0005D3 75 45 00         [24] 2276 	mov	_read_AD_input_PARM_2,#0x00
      0005D6 75 82 04         [24] 2277 	mov	dpl,#0x04
      0005D9 12 07 9C         [24] 2278 	lcall	_read_AD_input
                           00053C  2279 	C$LAB2.c$276$3$96 ==.
                                   2280 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:276: Draw_Bar(pot);
      0005DC 85 82 3C         [24] 2281 	mov  _pot,dpl
      0005DF 12 07 DF         [24] 2282 	lcall	_Draw_Bar
      0005E2 80 E4            [24] 2283 	sjmp	00110$
      0005E4                       2284 00112$:
                           000544  2285 	C$LAB2.c$278$2$94 ==.
                                   2286 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:278: TR0 = 0;
      0005E4 C2 8C            [12] 2287 	clr	_TR0
                           000546  2288 	C$LAB2.c$279$2$94 ==.
                                   2289 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:279: Flashall();
      0005E6 12 07 24         [24] 2290 	lcall	_Flashall
                           000549  2291 	C$LAB2.c$280$2$94 ==.
                                   2292 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:280: compare((pot/52), light);
      0005E9 75 F0 34         [24] 2293 	mov	b,#0x34
      0005EC E5 3C            [12] 2294 	mov	a,_pot
      0005EE 84               [48] 2295 	div	ab
      0005EF F5 82            [12] 2296 	mov	dpl,a
      0005F1 85 3B 0E         [24] 2297 	mov	_compare_PARM_2,_light
      0005F4 12 07 66         [24] 2298 	lcall	_compare
                           000557  2299 	C$LAB2.c$281$2$94 ==.
                                   2300 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:281: error = abs((light * 16) - (pot/4)) * 2;
      0005F7 E5 3B            [12] 2301 	mov	a,_light
      0005F9 75 F0 10         [24] 2302 	mov	b,#0x10
      0005FC A4               [48] 2303 	mul	ab
      0005FD FE               [12] 2304 	mov	r6,a
      0005FE AF F0            [24] 2305 	mov	r7,b
      000600 E5 3C            [12] 2306 	mov	a,_pot
      000602 03               [12] 2307 	rr	a
      000603 03               [12] 2308 	rr	a
      000604 54 3F            [12] 2309 	anl	a,#0x3f
      000606 FD               [12] 2310 	mov	r5,a
      000607 7C 00            [12] 2311 	mov	r4,#0x00
      000609 EE               [12] 2312 	mov	a,r6
      00060A C3               [12] 2313 	clr	c
      00060B 9D               [12] 2314 	subb	a,r5
      00060C F5 82            [12] 2315 	mov	dpl,a
      00060E EF               [12] 2316 	mov	a,r7
      00060F 9C               [12] 2317 	subb	a,r4
      000610 F5 83            [12] 2318 	mov	dph,a
      000612 12 08 F6         [24] 2319 	lcall	_abs
      000615 AE 82            [24] 2320 	mov	r6,dpl
      000617 EE               [12] 2321 	mov	a,r6
      000618 2E               [12] 2322 	add	a,r6
      000619 F5 3E            [12] 2323 	mov	_error,a
                           00057B  2324 	C$LAB2.c$282$2$94 ==.
                                   2325 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:282: if ((10 - error) > 0) {
      00061B AE 3E            [24] 2326 	mov	r6,_error
      00061D 7F 00            [12] 2327 	mov	r7,#0x00
      00061F 74 0A            [12] 2328 	mov	a,#0x0a
      000621 C3               [12] 2329 	clr	c
      000622 9E               [12] 2330 	subb	a,r6
      000623 FE               [12] 2331 	mov	r6,a
      000624 E4               [12] 2332 	clr	a
      000625 9F               [12] 2333 	subb	a,r7
      000626 FF               [12] 2334 	mov	r7,a
      000627 C3               [12] 2335 	clr	c
      000628 E4               [12] 2336 	clr	a
      000629 9E               [12] 2337 	subb	a,r6
      00062A 74 80            [12] 2338 	mov	a,#(0x00 ^ 0x80)
      00062C 8F F0            [24] 2339 	mov	b,r7
      00062E 63 F0 80         [24] 2340 	xrl	b,#0x80
      000631 95 F0            [12] 2341 	subb	a,b
      000633 50 16            [24] 2342 	jnc	00114$
                           000595  2343 	C$LAB2.c$283$3$97 ==.
                                   2344 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:283: score += (10 - error);
      000635 AE 3E            [24] 2345 	mov	r6,_error
      000637 7F 00            [12] 2346 	mov	r7,#0x00
      000639 74 0A            [12] 2347 	mov	a,#0x0a
      00063B C3               [12] 2348 	clr	c
      00063C 9E               [12] 2349 	subb	a,r6
      00063D FE               [12] 2350 	mov	r6,a
      00063E E4               [12] 2351 	clr	a
      00063F 9F               [12] 2352 	subb	a,r7
      000640 FF               [12] 2353 	mov	r7,a
      000641 EE               [12] 2354 	mov	a,r6
      000642 25 36            [12] 2355 	add	a,_score
      000644 F5 36            [12] 2356 	mov	_score,a
      000646 EF               [12] 2357 	mov	a,r7
      000647 35 37            [12] 2358 	addc	a,(_score + 1)
      000649 F5 37            [12] 2359 	mov	(_score + 1),a
                           0005AB  2360 	C$LAB2.c$286$3$98 ==.
                                   2361 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:286: score += 0;
      00064B                       2362 00114$:
                           0005AB  2363 	C$LAB2.c$288$2$94 ==.
                                   2364 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:288: gamescore = gamescore + score;
      00064B E5 36            [12] 2365 	mov	a,_score
      00064D 25 38            [12] 2366 	add	a,_gamescore
      00064F F5 38            [12] 2367 	mov	_gamescore,a
      000651 E5 37            [12] 2368 	mov	a,(_score + 1)
      000653 35 39            [12] 2369 	addc	a,(_gamescore + 1)
      000655 F5 39            [12] 2370 	mov	(_gamescore + 1),a
                           0005B7  2371 	C$LAB2.c$289$2$94 ==.
                                   2372 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:289: printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
      000657 C0 38            [24] 2373 	push	_gamescore
      000659 C0 39            [24] 2374 	push	(_gamescore + 1)
      00065B C0 36            [24] 2375 	push	_score
      00065D C0 37            [24] 2376 	push	(_score + 1)
      00065F 74 DE            [12] 2377 	mov	a,#___str_5
      000661 C0 E0            [24] 2378 	push	acc
      000663 74 11            [12] 2379 	mov	a,#(___str_5 >> 8)
      000665 C0 E0            [24] 2380 	push	acc
      000667 74 80            [12] 2381 	mov	a,#0x80
      000669 C0 E0            [24] 2382 	push	acc
      00066B 12 09 E2         [24] 2383 	lcall	_printf
      00066E E5 81            [12] 2384 	mov	a,sp
      000670 24 F9            [12] 2385 	add	a,#0xf9
      000672 F5 81            [12] 2386 	mov	sp,a
                           0005D4  2387 	C$LAB2.c$290$2$94 ==.
                                   2388 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:290: score = 0; //reset game score for the next try
      000674 E4               [12] 2389 	clr	a
      000675 F5 36            [12] 2390 	mov	_score,a
      000677 F5 37            [12] 2391 	mov	(_score + 1),a
                           0005D9  2392 	C$LAB2.c$291$2$94 ==.
                                   2393 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:291: counts = 0;
      000679 F5 2C            [12] 2394 	mov	_counts,a
      00067B F5 2D            [12] 2395 	mov	(_counts + 1),a
                           0005DD  2396 	C$LAB2.c$292$2$94 ==.
                                   2397 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:292: TR0 = 1;
      00067D D2 8C            [12] 2398 	setb	_TR0
                           0005DF  2399 	C$LAB2.c$293$2$94 ==.
                                   2400 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:293: while (counts < 334); //do nothing
      00067F                       2401 00116$:
      00067F C3               [12] 2402 	clr	c
      000680 E5 2C            [12] 2403 	mov	a,_counts
      000682 94 4E            [12] 2404 	subb	a,#0x4e
      000684 E5 2D            [12] 2405 	mov	a,(_counts + 1)
      000686 94 01            [12] 2406 	subb	a,#0x01
      000688 40 F5            [24] 2407 	jc	00116$
                           0005EA  2408 	C$LAB2.c$294$2$94 ==.
                                   2409 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:294: TR0 = 0;
      00068A C2 8C            [12] 2410 	clr	_TR0
                           0005EC  2411 	C$LAB2.c$295$2$94 ==.
                                   2412 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:295: counts = 0;
      00068C E4               [12] 2413 	clr	a
      00068D F5 2C            [12] 2414 	mov	_counts,a
      00068F F5 2D            [12] 2415 	mov	(_counts + 1),a
                           0005F1  2416 	C$LAB2.c$296$2$94 ==.
                                   2417 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:296: tries ++;
      000691 05 3A            [12] 2418 	inc	_tries
      000693 02 05 97         [24] 2419 	ljmp	00119$
      000696                       2420 00121$:
                           0005F6  2421 	C$LAB2.c$298$1$91 ==.
                                   2422 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:298: printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
      000696 C0 38            [24] 2423 	push	_gamescore
      000698 C0 39            [24] 2424 	push	(_gamescore + 1)
      00069A 74 24            [12] 2425 	mov	a,#___str_6
      00069C C0 E0            [24] 2426 	push	acc
      00069E 74 12            [12] 2427 	mov	a,#(___str_6 >> 8)
      0006A0 C0 E0            [24] 2428 	push	acc
      0006A2 74 80            [12] 2429 	mov	a,#0x80
      0006A4 C0 E0            [24] 2430 	push	acc
      0006A6 12 09 E2         [24] 2431 	lcall	_printf
      0006A9 E5 81            [12] 2432 	mov	a,sp
      0006AB 24 FB            [12] 2433 	add	a,#0xfb
      0006AD F5 81            [12] 2434 	mov	sp,a
                           00060F  2435 	C$LAB2.c$299$1$91 ==.
                                   2436 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:299: Flash();
      0006AF 12 06 E7         [24] 2437 	lcall	_Flash
                           000612  2438 	C$LAB2.c$300$1$91 ==.
                           000612  2439 	XG$Game3$0$0 ==.
      0006B2 22               [24] 2440 	ret
                                   2441 ;------------------------------------------------------------
                                   2442 ;Allocation info for local variables in function 'LEDLighter'
                                   2443 ;------------------------------------------------------------
                                   2444 ;leds                      Allocated to registers r7 
                                   2445 ;------------------------------------------------------------
                           000613  2446 	G$LEDLighter$0$0 ==.
                           000613  2447 	C$LAB2.c$302$1$91 ==.
                                   2448 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:302: void LEDLighter(unsigned char leds)
                                   2449 ;	-----------------------------------------
                                   2450 ;	 function LEDLighter
                                   2451 ;	-----------------------------------------
      0006B3                       2452 _LEDLighter:
      0006B3 AF 82            [24] 2453 	mov	r7,dpl
                           000615  2454 	C$LAB2.c$304$1$100 ==.
                                   2455 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:304: LED0 = 1; //turn off all LEDs before assigning new values
      0006B5 D2 A6            [12] 2456 	setb	_LED0
                           000617  2457 	C$LAB2.c$305$1$100 ==.
                                   2458 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:305: LED1 = 1;
      0006B7 D2 A2            [12] 2459 	setb	_LED1
                           000619  2460 	C$LAB2.c$306$1$100 ==.
                                   2461 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:306: LED2 = 1;
      0006B9 D2 A4            [12] 2462 	setb	_LED2
                           00061B  2463 	C$LAB2.c$307$1$100 ==.
                                   2464 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:307: LED3 = 1; //not addressed by P2 to avoid changing BILED state
      0006BB D2 A7            [12] 2465 	setb	_LED3
                           00061D  2466 	C$LAB2.c$309$1$100 ==.
                                   2467 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:309: if (leds == 0) {
      0006BD EF               [12] 2468 	mov	a,r7
      0006BE 60 26            [24] 2469 	jz	00115$
                           000620  2470 	C$LAB2.c$312$1$100 ==.
                                   2471 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:312: else if (leds == 1) { //handle 1 LED case
      0006C0 BF 01 04         [24] 2472 	cjne	r7,#0x01,00110$
                           000623  2473 	C$LAB2.c$313$2$102 ==.
                                   2474 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:313: LED0 = 0;
      0006C3 C2 A6            [12] 2475 	clr	_LED0
      0006C5 80 1F            [24] 2476 	sjmp	00115$
      0006C7                       2477 00110$:
                           000627  2478 	C$LAB2.c$315$1$100 ==.
                                   2479 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:315: else if (leds == 2) { //handle 2 LED case
      0006C7 BF 02 06         [24] 2480 	cjne	r7,#0x02,00107$
                           00062A  2481 	C$LAB2.c$316$2$103 ==.
                                   2482 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:316: LED0 = 0;
      0006CA C2 A6            [12] 2483 	clr	_LED0
                           00062C  2484 	C$LAB2.c$317$2$103 ==.
                                   2485 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:317: LED1 = 0;
      0006CC C2 A2            [12] 2486 	clr	_LED1
      0006CE 80 16            [24] 2487 	sjmp	00115$
      0006D0                       2488 00107$:
                           000630  2489 	C$LAB2.c$319$1$100 ==.
                                   2490 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:319: else if (leds == 3) { //handle 3 LED case
      0006D0 BF 03 08         [24] 2491 	cjne	r7,#0x03,00104$
                           000633  2492 	C$LAB2.c$320$2$104 ==.
                                   2493 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:320: LED0 = 0;
      0006D3 C2 A6            [12] 2494 	clr	_LED0
                           000635  2495 	C$LAB2.c$321$2$104 ==.
                                   2496 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:321: LED1 = 0;
      0006D5 C2 A2            [12] 2497 	clr	_LED1
                           000637  2498 	C$LAB2.c$322$2$104 ==.
                                   2499 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:322: LED2 = 0;
      0006D7 C2 A4            [12] 2500 	clr	_LED2
      0006D9 80 0B            [24] 2501 	sjmp	00115$
      0006DB                       2502 00104$:
                           00063B  2503 	C$LAB2.c$324$1$100 ==.
                                   2504 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:324: else if (leds == 4) { //handle 4 LED case
      0006DB BF 04 08         [24] 2505 	cjne	r7,#0x04,00115$
                           00063E  2506 	C$LAB2.c$325$2$105 ==.
                                   2507 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:325: LED0 = 0;
      0006DE C2 A6            [12] 2508 	clr	_LED0
                           000640  2509 	C$LAB2.c$326$2$105 ==.
                                   2510 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:326: LED1 = 0;
      0006E0 C2 A2            [12] 2511 	clr	_LED1
                           000642  2512 	C$LAB2.c$327$2$105 ==.
                                   2513 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:327: LED2 = 0;
      0006E2 C2 A4            [12] 2514 	clr	_LED2
                           000644  2515 	C$LAB2.c$328$2$105 ==.
                                   2516 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:328: LED3 = 0;
      0006E4 C2 A7            [12] 2517 	clr	_LED3
      0006E6                       2518 00115$:
                           000646  2519 	C$LAB2.c$330$1$100 ==.
                           000646  2520 	XG$LEDLighter$0$0 ==.
      0006E6 22               [24] 2521 	ret
                                   2522 ;------------------------------------------------------------
                                   2523 ;Allocation info for local variables in function 'Flash'
                                   2524 ;------------------------------------------------------------
                           000647  2525 	G$Flash$0$0 ==.
                           000647  2526 	C$LAB2.c$332$1$100 ==.
                                   2527 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:332: void Flash(void)
                                   2528 ;	-----------------------------------------
                                   2529 ;	 function Flash
                                   2530 ;	-----------------------------------------
      0006E7                       2531 _Flash:
                           000647  2532 	C$LAB2.c$334$1$107 ==.
                                   2533 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:334: TR0 = 1;
      0006E7 D2 8C            [12] 2534 	setb	_TR0
                           000649  2535 	C$LAB2.c$335$1$107 ==.
                                   2536 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:335: flash = 0;
      0006E9 75 3D 00         [24] 2537 	mov	_flash,#0x00
                           00064C  2538 	C$LAB2.c$336$1$107 ==.
                                   2539 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:336: while (flash < 4) { //flash 8 times total, 4 red/green cycles
      0006EC                       2540 00107$:
      0006EC 74 FC            [12] 2541 	mov	a,#0x100 - 0x04
      0006EE 25 3D            [12] 2542 	add	a,_flash
      0006F0 40 2B            [24] 2543 	jc	00109$
                           000652  2544 	C$LAB2.c$337$2$108 ==.
                                   2545 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:337: counts = 0;
      0006F2 E4               [12] 2546 	clr	a
      0006F3 F5 2C            [12] 2547 	mov	_counts,a
      0006F5 F5 2D            [12] 2548 	mov	(_counts + 1),a
                           000657  2549 	C$LAB2.c$338$2$108 ==.
                                   2550 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:338: while (counts < 42) { //1/8th of a second
      0006F7                       2551 00101$:
      0006F7 C3               [12] 2552 	clr	c
      0006F8 E5 2C            [12] 2553 	mov	a,_counts
      0006FA 94 2A            [12] 2554 	subb	a,#0x2a
      0006FC E5 2D            [12] 2555 	mov	a,(_counts + 1)
      0006FE 94 00            [12] 2556 	subb	a,#0x00
      000700 50 06            [24] 2557 	jnc	00104$
                           000662  2558 	C$LAB2.c$339$3$109 ==.
                                   2559 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:339: BILED0 = 0;
      000702 C2 A5            [12] 2560 	clr	_BILED0
                           000664  2561 	C$LAB2.c$340$3$109 ==.
                                   2562 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:340: BILED1 = 1;
      000704 D2 A3            [12] 2563 	setb	_BILED1
                           000666  2564 	C$LAB2.c$342$2$108 ==.
                                   2565 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:342: while (counts < 84) { //1/4th of a second
      000706 80 EF            [24] 2566 	sjmp	00101$
      000708                       2567 00104$:
      000708 C3               [12] 2568 	clr	c
      000709 E5 2C            [12] 2569 	mov	a,_counts
      00070B 94 54            [12] 2570 	subb	a,#0x54
      00070D E5 2D            [12] 2571 	mov	a,(_counts + 1)
      00070F 94 00            [12] 2572 	subb	a,#0x00
      000711 50 06            [24] 2573 	jnc	00106$
                           000673  2574 	C$LAB2.c$343$3$110 ==.
                                   2575 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:343: BILED0 = 1;
      000713 D2 A5            [12] 2576 	setb	_BILED0
                           000675  2577 	C$LAB2.c$344$3$110 ==.
                                   2578 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:344: BILED1 = 0;
      000715 C2 A3            [12] 2579 	clr	_BILED1
      000717 80 EF            [24] 2580 	sjmp	00104$
      000719                       2581 00106$:
                           000679  2582 	C$LAB2.c$346$2$108 ==.
                                   2583 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:346: flash ++;
      000719 05 3D            [12] 2584 	inc	_flash
      00071B 80 CF            [24] 2585 	sjmp	00107$
      00071D                       2586 00109$:
                           00067D  2587 	C$LAB2.c$348$1$107 ==.
                                   2588 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:348: TR0 = 0;
      00071D C2 8C            [12] 2589 	clr	_TR0
                           00067F  2590 	C$LAB2.c$349$1$107 ==.
                                   2591 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:349: BILED0 = 1;
      00071F D2 A5            [12] 2592 	setb	_BILED0
                           000681  2593 	C$LAB2.c$350$1$107 ==.
                                   2594 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:350: BILED1 = 1;
      000721 D2 A3            [12] 2595 	setb	_BILED1
                           000683  2596 	C$LAB2.c$351$1$107 ==.
                           000683  2597 	XG$Flash$0$0 ==.
      000723 22               [24] 2598 	ret
                                   2599 ;------------------------------------------------------------
                                   2600 ;Allocation info for local variables in function 'Flashall'
                                   2601 ;------------------------------------------------------------
                           000684  2602 	G$Flashall$0$0 ==.
                           000684  2603 	C$LAB2.c$353$1$107 ==.
                                   2604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:353: void Flashall(void)
                                   2605 ;	-----------------------------------------
                                   2606 ;	 function Flashall
                                   2607 ;	-----------------------------------------
      000724                       2608 _Flashall:
                           000684  2609 	C$LAB2.c$355$1$112 ==.
                                   2610 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:355: counts = 0;
      000724 E4               [12] 2611 	clr	a
      000725 F5 2C            [12] 2612 	mov	_counts,a
      000727 F5 2D            [12] 2613 	mov	(_counts + 1),a
                           000689  2614 	C$LAB2.c$356$1$112 ==.
                                   2615 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:356: TR0 = 1;
      000729 D2 8C            [12] 2616 	setb	_TR0
                           00068B  2617 	C$LAB2.c$357$1$112 ==.
                                   2618 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:357: while (counts < 167) { //flash LEDs on
      00072B                       2619 00101$:
      00072B C3               [12] 2620 	clr	c
      00072C E5 2C            [12] 2621 	mov	a,_counts
      00072E 94 A7            [12] 2622 	subb	a,#0xa7
      000730 E5 2D            [12] 2623 	mov	a,(_counts + 1)
      000732 94 00            [12] 2624 	subb	a,#0x00
      000734 50 05            [24] 2625 	jnc	00104$
                           000696  2626 	C$LAB2.c$358$2$113 ==.
                                   2627 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:358: P2 = 0x00;
      000736 75 A0 00         [24] 2628 	mov	_P2,#0x00
                           000699  2629 	C$LAB2.c$360$1$112 ==.
                                   2630 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:360: while (counts < 334) { //flash LEDs off
      000739 80 F0            [24] 2631 	sjmp	00101$
      00073B                       2632 00104$:
      00073B C3               [12] 2633 	clr	c
      00073C E5 2C            [12] 2634 	mov	a,_counts
      00073E 94 4E            [12] 2635 	subb	a,#0x4e
      000740 E5 2D            [12] 2636 	mov	a,(_counts + 1)
      000742 94 01            [12] 2637 	subb	a,#0x01
      000744 50 05            [24] 2638 	jnc	00107$
                           0006A6  2639 	C$LAB2.c$361$2$114 ==.
                                   2640 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:361: P2 = 0xFF;
      000746 75 A0 FF         [24] 2641 	mov	_P2,#0xff
                           0006A9  2642 	C$LAB2.c$363$1$112 ==.
                                   2643 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:363: while (counts < 501) { //flash LEDs on
      000749 80 F0            [24] 2644 	sjmp	00104$
      00074B                       2645 00107$:
      00074B C3               [12] 2646 	clr	c
      00074C E5 2C            [12] 2647 	mov	a,_counts
      00074E 94 F5            [12] 2648 	subb	a,#0xf5
      000750 E5 2D            [12] 2649 	mov	a,(_counts + 1)
      000752 94 01            [12] 2650 	subb	a,#0x01
      000754 50 05            [24] 2651 	jnc	00109$
                           0006B6  2652 	C$LAB2.c$364$2$115 ==.
                                   2653 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:364: P2 = 0x00;
      000756 75 A0 00         [24] 2654 	mov	_P2,#0x00
      000759 80 F0            [24] 2655 	sjmp	00107$
      00075B                       2656 00109$:
                           0006BB  2657 	C$LAB2.c$366$1$112 ==.
                                   2658 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:366: TR0 = 0;
      00075B C2 8C            [12] 2659 	clr	_TR0
                           0006BD  2660 	C$LAB2.c$367$1$112 ==.
                                   2661 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:367: counts = 0;
      00075D E4               [12] 2662 	clr	a
      00075E F5 2C            [12] 2663 	mov	_counts,a
      000760 F5 2D            [12] 2664 	mov	(_counts + 1),a
                           0006C2  2665 	C$LAB2.c$368$1$112 ==.
                                   2666 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:368: P2 = 0xFF;
      000762 75 A0 FF         [24] 2667 	mov	_P2,#0xff
                           0006C5  2668 	C$LAB2.c$369$1$112 ==.
                           0006C5  2669 	XG$Flashall$0$0 ==.
      000765 22               [24] 2670 	ret
                                   2671 ;------------------------------------------------------------
                                   2672 ;Allocation info for local variables in function 'compare'
                                   2673 ;------------------------------------------------------------
                                   2674 ;acquired                  Allocated with name '_compare_PARM_2'
                                   2675 ;desired                   Allocated to registers r7 
                                   2676 ;------------------------------------------------------------
                           0006C6  2677 	G$compare$0$0 ==.
                           0006C6  2678 	C$LAB2.c$371$1$112 ==.
                                   2679 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:371: void compare(unsigned char desired, unsigned char acquired) {
                                   2680 ;	-----------------------------------------
                                   2681 ;	 function compare
                                   2682 ;	-----------------------------------------
      000766                       2683 _compare:
      000766 AF 82            [24] 2684 	mov	r7,dpl
                           0006C8  2685 	C$LAB2.c$372$1$117 ==.
                                   2686 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:372: if (desired < acquired) {
      000768 C3               [12] 2687 	clr	c
      000769 EF               [12] 2688 	mov	a,r7
      00076A 95 0E            [12] 2689 	subb	a,_compare_PARM_2
      00076C 50 06            [24] 2690 	jnc	00104$
                           0006CE  2691 	C$LAB2.c$373$2$118 ==.
                                   2692 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:373: BILED0 = 1;
      00076E D2 A5            [12] 2693 	setb	_BILED0
                           0006D0  2694 	C$LAB2.c$374$2$118 ==.
                                   2695 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:374: BILED1 = 0;
      000770 C2 A3            [12] 2696 	clr	_BILED1
      000772 80 0A            [24] 2697 	sjmp	00106$
      000774                       2698 00104$:
                           0006D4  2699 	C$LAB2.c$376$1$117 ==.
                                   2700 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:376: else if (desired > acquired) {
      000774 C3               [12] 2701 	clr	c
      000775 E5 0E            [12] 2702 	mov	a,_compare_PARM_2
      000777 9F               [12] 2703 	subb	a,r7
      000778 50 04            [24] 2704 	jnc	00106$
                           0006DA  2705 	C$LAB2.c$377$2$119 ==.
                                   2706 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:377: BILED0 = 0;
      00077A C2 A5            [12] 2707 	clr	_BILED0
                           0006DC  2708 	C$LAB2.c$378$2$119 ==.
                                   2709 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:378: BILED1 = 1;
      00077C D2 A3            [12] 2710 	setb	_BILED1
      00077E                       2711 00106$:
                           0006DE  2712 	C$LAB2.c$380$1$117 ==.
                           0006DE  2713 	XG$compare$0$0 ==.
      00077E 22               [24] 2714 	ret
                                   2715 ;------------------------------------------------------------
                                   2716 ;Allocation info for local variables in function 'Port_Init'
                                   2717 ;------------------------------------------------------------
                           0006DF  2718 	G$Port_Init$0$0 ==.
                           0006DF  2719 	C$LAB2.c$382$1$117 ==.
                                   2720 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:382: void Port_Init(void)
                                   2721 ;	-----------------------------------------
                                   2722 ;	 function Port_Init
                                   2723 ;	-----------------------------------------
      00077F                       2724 _Port_Init:
                           0006DF  2725 	C$LAB2.c$385$1$121 ==.
                                   2726 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:385: P1MDIN &= ~0x10; /* Set P1.4 for analog input */
      00077F 53 BD EF         [24] 2727 	anl	_P1MDIN,#0xef
                           0006E2  2728 	C$LAB2.c$386$1$121 ==.
                                   2729 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:386: P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
      000782 53 A5 EF         [24] 2730 	anl	_P1MDOUT,#0xef
                           0006E5  2731 	C$LAB2.c$387$1$121 ==.
                                   2732 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:387: P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
      000785 43 90 10         [24] 2733 	orl	_P1,#0x10
                           0006E8  2734 	C$LAB2.c$390$1$121 ==.
                                   2735 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:390: P2MDOUT |= 0xFC; // set Port 2 output pins to push-pull mode 
      000788 43 A6 FC         [24] 2736 	orl	_P2MDOUT,#0xfc
                           0006EB  2737 	C$LAB2.c$393$1$121 ==.
                                   2738 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:393: P3MDOUT &= 0x0F; // set Port 3 input pins to open drain mode
      00078B 53 A7 0F         [24] 2739 	anl	_P3MDOUT,#0x0f
                           0006EE  2740 	C$LAB2.c$394$1$121 ==.
                                   2741 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:394: P3 |= ~0x0F; // set Port 3 input pins to high impedance state
      00078E 43 B0 F0         [24] 2742 	orl	_P3,#0xf0
                           0006F1  2743 	C$LAB2.c$395$1$121 ==.
                           0006F1  2744 	XG$Port_Init$0$0 ==.
      000791 22               [24] 2745 	ret
                                   2746 ;------------------------------------------------------------
                                   2747 ;Allocation info for local variables in function 'ADC_Init'
                                   2748 ;------------------------------------------------------------
                           0006F2  2749 	G$ADC_Init$0$0 ==.
                           0006F2  2750 	C$LAB2.c$397$1$121 ==.
                                   2751 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:397: void ADC_Init(void)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function ADC_Init
                                   2754 ;	-----------------------------------------
      000792                       2755 _ADC_Init:
                           0006F2  2756 	C$LAB2.c$399$1$123 ==.
                                   2757 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:399: REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
      000792 75 D1 03         [24] 2758 	mov	_REF0CN,#0x03
                           0006F5  2759 	C$LAB2.c$400$1$123 ==.
                                   2760 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:400: ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
      000795 75 AA 80         [24] 2761 	mov	_ADC1CN,#0x80
                           0006F8  2762 	C$LAB2.c$401$1$123 ==.
                                   2763 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:401: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
      000798 43 AB 01         [24] 2764 	orl	_ADC1CF,#0x01
                           0006FB  2765 	C$LAB2.c$402$1$123 ==.
                           0006FB  2766 	XG$ADC_Init$0$0 ==.
      00079B 22               [24] 2767 	ret
                                   2768 ;------------------------------------------------------------
                                   2769 ;Allocation info for local variables in function 'read_AD_input'
                                   2770 ;------------------------------------------------------------
                                   2771 ;cast                      Allocated with name '_read_AD_input_PARM_2'
                                   2772 ;n                         Allocated to registers 
                                   2773 ;------------------------------------------------------------
                           0006FC  2774 	G$read_AD_input$0$0 ==.
                           0006FC  2775 	C$LAB2.c$404$1$123 ==.
                                   2776 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:404: unsigned char read_AD_input(unsigned char n, unsigned char cast)
                                   2777 ;	-----------------------------------------
                                   2778 ;	 function read_AD_input
                                   2779 ;	-----------------------------------------
      00079C                       2780 _read_AD_input:
      00079C 85 82 AC         [24] 2781 	mov	_AMX1SL,dpl
                           0006FF  2782 	C$LAB2.c$407$1$125 ==.
                                   2783 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:407: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
      00079F 53 AA DF         [24] 2784 	anl	_ADC1CN,#0xdf
                           000702  2785 	C$LAB2.c$408$1$125 ==.
                                   2786 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:408: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
      0007A2 43 AA 10         [24] 2787 	orl	_ADC1CN,#0x10
                           000705  2788 	C$LAB2.c$409$1$125 ==.
                                   2789 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:409: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      0007A5                       2790 00101$:
      0007A5 E5 AA            [12] 2791 	mov	a,_ADC1CN
      0007A7 30 E5 FB         [24] 2792 	jnb	acc.5,00101$
                           00070A  2793 	C$LAB2.c$410$1$125 ==.
                                   2794 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:410: if (cast == 0) { //check for unmodified case
      0007AA E5 45            [12] 2795 	mov	a,_read_AD_input_PARM_2
      0007AC 70 05            [24] 2796 	jnz	00105$
                           00070E  2797 	C$LAB2.c$411$2$126 ==.
                                   2798 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:411: return (ADC1); /* Return digital value in ADC1 register */
      0007AE 85 9C 82         [24] 2799 	mov	dpl,_ADC1
      0007B1 80 2B            [24] 2800 	sjmp	00107$
      0007B3                       2801 00105$:
                           000713  2802 	C$LAB2.c$414$2$127 ==.
                                   2803 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:414: adcast = (265 / cast) + 1; //create the casting gradient
      0007B3 85 45 0E         [24] 2804 	mov	__divsint_PARM_2,_read_AD_input_PARM_2
      0007B6 75 0F 00         [24] 2805 	mov	(__divsint_PARM_2 + 1),#0x00
      0007B9 90 01 09         [24] 2806 	mov	dptr,#0x0109
      0007BC 12 10 2F         [24] 2807 	lcall	__divsint
      0007BF E5 82            [12] 2808 	mov	a,dpl
      0007C1 85 83 F0         [24] 2809 	mov	b,dph
      0007C4 24 01            [12] 2810 	add	a,#0x01
      0007C6 F5 2E            [12] 2811 	mov	_adcast,a
      0007C8 E4               [12] 2812 	clr	a
      0007C9 35 F0            [12] 2813 	addc	a,b
      0007CB F5 2F            [12] 2814 	mov	(_adcast + 1),a
                           00072D  2815 	C$LAB2.c$415$2$127 ==.
                                   2816 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:415: return (ADC1/adcast); /* Return digital value in ADC1 register */
      0007CD AE 9C            [24] 2817 	mov	r6,_ADC1
      0007CF 7F 00            [12] 2818 	mov	r7,#0x00
      0007D1 85 2E 0E         [24] 2819 	mov	__divuint_PARM_2,_adcast
      0007D4 85 2F 0F         [24] 2820 	mov	(__divuint_PARM_2 + 1),(_adcast + 1)
      0007D7 8E 82            [24] 2821 	mov	dpl,r6
      0007D9 8F 83            [24] 2822 	mov	dph,r7
      0007DB 12 08 82         [24] 2823 	lcall	__divuint
                           00073E  2824 	C$LAB2.c$417$1$125 ==.
                           00073E  2825 	XG$read_AD_input$0$0 ==.
      0007DE                       2826 00107$:
      0007DE 22               [24] 2827 	ret
                                   2828 ;------------------------------------------------------------
                                   2829 ;Allocation info for local variables in function 'Draw_Bar'
                                   2830 ;------------------------------------------------------------
                                   2831 ;length                    Allocated to registers r7 
                                   2832 ;i                         Allocated to registers r6 
                                   2833 ;------------------------------------------------------------
                           00073F  2834 	G$Draw_Bar$0$0 ==.
                           00073F  2835 	C$LAB2.c$423$1$125 ==.
                                   2836 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:423: void Draw_Bar(unsigned char length)
                                   2837 ;	-----------------------------------------
                                   2838 ;	 function Draw_Bar
                                   2839 ;	-----------------------------------------
      0007DF                       2840 _Draw_Bar:
                           00073F  2841 	C$LAB2.c$426$1$129 ==.
                                   2842 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:426: length = length/4;
      0007DF E5 82            [12] 2843 	mov	a,dpl
      0007E1 03               [12] 2844 	rr	a
      0007E2 03               [12] 2845 	rr	a
      0007E3 54 3F            [12] 2846 	anl	a,#0x3f
      0007E5 FF               [12] 2847 	mov	r7,a
                           000746  2848 	C$LAB2.c$427$1$129 ==.
                                   2849 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:427: for(i=0; i<length; i++) putchar('#'); // print number of '#'
      0007E6 7E 00            [12] 2850 	mov	r6,#0x00
      0007E8                       2851 00104$:
      0007E8 C3               [12] 2852 	clr	c
      0007E9 EE               [12] 2853 	mov	a,r6
      0007EA 9F               [12] 2854 	subb	a,r7
      0007EB 50 11            [24] 2855 	jnc	00101$
      0007ED 75 82 23         [24] 2856 	mov	dpl,#0x23
      0007F0 C0 07            [24] 2857 	push	ar7
      0007F2 C0 06            [24] 2858 	push	ar6
      0007F4 12 00 EA         [24] 2859 	lcall	_putchar
      0007F7 D0 06            [24] 2860 	pop	ar6
      0007F9 D0 07            [24] 2861 	pop	ar7
      0007FB 0E               [12] 2862 	inc	r6
      0007FC 80 EA            [24] 2863 	sjmp	00104$
      0007FE                       2864 00101$:
                           00075E  2865 	C$LAB2.c$428$1$129 ==.
                                   2866 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:428: length = 63 - length; // clear the rest of the line
      0007FE 74 3F            [12] 2867 	mov	a,#0x3f
      000800 C3               [12] 2868 	clr	c
      000801 9F               [12] 2869 	subb	a,r7
      000802 FF               [12] 2870 	mov	r7,a
                           000763  2871 	C$LAB2.c$429$1$129 ==.
                                   2872 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:429: for(i=0; i<length; i++) putchar(' '); // print (63 – length) spaces
      000803 7E 00            [12] 2873 	mov	r6,#0x00
      000805                       2874 00107$:
      000805 C3               [12] 2875 	clr	c
      000806 EE               [12] 2876 	mov	a,r6
      000807 9F               [12] 2877 	subb	a,r7
      000808 50 11            [24] 2878 	jnc	00102$
      00080A 75 82 20         [24] 2879 	mov	dpl,#0x20
      00080D C0 07            [24] 2880 	push	ar7
      00080F C0 06            [24] 2881 	push	ar6
      000811 12 00 EA         [24] 2882 	lcall	_putchar
      000814 D0 06            [24] 2883 	pop	ar6
      000816 D0 07            [24] 2884 	pop	ar7
      000818 0E               [12] 2885 	inc	r6
      000819 80 EA            [24] 2886 	sjmp	00107$
      00081B                       2887 00102$:
                           00077B  2888 	C$LAB2.c$430$1$129 ==.
                                   2889 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:430: putchar('|'); // print end mark '|'
      00081B 75 82 7C         [24] 2890 	mov	dpl,#0x7c
      00081E 12 00 EA         [24] 2891 	lcall	_putchar
                           000781  2892 	C$LAB2.c$431$1$129 ==.
                                   2893 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:431: putchar('\r'); // return to beginning of the line
      000821 75 82 0D         [24] 2894 	mov	dpl,#0x0d
      000824 12 00 EA         [24] 2895 	lcall	_putchar
                           000787  2896 	C$LAB2.c$432$1$129 ==.
                           000787  2897 	XG$Draw_Bar$0$0 ==.
      000827 22               [24] 2898 	ret
                                   2899 ;------------------------------------------------------------
                                   2900 ;Allocation info for local variables in function 'Interrupt_Init'
                                   2901 ;------------------------------------------------------------
                           000788  2902 	G$Interrupt_Init$0$0 ==.
                           000788  2903 	C$LAB2.c$434$1$129 ==.
                                   2904 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:434: void Interrupt_Init(void)
                                   2905 ;	-----------------------------------------
                                   2906 ;	 function Interrupt_Init
                                   2907 ;	-----------------------------------------
      000828                       2908 _Interrupt_Init:
                           000788  2909 	C$LAB2.c$436$1$131 ==.
                                   2910 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:436: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
      000828 43 A8 02         [24] 2911 	orl	_IE,#0x02
                           00078B  2912 	C$LAB2.c$437$1$131 ==.
                                   2913 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:437: EA = 1;       // enable global interrupts (by sbit)
      00082B D2 AF            [12] 2914 	setb	_EA
                           00078D  2915 	C$LAB2.c$438$1$131 ==.
                           00078D  2916 	XG$Interrupt_Init$0$0 ==.
      00082D 22               [24] 2917 	ret
                                   2918 ;------------------------------------------------------------
                                   2919 ;Allocation info for local variables in function 'Timer_Init'
                                   2920 ;------------------------------------------------------------
                           00078E  2921 	G$Timer_Init$0$0 ==.
                           00078E  2922 	C$LAB2.c$441$1$131 ==.
                                   2923 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:441: void Timer_Init(void)
                                   2924 ;	-----------------------------------------
                                   2925 ;	 function Timer_Init
                                   2926 ;	-----------------------------------------
      00082E                       2927 _Timer_Init:
                           00078E  2928 	C$LAB2.c$444$1$133 ==.
                                   2929 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:444: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
      00082E 43 8E 08         [24] 2930 	orl	_CKCON,#0x08
                           000791  2931 	C$LAB2.c$445$1$133 ==.
                                   2932 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:445: TMOD &= 0xF0;   // clear the 4 least significant bits
      000831 53 89 F0         [24] 2933 	anl	_TMOD,#0xf0
                           000794  2934 	C$LAB2.c$446$1$133 ==.
                                   2935 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:446: TMOD |= 0x01;   // Timer0 in mode 1
      000834 43 89 01         [24] 2936 	orl	_TMOD,#0x01
                           000797  2937 	C$LAB2.c$447$1$133 ==.
                                   2938 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:447: TR0 = 0;           // Stop Timer0
      000837 C2 8C            [12] 2939 	clr	_TR0
                           000799  2940 	C$LAB2.c$448$1$133 ==.
                                   2941 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:448: TMR0 = 0;          // Clear high & low byte of T0
      000839 E4               [12] 2942 	clr	a
      00083A F5 8A            [12] 2943 	mov	((_TMR0 >> 0) & 0xFF),a
      00083C F5 8C            [12] 2944 	mov	((_TMR0 >> 8) & 0xFF),a
                           00079E  2945 	C$LAB2.c$449$1$133 ==.
                           00079E  2946 	XG$Timer_Init$0$0 ==.
      00083E 22               [24] 2947 	ret
                                   2948 ;------------------------------------------------------------
                                   2949 ;Allocation info for local variables in function 'Timer0_ISR'
                                   2950 ;------------------------------------------------------------
                           00079F  2951 	G$Timer0_ISR$0$0 ==.
                           00079F  2952 	C$LAB2.c$453$1$133 ==.
                                   2953 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:453: void Timer0_ISR(void) __interrupt 1
                                   2954 ;	-----------------------------------------
                                   2955 ;	 function Timer0_ISR
                                   2956 ;	-----------------------------------------
      00083F                       2957 _Timer0_ISR:
      00083F C0 E0            [24] 2958 	push	acc
      000841 C0 D0            [24] 2959 	push	psw
                           0007A3  2960 	C$LAB2.c$455$1$135 ==.
                                   2961 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:455: counts ++; //incremend counts on each interrupt
      000843 05 2C            [12] 2962 	inc	_counts
      000845 E4               [12] 2963 	clr	a
      000846 B5 2C 02         [24] 2964 	cjne	a,_counts,00103$
      000849 05 2D            [12] 2965 	inc	(_counts + 1)
      00084B                       2966 00103$:
      00084B D0 D0            [24] 2967 	pop	psw
      00084D D0 E0            [24] 2968 	pop	acc
                           0007AF  2969 	C$LAB2.c$456$1$135 ==.
                           0007AF  2970 	XG$Timer0_ISR$0$0 ==.
      00084F 32               [24] 2971 	reti
                                   2972 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2973 ;	eliminated unneeded push/pop dpl
                                   2974 ;	eliminated unneeded push/pop dph
                                   2975 ;	eliminated unneeded push/pop b
                                   2976 ;------------------------------------------------------------
                                   2977 ;Allocation info for local variables in function 'random'
                                   2978 ;------------------------------------------------------------
                           0007B0  2979 	G$random$0$0 ==.
                           0007B0  2980 	C$LAB2.c$460$1$135 ==.
                                   2981 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:460: unsigned char random(void)
                                   2982 ;	-----------------------------------------
                                   2983 ;	 function random
                                   2984 ;	-----------------------------------------
      000850                       2985 _random:
                           0007B0  2986 	C$LAB2.c$462$1$137 ==.
                                   2987 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:462: cur = rand()%5;
      000850 12 08 AB         [24] 2988 	lcall	_rand
      000853 75 0E 05         [24] 2989 	mov	__modsint_PARM_2,#0x05
      000856 75 0F 00         [24] 2990 	mov	(__modsint_PARM_2 + 1),#0x00
      000859 12 0F F9         [24] 2991 	lcall	__modsint
      00085C AE 82            [24] 2992 	mov	r6,dpl
      00085E AF 83            [24] 2993 	mov	r7,dph
      000860 8E 41            [24] 2994 	mov	_cur,r6
                           0007C2  2995 	C$LAB2.c$463$1$137 ==.
                                   2996 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:463: while (cur == prev) //check if the value generated was the last one we used
      000862                       2997 00101$:
      000862 E5 40            [12] 2998 	mov	a,_prev
      000864 B5 41 14         [24] 2999 	cjne	a,_cur,00103$
                           0007C7  3000 	C$LAB2.c$465$2$138 ==.
                                   3001 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:465: cur = rand()%5;
      000867 12 08 AB         [24] 3002 	lcall	_rand
      00086A 75 0E 05         [24] 3003 	mov	__modsint_PARM_2,#0x05
      00086D 75 0F 00         [24] 3004 	mov	(__modsint_PARM_2 + 1),#0x00
      000870 12 0F F9         [24] 3005 	lcall	__modsint
      000873 AE 82            [24] 3006 	mov	r6,dpl
      000875 AF 83            [24] 3007 	mov	r7,dph
      000877 8E 41            [24] 3008 	mov	_cur,r6
      000879 80 E7            [24] 3009 	sjmp	00101$
      00087B                       3010 00103$:
                           0007DB  3011 	C$LAB2.c$467$1$137 ==.
                                   3012 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:467: prev = cur;
      00087B 85 41 40         [24] 3013 	mov	_prev,_cur
                           0007DE  3014 	C$LAB2.c$468$1$137 ==.
                                   3015 ;	C:\Users\gerlig\Documents\School\LITEC\LAB2\LAB2.c:468: return cur;  // rand returns a random number between 0 and 32767.
      00087E 85 41 82         [24] 3016 	mov	dpl,_cur
                           0007E1  3017 	C$LAB2.c$471$1$137 ==.
                           0007E1  3018 	XG$random$0$0 ==.
      000881 22               [24] 3019 	ret
                                   3020 	.area CSEG    (CODE)
                                   3021 	.area CONST   (CODE)
                           000000  3022 FLAB2$__str_0$0$0 == .
      00106B                       3023 ___str_0:
      00106B 46 65 65 64 20 74 68  3024 	.ascii "Feed the grim beast of randomness with a seed!"
             65 20 67 72 69 6D 20
             62 65 61 73 74 20 6F
             66 20 72 61 6E 64 6F
             6D 6E 65 73 73 20 77
             69 74 68 20 61 20 73
             65 65 64 21
      001099 0D                    3025 	.db 0x0d
      00109A 0A                    3026 	.db 0x0a
      00109B 00                    3027 	.db 0x00
                           000031  3028 FLAB2$__str_1$0$0 == .
      00109C                       3029 ___str_1:
      00109C 55 73 65 20 74 68 65  3030 	.ascii "Use the slide switches to select your fate, press the button"
             20 73 6C 69 64 65 20
             73 77 69 74 63 68 65
             73 20 74 6F 20 73 65
             6C 65 63 74 20 79 6F
             75 72 20 66 61 74 65
             2C 20 70 72 65 73 73
             20 74 68 65 20 62 75
             74 74 6F 6E
      0010D8 20 74 6F 20 62 65 67  3031 	.ascii " to begin."
             69 6E 2E
      0010E2 0D                    3032 	.db 0x0d
      0010E3 0A                    3033 	.db 0x0a
      0010E4 00                    3034 	.db 0x00
                           00007A  3035 FLAB2$__str_2$0$0 == .
      0010E5                       3036 ___str_2:
      0010E5 28 30 20 6D 65 61 6E  3037 	.ascii "(0 means on) SS0: %d SS1: %d"
             73 20 6F 6E 29 20 53
             53 30 3A 20 25 64 20
             53 53 31 3A 20 25 64
      001101 0D                    3038 	.db 0x0d
      001102 00                    3039 	.db 0x00
                           000098  3040 FLAB2$__str_3$0$0 == .
      001103                       3041 ___str_3:
      001103 46 6F 72 20 74 68 69  3042 	.ascii "For this gamemode, a low score wins. The computer will light"
             73 20 67 61 6D 65 6D
             6F 64 65 2C 20 61 20
             6C 6F 77 20 73 63 6F
             72 65 20 77 69 6E 73
             2E 20 54 68 65 20 63
             6F 6D 70 75 74 65 72
             20 77 69 6C 6C 20 6C
             69 67 68 74
      00113F 20 61 20 72 61 6E 64  3043 	.ascii " a random number of LEDs, you must use the POT to match it."
             6F 6D 20 6E 75 6D 62
             65 72 20 6F 66 20 4C
             45 44 73 2C 20 79 6F
             75 20 6D 75 73 74 20
             75 73 65 20 74 68 65
             20 50 4F 54 20 74 6F
             20 6D 61 74 63 68 20
             69 74 2E
      00117A 0D                    3044 	.db 0x0d
      00117B 0A                    3045 	.db 0x0a
      00117C 00                    3046 	.db 0x00
                           000112  3047 FLAB2$__str_4$0$0 == .
      00117D                       3048 ___str_4:
      00117D 59 6F 75 20 67 65 74  3049 	.ascii "You get five tries, press the button to begin and to submit "
             20 66 69 76 65 20 74
             72 69 65 73 2C 20 70
             72 65 73 73 20 74 68
             65 20 62 75 74 74 6F
             6E 20 74 6F 20 62 65
             67 69 6E 20 61 6E 64
             20 74 6F 20 73 75 62
             6D 69 74 20
      0011B9 79 6F 75 72 20 61 6E  3050 	.ascii "your answer. Good luck adventurer!"
             73 77 65 72 2E 20 47
             6F 6F 64 20 6C 75 63
             6B 20 61 64 76 65 6E
             74 75 72 65 72 21
      0011DB 0D                    3051 	.db 0x0d
      0011DC 0A                    3052 	.db 0x0a
      0011DD 00                    3053 	.db 0x00
                           000173  3054 FLAB2$__str_5$0$0 == .
      0011DE                       3055 ___str_5:
      0011DE 59 6F 75 72 20 73 63  3056 	.ascii "Your score for this try is %i, your score for the game so fa"
             6F 72 65 20 66 6F 72
             20 74 68 69 73 20 74
             72 79 20 69 73 20 25
             69 2C 20 79 6F 75 72
             20 73 63 6F 72 65 20
             66 6F 72 20 74 68 65
             20 67 61 6D 65 20 73
             6F 20 66 61
      00121A 72 20 69 73 20 25 69  3057 	.ascii "r is %i"
      001221 0D                    3058 	.db 0x0d
      001222 0A                    3059 	.db 0x0a
      001223 00                    3060 	.db 0x00
                           0001B9  3061 FLAB2$__str_6$0$0 == .
      001224                       3062 ___str_6:
      001224 59 6F 75 72 20 66 69  3063 	.ascii "Your final score is %i, you are a brave adventurer!"
             6E 61 6C 20 73 63 6F
             72 65 20 69 73 20 25
             69 2C 20 79 6F 75 20
             61 72 65 20 61 20 62
             72 61 76 65 20 61 64
             76 65 6E 74 75 72 65
             72 21
      001257 0D                    3064 	.db 0x0d
      001258 0A                    3065 	.db 0x0a
      001259 00                    3066 	.db 0x00
                           0001EF  3067 FLAB2$__str_7$0$0 == .
      00125A                       3068 ___str_7:
      00125A 46 6F 72 20 74 68 69  3069 	.ascii "For this gamemode, you will duel another brave adventurer. O"
             73 20 67 61 6D 65 6D
             6F 64 65 2C 20 79 6F
             75 20 77 69 6C 6C 20
             64 75 65 6C 20 61 6E
             6F 74 68 65 72 20 62
             72 61 76 65 20 61 64
             76 65 6E 74 75 72 65
             72 2E 20 4F
      001296 6E 65 20 6F 66 20 79  3070 	.ascii "ne of you will set the POT, the other will press the BUTTON."
             6F 75 20 77 69 6C 6C
             20 73 65 74 20 74 68
             65 20 50 4F 54 2C 20
             74 68 65 20 6F 74 68
             65 72 20 77 69 6C 6C
             20 70 72 65 73 73 20
             74 68 65 20 42 55 54
             54 4F 4E 2E
      0012D2 0D                    3071 	.db 0x0d
      0012D3 0A                    3072 	.db 0x0a
      0012D4 00                    3073 	.db 0x00
                           00026A  3074 FLAB2$__str_8$0$0 == .
      0012D5                       3075 ___str_8:
      0012D5 48 69 67 68 20 73 63  3076 	.ascii "High score wins, you get five tries, press the button to beg"
             6F 72 65 20 77 69 6E
             73 2C 20 79 6F 75 20
             67 65 74 20 66 69 76
             65 20 74 72 69 65 73
             2C 20 70 72 65 73 73
             20 74 68 65 20 62 75
             74 74 6F 6E 20 74 6F
             20 62 65 67
      001311 69 6E 2E 20 47 6F 6F  3077 	.ascii "in. Good luck adventurers!"
             64 20 6C 75 63 6B 20
             61 64 76 65 6E 74 75
             72 65 72 73 21
      00132B 0D                    3078 	.db 0x0d
      00132C 0A                    3079 	.db 0x0a
      00132D 00                    3080 	.db 0x00
                           0002C3  3081 FLAB2$__str_9$0$0 == .
      00132E                       3082 ___str_9:
      00132E 46 6F 72 20 74 68 69  3083 	.ascii "For this gamemode,high score wins. The computer will generat"
             73 20 67 61 6D 65 6D
             6F 64 65 2C 68 69 67
             68 20 73 63 6F 72 65
             20 77 69 6E 73 2E 20
             54 68 65 20 63 6F 6D
             70 75 74 65 72 20 77
             69 6C 6C 20 67 65 6E
             65 72 61 74
      00136A 65 20 61 20 74 65 73  3084 	.ascii "e a test of your mettle, you will use the POT, the other wil"
             74 20 6F 66 20 79 6F
             75 72 20 6D 65 74 74
             6C 65 2C 20 79 6F 75
             20 77 69 6C 6C 20 75
             73 65 20 74 68 65 20
             50 4F 54 2C 20 74 68
             65 20 6F 74 68 65 72
             20 77 69 6C
      0013A6 6C 20 70 72 65 73 73  3085 	.ascii "l press the BUTTON."
             20 74 68 65 20 42 55
             54 54 4F 4E 2E
      0013B9 0D                    3086 	.db 0x0d
      0013BA 0A                    3087 	.db 0x0a
      0013BB 00                    3088 	.db 0x00
                           000351  3089 FLAB2$__str_10$0$0 == .
      0013BC                       3090 ___str_10:
      0013BC 59 6F 75 20 67 65 74  3091 	.ascii "You get five tries, press the button to begin. Good luck adv"
             20 66 69 76 65 20 74
             72 69 65 73 2C 20 70
             72 65 73 73 20 74 68
             65 20 62 75 74 74 6F
             6E 20 74 6F 20 62 65
             67 69 6E 2E 20 47 6F
             6F 64 20 6C 75 63 6B
             20 61 64 76
      0013F8 65 6E 74 75 72 65 72  3092 	.ascii "enturer!"
             21
      001400 0D                    3093 	.db 0x0d
      001401 0A                    3094 	.db 0x0a
      001402 00                    3095 	.db 0x00
                                   3096 	.area XINIT   (CODE)
                                   3097 	.area CABS    (ABS,CODE)
