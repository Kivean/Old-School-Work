                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab3_1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _printf
                                     15 	.globl _getchar_nw
                                     16 	.globl _Sys_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _SYSCLK_Init
                                     19 	.globl _SPIF
                                     20 	.globl _WCOL
                                     21 	.globl _MODF
                                     22 	.globl _RXOVRN
                                     23 	.globl _TXBSY
                                     24 	.globl _SLVSEL
                                     25 	.globl _MSTEN
                                     26 	.globl _SPIEN
                                     27 	.globl _AD0EN
                                     28 	.globl _ADCEN
                                     29 	.globl _AD0TM
                                     30 	.globl _ADCTM
                                     31 	.globl _AD0INT
                                     32 	.globl _ADCINT
                                     33 	.globl _AD0BUSY
                                     34 	.globl _ADBUSY
                                     35 	.globl _AD0CM1
                                     36 	.globl _ADSTM1
                                     37 	.globl _AD0CM0
                                     38 	.globl _ADSTM0
                                     39 	.globl _AD0WINT
                                     40 	.globl _ADWINT
                                     41 	.globl _AD0LJST
                                     42 	.globl _ADLJST
                                     43 	.globl _CF
                                     44 	.globl _CR
                                     45 	.globl _CCF4
                                     46 	.globl _CCF3
                                     47 	.globl _CCF2
                                     48 	.globl _CCF1
                                     49 	.globl _CCF0
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _TF2
                                     59 	.globl _EXF2
                                     60 	.globl _RCLK
                                     61 	.globl _TCLK
                                     62 	.globl _EXEN2
                                     63 	.globl _TR2
                                     64 	.globl _CT2
                                     65 	.globl _CPRL2
                                     66 	.globl _BUSY
                                     67 	.globl _ENSMB
                                     68 	.globl _STA
                                     69 	.globl _STO
                                     70 	.globl _SI
                                     71 	.globl _AA
                                     72 	.globl _SMBFTE
                                     73 	.globl _SMBTOE
                                     74 	.globl _PT2
                                     75 	.globl _PS
                                     76 	.globl _PS0
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ET2
                                     91 	.globl _ES
                                     92 	.globl _ES0
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _S0MODE
                                    106 	.globl _SM00
                                    107 	.globl _SM0
                                    108 	.globl _SM10
                                    109 	.globl _SM1
                                    110 	.globl _MCE0
                                    111 	.globl _SM20
                                    112 	.globl _SM2
                                    113 	.globl _REN0
                                    114 	.globl _REN
                                    115 	.globl _TB80
                                    116 	.globl _TB8
                                    117 	.globl _RB80
                                    118 	.globl _RB8
                                    119 	.globl _TI0
                                    120 	.globl _TI
                                    121 	.globl _RI0
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _PCA0CP4
                                    148 	.globl _PCA0CP3
                                    149 	.globl _PCA0CP2
                                    150 	.globl _PCA0CP1
                                    151 	.globl _PCA0CP0
                                    152 	.globl _PCA0
                                    153 	.globl _DAC1
                                    154 	.globl _DAC0
                                    155 	.globl _ADC0LT
                                    156 	.globl _ADC0GT
                                    157 	.globl _ADC0
                                    158 	.globl _RCAP4
                                    159 	.globl _TMR4
                                    160 	.globl _TMR3RL
                                    161 	.globl _TMR3
                                    162 	.globl _RCAP2
                                    163 	.globl _TMR2
                                    164 	.globl _TMR1
                                    165 	.globl _TMR0
                                    166 	.globl _WDTCN
                                    167 	.globl _PCA0CPH4
                                    168 	.globl _PCA0CPH3
                                    169 	.globl _PCA0CPH2
                                    170 	.globl _PCA0CPH1
                                    171 	.globl _PCA0CPH0
                                    172 	.globl _PCA0H
                                    173 	.globl _SPI0CN
                                    174 	.globl _EIP2
                                    175 	.globl _EIP1
                                    176 	.globl _TH4
                                    177 	.globl _TL4
                                    178 	.globl _SADDR1
                                    179 	.globl _SBUF1
                                    180 	.globl _SCON1
                                    181 	.globl _B
                                    182 	.globl _RSTSRC
                                    183 	.globl _PCA0CPL4
                                    184 	.globl _PCA0CPL3
                                    185 	.globl _PCA0CPL2
                                    186 	.globl _PCA0CPL1
                                    187 	.globl _PCA0CPL0
                                    188 	.globl _PCA0L
                                    189 	.globl _ADC0CN
                                    190 	.globl _EIE2
                                    191 	.globl _EIE1
                                    192 	.globl _RCAP4H
                                    193 	.globl _RCAP4L
                                    194 	.globl _XBR2
                                    195 	.globl _XBR1
                                    196 	.globl _XBR0
                                    197 	.globl _ACC
                                    198 	.globl _PCA0CPM4
                                    199 	.globl _PCA0CPM3
                                    200 	.globl _PCA0CPM2
                                    201 	.globl _PCA0CPM1
                                    202 	.globl _PCA0CPM0
                                    203 	.globl _PCA0MD
                                    204 	.globl _PCA0CN
                                    205 	.globl _DAC1CN
                                    206 	.globl _DAC1H
                                    207 	.globl _DAC1L
                                    208 	.globl _DAC0CN
                                    209 	.globl _DAC0H
                                    210 	.globl _DAC0L
                                    211 	.globl _REF0CN
                                    212 	.globl _PSW
                                    213 	.globl _SMB0CR
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _RCAP2H
                                    217 	.globl _RCAP2L
                                    218 	.globl _T4CON
                                    219 	.globl _T2CON
                                    220 	.globl _ADC0LTH
                                    221 	.globl _ADC0LTL
                                    222 	.globl _ADC0GTH
                                    223 	.globl _ADC0GTL
                                    224 	.globl _SMB0ADR
                                    225 	.globl _SMB0DAT
                                    226 	.globl _SMB0STA
                                    227 	.globl _SMB0CN
                                    228 	.globl _ADC0H
                                    229 	.globl _ADC0L
                                    230 	.globl _P1MDIN
                                    231 	.globl _ADC0CF
                                    232 	.globl _AMX0SL
                                    233 	.globl _AMX0CF
                                    234 	.globl _SADEN0
                                    235 	.globl _IP
                                    236 	.globl _FLACL
                                    237 	.globl _FLSCL
                                    238 	.globl _P74OUT
                                    239 	.globl _OSCICN
                                    240 	.globl _OSCXCN
                                    241 	.globl _P3
                                    242 	.globl __XPAGE
                                    243 	.globl _EMI0CN
                                    244 	.globl _SADEN1
                                    245 	.globl _P3IF
                                    246 	.globl _AMX1SL
                                    247 	.globl _ADC1CF
                                    248 	.globl _ADC1CN
                                    249 	.globl _SADDR0
                                    250 	.globl _IE
                                    251 	.globl _P3MDOUT
                                    252 	.globl _PRT3CF
                                    253 	.globl _P2MDOUT
                                    254 	.globl _PRT2CF
                                    255 	.globl _P1MDOUT
                                    256 	.globl _PRT1CF
                                    257 	.globl _P0MDOUT
                                    258 	.globl _PRT0CF
                                    259 	.globl _EMI0CF
                                    260 	.globl _EMI0TC
                                    261 	.globl _P2
                                    262 	.globl _CPT1CN
                                    263 	.globl _CPT0CN
                                    264 	.globl _SPI0CKR
                                    265 	.globl _ADC1
                                    266 	.globl _SPI0DAT
                                    267 	.globl _SPI0CFG
                                    268 	.globl _SBUF0
                                    269 	.globl _SBUF
                                    270 	.globl _SCON0
                                    271 	.globl _SCON
                                    272 	.globl _P7
                                    273 	.globl _TMR3H
                                    274 	.globl _TMR3L
                                    275 	.globl _TMR3RLH
                                    276 	.globl _TMR3RLL
                                    277 	.globl _TMR3CN
                                    278 	.globl _P1
                                    279 	.globl _PSCTL
                                    280 	.globl _CKCON
                                    281 	.globl _TH1
                                    282 	.globl _TH0
                                    283 	.globl _TL1
                                    284 	.globl _TL0
                                    285 	.globl _TMOD
                                    286 	.globl _TCON
                                    287 	.globl _PCON
                                    288 	.globl _P6
                                    289 	.globl _P5
                                    290 	.globl _P4
                                    291 	.globl _DPH
                                    292 	.globl _DPL
                                    293 	.globl _SP
                                    294 	.globl _P0
                                    295 	.globl _aligned_alloc_PARM_2
                                    296 	.globl _input
                                    297 	.globl _count
                                    298 	.globl _PW
                                    299 	.globl _PW_MAX
                                    300 	.globl _PW_MIN
                                    301 	.globl _PW_CENTER
                                    302 	.globl _Port_Init
                                    303 	.globl _XBR0_Init
                                    304 	.globl _PCA_Init
                                    305 	.globl _PCA_ISR
                                    306 	.globl _Set_Pulsewidth
                                    307 ;--------------------------------------------------------
                                    308 ; special function registers
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           000080   312 G$P0$0$0 == 0x0080
                           000080   313 _P0	=	0x0080
                           000081   314 G$SP$0$0 == 0x0081
                           000081   315 _SP	=	0x0081
                           000082   316 G$DPL$0$0 == 0x0082
                           000082   317 _DPL	=	0x0082
                           000083   318 G$DPH$0$0 == 0x0083
                           000083   319 _DPH	=	0x0083
                           000084   320 G$P4$0$0 == 0x0084
                           000084   321 _P4	=	0x0084
                           000085   322 G$P5$0$0 == 0x0085
                           000085   323 _P5	=	0x0085
                           000086   324 G$P6$0$0 == 0x0086
                           000086   325 _P6	=	0x0086
                           000087   326 G$PCON$0$0 == 0x0087
                           000087   327 _PCON	=	0x0087
                           000088   328 G$TCON$0$0 == 0x0088
                           000088   329 _TCON	=	0x0088
                           000089   330 G$TMOD$0$0 == 0x0089
                           000089   331 _TMOD	=	0x0089
                           00008A   332 G$TL0$0$0 == 0x008a
                           00008A   333 _TL0	=	0x008a
                           00008B   334 G$TL1$0$0 == 0x008b
                           00008B   335 _TL1	=	0x008b
                           00008C   336 G$TH0$0$0 == 0x008c
                           00008C   337 _TH0	=	0x008c
                           00008D   338 G$TH1$0$0 == 0x008d
                           00008D   339 _TH1	=	0x008d
                           00008E   340 G$CKCON$0$0 == 0x008e
                           00008E   341 _CKCON	=	0x008e
                           00008F   342 G$PSCTL$0$0 == 0x008f
                           00008F   343 _PSCTL	=	0x008f
                           000090   344 G$P1$0$0 == 0x0090
                           000090   345 _P1	=	0x0090
                           000091   346 G$TMR3CN$0$0 == 0x0091
                           000091   347 _TMR3CN	=	0x0091
                           000092   348 G$TMR3RLL$0$0 == 0x0092
                           000092   349 _TMR3RLL	=	0x0092
                           000093   350 G$TMR3RLH$0$0 == 0x0093
                           000093   351 _TMR3RLH	=	0x0093
                           000094   352 G$TMR3L$0$0 == 0x0094
                           000094   353 _TMR3L	=	0x0094
                           000095   354 G$TMR3H$0$0 == 0x0095
                           000095   355 _TMR3H	=	0x0095
                           000096   356 G$P7$0$0 == 0x0096
                           000096   357 _P7	=	0x0096
                           000098   358 G$SCON$0$0 == 0x0098
                           000098   359 _SCON	=	0x0098
                           000098   360 G$SCON0$0$0 == 0x0098
                           000098   361 _SCON0	=	0x0098
                           000099   362 G$SBUF$0$0 == 0x0099
                           000099   363 _SBUF	=	0x0099
                           000099   364 G$SBUF0$0$0 == 0x0099
                           000099   365 _SBUF0	=	0x0099
                           00009A   366 G$SPI0CFG$0$0 == 0x009a
                           00009A   367 _SPI0CFG	=	0x009a
                           00009B   368 G$SPI0DAT$0$0 == 0x009b
                           00009B   369 _SPI0DAT	=	0x009b
                           00009C   370 G$ADC1$0$0 == 0x009c
                           00009C   371 _ADC1	=	0x009c
                           00009D   372 G$SPI0CKR$0$0 == 0x009d
                           00009D   373 _SPI0CKR	=	0x009d
                           00009E   374 G$CPT0CN$0$0 == 0x009e
                           00009E   375 _CPT0CN	=	0x009e
                           00009F   376 G$CPT1CN$0$0 == 0x009f
                           00009F   377 _CPT1CN	=	0x009f
                           0000A0   378 G$P2$0$0 == 0x00a0
                           0000A0   379 _P2	=	0x00a0
                           0000A1   380 G$EMI0TC$0$0 == 0x00a1
                           0000A1   381 _EMI0TC	=	0x00a1
                           0000A3   382 G$EMI0CF$0$0 == 0x00a3
                           0000A3   383 _EMI0CF	=	0x00a3
                           0000A4   384 G$PRT0CF$0$0 == 0x00a4
                           0000A4   385 _PRT0CF	=	0x00a4
                           0000A4   386 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   387 _P0MDOUT	=	0x00a4
                           0000A5   388 G$PRT1CF$0$0 == 0x00a5
                           0000A5   389 _PRT1CF	=	0x00a5
                           0000A5   390 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   391 _P1MDOUT	=	0x00a5
                           0000A6   392 G$PRT2CF$0$0 == 0x00a6
                           0000A6   393 _PRT2CF	=	0x00a6
                           0000A6   394 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   395 _P2MDOUT	=	0x00a6
                           0000A7   396 G$PRT3CF$0$0 == 0x00a7
                           0000A7   397 _PRT3CF	=	0x00a7
                           0000A7   398 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   399 _P3MDOUT	=	0x00a7
                           0000A8   400 G$IE$0$0 == 0x00a8
                           0000A8   401 _IE	=	0x00a8
                           0000A9   402 G$SADDR0$0$0 == 0x00a9
                           0000A9   403 _SADDR0	=	0x00a9
                           0000AA   404 G$ADC1CN$0$0 == 0x00aa
                           0000AA   405 _ADC1CN	=	0x00aa
                           0000AB   406 G$ADC1CF$0$0 == 0x00ab
                           0000AB   407 _ADC1CF	=	0x00ab
                           0000AC   408 G$AMX1SL$0$0 == 0x00ac
                           0000AC   409 _AMX1SL	=	0x00ac
                           0000AD   410 G$P3IF$0$0 == 0x00ad
                           0000AD   411 _P3IF	=	0x00ad
                           0000AE   412 G$SADEN1$0$0 == 0x00ae
                           0000AE   413 _SADEN1	=	0x00ae
                           0000AF   414 G$EMI0CN$0$0 == 0x00af
                           0000AF   415 _EMI0CN	=	0x00af
                           0000AF   416 G$_XPAGE$0$0 == 0x00af
                           0000AF   417 __XPAGE	=	0x00af
                           0000B0   418 G$P3$0$0 == 0x00b0
                           0000B0   419 _P3	=	0x00b0
                           0000B1   420 G$OSCXCN$0$0 == 0x00b1
                           0000B1   421 _OSCXCN	=	0x00b1
                           0000B2   422 G$OSCICN$0$0 == 0x00b2
                           0000B2   423 _OSCICN	=	0x00b2
                           0000B5   424 G$P74OUT$0$0 == 0x00b5
                           0000B5   425 _P74OUT	=	0x00b5
                           0000B6   426 G$FLSCL$0$0 == 0x00b6
                           0000B6   427 _FLSCL	=	0x00b6
                           0000B7   428 G$FLACL$0$0 == 0x00b7
                           0000B7   429 _FLACL	=	0x00b7
                           0000B8   430 G$IP$0$0 == 0x00b8
                           0000B8   431 _IP	=	0x00b8
                           0000B9   432 G$SADEN0$0$0 == 0x00b9
                           0000B9   433 _SADEN0	=	0x00b9
                           0000BA   434 G$AMX0CF$0$0 == 0x00ba
                           0000BA   435 _AMX0CF	=	0x00ba
                           0000BB   436 G$AMX0SL$0$0 == 0x00bb
                           0000BB   437 _AMX0SL	=	0x00bb
                           0000BC   438 G$ADC0CF$0$0 == 0x00bc
                           0000BC   439 _ADC0CF	=	0x00bc
                           0000BD   440 G$P1MDIN$0$0 == 0x00bd
                           0000BD   441 _P1MDIN	=	0x00bd
                           0000BE   442 G$ADC0L$0$0 == 0x00be
                           0000BE   443 _ADC0L	=	0x00be
                           0000BF   444 G$ADC0H$0$0 == 0x00bf
                           0000BF   445 _ADC0H	=	0x00bf
                           0000C0   446 G$SMB0CN$0$0 == 0x00c0
                           0000C0   447 _SMB0CN	=	0x00c0
                           0000C1   448 G$SMB0STA$0$0 == 0x00c1
                           0000C1   449 _SMB0STA	=	0x00c1
                           0000C2   450 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   451 _SMB0DAT	=	0x00c2
                           0000C3   452 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   453 _SMB0ADR	=	0x00c3
                           0000C4   454 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   455 _ADC0GTL	=	0x00c4
                           0000C5   456 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   457 _ADC0GTH	=	0x00c5
                           0000C6   458 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   459 _ADC0LTL	=	0x00c6
                           0000C7   460 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   461 _ADC0LTH	=	0x00c7
                           0000C8   462 G$T2CON$0$0 == 0x00c8
                           0000C8   463 _T2CON	=	0x00c8
                           0000C9   464 G$T4CON$0$0 == 0x00c9
                           0000C9   465 _T4CON	=	0x00c9
                           0000CA   466 G$RCAP2L$0$0 == 0x00ca
                           0000CA   467 _RCAP2L	=	0x00ca
                           0000CB   468 G$RCAP2H$0$0 == 0x00cb
                           0000CB   469 _RCAP2H	=	0x00cb
                           0000CC   470 G$TL2$0$0 == 0x00cc
                           0000CC   471 _TL2	=	0x00cc
                           0000CD   472 G$TH2$0$0 == 0x00cd
                           0000CD   473 _TH2	=	0x00cd
                           0000CF   474 G$SMB0CR$0$0 == 0x00cf
                           0000CF   475 _SMB0CR	=	0x00cf
                           0000D0   476 G$PSW$0$0 == 0x00d0
                           0000D0   477 _PSW	=	0x00d0
                           0000D1   478 G$REF0CN$0$0 == 0x00d1
                           0000D1   479 _REF0CN	=	0x00d1
                           0000D2   480 G$DAC0L$0$0 == 0x00d2
                           0000D2   481 _DAC0L	=	0x00d2
                           0000D3   482 G$DAC0H$0$0 == 0x00d3
                           0000D3   483 _DAC0H	=	0x00d3
                           0000D4   484 G$DAC0CN$0$0 == 0x00d4
                           0000D4   485 _DAC0CN	=	0x00d4
                           0000D5   486 G$DAC1L$0$0 == 0x00d5
                           0000D5   487 _DAC1L	=	0x00d5
                           0000D6   488 G$DAC1H$0$0 == 0x00d6
                           0000D6   489 _DAC1H	=	0x00d6
                           0000D7   490 G$DAC1CN$0$0 == 0x00d7
                           0000D7   491 _DAC1CN	=	0x00d7
                           0000D8   492 G$PCA0CN$0$0 == 0x00d8
                           0000D8   493 _PCA0CN	=	0x00d8
                           0000D9   494 G$PCA0MD$0$0 == 0x00d9
                           0000D9   495 _PCA0MD	=	0x00d9
                           0000DA   496 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   497 _PCA0CPM0	=	0x00da
                           0000DB   498 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   499 _PCA0CPM1	=	0x00db
                           0000DC   500 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   501 _PCA0CPM2	=	0x00dc
                           0000DD   502 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   503 _PCA0CPM3	=	0x00dd
                           0000DE   504 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   505 _PCA0CPM4	=	0x00de
                           0000E0   506 G$ACC$0$0 == 0x00e0
                           0000E0   507 _ACC	=	0x00e0
                           0000E1   508 G$XBR0$0$0 == 0x00e1
                           0000E1   509 _XBR0	=	0x00e1
                           0000E2   510 G$XBR1$0$0 == 0x00e2
                           0000E2   511 _XBR1	=	0x00e2
                           0000E3   512 G$XBR2$0$0 == 0x00e3
                           0000E3   513 _XBR2	=	0x00e3
                           0000E4   514 G$RCAP4L$0$0 == 0x00e4
                           0000E4   515 _RCAP4L	=	0x00e4
                           0000E5   516 G$RCAP4H$0$0 == 0x00e5
                           0000E5   517 _RCAP4H	=	0x00e5
                           0000E6   518 G$EIE1$0$0 == 0x00e6
                           0000E6   519 _EIE1	=	0x00e6
                           0000E7   520 G$EIE2$0$0 == 0x00e7
                           0000E7   521 _EIE2	=	0x00e7
                           0000E8   522 G$ADC0CN$0$0 == 0x00e8
                           0000E8   523 _ADC0CN	=	0x00e8
                           0000E9   524 G$PCA0L$0$0 == 0x00e9
                           0000E9   525 _PCA0L	=	0x00e9
                           0000EA   526 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   527 _PCA0CPL0	=	0x00ea
                           0000EB   528 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   529 _PCA0CPL1	=	0x00eb
                           0000EC   530 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   531 _PCA0CPL2	=	0x00ec
                           0000ED   532 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   533 _PCA0CPL3	=	0x00ed
                           0000EE   534 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   535 _PCA0CPL4	=	0x00ee
                           0000EF   536 G$RSTSRC$0$0 == 0x00ef
                           0000EF   537 _RSTSRC	=	0x00ef
                           0000F0   538 G$B$0$0 == 0x00f0
                           0000F0   539 _B	=	0x00f0
                           0000F1   540 G$SCON1$0$0 == 0x00f1
                           0000F1   541 _SCON1	=	0x00f1
                           0000F2   542 G$SBUF1$0$0 == 0x00f2
                           0000F2   543 _SBUF1	=	0x00f2
                           0000F3   544 G$SADDR1$0$0 == 0x00f3
                           0000F3   545 _SADDR1	=	0x00f3
                           0000F4   546 G$TL4$0$0 == 0x00f4
                           0000F4   547 _TL4	=	0x00f4
                           0000F5   548 G$TH4$0$0 == 0x00f5
                           0000F5   549 _TH4	=	0x00f5
                           0000F6   550 G$EIP1$0$0 == 0x00f6
                           0000F6   551 _EIP1	=	0x00f6
                           0000F7   552 G$EIP2$0$0 == 0x00f7
                           0000F7   553 _EIP2	=	0x00f7
                           0000F8   554 G$SPI0CN$0$0 == 0x00f8
                           0000F8   555 _SPI0CN	=	0x00f8
                           0000F9   556 G$PCA0H$0$0 == 0x00f9
                           0000F9   557 _PCA0H	=	0x00f9
                           0000FA   558 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   559 _PCA0CPH0	=	0x00fa
                           0000FB   560 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   561 _PCA0CPH1	=	0x00fb
                           0000FC   562 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   563 _PCA0CPH2	=	0x00fc
                           0000FD   564 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   565 _PCA0CPH3	=	0x00fd
                           0000FE   566 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   567 _PCA0CPH4	=	0x00fe
                           0000FF   568 G$WDTCN$0$0 == 0x00ff
                           0000FF   569 _WDTCN	=	0x00ff
                           008C8A   570 G$TMR0$0$0 == 0x8c8a
                           008C8A   571 _TMR0	=	0x8c8a
                           008D8B   572 G$TMR1$0$0 == 0x8d8b
                           008D8B   573 _TMR1	=	0x8d8b
                           00CDCC   574 G$TMR2$0$0 == 0xcdcc
                           00CDCC   575 _TMR2	=	0xcdcc
                           00CBCA   576 G$RCAP2$0$0 == 0xcbca
                           00CBCA   577 _RCAP2	=	0xcbca
                           009594   578 G$TMR3$0$0 == 0x9594
                           009594   579 _TMR3	=	0x9594
                           009392   580 G$TMR3RL$0$0 == 0x9392
                           009392   581 _TMR3RL	=	0x9392
                           00F5F4   582 G$TMR4$0$0 == 0xf5f4
                           00F5F4   583 _TMR4	=	0xf5f4
                           00E5E4   584 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   585 _RCAP4	=	0xe5e4
                           00BFBE   586 G$ADC0$0$0 == 0xbfbe
                           00BFBE   587 _ADC0	=	0xbfbe
                           00C5C4   588 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   589 _ADC0GT	=	0xc5c4
                           00C7C6   590 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   591 _ADC0LT	=	0xc7c6
                           00D3D2   592 G$DAC0$0$0 == 0xd3d2
                           00D3D2   593 _DAC0	=	0xd3d2
                           00D6D5   594 G$DAC1$0$0 == 0xd6d5
                           00D6D5   595 _DAC1	=	0xd6d5
                           00F9E9   596 G$PCA0$0$0 == 0xf9e9
                           00F9E9   597 _PCA0	=	0xf9e9
                           00FAEA   598 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   599 _PCA0CP0	=	0xfaea
                           00FBEB   600 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   601 _PCA0CP1	=	0xfbeb
                           00FCEC   602 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   603 _PCA0CP2	=	0xfcec
                           00FDED   604 G$PCA0CP3$0$0 == 0xfded
                           00FDED   605 _PCA0CP3	=	0xfded
                           00FEEE   606 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   607 _PCA0CP4	=	0xfeee
                                    608 ;--------------------------------------------------------
                                    609 ; special function bits
                                    610 ;--------------------------------------------------------
                                    611 	.area RSEG    (ABS,DATA)
      000000                        612 	.org 0x0000
                           000080   613 G$P0_0$0$0 == 0x0080
                           000080   614 _P0_0	=	0x0080
                           000081   615 G$P0_1$0$0 == 0x0081
                           000081   616 _P0_1	=	0x0081
                           000082   617 G$P0_2$0$0 == 0x0082
                           000082   618 _P0_2	=	0x0082
                           000083   619 G$P0_3$0$0 == 0x0083
                           000083   620 _P0_3	=	0x0083
                           000084   621 G$P0_4$0$0 == 0x0084
                           000084   622 _P0_4	=	0x0084
                           000085   623 G$P0_5$0$0 == 0x0085
                           000085   624 _P0_5	=	0x0085
                           000086   625 G$P0_6$0$0 == 0x0086
                           000086   626 _P0_6	=	0x0086
                           000087   627 G$P0_7$0$0 == 0x0087
                           000087   628 _P0_7	=	0x0087
                           000088   629 G$IT0$0$0 == 0x0088
                           000088   630 _IT0	=	0x0088
                           000089   631 G$IE0$0$0 == 0x0089
                           000089   632 _IE0	=	0x0089
                           00008A   633 G$IT1$0$0 == 0x008a
                           00008A   634 _IT1	=	0x008a
                           00008B   635 G$IE1$0$0 == 0x008b
                           00008B   636 _IE1	=	0x008b
                           00008C   637 G$TR0$0$0 == 0x008c
                           00008C   638 _TR0	=	0x008c
                           00008D   639 G$TF0$0$0 == 0x008d
                           00008D   640 _TF0	=	0x008d
                           00008E   641 G$TR1$0$0 == 0x008e
                           00008E   642 _TR1	=	0x008e
                           00008F   643 G$TF1$0$0 == 0x008f
                           00008F   644 _TF1	=	0x008f
                           000090   645 G$P1_0$0$0 == 0x0090
                           000090   646 _P1_0	=	0x0090
                           000091   647 G$P1_1$0$0 == 0x0091
                           000091   648 _P1_1	=	0x0091
                           000092   649 G$P1_2$0$0 == 0x0092
                           000092   650 _P1_2	=	0x0092
                           000093   651 G$P1_3$0$0 == 0x0093
                           000093   652 _P1_3	=	0x0093
                           000094   653 G$P1_4$0$0 == 0x0094
                           000094   654 _P1_4	=	0x0094
                           000095   655 G$P1_5$0$0 == 0x0095
                           000095   656 _P1_5	=	0x0095
                           000096   657 G$P1_6$0$0 == 0x0096
                           000096   658 _P1_6	=	0x0096
                           000097   659 G$P1_7$0$0 == 0x0097
                           000097   660 _P1_7	=	0x0097
                           000098   661 G$RI$0$0 == 0x0098
                           000098   662 _RI	=	0x0098
                           000098   663 G$RI0$0$0 == 0x0098
                           000098   664 _RI0	=	0x0098
                           000099   665 G$TI$0$0 == 0x0099
                           000099   666 _TI	=	0x0099
                           000099   667 G$TI0$0$0 == 0x0099
                           000099   668 _TI0	=	0x0099
                           00009A   669 G$RB8$0$0 == 0x009a
                           00009A   670 _RB8	=	0x009a
                           00009A   671 G$RB80$0$0 == 0x009a
                           00009A   672 _RB80	=	0x009a
                           00009B   673 G$TB8$0$0 == 0x009b
                           00009B   674 _TB8	=	0x009b
                           00009B   675 G$TB80$0$0 == 0x009b
                           00009B   676 _TB80	=	0x009b
                           00009C   677 G$REN$0$0 == 0x009c
                           00009C   678 _REN	=	0x009c
                           00009C   679 G$REN0$0$0 == 0x009c
                           00009C   680 _REN0	=	0x009c
                           00009D   681 G$SM2$0$0 == 0x009d
                           00009D   682 _SM2	=	0x009d
                           00009D   683 G$SM20$0$0 == 0x009d
                           00009D   684 _SM20	=	0x009d
                           00009D   685 G$MCE0$0$0 == 0x009d
                           00009D   686 _MCE0	=	0x009d
                           00009E   687 G$SM1$0$0 == 0x009e
                           00009E   688 _SM1	=	0x009e
                           00009E   689 G$SM10$0$0 == 0x009e
                           00009E   690 _SM10	=	0x009e
                           00009F   691 G$SM0$0$0 == 0x009f
                           00009F   692 _SM0	=	0x009f
                           00009F   693 G$SM00$0$0 == 0x009f
                           00009F   694 _SM00	=	0x009f
                           00009F   695 G$S0MODE$0$0 == 0x009f
                           00009F   696 _S0MODE	=	0x009f
                           0000A0   697 G$P2_0$0$0 == 0x00a0
                           0000A0   698 _P2_0	=	0x00a0
                           0000A1   699 G$P2_1$0$0 == 0x00a1
                           0000A1   700 _P2_1	=	0x00a1
                           0000A2   701 G$P2_2$0$0 == 0x00a2
                           0000A2   702 _P2_2	=	0x00a2
                           0000A3   703 G$P2_3$0$0 == 0x00a3
                           0000A3   704 _P2_3	=	0x00a3
                           0000A4   705 G$P2_4$0$0 == 0x00a4
                           0000A4   706 _P2_4	=	0x00a4
                           0000A5   707 G$P2_5$0$0 == 0x00a5
                           0000A5   708 _P2_5	=	0x00a5
                           0000A6   709 G$P2_6$0$0 == 0x00a6
                           0000A6   710 _P2_6	=	0x00a6
                           0000A7   711 G$P2_7$0$0 == 0x00a7
                           0000A7   712 _P2_7	=	0x00a7
                           0000A8   713 G$EX0$0$0 == 0x00a8
                           0000A8   714 _EX0	=	0x00a8
                           0000A9   715 G$ET0$0$0 == 0x00a9
                           0000A9   716 _ET0	=	0x00a9
                           0000AA   717 G$EX1$0$0 == 0x00aa
                           0000AA   718 _EX1	=	0x00aa
                           0000AB   719 G$ET1$0$0 == 0x00ab
                           0000AB   720 _ET1	=	0x00ab
                           0000AC   721 G$ES0$0$0 == 0x00ac
                           0000AC   722 _ES0	=	0x00ac
                           0000AC   723 G$ES$0$0 == 0x00ac
                           0000AC   724 _ES	=	0x00ac
                           0000AD   725 G$ET2$0$0 == 0x00ad
                           0000AD   726 _ET2	=	0x00ad
                           0000AF   727 G$EA$0$0 == 0x00af
                           0000AF   728 _EA	=	0x00af
                           0000B0   729 G$P3_0$0$0 == 0x00b0
                           0000B0   730 _P3_0	=	0x00b0
                           0000B1   731 G$P3_1$0$0 == 0x00b1
                           0000B1   732 _P3_1	=	0x00b1
                           0000B2   733 G$P3_2$0$0 == 0x00b2
                           0000B2   734 _P3_2	=	0x00b2
                           0000B3   735 G$P3_3$0$0 == 0x00b3
                           0000B3   736 _P3_3	=	0x00b3
                           0000B4   737 G$P3_4$0$0 == 0x00b4
                           0000B4   738 _P3_4	=	0x00b4
                           0000B5   739 G$P3_5$0$0 == 0x00b5
                           0000B5   740 _P3_5	=	0x00b5
                           0000B6   741 G$P3_6$0$0 == 0x00b6
                           0000B6   742 _P3_6	=	0x00b6
                           0000B7   743 G$P3_7$0$0 == 0x00b7
                           0000B7   744 _P3_7	=	0x00b7
                           0000B8   745 G$PX0$0$0 == 0x00b8
                           0000B8   746 _PX0	=	0x00b8
                           0000B9   747 G$PT0$0$0 == 0x00b9
                           0000B9   748 _PT0	=	0x00b9
                           0000BA   749 G$PX1$0$0 == 0x00ba
                           0000BA   750 _PX1	=	0x00ba
                           0000BB   751 G$PT1$0$0 == 0x00bb
                           0000BB   752 _PT1	=	0x00bb
                           0000BC   753 G$PS0$0$0 == 0x00bc
                           0000BC   754 _PS0	=	0x00bc
                           0000BC   755 G$PS$0$0 == 0x00bc
                           0000BC   756 _PS	=	0x00bc
                           0000BD   757 G$PT2$0$0 == 0x00bd
                           0000BD   758 _PT2	=	0x00bd
                           0000C0   759 G$SMBTOE$0$0 == 0x00c0
                           0000C0   760 _SMBTOE	=	0x00c0
                           0000C1   761 G$SMBFTE$0$0 == 0x00c1
                           0000C1   762 _SMBFTE	=	0x00c1
                           0000C2   763 G$AA$0$0 == 0x00c2
                           0000C2   764 _AA	=	0x00c2
                           0000C3   765 G$SI$0$0 == 0x00c3
                           0000C3   766 _SI	=	0x00c3
                           0000C4   767 G$STO$0$0 == 0x00c4
                           0000C4   768 _STO	=	0x00c4
                           0000C5   769 G$STA$0$0 == 0x00c5
                           0000C5   770 _STA	=	0x00c5
                           0000C6   771 G$ENSMB$0$0 == 0x00c6
                           0000C6   772 _ENSMB	=	0x00c6
                           0000C7   773 G$BUSY$0$0 == 0x00c7
                           0000C7   774 _BUSY	=	0x00c7
                           0000C8   775 G$CPRL2$0$0 == 0x00c8
                           0000C8   776 _CPRL2	=	0x00c8
                           0000C9   777 G$CT2$0$0 == 0x00c9
                           0000C9   778 _CT2	=	0x00c9
                           0000CA   779 G$TR2$0$0 == 0x00ca
                           0000CA   780 _TR2	=	0x00ca
                           0000CB   781 G$EXEN2$0$0 == 0x00cb
                           0000CB   782 _EXEN2	=	0x00cb
                           0000CC   783 G$TCLK$0$0 == 0x00cc
                           0000CC   784 _TCLK	=	0x00cc
                           0000CD   785 G$RCLK$0$0 == 0x00cd
                           0000CD   786 _RCLK	=	0x00cd
                           0000CE   787 G$EXF2$0$0 == 0x00ce
                           0000CE   788 _EXF2	=	0x00ce
                           0000CF   789 G$TF2$0$0 == 0x00cf
                           0000CF   790 _TF2	=	0x00cf
                           0000D0   791 G$P$0$0 == 0x00d0
                           0000D0   792 _P	=	0x00d0
                           0000D1   793 G$F1$0$0 == 0x00d1
                           0000D1   794 _F1	=	0x00d1
                           0000D2   795 G$OV$0$0 == 0x00d2
                           0000D2   796 _OV	=	0x00d2
                           0000D3   797 G$RS0$0$0 == 0x00d3
                           0000D3   798 _RS0	=	0x00d3
                           0000D4   799 G$RS1$0$0 == 0x00d4
                           0000D4   800 _RS1	=	0x00d4
                           0000D5   801 G$F0$0$0 == 0x00d5
                           0000D5   802 _F0	=	0x00d5
                           0000D6   803 G$AC$0$0 == 0x00d6
                           0000D6   804 _AC	=	0x00d6
                           0000D7   805 G$CY$0$0 == 0x00d7
                           0000D7   806 _CY	=	0x00d7
                           0000D8   807 G$CCF0$0$0 == 0x00d8
                           0000D8   808 _CCF0	=	0x00d8
                           0000D9   809 G$CCF1$0$0 == 0x00d9
                           0000D9   810 _CCF1	=	0x00d9
                           0000DA   811 G$CCF2$0$0 == 0x00da
                           0000DA   812 _CCF2	=	0x00da
                           0000DB   813 G$CCF3$0$0 == 0x00db
                           0000DB   814 _CCF3	=	0x00db
                           0000DC   815 G$CCF4$0$0 == 0x00dc
                           0000DC   816 _CCF4	=	0x00dc
                           0000DE   817 G$CR$0$0 == 0x00de
                           0000DE   818 _CR	=	0x00de
                           0000DF   819 G$CF$0$0 == 0x00df
                           0000DF   820 _CF	=	0x00df
                           0000E8   821 G$ADLJST$0$0 == 0x00e8
                           0000E8   822 _ADLJST	=	0x00e8
                           0000E8   823 G$AD0LJST$0$0 == 0x00e8
                           0000E8   824 _AD0LJST	=	0x00e8
                           0000E9   825 G$ADWINT$0$0 == 0x00e9
                           0000E9   826 _ADWINT	=	0x00e9
                           0000E9   827 G$AD0WINT$0$0 == 0x00e9
                           0000E9   828 _AD0WINT	=	0x00e9
                           0000EA   829 G$ADSTM0$0$0 == 0x00ea
                           0000EA   830 _ADSTM0	=	0x00ea
                           0000EA   831 G$AD0CM0$0$0 == 0x00ea
                           0000EA   832 _AD0CM0	=	0x00ea
                           0000EB   833 G$ADSTM1$0$0 == 0x00eb
                           0000EB   834 _ADSTM1	=	0x00eb
                           0000EB   835 G$AD0CM1$0$0 == 0x00eb
                           0000EB   836 _AD0CM1	=	0x00eb
                           0000EC   837 G$ADBUSY$0$0 == 0x00ec
                           0000EC   838 _ADBUSY	=	0x00ec
                           0000EC   839 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   840 _AD0BUSY	=	0x00ec
                           0000ED   841 G$ADCINT$0$0 == 0x00ed
                           0000ED   842 _ADCINT	=	0x00ed
                           0000ED   843 G$AD0INT$0$0 == 0x00ed
                           0000ED   844 _AD0INT	=	0x00ed
                           0000EE   845 G$ADCTM$0$0 == 0x00ee
                           0000EE   846 _ADCTM	=	0x00ee
                           0000EE   847 G$AD0TM$0$0 == 0x00ee
                           0000EE   848 _AD0TM	=	0x00ee
                           0000EF   849 G$ADCEN$0$0 == 0x00ef
                           0000EF   850 _ADCEN	=	0x00ef
                           0000EF   851 G$AD0EN$0$0 == 0x00ef
                           0000EF   852 _AD0EN	=	0x00ef
                           0000F8   853 G$SPIEN$0$0 == 0x00f8
                           0000F8   854 _SPIEN	=	0x00f8
                           0000F9   855 G$MSTEN$0$0 == 0x00f9
                           0000F9   856 _MSTEN	=	0x00f9
                           0000FA   857 G$SLVSEL$0$0 == 0x00fa
                           0000FA   858 _SLVSEL	=	0x00fa
                           0000FB   859 G$TXBSY$0$0 == 0x00fb
                           0000FB   860 _TXBSY	=	0x00fb
                           0000FC   861 G$RXOVRN$0$0 == 0x00fc
                           0000FC   862 _RXOVRN	=	0x00fc
                           0000FD   863 G$MODF$0$0 == 0x00fd
                           0000FD   864 _MODF	=	0x00fd
                           0000FE   865 G$WCOL$0$0 == 0x00fe
                           0000FE   866 _WCOL	=	0x00fe
                           0000FF   867 G$SPIF$0$0 == 0x00ff
                           0000FF   868 _SPIF	=	0x00ff
                                    869 ;--------------------------------------------------------
                                    870 ; overlayable register banks
                                    871 ;--------------------------------------------------------
                                    872 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        873 	.ds 8
                                    874 ;--------------------------------------------------------
                                    875 ; internal ram data
                                    876 ;--------------------------------------------------------
                                    877 	.area DSEG    (DATA)
                           000000   878 G$PW_CENTER$0$0==.
      000008                        879 _PW_CENTER::
      000008                        880 	.ds 2
                           000002   881 G$PW_MIN$0$0==.
      00000A                        882 _PW_MIN::
      00000A                        883 	.ds 2
                           000004   884 G$PW_MAX$0$0==.
      00000C                        885 _PW_MAX::
      00000C                        886 	.ds 2
                           000006   887 G$PW$0$0==.
      00000E                        888 _PW::
      00000E                        889 	.ds 2
                           000008   890 G$count$0$0==.
      000010                        891 _count::
      000010                        892 	.ds 2
                           00000A   893 G$input$0$0==.
      000012                        894 _input::
      000012                        895 	.ds 1
                           00000B   896 Llab3_1.aligned_alloc$size$1$39==.
      000013                        897 _aligned_alloc_PARM_2:
      000013                        898 	.ds 2
                                    899 ;--------------------------------------------------------
                                    900 ; overlayable items in internal ram 
                                    901 ;--------------------------------------------------------
                                    902 	.area	OSEG    (OVR,DATA)
                                    903 	.area	OSEG    (OVR,DATA)
                                    904 ;--------------------------------------------------------
                                    905 ; Stack segment in internal ram 
                                    906 ;--------------------------------------------------------
                                    907 	.area	SSEG
      000042                        908 __start__stack:
      000042                        909 	.ds	1
                                    910 
                                    911 ;--------------------------------------------------------
                                    912 ; indirectly addressable internal ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area ISEG    (DATA)
                                    915 ;--------------------------------------------------------
                                    916 ; absolute internal ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area IABS    (ABS,DATA)
                                    919 	.area IABS    (ABS,DATA)
                                    920 ;--------------------------------------------------------
                                    921 ; bit data
                                    922 ;--------------------------------------------------------
                                    923 	.area BSEG    (BIT)
                                    924 ;--------------------------------------------------------
                                    925 ; paged external ram data
                                    926 ;--------------------------------------------------------
                                    927 	.area PSEG    (PAG,XDATA)
                                    928 ;--------------------------------------------------------
                                    929 ; external ram data
                                    930 ;--------------------------------------------------------
                                    931 	.area XSEG    (XDATA)
                                    932 ;--------------------------------------------------------
                                    933 ; absolute external ram data
                                    934 ;--------------------------------------------------------
                                    935 	.area XABS    (ABS,XDATA)
                                    936 ;--------------------------------------------------------
                                    937 ; external initialized ram data
                                    938 ;--------------------------------------------------------
                                    939 	.area XISEG   (XDATA)
                                    940 	.area HOME    (CODE)
                                    941 	.area GSINIT0 (CODE)
                                    942 	.area GSINIT1 (CODE)
                                    943 	.area GSINIT2 (CODE)
                                    944 	.area GSINIT3 (CODE)
                                    945 	.area GSINIT4 (CODE)
                                    946 	.area GSINIT5 (CODE)
                                    947 	.area GSINIT  (CODE)
                                    948 	.area GSFINAL (CODE)
                                    949 	.area CSEG    (CODE)
                                    950 ;--------------------------------------------------------
                                    951 ; interrupt vector 
                                    952 ;--------------------------------------------------------
                                    953 	.area HOME    (CODE)
      000000                        954 __interrupt_vect:
      000000 02 00 51         [24]  955 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  956 	reti
      000004                        957 	.ds	7
      00000B 32               [24]  958 	reti
      00000C                        959 	.ds	7
      000013 32               [24]  960 	reti
      000014                        961 	.ds	7
      00001B 32               [24]  962 	reti
      00001C                        963 	.ds	7
      000023 32               [24]  964 	reti
      000024                        965 	.ds	7
      00002B 32               [24]  966 	reti
      00002C                        967 	.ds	7
      000033 32               [24]  968 	reti
      000034                        969 	.ds	7
      00003B 32               [24]  970 	reti
      00003C                        971 	.ds	7
      000043 32               [24]  972 	reti
      000044                        973 	.ds	7
      00004B 02 01 A5         [24]  974 	ljmp	_PCA_ISR
                                    975 ;--------------------------------------------------------
                                    976 ; global & static initialisations
                                    977 ;--------------------------------------------------------
                                    978 	.area HOME    (CODE)
                                    979 	.area GSINIT  (CODE)
                                    980 	.area GSFINAL (CODE)
                                    981 	.area GSINIT  (CODE)
                                    982 	.globl __sdcc_gsinit_startup
                                    983 	.globl __sdcc_program_startup
                                    984 	.globl __start__stack
                                    985 	.globl __mcs51_genXINIT
                                    986 	.globl __mcs51_genXRAMCLEAR
                                    987 	.globl __mcs51_genRAMCLEAR
                           000000   988 	C$lab3_1.c$17$1$61 ==.
                                    989 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:17: unsigned int PW_CENTER = 2760;
      0000AA 75 08 C8         [24]  990 	mov	_PW_CENTER,#0xc8
      0000AD 75 09 0A         [24]  991 	mov	(_PW_CENTER + 1),#0x0a
                           000006   992 	C$lab3_1.c$18$1$61 ==.
                                    993 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:18: unsigned int PW_MIN = 2030;
      0000B0 75 0A EE         [24]  994 	mov	_PW_MIN,#0xee
      0000B3 75 0B 07         [24]  995 	mov	(_PW_MIN + 1),#0x07
                           00000C   996 	C$lab3_1.c$19$1$61 ==.
                                    997 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:19: unsigned int PW_MAX = 3500;
      0000B6 75 0C AC         [24]  998 	mov	_PW_MAX,#0xac
      0000B9 75 0D 0D         [24]  999 	mov	(_PW_MAX + 1),#0x0d
                           000012  1000 	C$lab3_1.c$20$1$61 ==.
                                   1001 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:20: unsigned int PW = 0;
      0000BC E4               [12] 1002 	clr	a
      0000BD F5 0E            [12] 1003 	mov	_PW,a
      0000BF F5 0F            [12] 1004 	mov	(_PW + 1),a
                                   1005 	.area GSFINAL (CODE)
      0000C1 02 00 4E         [24] 1006 	ljmp	__sdcc_program_startup
                                   1007 ;--------------------------------------------------------
                                   1008 ; Home
                                   1009 ;--------------------------------------------------------
                                   1010 	.area HOME    (CODE)
                                   1011 	.area HOME    (CODE)
      00004E                       1012 __sdcc_program_startup:
      00004E 02 01 3F         [24] 1013 	ljmp	_main
                                   1014 ;	return from main will return to caller
                                   1015 ;--------------------------------------------------------
                                   1016 ; code
                                   1017 ;--------------------------------------------------------
                                   1018 	.area CSEG    (CODE)
                                   1019 ;------------------------------------------------------------
                                   1020 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1021 ;------------------------------------------------------------
                                   1022 ;i                         Allocated to registers r6 r7 
                                   1023 ;------------------------------------------------------------
                           000000  1024 	G$SYSCLK_Init$0$0 ==.
                           000000  1025 	C$c8051_SDCC.h$62$0$0 ==.
                                   1026 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function SYSCLK_Init
                                   1029 ;	-----------------------------------------
      0000C4                       1030 _SYSCLK_Init:
                           000007  1031 	ar7 = 0x07
                           000006  1032 	ar6 = 0x06
                           000005  1033 	ar5 = 0x05
                           000004  1034 	ar4 = 0x04
                           000003  1035 	ar3 = 0x03
                           000002  1036 	ar2 = 0x02
                           000001  1037 	ar1 = 0x01
                           000000  1038 	ar0 = 0x00
                           000000  1039 	C$c8051_SDCC.h$66$1$2 ==.
                                   1040 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000C4 75 B1 67         [24] 1041 	mov	_OSCXCN,#0x67
                           000003  1042 	C$c8051_SDCC.h$69$1$2 ==.
                                   1043 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000C7 7E 00            [12] 1044 	mov	r6,#0x00
      0000C9 7F 01            [12] 1045 	mov	r7,#0x01
      0000CB                       1046 00107$:
      0000CB EE               [12] 1047 	mov	a,r6
      0000CC 24 FF            [12] 1048 	add	a,#0xff
      0000CE FC               [12] 1049 	mov	r4,a
      0000CF EF               [12] 1050 	mov	a,r7
      0000D0 34 FF            [12] 1051 	addc	a,#0xff
      0000D2 FD               [12] 1052 	mov	r5,a
      0000D3 8C 06            [24] 1053 	mov	ar6,r4
      0000D5 8D 07            [24] 1054 	mov	ar7,r5
      0000D7 EC               [12] 1055 	mov	a,r4
      0000D8 4D               [12] 1056 	orl	a,r5
      0000D9 70 F0            [24] 1057 	jnz	00107$
                           000017  1058 	C$c8051_SDCC.h$71$1$2 ==.
                                   1059 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000DB                       1060 00102$:
      0000DB E5 B1            [12] 1061 	mov	a,_OSCXCN
      0000DD 30 E7 FB         [24] 1062 	jnb	acc.7,00102$
                           00001C  1063 	C$c8051_SDCC.h$73$1$2 ==.
                                   1064 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000E0 75 B2 88         [24] 1065 	mov	_OSCICN,#0x88
                           00001F  1066 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1067 	XG$SYSCLK_Init$0$0 ==.
      0000E3 22               [24] 1068 	ret
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'UART0_Init'
                                   1071 ;------------------------------------------------------------
                           000020  1072 	G$UART0_Init$0$0 ==.
                           000020  1073 	C$c8051_SDCC.h$84$1$2 ==.
                                   1074 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1075 ;	-----------------------------------------
                                   1076 ;	 function UART0_Init
                                   1077 ;	-----------------------------------------
      0000E4                       1078 _UART0_Init:
                           000020  1079 	C$c8051_SDCC.h$86$1$4 ==.
                                   1080 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000E4 75 98 50         [24] 1081 	mov	_SCON0,#0x50
                           000023  1082 	C$c8051_SDCC.h$87$1$4 ==.
                                   1083 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000E7 75 89 20         [24] 1084 	mov	_TMOD,#0x20
                           000026  1085 	C$c8051_SDCC.h$88$1$4 ==.
                                   1086 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000EA 75 8D DC         [24] 1087 	mov	_TH1,#0xdc
                           000029  1088 	C$c8051_SDCC.h$89$1$4 ==.
                                   1089 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000ED D2 8E            [12] 1090 	setb	_TR1
                           00002B  1091 	C$c8051_SDCC.h$90$1$4 ==.
                                   1092 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000EF 43 8E 10         [24] 1093 	orl	_CKCON,#0x10
                           00002E  1094 	C$c8051_SDCC.h$91$1$4 ==.
                                   1095 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000F2 43 87 80         [24] 1096 	orl	_PCON,#0x80
                           000031  1097 	C$c8051_SDCC.h$93$1$4 ==.
                                   1098 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000F5 D2 99            [12] 1099 	setb	_TI0
                           000033  1100 	C$c8051_SDCC.h$94$1$4 ==.
                                   1101 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000F7 43 A4 01         [24] 1102 	orl	_P0MDOUT,#0x01
                           000036  1103 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1104 	XG$UART0_Init$0$0 ==.
      0000FA 22               [24] 1105 	ret
                                   1106 ;------------------------------------------------------------
                                   1107 ;Allocation info for local variables in function 'Sys_Init'
                                   1108 ;------------------------------------------------------------
                           000037  1109 	G$Sys_Init$0$0 ==.
                           000037  1110 	C$c8051_SDCC.h$103$1$4 ==.
                                   1111 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function Sys_Init
                                   1114 ;	-----------------------------------------
      0000FB                       1115 _Sys_Init:
                           000037  1116 	C$c8051_SDCC.h$105$1$6 ==.
                                   1117 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000FB 75 FF DE         [24] 1118 	mov	_WDTCN,#0xde
                           00003A  1119 	C$c8051_SDCC.h$106$1$6 ==.
                                   1120 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000FE 75 FF AD         [24] 1121 	mov	_WDTCN,#0xad
                           00003D  1122 	C$c8051_SDCC.h$108$1$6 ==.
                                   1123 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000101 12 00 C4         [24] 1124 	lcall	_SYSCLK_Init
                           000040  1125 	C$c8051_SDCC.h$109$1$6 ==.
                                   1126 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      000104 12 00 E4         [24] 1127 	lcall	_UART0_Init
                           000043  1128 	C$c8051_SDCC.h$111$1$6 ==.
                                   1129 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000107 43 E1 04         [24] 1130 	orl	_XBR0,#0x04
                           000046  1131 	C$c8051_SDCC.h$112$1$6 ==.
                                   1132 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      00010A 43 E3 40         [24] 1133 	orl	_XBR2,#0x40
                           000049  1134 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1135 	XG$Sys_Init$0$0 ==.
      00010D 22               [24] 1136 	ret
                                   1137 ;------------------------------------------------------------
                                   1138 ;Allocation info for local variables in function 'putchar'
                                   1139 ;------------------------------------------------------------
                                   1140 ;c                         Allocated to registers r7 
                                   1141 ;------------------------------------------------------------
                           00004A  1142 	G$putchar$0$0 ==.
                           00004A  1143 	C$c8051_SDCC.h$129$1$6 ==.
                                   1144 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function putchar
                                   1147 ;	-----------------------------------------
      00010E                       1148 _putchar:
      00010E AF 82            [24] 1149 	mov	r7,dpl
                           00004C  1150 	C$c8051_SDCC.h$132$1$8 ==.
                                   1151 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000110                       1152 00101$:
                           00004C  1153 	C$c8051_SDCC.h$133$1$8 ==.
                                   1154 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000110 10 99 02         [24] 1155 	jbc	_TI0,00112$
      000113 80 FB            [24] 1156 	sjmp	00101$
      000115                       1157 00112$:
                           000051  1158 	C$c8051_SDCC.h$134$1$8 ==.
                                   1159 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      000115 8F 99            [24] 1160 	mov	_SBUF0,r7
                           000053  1161 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1162 	XG$putchar$0$0 ==.
      000117 22               [24] 1163 	ret
                                   1164 ;------------------------------------------------------------
                                   1165 ;Allocation info for local variables in function 'getchar'
                                   1166 ;------------------------------------------------------------
                                   1167 ;c                         Allocated to registers r7 
                                   1168 ;------------------------------------------------------------
                           000054  1169 	G$getchar$0$0 ==.
                           000054  1170 	C$c8051_SDCC.h$154$1$8 ==.
                                   1171 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function getchar
                                   1174 ;	-----------------------------------------
      000118                       1175 _getchar:
                           000054  1176 	C$c8051_SDCC.h$157$1$10 ==.
                                   1177 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000118                       1178 00101$:
                           000054  1179 	C$c8051_SDCC.h$158$1$10 ==.
                                   1180 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000118 10 98 02         [24] 1181 	jbc	_RI0,00112$
      00011B 80 FB            [24] 1182 	sjmp	00101$
      00011D                       1183 00112$:
                           000059  1184 	C$c8051_SDCC.h$159$1$10 ==.
                                   1185 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      00011D AF 99            [24] 1186 	mov	r7,_SBUF0
                           00005B  1187 	C$c8051_SDCC.h$160$1$10 ==.
                                   1188 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      00011F 8F 82            [24] 1189 	mov	dpl,r7
      000121 C0 07            [24] 1190 	push	ar7
      000123 12 01 0E         [24] 1191 	lcall	_putchar
      000126 D0 07            [24] 1192 	pop	ar7
                           000064  1193 	C$c8051_SDCC.h$161$1$10 ==.
                                   1194 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000128 8F 82            [24] 1195 	mov	dpl,r7
                           000066  1196 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1197 	XG$getchar$0$0 ==.
      00012A 22               [24] 1198 	ret
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'getchar_nw'
                                   1201 ;------------------------------------------------------------
                                   1202 ;c                         Allocated to registers 
                                   1203 ;------------------------------------------------------------
                           000067  1204 	G$getchar_nw$0$0 ==.
                           000067  1205 	C$c8051_SDCC.h$168$1$10 ==.
                                   1206 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function getchar_nw
                                   1209 ;	-----------------------------------------
      00012B                       1210 _getchar_nw:
                           000067  1211 	C$c8051_SDCC.h$171$1$12 ==.
                                   1212 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      00012B 20 98 05         [24] 1213 	jb	_RI0,00102$
      00012E 75 82 FF         [24] 1214 	mov	dpl,#0xff
      000131 80 0B            [24] 1215 	sjmp	00104$
      000133                       1216 00102$:
                           00006F  1217 	C$c8051_SDCC.h$174$2$13 ==.
                                   1218 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      000133 C2 98            [12] 1219 	clr	_RI0
                           000071  1220 	C$c8051_SDCC.h$175$2$13 ==.
                                   1221 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000135 85 99 82         [24] 1222 	mov	dpl,_SBUF0
                           000074  1223 	C$c8051_SDCC.h$176$2$13 ==.
                                   1224 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000138 12 01 0E         [24] 1225 	lcall	_putchar
                           000077  1226 	C$c8051_SDCC.h$177$2$13 ==.
                                   1227 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      00013B 85 99 82         [24] 1228 	mov	dpl,_SBUF0
      00013E                       1229 00104$:
                           00007A  1230 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1231 	XG$getchar_nw$0$0 ==.
      00013E 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'main'
                                   1235 ;------------------------------------------------------------
                           00007B  1236 	G$main$0$0 ==.
                           00007B  1237 	C$lab3_1.c$27$1$12 ==.
                                   1238 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:27: void main(void)
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function main
                                   1241 ;	-----------------------------------------
      00013F                       1242 _main:
                           00007B  1243 	C$lab3_1.c$30$1$52 ==.
                                   1244 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:30: Sys_Init();
      00013F 12 00 FB         [24] 1245 	lcall	_Sys_Init
                           00007E  1246 	C$lab3_1.c$31$1$52 ==.
                                   1247 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:31: putchar(' '); //the quotes in this line may not format correctly
      000142 75 82 20         [24] 1248 	mov	dpl,#0x20
      000145 12 01 0E         [24] 1249 	lcall	_putchar
                           000084  1250 	C$lab3_1.c$32$1$52 ==.
                                   1251 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:32: Port_Init();
      000148 12 01 8E         [24] 1252 	lcall	_Port_Init
                           000087  1253 	C$lab3_1.c$33$1$52 ==.
                                   1254 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:33: XBR0_Init();
      00014B 12 01 92         [24] 1255 	lcall	_XBR0_Init
                           00008A  1256 	C$lab3_1.c$34$1$52 ==.
                                   1257 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:34: PCA_Init();
      00014E 12 01 96         [24] 1258 	lcall	_PCA_Init
                           00008D  1259 	C$lab3_1.c$37$1$52 ==.
                                   1260 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:37: printf("Embedded Control Pulsewidth Calibration\n\r");
      000151 74 8C            [12] 1261 	mov	a,#___str_0
      000153 C0 E0            [24] 1262 	push	acc
      000155 74 08            [12] 1263 	mov	a,#(___str_0 >> 8)
      000157 C0 E0            [24] 1264 	push	acc
      000159 74 80            [12] 1265 	mov	a,#0x80
      00015B C0 E0            [24] 1266 	push	acc
      00015D 12 02 71         [24] 1267 	lcall	_printf
      000160 15 81            [12] 1268 	dec	sp
      000162 15 81            [12] 1269 	dec	sp
      000164 15 81            [12] 1270 	dec	sp
                           0000A2  1271 	C$lab3_1.c$39$1$52 ==.
                                   1272 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:39: PW = PW_CENTER;
      000166 85 08 0E         [24] 1273 	mov	_PW,_PW_CENTER
      000169 85 09 0F         [24] 1274 	mov	(_PW + 1),(_PW_CENTER + 1)
                           0000A8  1275 	C$lab3_1.c$40$1$52 ==.
                                   1276 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:40: count = 0;
      00016C E4               [12] 1277 	clr	a
      00016D F5 10            [12] 1278 	mov	_count,a
      00016F F5 11            [12] 1279 	mov	(_count + 1),a
                           0000AD  1280 	C$lab3_1.c$41$1$52 ==.
                                   1281 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:41: PCA0CP2 = 0xFFFF - PW;
      000171 14               [12] 1282 	dec	a
      000172 C3               [12] 1283 	clr	c
      000173 95 0E            [12] 1284 	subb	a,_PW
      000175 F5 EC            [12] 1285 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000177 74 FF            [12] 1286 	mov	a,#0xff
      000179 95 0F            [12] 1287 	subb	a,(_PW + 1)
      00017B F5 FC            [12] 1288 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           0000B9  1289 	C$lab3_1.c$42$1$52 ==.
                                   1290 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:42: while (count < 75);
      00017D                       1291 00101$:
      00017D C3               [12] 1292 	clr	c
      00017E E5 10            [12] 1293 	mov	a,_count
      000180 94 4B            [12] 1294 	subb	a,#0x4b
      000182 E5 11            [12] 1295 	mov	a,(_count + 1)
      000184 94 00            [12] 1296 	subb	a,#0x00
      000186 40 F5            [24] 1297 	jc	00101$
                           0000C4  1298 	C$lab3_1.c$46$1$52 ==.
                                   1299 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:46: while(1)
      000188                       1300 00105$:
                           0000C4  1301 	C$lab3_1.c$47$1$52 ==.
                                   1302 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:47: Set_Pulsewidth();
      000188 12 01 C6         [24] 1303 	lcall	_Set_Pulsewidth
      00018B 80 FB            [24] 1304 	sjmp	00105$
                           0000C9  1305 	C$lab3_1.c$48$1$52 ==.
                           0000C9  1306 	XG$main$0$0 ==.
      00018D 22               [24] 1307 	ret
                                   1308 ;------------------------------------------------------------
                                   1309 ;Allocation info for local variables in function 'Port_Init'
                                   1310 ;------------------------------------------------------------
                           0000CA  1311 	G$Port_Init$0$0 ==.
                           0000CA  1312 	C$lab3_1.c$56$1$52 ==.
                                   1313 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:56: void Port_Init()
                                   1314 ;	-----------------------------------------
                                   1315 ;	 function Port_Init
                                   1316 ;	-----------------------------------------
      00018E                       1317 _Port_Init:
                           0000CA  1318 	C$lab3_1.c$58$1$53 ==.
                                   1319 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:58: P1MDOUT |= 0x04;  //set output pin for CEX2 in push-pull mode
      00018E 43 A5 04         [24] 1320 	orl	_P1MDOUT,#0x04
                           0000CD  1321 	C$lab3_1.c$59$1$53 ==.
                           0000CD  1322 	XG$Port_Init$0$0 ==.
      000191 22               [24] 1323 	ret
                                   1324 ;------------------------------------------------------------
                                   1325 ;Allocation info for local variables in function 'XBR0_Init'
                                   1326 ;------------------------------------------------------------
                           0000CE  1327 	G$XBR0_Init$0$0 ==.
                           0000CE  1328 	C$lab3_1.c$67$1$53 ==.
                                   1329 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:67: void XBR0_Init()
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function XBR0_Init
                                   1332 ;	-----------------------------------------
      000192                       1333 _XBR0_Init:
                           0000CE  1334 	C$lab3_1.c$69$1$54 ==.
                                   1335 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:69: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      000192 75 E1 27         [24] 1336 	mov	_XBR0,#0x27
                           0000D1  1337 	C$lab3_1.c$71$1$54 ==.
                           0000D1  1338 	XG$XBR0_Init$0$0 ==.
      000195 22               [24] 1339 	ret
                                   1340 ;------------------------------------------------------------
                                   1341 ;Allocation info for local variables in function 'PCA_Init'
                                   1342 ;------------------------------------------------------------
                           0000D2  1343 	G$PCA_Init$0$0 ==.
                           0000D2  1344 	C$lab3_1.c$79$1$54 ==.
                                   1345 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:79: void PCA_Init(void)
                                   1346 ;	-----------------------------------------
                                   1347 ;	 function PCA_Init
                                   1348 ;	-----------------------------------------
      000196                       1349 _PCA_Init:
                           0000D2  1350 	C$lab3_1.c$81$1$56 ==.
                                   1351 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:81: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      000196 75 D9 81         [24] 1352 	mov	_PCA0MD,#0x81
                           0000D5  1353 	C$lab3_1.c$82$1$56 ==.
                                   1354 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:82: PCA0CPM2 = 0xC2; //CCM2 in 16 bit compare mode
      000199 75 DC C2         [24] 1355 	mov	_PCA0CPM2,#0xc2
                           0000D8  1356 	C$lab3_1.c$83$1$56 ==.
                                   1357 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:83: PCA0CN = 0x40; //enable PCA counter
      00019C 75 D8 40         [24] 1358 	mov	_PCA0CN,#0x40
                           0000DB  1359 	C$lab3_1.c$84$1$56 ==.
                                   1360 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:84: EIE1 |= 0x08;
      00019F 43 E6 08         [24] 1361 	orl	_EIE1,#0x08
                           0000DE  1362 	C$lab3_1.c$85$1$56 ==.
                                   1363 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:85: EA = 1;
      0001A2 D2 AF            [12] 1364 	setb	_EA
                           0000E0  1365 	C$lab3_1.c$87$1$56 ==.
                           0000E0  1366 	XG$PCA_Init$0$0 ==.
      0001A4 22               [24] 1367 	ret
                                   1368 ;------------------------------------------------------------
                                   1369 ;Allocation info for local variables in function 'PCA_ISR'
                                   1370 ;------------------------------------------------------------
                           0000E1  1371 	G$PCA_ISR$0$0 ==.
                           0000E1  1372 	C$lab3_1.c$95$1$56 ==.
                                   1373 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:95: void PCA_ISR ( void ) __interrupt 9
                                   1374 ;	-----------------------------------------
                                   1375 ;	 function PCA_ISR
                                   1376 ;	-----------------------------------------
      0001A5                       1377 _PCA_ISR:
      0001A5 C0 E0            [24] 1378 	push	acc
      0001A7 C0 D0            [24] 1379 	push	psw
                           0000E5  1380 	C$lab3_1.c$97$1$58 ==.
                                   1381 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:97: if (CF)
                           0000E5  1382 	C$lab3_1.c$99$2$59 ==.
                                   1383 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:99: CF = 0;
      0001A9 10 DF 02         [24] 1384 	jbc	_CF,00109$
      0001AC 80 10            [24] 1385 	sjmp	00102$
      0001AE                       1386 00109$:
                           0000EA  1387 	C$lab3_1.c$100$2$59 ==.
                                   1388 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:100: PCA0 = 28671; //20 ms period 36408
      0001AE 75 E9 FF         [24] 1389 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      0001B1 75 F9 6F         [24] 1390 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           0000F0  1391 	C$lab3_1.c$101$2$59 ==.
                                   1392 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:101: count ++;
      0001B4 05 10            [12] 1393 	inc	_count
      0001B6 E4               [12] 1394 	clr	a
      0001B7 B5 10 07         [24] 1395 	cjne	a,_count,00104$
      0001BA 05 11            [12] 1396 	inc	(_count + 1)
      0001BC 80 03            [24] 1397 	sjmp	00104$
      0001BE                       1398 00102$:
                           0000FA  1399 	C$lab3_1.c$105$2$60 ==.
                                   1400 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:105: PCA0CN &= 0x40;
      0001BE 53 D8 40         [24] 1401 	anl	_PCA0CN,#0x40
      0001C1                       1402 00104$:
      0001C1 D0 D0            [24] 1403 	pop	psw
      0001C3 D0 E0            [24] 1404 	pop	acc
                           000101  1405 	C$lab3_1.c$107$1$58 ==.
                           000101  1406 	XG$PCA_ISR$0$0 ==.
      0001C5 32               [24] 1407 	reti
                                   1408 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1409 ;	eliminated unneeded push/pop dpl
                                   1410 ;	eliminated unneeded push/pop dph
                                   1411 ;	eliminated unneeded push/pop b
                                   1412 ;------------------------------------------------------------
                                   1413 ;Allocation info for local variables in function 'Set_Pulsewidth'
                                   1414 ;------------------------------------------------------------
                           000102  1415 	G$Set_Pulsewidth$0$0 ==.
                           000102  1416 	C$lab3_1.c$109$1$58 ==.
                                   1417 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:109: void Set_Pulsewidth()
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function Set_Pulsewidth
                                   1420 ;	-----------------------------------------
      0001C6                       1421 _Set_Pulsewidth:
                           000102  1422 	C$lab3_1.c$111$1$61 ==.
                                   1423 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:111: printf("Plus or Minus please.\r\n");
      0001C6 74 B6            [12] 1424 	mov	a,#___str_1
      0001C8 C0 E0            [24] 1425 	push	acc
      0001CA 74 08            [12] 1426 	mov	a,#(___str_1 >> 8)
      0001CC C0 E0            [24] 1427 	push	acc
      0001CE 74 80            [12] 1428 	mov	a,#0x80
      0001D0 C0 E0            [24] 1429 	push	acc
      0001D2 12 02 71         [24] 1430 	lcall	_printf
      0001D5 15 81            [12] 1431 	dec	sp
      0001D7 15 81            [12] 1432 	dec	sp
      0001D9 15 81            [12] 1433 	dec	sp
                           000117  1434 	C$lab3_1.c$113$1$61 ==.
                                   1435 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:113: input = getchar();
      0001DB 12 01 18         [24] 1436 	lcall	_getchar
      0001DE 85 82 12         [24] 1437 	mov	_input,dpl
                           00011D  1438 	C$lab3_1.c$114$1$61 ==.
                                   1439 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:114: if(input == '+')  // single character input to increase the pulsewidth
      0001E1 74 2B            [12] 1440 	mov	a,#0x2b
      0001E3 B5 12 1E         [24] 1441 	cjne	a,_input,00108$
                           000122  1442 	C$lab3_1.c$116$2$62 ==.
                                   1443 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:116: PW = PW + 200;
      0001E6 74 C8            [12] 1444 	mov	a,#0xc8
      0001E8 25 0E            [12] 1445 	add	a,_PW
      0001EA F5 0E            [12] 1446 	mov	_PW,a
      0001EC E4               [12] 1447 	clr	a
      0001ED 35 0F            [12] 1448 	addc	a,(_PW + 1)
      0001EF F5 0F            [12] 1449 	mov	(_PW + 1),a
                           00012D  1450 	C$lab3_1.c$118$2$62 ==.
                                   1451 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:118: if(PW > PW_MAX)  // check if greater than pulsewidth maximum
      0001F1 C3               [12] 1452 	clr	c
      0001F2 E5 0C            [12] 1453 	mov	a,_PW_MAX
      0001F4 95 0E            [12] 1454 	subb	a,_PW
      0001F6 E5 0D            [12] 1455 	mov	a,(_PW_MAX + 1)
      0001F8 95 0F            [12] 1456 	subb	a,(_PW + 1)
      0001FA 50 2A            [24] 1457 	jnc	00109$
                           000138  1458 	C$lab3_1.c$119$2$62 ==.
                                   1459 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:119: PW = PW_MAX;    // set PW to the maximum value
      0001FC 85 0C 0E         [24] 1460 	mov	_PW,_PW_MAX
      0001FF 85 0D 0F         [24] 1461 	mov	(_PW + 1),(_PW_MAX + 1)
      000202 80 22            [24] 1462 	sjmp	00109$
      000204                       1463 00108$:
                           000140  1464 	C$lab3_1.c$121$1$61 ==.
                                   1465 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:121: else if(input == '-')  // single character input to decrease the pulsewidth
      000204 74 2D            [12] 1466 	mov	a,#0x2d
      000206 B5 12 1D         [24] 1467 	cjne	a,_input,00109$
                           000145  1468 	C$lab3_1.c$123$2$63 ==.
                                   1469 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:123: PW = PW - 200;
      000209 E5 0E            [12] 1470 	mov	a,_PW
      00020B 24 38            [12] 1471 	add	a,#0x38
      00020D F5 0E            [12] 1472 	mov	_PW,a
      00020F E5 0F            [12] 1473 	mov	a,(_PW + 1)
      000211 34 FF            [12] 1474 	addc	a,#0xff
      000213 F5 0F            [12] 1475 	mov	(_PW + 1),a
                           000151  1476 	C$lab3_1.c$125$2$63 ==.
                                   1477 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:125: if(PW < PW_MIN)  // check if less than pulsewidth minimum
      000215 C3               [12] 1478 	clr	c
      000216 E5 0E            [12] 1479 	mov	a,_PW
      000218 95 0A            [12] 1480 	subb	a,_PW_MIN
      00021A E5 0F            [12] 1481 	mov	a,(_PW + 1)
      00021C 95 0B            [12] 1482 	subb	a,(_PW_MIN + 1)
      00021E 50 06            [24] 1483 	jnc	00109$
                           00015C  1484 	C$lab3_1.c$126$2$63 ==.
                                   1485 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:126: PW = PW_MIN;     // set PW to the minimum value
      000220 85 0A 0E         [24] 1486 	mov	_PW,_PW_MIN
      000223 85 0B 0F         [24] 1487 	mov	(_PW + 1),(_PW_MIN + 1)
      000226                       1488 00109$:
                           000162  1489 	C$lab3_1.c$128$1$61 ==.
                                   1490 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:128: printf("PW: %u\n\r", PW);
      000226 C0 0E            [24] 1491 	push	_PW
      000228 C0 0F            [24] 1492 	push	(_PW + 1)
      00022A 74 CE            [12] 1493 	mov	a,#___str_2
      00022C C0 E0            [24] 1494 	push	acc
      00022E 74 08            [12] 1495 	mov	a,#(___str_2 >> 8)
      000230 C0 E0            [24] 1496 	push	acc
      000232 74 80            [12] 1497 	mov	a,#0x80
      000234 C0 E0            [24] 1498 	push	acc
      000236 12 02 71         [24] 1499 	lcall	_printf
      000239 E5 81            [12] 1500 	mov	a,sp
      00023B 24 FB            [12] 1501 	add	a,#0xfb
      00023D F5 81            [12] 1502 	mov	sp,a
                           00017B  1503 	C$lab3_1.c$129$1$61 ==.
                                   1504 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-1\lab3-1.c:129: PCA0CP2 = 0xFFFF - PW;
      00023F 74 FF            [12] 1505 	mov	a,#0xff
      000241 C3               [12] 1506 	clr	c
      000242 95 0E            [12] 1507 	subb	a,_PW
      000244 F5 EC            [12] 1508 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000246 74 FF            [12] 1509 	mov	a,#0xff
      000248 95 0F            [12] 1510 	subb	a,(_PW + 1)
      00024A F5 FC            [12] 1511 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000188  1512 	C$lab3_1.c$131$1$61 ==.
                           000188  1513 	XG$Set_Pulsewidth$0$0 ==.
      00024C 22               [24] 1514 	ret
                                   1515 	.area CSEG    (CODE)
                                   1516 	.area CONST   (CODE)
                           000000  1517 Flab3_1$__str_0$0$0 == .
      00088C                       1518 ___str_0:
      00088C 45 6D 62 65 64 64 65  1519 	.ascii "Embedded Control Pulsewidth Calibration"
             64 20 43 6F 6E 74 72
             6F 6C 20 50 75 6C 73
             65 77 69 64 74 68 20
             43 61 6C 69 62 72 61
             74 69 6F 6E
      0008B3 0A                    1520 	.db 0x0a
      0008B4 0D                    1521 	.db 0x0d
      0008B5 00                    1522 	.db 0x00
                           00002A  1523 Flab3_1$__str_1$0$0 == .
      0008B6                       1524 ___str_1:
      0008B6 50 6C 75 73 20 6F 72  1525 	.ascii "Plus or Minus please."
             20 4D 69 6E 75 73 20
             70 6C 65 61 73 65 2E
      0008CB 0D                    1526 	.db 0x0d
      0008CC 0A                    1527 	.db 0x0a
      0008CD 00                    1528 	.db 0x00
                           000042  1529 Flab3_1$__str_2$0$0 == .
      0008CE                       1530 ___str_2:
      0008CE 50 57 3A 20 25 75     1531 	.ascii "PW: %u"
      0008D4 0A                    1532 	.db 0x0a
      0008D5 0D                    1533 	.db 0x0d
      0008D6 00                    1534 	.db 0x00
                                   1535 	.area XINIT   (CODE)
                                   1536 	.area CABS    (ABS,CODE)
