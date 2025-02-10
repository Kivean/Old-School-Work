                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module kpdlcdtestPCA
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _aligned_alloc_PARM_2
                                     12 	.globl _main
                                     13 	.globl _read_keypad
                                     14 	.globl _strlen
                                     15 	.globl _getchar_nw
                                     16 	.globl _Sys_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _SYSCLK_Init
                                     19 	.globl _vsprintf
                                     20 	.globl _printf
                                     21 	.globl _BUS_SCL
                                     22 	.globl _BUS_TOE
                                     23 	.globl _BUS_FTE
                                     24 	.globl _BUS_AA
                                     25 	.globl _BUS_INT
                                     26 	.globl _BUS_STOP
                                     27 	.globl _BUS_START
                                     28 	.globl _BUS_EN
                                     29 	.globl _BUS_BUSY
                                     30 	.globl _SPIF
                                     31 	.globl _WCOL
                                     32 	.globl _MODF
                                     33 	.globl _RXOVRN
                                     34 	.globl _TXBSY
                                     35 	.globl _SLVSEL
                                     36 	.globl _MSTEN
                                     37 	.globl _SPIEN
                                     38 	.globl _AD0EN
                                     39 	.globl _ADCEN
                                     40 	.globl _AD0TM
                                     41 	.globl _ADCTM
                                     42 	.globl _AD0INT
                                     43 	.globl _ADCINT
                                     44 	.globl _AD0BUSY
                                     45 	.globl _ADBUSY
                                     46 	.globl _AD0CM1
                                     47 	.globl _ADSTM1
                                     48 	.globl _AD0CM0
                                     49 	.globl _ADSTM0
                                     50 	.globl _AD0WINT
                                     51 	.globl _ADWINT
                                     52 	.globl _AD0LJST
                                     53 	.globl _ADLJST
                                     54 	.globl _CF
                                     55 	.globl _CR
                                     56 	.globl _CCF4
                                     57 	.globl _CCF3
                                     58 	.globl _CCF2
                                     59 	.globl _CCF1
                                     60 	.globl _CCF0
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _TF2
                                     70 	.globl _EXF2
                                     71 	.globl _RCLK
                                     72 	.globl _TCLK
                                     73 	.globl _EXEN2
                                     74 	.globl _TR2
                                     75 	.globl _CT2
                                     76 	.globl _CPRL2
                                     77 	.globl _BUSY
                                     78 	.globl _ENSMB
                                     79 	.globl _STA
                                     80 	.globl _STO
                                     81 	.globl _SI
                                     82 	.globl _AA
                                     83 	.globl _SMBFTE
                                     84 	.globl _SMBTOE
                                     85 	.globl _PT2
                                     86 	.globl _PS
                                     87 	.globl _PS0
                                     88 	.globl _PT1
                                     89 	.globl _PX1
                                     90 	.globl _PT0
                                     91 	.globl _PX0
                                     92 	.globl _P3_7
                                     93 	.globl _P3_6
                                     94 	.globl _P3_5
                                     95 	.globl _P3_4
                                     96 	.globl _P3_3
                                     97 	.globl _P3_2
                                     98 	.globl _P3_1
                                     99 	.globl _P3_0
                                    100 	.globl _EA
                                    101 	.globl _ET2
                                    102 	.globl _ES
                                    103 	.globl _ES0
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _P2_7
                                    109 	.globl _P2_6
                                    110 	.globl _P2_5
                                    111 	.globl _P2_4
                                    112 	.globl _P2_3
                                    113 	.globl _P2_2
                                    114 	.globl _P2_1
                                    115 	.globl _P2_0
                                    116 	.globl _S0MODE
                                    117 	.globl _SM00
                                    118 	.globl _SM0
                                    119 	.globl _SM10
                                    120 	.globl _SM1
                                    121 	.globl _MCE0
                                    122 	.globl _SM20
                                    123 	.globl _SM2
                                    124 	.globl _REN0
                                    125 	.globl _REN
                                    126 	.globl _TB80
                                    127 	.globl _TB8
                                    128 	.globl _RB80
                                    129 	.globl _RB8
                                    130 	.globl _TI0
                                    131 	.globl _TI
                                    132 	.globl _RI0
                                    133 	.globl _RI
                                    134 	.globl _P1_7
                                    135 	.globl _P1_6
                                    136 	.globl _P1_5
                                    137 	.globl _P1_4
                                    138 	.globl _P1_3
                                    139 	.globl _P1_2
                                    140 	.globl _P1_1
                                    141 	.globl _P1_0
                                    142 	.globl _TF1
                                    143 	.globl _TR1
                                    144 	.globl _TF0
                                    145 	.globl _TR0
                                    146 	.globl _IE1
                                    147 	.globl _IT1
                                    148 	.globl _IE0
                                    149 	.globl _IT0
                                    150 	.globl _P0_7
                                    151 	.globl _P0_6
                                    152 	.globl _P0_5
                                    153 	.globl _P0_4
                                    154 	.globl _P0_3
                                    155 	.globl _P0_2
                                    156 	.globl _P0_1
                                    157 	.globl _P0_0
                                    158 	.globl _PCA0CP4
                                    159 	.globl _PCA0CP3
                                    160 	.globl _PCA0CP2
                                    161 	.globl _PCA0CP1
                                    162 	.globl _PCA0CP0
                                    163 	.globl _PCA0
                                    164 	.globl _DAC1
                                    165 	.globl _DAC0
                                    166 	.globl _ADC0LT
                                    167 	.globl _ADC0GT
                                    168 	.globl _ADC0
                                    169 	.globl _RCAP4
                                    170 	.globl _TMR4
                                    171 	.globl _TMR3RL
                                    172 	.globl _TMR3
                                    173 	.globl _RCAP2
                                    174 	.globl _TMR2
                                    175 	.globl _TMR1
                                    176 	.globl _TMR0
                                    177 	.globl _WDTCN
                                    178 	.globl _PCA0CPH4
                                    179 	.globl _PCA0CPH3
                                    180 	.globl _PCA0CPH2
                                    181 	.globl _PCA0CPH1
                                    182 	.globl _PCA0CPH0
                                    183 	.globl _PCA0H
                                    184 	.globl _SPI0CN
                                    185 	.globl _EIP2
                                    186 	.globl _EIP1
                                    187 	.globl _TH4
                                    188 	.globl _TL4
                                    189 	.globl _SADDR1
                                    190 	.globl _SBUF1
                                    191 	.globl _SCON1
                                    192 	.globl _B
                                    193 	.globl _RSTSRC
                                    194 	.globl _PCA0CPL4
                                    195 	.globl _PCA0CPL3
                                    196 	.globl _PCA0CPL2
                                    197 	.globl _PCA0CPL1
                                    198 	.globl _PCA0CPL0
                                    199 	.globl _PCA0L
                                    200 	.globl _ADC0CN
                                    201 	.globl _EIE2
                                    202 	.globl _EIE1
                                    203 	.globl _RCAP4H
                                    204 	.globl _RCAP4L
                                    205 	.globl _XBR2
                                    206 	.globl _XBR1
                                    207 	.globl _XBR0
                                    208 	.globl _ACC
                                    209 	.globl _PCA0CPM4
                                    210 	.globl _PCA0CPM3
                                    211 	.globl _PCA0CPM2
                                    212 	.globl _PCA0CPM1
                                    213 	.globl _PCA0CPM0
                                    214 	.globl _PCA0MD
                                    215 	.globl _PCA0CN
                                    216 	.globl _DAC1CN
                                    217 	.globl _DAC1H
                                    218 	.globl _DAC1L
                                    219 	.globl _DAC0CN
                                    220 	.globl _DAC0H
                                    221 	.globl _DAC0L
                                    222 	.globl _REF0CN
                                    223 	.globl _PSW
                                    224 	.globl _SMB0CR
                                    225 	.globl _TH2
                                    226 	.globl _TL2
                                    227 	.globl _RCAP2H
                                    228 	.globl _RCAP2L
                                    229 	.globl _T4CON
                                    230 	.globl _T2CON
                                    231 	.globl _ADC0LTH
                                    232 	.globl _ADC0LTL
                                    233 	.globl _ADC0GTH
                                    234 	.globl _ADC0GTL
                                    235 	.globl _SMB0ADR
                                    236 	.globl _SMB0DAT
                                    237 	.globl _SMB0STA
                                    238 	.globl _SMB0CN
                                    239 	.globl _ADC0H
                                    240 	.globl _ADC0L
                                    241 	.globl _P1MDIN
                                    242 	.globl _ADC0CF
                                    243 	.globl _AMX0SL
                                    244 	.globl _AMX0CF
                                    245 	.globl _SADEN0
                                    246 	.globl _IP
                                    247 	.globl _FLACL
                                    248 	.globl _FLSCL
                                    249 	.globl _P74OUT
                                    250 	.globl _OSCICN
                                    251 	.globl _OSCXCN
                                    252 	.globl _P3
                                    253 	.globl __XPAGE
                                    254 	.globl _EMI0CN
                                    255 	.globl _SADEN1
                                    256 	.globl _P3IF
                                    257 	.globl _AMX1SL
                                    258 	.globl _ADC1CF
                                    259 	.globl _ADC1CN
                                    260 	.globl _SADDR0
                                    261 	.globl _IE
                                    262 	.globl _P3MDOUT
                                    263 	.globl _PRT3CF
                                    264 	.globl _P2MDOUT
                                    265 	.globl _PRT2CF
                                    266 	.globl _P1MDOUT
                                    267 	.globl _PRT1CF
                                    268 	.globl _P0MDOUT
                                    269 	.globl _PRT0CF
                                    270 	.globl _EMI0CF
                                    271 	.globl _EMI0TC
                                    272 	.globl _P2
                                    273 	.globl _CPT1CN
                                    274 	.globl _CPT0CN
                                    275 	.globl _SPI0CKR
                                    276 	.globl _ADC1
                                    277 	.globl _SPI0DAT
                                    278 	.globl _SPI0CFG
                                    279 	.globl _SBUF0
                                    280 	.globl _SBUF
                                    281 	.globl _SCON0
                                    282 	.globl _SCON
                                    283 	.globl _P7
                                    284 	.globl _TMR3H
                                    285 	.globl _TMR3L
                                    286 	.globl _TMR3RLH
                                    287 	.globl _TMR3RLL
                                    288 	.globl _TMR3CN
                                    289 	.globl _P1
                                    290 	.globl _PSCTL
                                    291 	.globl _CKCON
                                    292 	.globl _TH1
                                    293 	.globl _TH0
                                    294 	.globl _TL1
                                    295 	.globl _TL0
                                    296 	.globl _TMOD
                                    297 	.globl _TCON
                                    298 	.globl _PCON
                                    299 	.globl _P6
                                    300 	.globl _P5
                                    301 	.globl _P4
                                    302 	.globl _DPH
                                    303 	.globl _DPL
                                    304 	.globl _SP
                                    305 	.globl _P0
                                    306 	.globl _nOverflows
                                    307 	.globl _nCounts
                                    308 	.globl _Counts
                                    309 	.globl _i2c_read_data_PARM_4
                                    310 	.globl _i2c_read_data_PARM_3
                                    311 	.globl _i2c_read_data_PARM_2
                                    312 	.globl _i2c_write_data_PARM_4
                                    313 	.globl _i2c_write_data_PARM_3
                                    314 	.globl _i2c_write_data_PARM_2
                                    315 	.globl _Data2
                                    316 	.globl _putchar
                                    317 	.globl _getchar
                                    318 	.globl _lcd_print
                                    319 	.globl _lcd_clear
                                    320 	.globl _kpd_input
                                    321 	.globl _delay_time
                                    322 	.globl _i2c_start
                                    323 	.globl _i2c_write
                                    324 	.globl _i2c_write_and_stop
                                    325 	.globl _i2c_read
                                    326 	.globl _i2c_read_and_stop
                                    327 	.globl _i2c_write_data
                                    328 	.globl _i2c_read_data
                                    329 	.globl _Accel_Init
                                    330 	.globl _Accel_Init_C
                                    331 	.globl _Port_Init
                                    332 	.globl _Interrupt_Init
                                    333 	.globl _PCA_Init
                                    334 	.globl _SMB0_Init
                                    335 	.globl _PCA_ISR
                                    336 	.globl _pause
                                    337 	.globl _wait
                                    338 ;--------------------------------------------------------
                                    339 ; special function registers
                                    340 ;--------------------------------------------------------
                                    341 	.area RSEG    (ABS,DATA)
      000000                        342 	.org 0x0000
                           000080   343 G$P0$0$0 == 0x0080
                           000080   344 _P0	=	0x0080
                           000081   345 G$SP$0$0 == 0x0081
                           000081   346 _SP	=	0x0081
                           000082   347 G$DPL$0$0 == 0x0082
                           000082   348 _DPL	=	0x0082
                           000083   349 G$DPH$0$0 == 0x0083
                           000083   350 _DPH	=	0x0083
                           000084   351 G$P4$0$0 == 0x0084
                           000084   352 _P4	=	0x0084
                           000085   353 G$P5$0$0 == 0x0085
                           000085   354 _P5	=	0x0085
                           000086   355 G$P6$0$0 == 0x0086
                           000086   356 _P6	=	0x0086
                           000087   357 G$PCON$0$0 == 0x0087
                           000087   358 _PCON	=	0x0087
                           000088   359 G$TCON$0$0 == 0x0088
                           000088   360 _TCON	=	0x0088
                           000089   361 G$TMOD$0$0 == 0x0089
                           000089   362 _TMOD	=	0x0089
                           00008A   363 G$TL0$0$0 == 0x008a
                           00008A   364 _TL0	=	0x008a
                           00008B   365 G$TL1$0$0 == 0x008b
                           00008B   366 _TL1	=	0x008b
                           00008C   367 G$TH0$0$0 == 0x008c
                           00008C   368 _TH0	=	0x008c
                           00008D   369 G$TH1$0$0 == 0x008d
                           00008D   370 _TH1	=	0x008d
                           00008E   371 G$CKCON$0$0 == 0x008e
                           00008E   372 _CKCON	=	0x008e
                           00008F   373 G$PSCTL$0$0 == 0x008f
                           00008F   374 _PSCTL	=	0x008f
                           000090   375 G$P1$0$0 == 0x0090
                           000090   376 _P1	=	0x0090
                           000091   377 G$TMR3CN$0$0 == 0x0091
                           000091   378 _TMR3CN	=	0x0091
                           000092   379 G$TMR3RLL$0$0 == 0x0092
                           000092   380 _TMR3RLL	=	0x0092
                           000093   381 G$TMR3RLH$0$0 == 0x0093
                           000093   382 _TMR3RLH	=	0x0093
                           000094   383 G$TMR3L$0$0 == 0x0094
                           000094   384 _TMR3L	=	0x0094
                           000095   385 G$TMR3H$0$0 == 0x0095
                           000095   386 _TMR3H	=	0x0095
                           000096   387 G$P7$0$0 == 0x0096
                           000096   388 _P7	=	0x0096
                           000098   389 G$SCON$0$0 == 0x0098
                           000098   390 _SCON	=	0x0098
                           000098   391 G$SCON0$0$0 == 0x0098
                           000098   392 _SCON0	=	0x0098
                           000099   393 G$SBUF$0$0 == 0x0099
                           000099   394 _SBUF	=	0x0099
                           000099   395 G$SBUF0$0$0 == 0x0099
                           000099   396 _SBUF0	=	0x0099
                           00009A   397 G$SPI0CFG$0$0 == 0x009a
                           00009A   398 _SPI0CFG	=	0x009a
                           00009B   399 G$SPI0DAT$0$0 == 0x009b
                           00009B   400 _SPI0DAT	=	0x009b
                           00009C   401 G$ADC1$0$0 == 0x009c
                           00009C   402 _ADC1	=	0x009c
                           00009D   403 G$SPI0CKR$0$0 == 0x009d
                           00009D   404 _SPI0CKR	=	0x009d
                           00009E   405 G$CPT0CN$0$0 == 0x009e
                           00009E   406 _CPT0CN	=	0x009e
                           00009F   407 G$CPT1CN$0$0 == 0x009f
                           00009F   408 _CPT1CN	=	0x009f
                           0000A0   409 G$P2$0$0 == 0x00a0
                           0000A0   410 _P2	=	0x00a0
                           0000A1   411 G$EMI0TC$0$0 == 0x00a1
                           0000A1   412 _EMI0TC	=	0x00a1
                           0000A3   413 G$EMI0CF$0$0 == 0x00a3
                           0000A3   414 _EMI0CF	=	0x00a3
                           0000A4   415 G$PRT0CF$0$0 == 0x00a4
                           0000A4   416 _PRT0CF	=	0x00a4
                           0000A4   417 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   418 _P0MDOUT	=	0x00a4
                           0000A5   419 G$PRT1CF$0$0 == 0x00a5
                           0000A5   420 _PRT1CF	=	0x00a5
                           0000A5   421 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   422 _P1MDOUT	=	0x00a5
                           0000A6   423 G$PRT2CF$0$0 == 0x00a6
                           0000A6   424 _PRT2CF	=	0x00a6
                           0000A6   425 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   426 _P2MDOUT	=	0x00a6
                           0000A7   427 G$PRT3CF$0$0 == 0x00a7
                           0000A7   428 _PRT3CF	=	0x00a7
                           0000A7   429 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   430 _P3MDOUT	=	0x00a7
                           0000A8   431 G$IE$0$0 == 0x00a8
                           0000A8   432 _IE	=	0x00a8
                           0000A9   433 G$SADDR0$0$0 == 0x00a9
                           0000A9   434 _SADDR0	=	0x00a9
                           0000AA   435 G$ADC1CN$0$0 == 0x00aa
                           0000AA   436 _ADC1CN	=	0x00aa
                           0000AB   437 G$ADC1CF$0$0 == 0x00ab
                           0000AB   438 _ADC1CF	=	0x00ab
                           0000AC   439 G$AMX1SL$0$0 == 0x00ac
                           0000AC   440 _AMX1SL	=	0x00ac
                           0000AD   441 G$P3IF$0$0 == 0x00ad
                           0000AD   442 _P3IF	=	0x00ad
                           0000AE   443 G$SADEN1$0$0 == 0x00ae
                           0000AE   444 _SADEN1	=	0x00ae
                           0000AF   445 G$EMI0CN$0$0 == 0x00af
                           0000AF   446 _EMI0CN	=	0x00af
                           0000AF   447 G$_XPAGE$0$0 == 0x00af
                           0000AF   448 __XPAGE	=	0x00af
                           0000B0   449 G$P3$0$0 == 0x00b0
                           0000B0   450 _P3	=	0x00b0
                           0000B1   451 G$OSCXCN$0$0 == 0x00b1
                           0000B1   452 _OSCXCN	=	0x00b1
                           0000B2   453 G$OSCICN$0$0 == 0x00b2
                           0000B2   454 _OSCICN	=	0x00b2
                           0000B5   455 G$P74OUT$0$0 == 0x00b5
                           0000B5   456 _P74OUT	=	0x00b5
                           0000B6   457 G$FLSCL$0$0 == 0x00b6
                           0000B6   458 _FLSCL	=	0x00b6
                           0000B7   459 G$FLACL$0$0 == 0x00b7
                           0000B7   460 _FLACL	=	0x00b7
                           0000B8   461 G$IP$0$0 == 0x00b8
                           0000B8   462 _IP	=	0x00b8
                           0000B9   463 G$SADEN0$0$0 == 0x00b9
                           0000B9   464 _SADEN0	=	0x00b9
                           0000BA   465 G$AMX0CF$0$0 == 0x00ba
                           0000BA   466 _AMX0CF	=	0x00ba
                           0000BB   467 G$AMX0SL$0$0 == 0x00bb
                           0000BB   468 _AMX0SL	=	0x00bb
                           0000BC   469 G$ADC0CF$0$0 == 0x00bc
                           0000BC   470 _ADC0CF	=	0x00bc
                           0000BD   471 G$P1MDIN$0$0 == 0x00bd
                           0000BD   472 _P1MDIN	=	0x00bd
                           0000BE   473 G$ADC0L$0$0 == 0x00be
                           0000BE   474 _ADC0L	=	0x00be
                           0000BF   475 G$ADC0H$0$0 == 0x00bf
                           0000BF   476 _ADC0H	=	0x00bf
                           0000C0   477 G$SMB0CN$0$0 == 0x00c0
                           0000C0   478 _SMB0CN	=	0x00c0
                           0000C1   479 G$SMB0STA$0$0 == 0x00c1
                           0000C1   480 _SMB0STA	=	0x00c1
                           0000C2   481 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   482 _SMB0DAT	=	0x00c2
                           0000C3   483 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   484 _SMB0ADR	=	0x00c3
                           0000C4   485 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   486 _ADC0GTL	=	0x00c4
                           0000C5   487 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   488 _ADC0GTH	=	0x00c5
                           0000C6   489 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   490 _ADC0LTL	=	0x00c6
                           0000C7   491 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   492 _ADC0LTH	=	0x00c7
                           0000C8   493 G$T2CON$0$0 == 0x00c8
                           0000C8   494 _T2CON	=	0x00c8
                           0000C9   495 G$T4CON$0$0 == 0x00c9
                           0000C9   496 _T4CON	=	0x00c9
                           0000CA   497 G$RCAP2L$0$0 == 0x00ca
                           0000CA   498 _RCAP2L	=	0x00ca
                           0000CB   499 G$RCAP2H$0$0 == 0x00cb
                           0000CB   500 _RCAP2H	=	0x00cb
                           0000CC   501 G$TL2$0$0 == 0x00cc
                           0000CC   502 _TL2	=	0x00cc
                           0000CD   503 G$TH2$0$0 == 0x00cd
                           0000CD   504 _TH2	=	0x00cd
                           0000CF   505 G$SMB0CR$0$0 == 0x00cf
                           0000CF   506 _SMB0CR	=	0x00cf
                           0000D0   507 G$PSW$0$0 == 0x00d0
                           0000D0   508 _PSW	=	0x00d0
                           0000D1   509 G$REF0CN$0$0 == 0x00d1
                           0000D1   510 _REF0CN	=	0x00d1
                           0000D2   511 G$DAC0L$0$0 == 0x00d2
                           0000D2   512 _DAC0L	=	0x00d2
                           0000D3   513 G$DAC0H$0$0 == 0x00d3
                           0000D3   514 _DAC0H	=	0x00d3
                           0000D4   515 G$DAC0CN$0$0 == 0x00d4
                           0000D4   516 _DAC0CN	=	0x00d4
                           0000D5   517 G$DAC1L$0$0 == 0x00d5
                           0000D5   518 _DAC1L	=	0x00d5
                           0000D6   519 G$DAC1H$0$0 == 0x00d6
                           0000D6   520 _DAC1H	=	0x00d6
                           0000D7   521 G$DAC1CN$0$0 == 0x00d7
                           0000D7   522 _DAC1CN	=	0x00d7
                           0000D8   523 G$PCA0CN$0$0 == 0x00d8
                           0000D8   524 _PCA0CN	=	0x00d8
                           0000D9   525 G$PCA0MD$0$0 == 0x00d9
                           0000D9   526 _PCA0MD	=	0x00d9
                           0000DA   527 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   528 _PCA0CPM0	=	0x00da
                           0000DB   529 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   530 _PCA0CPM1	=	0x00db
                           0000DC   531 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   532 _PCA0CPM2	=	0x00dc
                           0000DD   533 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   534 _PCA0CPM3	=	0x00dd
                           0000DE   535 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   536 _PCA0CPM4	=	0x00de
                           0000E0   537 G$ACC$0$0 == 0x00e0
                           0000E0   538 _ACC	=	0x00e0
                           0000E1   539 G$XBR0$0$0 == 0x00e1
                           0000E1   540 _XBR0	=	0x00e1
                           0000E2   541 G$XBR1$0$0 == 0x00e2
                           0000E2   542 _XBR1	=	0x00e2
                           0000E3   543 G$XBR2$0$0 == 0x00e3
                           0000E3   544 _XBR2	=	0x00e3
                           0000E4   545 G$RCAP4L$0$0 == 0x00e4
                           0000E4   546 _RCAP4L	=	0x00e4
                           0000E5   547 G$RCAP4H$0$0 == 0x00e5
                           0000E5   548 _RCAP4H	=	0x00e5
                           0000E6   549 G$EIE1$0$0 == 0x00e6
                           0000E6   550 _EIE1	=	0x00e6
                           0000E7   551 G$EIE2$0$0 == 0x00e7
                           0000E7   552 _EIE2	=	0x00e7
                           0000E8   553 G$ADC0CN$0$0 == 0x00e8
                           0000E8   554 _ADC0CN	=	0x00e8
                           0000E9   555 G$PCA0L$0$0 == 0x00e9
                           0000E9   556 _PCA0L	=	0x00e9
                           0000EA   557 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   558 _PCA0CPL0	=	0x00ea
                           0000EB   559 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   560 _PCA0CPL1	=	0x00eb
                           0000EC   561 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   562 _PCA0CPL2	=	0x00ec
                           0000ED   563 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   564 _PCA0CPL3	=	0x00ed
                           0000EE   565 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   566 _PCA0CPL4	=	0x00ee
                           0000EF   567 G$RSTSRC$0$0 == 0x00ef
                           0000EF   568 _RSTSRC	=	0x00ef
                           0000F0   569 G$B$0$0 == 0x00f0
                           0000F0   570 _B	=	0x00f0
                           0000F1   571 G$SCON1$0$0 == 0x00f1
                           0000F1   572 _SCON1	=	0x00f1
                           0000F2   573 G$SBUF1$0$0 == 0x00f2
                           0000F2   574 _SBUF1	=	0x00f2
                           0000F3   575 G$SADDR1$0$0 == 0x00f3
                           0000F3   576 _SADDR1	=	0x00f3
                           0000F4   577 G$TL4$0$0 == 0x00f4
                           0000F4   578 _TL4	=	0x00f4
                           0000F5   579 G$TH4$0$0 == 0x00f5
                           0000F5   580 _TH4	=	0x00f5
                           0000F6   581 G$EIP1$0$0 == 0x00f6
                           0000F6   582 _EIP1	=	0x00f6
                           0000F7   583 G$EIP2$0$0 == 0x00f7
                           0000F7   584 _EIP2	=	0x00f7
                           0000F8   585 G$SPI0CN$0$0 == 0x00f8
                           0000F8   586 _SPI0CN	=	0x00f8
                           0000F9   587 G$PCA0H$0$0 == 0x00f9
                           0000F9   588 _PCA0H	=	0x00f9
                           0000FA   589 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   590 _PCA0CPH0	=	0x00fa
                           0000FB   591 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   592 _PCA0CPH1	=	0x00fb
                           0000FC   593 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   594 _PCA0CPH2	=	0x00fc
                           0000FD   595 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   596 _PCA0CPH3	=	0x00fd
                           0000FE   597 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   598 _PCA0CPH4	=	0x00fe
                           0000FF   599 G$WDTCN$0$0 == 0x00ff
                           0000FF   600 _WDTCN	=	0x00ff
                           008C8A   601 G$TMR0$0$0 == 0x8c8a
                           008C8A   602 _TMR0	=	0x8c8a
                           008D8B   603 G$TMR1$0$0 == 0x8d8b
                           008D8B   604 _TMR1	=	0x8d8b
                           00CDCC   605 G$TMR2$0$0 == 0xcdcc
                           00CDCC   606 _TMR2	=	0xcdcc
                           00CBCA   607 G$RCAP2$0$0 == 0xcbca
                           00CBCA   608 _RCAP2	=	0xcbca
                           009594   609 G$TMR3$0$0 == 0x9594
                           009594   610 _TMR3	=	0x9594
                           009392   611 G$TMR3RL$0$0 == 0x9392
                           009392   612 _TMR3RL	=	0x9392
                           00F5F4   613 G$TMR4$0$0 == 0xf5f4
                           00F5F4   614 _TMR4	=	0xf5f4
                           00E5E4   615 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   616 _RCAP4	=	0xe5e4
                           00BFBE   617 G$ADC0$0$0 == 0xbfbe
                           00BFBE   618 _ADC0	=	0xbfbe
                           00C5C4   619 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   620 _ADC0GT	=	0xc5c4
                           00C7C6   621 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   622 _ADC0LT	=	0xc7c6
                           00D3D2   623 G$DAC0$0$0 == 0xd3d2
                           00D3D2   624 _DAC0	=	0xd3d2
                           00D6D5   625 G$DAC1$0$0 == 0xd6d5
                           00D6D5   626 _DAC1	=	0xd6d5
                           00F9E9   627 G$PCA0$0$0 == 0xf9e9
                           00F9E9   628 _PCA0	=	0xf9e9
                           00FAEA   629 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   630 _PCA0CP0	=	0xfaea
                           00FBEB   631 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   632 _PCA0CP1	=	0xfbeb
                           00FCEC   633 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   634 _PCA0CP2	=	0xfcec
                           00FDED   635 G$PCA0CP3$0$0 == 0xfded
                           00FDED   636 _PCA0CP3	=	0xfded
                           00FEEE   637 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   638 _PCA0CP4	=	0xfeee
                                    639 ;--------------------------------------------------------
                                    640 ; special function bits
                                    641 ;--------------------------------------------------------
                                    642 	.area RSEG    (ABS,DATA)
      000000                        643 	.org 0x0000
                           000080   644 G$P0_0$0$0 == 0x0080
                           000080   645 _P0_0	=	0x0080
                           000081   646 G$P0_1$0$0 == 0x0081
                           000081   647 _P0_1	=	0x0081
                           000082   648 G$P0_2$0$0 == 0x0082
                           000082   649 _P0_2	=	0x0082
                           000083   650 G$P0_3$0$0 == 0x0083
                           000083   651 _P0_3	=	0x0083
                           000084   652 G$P0_4$0$0 == 0x0084
                           000084   653 _P0_4	=	0x0084
                           000085   654 G$P0_5$0$0 == 0x0085
                           000085   655 _P0_5	=	0x0085
                           000086   656 G$P0_6$0$0 == 0x0086
                           000086   657 _P0_6	=	0x0086
                           000087   658 G$P0_7$0$0 == 0x0087
                           000087   659 _P0_7	=	0x0087
                           000088   660 G$IT0$0$0 == 0x0088
                           000088   661 _IT0	=	0x0088
                           000089   662 G$IE0$0$0 == 0x0089
                           000089   663 _IE0	=	0x0089
                           00008A   664 G$IT1$0$0 == 0x008a
                           00008A   665 _IT1	=	0x008a
                           00008B   666 G$IE1$0$0 == 0x008b
                           00008B   667 _IE1	=	0x008b
                           00008C   668 G$TR0$0$0 == 0x008c
                           00008C   669 _TR0	=	0x008c
                           00008D   670 G$TF0$0$0 == 0x008d
                           00008D   671 _TF0	=	0x008d
                           00008E   672 G$TR1$0$0 == 0x008e
                           00008E   673 _TR1	=	0x008e
                           00008F   674 G$TF1$0$0 == 0x008f
                           00008F   675 _TF1	=	0x008f
                           000090   676 G$P1_0$0$0 == 0x0090
                           000090   677 _P1_0	=	0x0090
                           000091   678 G$P1_1$0$0 == 0x0091
                           000091   679 _P1_1	=	0x0091
                           000092   680 G$P1_2$0$0 == 0x0092
                           000092   681 _P1_2	=	0x0092
                           000093   682 G$P1_3$0$0 == 0x0093
                           000093   683 _P1_3	=	0x0093
                           000094   684 G$P1_4$0$0 == 0x0094
                           000094   685 _P1_4	=	0x0094
                           000095   686 G$P1_5$0$0 == 0x0095
                           000095   687 _P1_5	=	0x0095
                           000096   688 G$P1_6$0$0 == 0x0096
                           000096   689 _P1_6	=	0x0096
                           000097   690 G$P1_7$0$0 == 0x0097
                           000097   691 _P1_7	=	0x0097
                           000098   692 G$RI$0$0 == 0x0098
                           000098   693 _RI	=	0x0098
                           000098   694 G$RI0$0$0 == 0x0098
                           000098   695 _RI0	=	0x0098
                           000099   696 G$TI$0$0 == 0x0099
                           000099   697 _TI	=	0x0099
                           000099   698 G$TI0$0$0 == 0x0099
                           000099   699 _TI0	=	0x0099
                           00009A   700 G$RB8$0$0 == 0x009a
                           00009A   701 _RB8	=	0x009a
                           00009A   702 G$RB80$0$0 == 0x009a
                           00009A   703 _RB80	=	0x009a
                           00009B   704 G$TB8$0$0 == 0x009b
                           00009B   705 _TB8	=	0x009b
                           00009B   706 G$TB80$0$0 == 0x009b
                           00009B   707 _TB80	=	0x009b
                           00009C   708 G$REN$0$0 == 0x009c
                           00009C   709 _REN	=	0x009c
                           00009C   710 G$REN0$0$0 == 0x009c
                           00009C   711 _REN0	=	0x009c
                           00009D   712 G$SM2$0$0 == 0x009d
                           00009D   713 _SM2	=	0x009d
                           00009D   714 G$SM20$0$0 == 0x009d
                           00009D   715 _SM20	=	0x009d
                           00009D   716 G$MCE0$0$0 == 0x009d
                           00009D   717 _MCE0	=	0x009d
                           00009E   718 G$SM1$0$0 == 0x009e
                           00009E   719 _SM1	=	0x009e
                           00009E   720 G$SM10$0$0 == 0x009e
                           00009E   721 _SM10	=	0x009e
                           00009F   722 G$SM0$0$0 == 0x009f
                           00009F   723 _SM0	=	0x009f
                           00009F   724 G$SM00$0$0 == 0x009f
                           00009F   725 _SM00	=	0x009f
                           00009F   726 G$S0MODE$0$0 == 0x009f
                           00009F   727 _S0MODE	=	0x009f
                           0000A0   728 G$P2_0$0$0 == 0x00a0
                           0000A0   729 _P2_0	=	0x00a0
                           0000A1   730 G$P2_1$0$0 == 0x00a1
                           0000A1   731 _P2_1	=	0x00a1
                           0000A2   732 G$P2_2$0$0 == 0x00a2
                           0000A2   733 _P2_2	=	0x00a2
                           0000A3   734 G$P2_3$0$0 == 0x00a3
                           0000A3   735 _P2_3	=	0x00a3
                           0000A4   736 G$P2_4$0$0 == 0x00a4
                           0000A4   737 _P2_4	=	0x00a4
                           0000A5   738 G$P2_5$0$0 == 0x00a5
                           0000A5   739 _P2_5	=	0x00a5
                           0000A6   740 G$P2_6$0$0 == 0x00a6
                           0000A6   741 _P2_6	=	0x00a6
                           0000A7   742 G$P2_7$0$0 == 0x00a7
                           0000A7   743 _P2_7	=	0x00a7
                           0000A8   744 G$EX0$0$0 == 0x00a8
                           0000A8   745 _EX0	=	0x00a8
                           0000A9   746 G$ET0$0$0 == 0x00a9
                           0000A9   747 _ET0	=	0x00a9
                           0000AA   748 G$EX1$0$0 == 0x00aa
                           0000AA   749 _EX1	=	0x00aa
                           0000AB   750 G$ET1$0$0 == 0x00ab
                           0000AB   751 _ET1	=	0x00ab
                           0000AC   752 G$ES0$0$0 == 0x00ac
                           0000AC   753 _ES0	=	0x00ac
                           0000AC   754 G$ES$0$0 == 0x00ac
                           0000AC   755 _ES	=	0x00ac
                           0000AD   756 G$ET2$0$0 == 0x00ad
                           0000AD   757 _ET2	=	0x00ad
                           0000AF   758 G$EA$0$0 == 0x00af
                           0000AF   759 _EA	=	0x00af
                           0000B0   760 G$P3_0$0$0 == 0x00b0
                           0000B0   761 _P3_0	=	0x00b0
                           0000B1   762 G$P3_1$0$0 == 0x00b1
                           0000B1   763 _P3_1	=	0x00b1
                           0000B2   764 G$P3_2$0$0 == 0x00b2
                           0000B2   765 _P3_2	=	0x00b2
                           0000B3   766 G$P3_3$0$0 == 0x00b3
                           0000B3   767 _P3_3	=	0x00b3
                           0000B4   768 G$P3_4$0$0 == 0x00b4
                           0000B4   769 _P3_4	=	0x00b4
                           0000B5   770 G$P3_5$0$0 == 0x00b5
                           0000B5   771 _P3_5	=	0x00b5
                           0000B6   772 G$P3_6$0$0 == 0x00b6
                           0000B6   773 _P3_6	=	0x00b6
                           0000B7   774 G$P3_7$0$0 == 0x00b7
                           0000B7   775 _P3_7	=	0x00b7
                           0000B8   776 G$PX0$0$0 == 0x00b8
                           0000B8   777 _PX0	=	0x00b8
                           0000B9   778 G$PT0$0$0 == 0x00b9
                           0000B9   779 _PT0	=	0x00b9
                           0000BA   780 G$PX1$0$0 == 0x00ba
                           0000BA   781 _PX1	=	0x00ba
                           0000BB   782 G$PT1$0$0 == 0x00bb
                           0000BB   783 _PT1	=	0x00bb
                           0000BC   784 G$PS0$0$0 == 0x00bc
                           0000BC   785 _PS0	=	0x00bc
                           0000BC   786 G$PS$0$0 == 0x00bc
                           0000BC   787 _PS	=	0x00bc
                           0000BD   788 G$PT2$0$0 == 0x00bd
                           0000BD   789 _PT2	=	0x00bd
                           0000C0   790 G$SMBTOE$0$0 == 0x00c0
                           0000C0   791 _SMBTOE	=	0x00c0
                           0000C1   792 G$SMBFTE$0$0 == 0x00c1
                           0000C1   793 _SMBFTE	=	0x00c1
                           0000C2   794 G$AA$0$0 == 0x00c2
                           0000C2   795 _AA	=	0x00c2
                           0000C3   796 G$SI$0$0 == 0x00c3
                           0000C3   797 _SI	=	0x00c3
                           0000C4   798 G$STO$0$0 == 0x00c4
                           0000C4   799 _STO	=	0x00c4
                           0000C5   800 G$STA$0$0 == 0x00c5
                           0000C5   801 _STA	=	0x00c5
                           0000C6   802 G$ENSMB$0$0 == 0x00c6
                           0000C6   803 _ENSMB	=	0x00c6
                           0000C7   804 G$BUSY$0$0 == 0x00c7
                           0000C7   805 _BUSY	=	0x00c7
                           0000C8   806 G$CPRL2$0$0 == 0x00c8
                           0000C8   807 _CPRL2	=	0x00c8
                           0000C9   808 G$CT2$0$0 == 0x00c9
                           0000C9   809 _CT2	=	0x00c9
                           0000CA   810 G$TR2$0$0 == 0x00ca
                           0000CA   811 _TR2	=	0x00ca
                           0000CB   812 G$EXEN2$0$0 == 0x00cb
                           0000CB   813 _EXEN2	=	0x00cb
                           0000CC   814 G$TCLK$0$0 == 0x00cc
                           0000CC   815 _TCLK	=	0x00cc
                           0000CD   816 G$RCLK$0$0 == 0x00cd
                           0000CD   817 _RCLK	=	0x00cd
                           0000CE   818 G$EXF2$0$0 == 0x00ce
                           0000CE   819 _EXF2	=	0x00ce
                           0000CF   820 G$TF2$0$0 == 0x00cf
                           0000CF   821 _TF2	=	0x00cf
                           0000D0   822 G$P$0$0 == 0x00d0
                           0000D0   823 _P	=	0x00d0
                           0000D1   824 G$F1$0$0 == 0x00d1
                           0000D1   825 _F1	=	0x00d1
                           0000D2   826 G$OV$0$0 == 0x00d2
                           0000D2   827 _OV	=	0x00d2
                           0000D3   828 G$RS0$0$0 == 0x00d3
                           0000D3   829 _RS0	=	0x00d3
                           0000D4   830 G$RS1$0$0 == 0x00d4
                           0000D4   831 _RS1	=	0x00d4
                           0000D5   832 G$F0$0$0 == 0x00d5
                           0000D5   833 _F0	=	0x00d5
                           0000D6   834 G$AC$0$0 == 0x00d6
                           0000D6   835 _AC	=	0x00d6
                           0000D7   836 G$CY$0$0 == 0x00d7
                           0000D7   837 _CY	=	0x00d7
                           0000D8   838 G$CCF0$0$0 == 0x00d8
                           0000D8   839 _CCF0	=	0x00d8
                           0000D9   840 G$CCF1$0$0 == 0x00d9
                           0000D9   841 _CCF1	=	0x00d9
                           0000DA   842 G$CCF2$0$0 == 0x00da
                           0000DA   843 _CCF2	=	0x00da
                           0000DB   844 G$CCF3$0$0 == 0x00db
                           0000DB   845 _CCF3	=	0x00db
                           0000DC   846 G$CCF4$0$0 == 0x00dc
                           0000DC   847 _CCF4	=	0x00dc
                           0000DE   848 G$CR$0$0 == 0x00de
                           0000DE   849 _CR	=	0x00de
                           0000DF   850 G$CF$0$0 == 0x00df
                           0000DF   851 _CF	=	0x00df
                           0000E8   852 G$ADLJST$0$0 == 0x00e8
                           0000E8   853 _ADLJST	=	0x00e8
                           0000E8   854 G$AD0LJST$0$0 == 0x00e8
                           0000E8   855 _AD0LJST	=	0x00e8
                           0000E9   856 G$ADWINT$0$0 == 0x00e9
                           0000E9   857 _ADWINT	=	0x00e9
                           0000E9   858 G$AD0WINT$0$0 == 0x00e9
                           0000E9   859 _AD0WINT	=	0x00e9
                           0000EA   860 G$ADSTM0$0$0 == 0x00ea
                           0000EA   861 _ADSTM0	=	0x00ea
                           0000EA   862 G$AD0CM0$0$0 == 0x00ea
                           0000EA   863 _AD0CM0	=	0x00ea
                           0000EB   864 G$ADSTM1$0$0 == 0x00eb
                           0000EB   865 _ADSTM1	=	0x00eb
                           0000EB   866 G$AD0CM1$0$0 == 0x00eb
                           0000EB   867 _AD0CM1	=	0x00eb
                           0000EC   868 G$ADBUSY$0$0 == 0x00ec
                           0000EC   869 _ADBUSY	=	0x00ec
                           0000EC   870 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   871 _AD0BUSY	=	0x00ec
                           0000ED   872 G$ADCINT$0$0 == 0x00ed
                           0000ED   873 _ADCINT	=	0x00ed
                           0000ED   874 G$AD0INT$0$0 == 0x00ed
                           0000ED   875 _AD0INT	=	0x00ed
                           0000EE   876 G$ADCTM$0$0 == 0x00ee
                           0000EE   877 _ADCTM	=	0x00ee
                           0000EE   878 G$AD0TM$0$0 == 0x00ee
                           0000EE   879 _AD0TM	=	0x00ee
                           0000EF   880 G$ADCEN$0$0 == 0x00ef
                           0000EF   881 _ADCEN	=	0x00ef
                           0000EF   882 G$AD0EN$0$0 == 0x00ef
                           0000EF   883 _AD0EN	=	0x00ef
                           0000F8   884 G$SPIEN$0$0 == 0x00f8
                           0000F8   885 _SPIEN	=	0x00f8
                           0000F9   886 G$MSTEN$0$0 == 0x00f9
                           0000F9   887 _MSTEN	=	0x00f9
                           0000FA   888 G$SLVSEL$0$0 == 0x00fa
                           0000FA   889 _SLVSEL	=	0x00fa
                           0000FB   890 G$TXBSY$0$0 == 0x00fb
                           0000FB   891 _TXBSY	=	0x00fb
                           0000FC   892 G$RXOVRN$0$0 == 0x00fc
                           0000FC   893 _RXOVRN	=	0x00fc
                           0000FD   894 G$MODF$0$0 == 0x00fd
                           0000FD   895 _MODF	=	0x00fd
                           0000FE   896 G$WCOL$0$0 == 0x00fe
                           0000FE   897 _WCOL	=	0x00fe
                           0000FF   898 G$SPIF$0$0 == 0x00ff
                           0000FF   899 _SPIF	=	0x00ff
                           0000C7   900 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   901 _BUS_BUSY	=	0x00c7
                           0000C6   902 G$BUS_EN$0$0 == 0x00c6
                           0000C6   903 _BUS_EN	=	0x00c6
                           0000C5   904 G$BUS_START$0$0 == 0x00c5
                           0000C5   905 _BUS_START	=	0x00c5
                           0000C4   906 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   907 _BUS_STOP	=	0x00c4
                           0000C3   908 G$BUS_INT$0$0 == 0x00c3
                           0000C3   909 _BUS_INT	=	0x00c3
                           0000C2   910 G$BUS_AA$0$0 == 0x00c2
                           0000C2   911 _BUS_AA	=	0x00c2
                           0000C1   912 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   913 _BUS_FTE	=	0x00c1
                           0000C0   914 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   915 _BUS_TOE	=	0x00c0
                           000083   916 G$BUS_SCL$0$0 == 0x0083
                           000083   917 _BUS_SCL	=	0x0083
                                    918 ;--------------------------------------------------------
                                    919 ; overlayable register banks
                                    920 ;--------------------------------------------------------
                                    921 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        922 	.ds 8
                                    923 ;--------------------------------------------------------
                                    924 ; internal ram data
                                    925 ;--------------------------------------------------------
                                    926 	.area DSEG    (DATA)
                           000000   927 G$Data2$0$0==.
      000008                        928 _Data2::
      000008                        929 	.ds 3
                           000003   930 LkpdlcdtestPCA.lcd_clear$NumBytes$1$85==.
      00000B                        931 _lcd_clear_NumBytes_1_85:
      00000B                        932 	.ds 1
                           000004   933 LkpdlcdtestPCA.lcd_clear$Cmd$1$85==.
      00000C                        934 _lcd_clear_Cmd_1_85:
      00000C                        935 	.ds 2
                           000006   936 LkpdlcdtestPCA.read_keypad$Data$1$86==.
      00000E                        937 _read_keypad_Data_1_86:
      00000E                        938 	.ds 2
                           000008   939 LkpdlcdtestPCA.i2c_write_data$start_reg$1$105==.
      000010                        940 _i2c_write_data_PARM_2:
      000010                        941 	.ds 1
                           000009   942 LkpdlcdtestPCA.i2c_write_data$buffer$1$105==.
      000011                        943 _i2c_write_data_PARM_3:
      000011                        944 	.ds 3
                           00000C   945 LkpdlcdtestPCA.i2c_write_data$num_bytes$1$105==.
      000014                        946 _i2c_write_data_PARM_4:
      000014                        947 	.ds 1
                           00000D   948 LkpdlcdtestPCA.i2c_read_data$start_reg$1$107==.
      000015                        949 _i2c_read_data_PARM_2:
      000015                        950 	.ds 1
                           00000E   951 LkpdlcdtestPCA.i2c_read_data$buffer$1$107==.
      000016                        952 _i2c_read_data_PARM_3:
      000016                        953 	.ds 3
                           000011   954 LkpdlcdtestPCA.i2c_read_data$num_bytes$1$107==.
      000019                        955 _i2c_read_data_PARM_4:
      000019                        956 	.ds 1
                           000012   957 G$Counts$0$0==.
      00001A                        958 _Counts::
      00001A                        959 	.ds 2
                           000014   960 G$nCounts$0$0==.
      00001C                        961 _nCounts::
      00001C                        962 	.ds 2
                           000016   963 G$nOverflows$0$0==.
      00001E                        964 _nOverflows::
      00001E                        965 	.ds 2
                                    966 ;--------------------------------------------------------
                                    967 ; overlayable items in internal ram 
                                    968 ;--------------------------------------------------------
                                    969 	.area	OSEG    (OVR,DATA)
                           000000   970 LkpdlcdtestPCA.aligned_alloc$size$1$26==.
      000045                        971 _aligned_alloc_PARM_2:
      000045                        972 	.ds 2
                                    973 	.area	OSEG    (OVR,DATA)
                                    974 	.area	OSEG    (OVR,DATA)
                                    975 	.area	OSEG    (OVR,DATA)
                                    976 	.area	OSEG    (OVR,DATA)
                                    977 	.area	OSEG    (OVR,DATA)
                                    978 	.area	OSEG    (OVR,DATA)
                                    979 ;--------------------------------------------------------
                                    980 ; Stack segment in internal ram 
                                    981 ;--------------------------------------------------------
                                    982 	.area	SSEG
      000051                        983 __start__stack:
      000051                        984 	.ds	1
                                    985 
                                    986 ;--------------------------------------------------------
                                    987 ; indirectly addressable internal ram data
                                    988 ;--------------------------------------------------------
                                    989 	.area ISEG    (DATA)
                                    990 ;--------------------------------------------------------
                                    991 ; absolute internal ram data
                                    992 ;--------------------------------------------------------
                                    993 	.area IABS    (ABS,DATA)
                                    994 	.area IABS    (ABS,DATA)
                                    995 ;--------------------------------------------------------
                                    996 ; bit data
                                    997 ;--------------------------------------------------------
                                    998 	.area BSEG    (BIT)
                                    999 ;--------------------------------------------------------
                                   1000 ; paged external ram data
                                   1001 ;--------------------------------------------------------
                                   1002 	.area PSEG    (PAG,XDATA)
                                   1003 ;--------------------------------------------------------
                                   1004 ; external ram data
                                   1005 ;--------------------------------------------------------
                                   1006 	.area XSEG    (XDATA)
                           000000  1007 LkpdlcdtestPCA.lcd_print$text$1$81==.
      000001                       1008 _lcd_print_text_1_81:
      000001                       1009 	.ds 80
                                   1010 ;--------------------------------------------------------
                                   1011 ; absolute external ram data
                                   1012 ;--------------------------------------------------------
                                   1013 	.area XABS    (ABS,XDATA)
                                   1014 ;--------------------------------------------------------
                                   1015 ; external initialized ram data
                                   1016 ;--------------------------------------------------------
                                   1017 	.area XISEG   (XDATA)
                                   1018 	.area HOME    (CODE)
                                   1019 	.area GSINIT0 (CODE)
                                   1020 	.area GSINIT1 (CODE)
                                   1021 	.area GSINIT2 (CODE)
                                   1022 	.area GSINIT3 (CODE)
                                   1023 	.area GSINIT4 (CODE)
                                   1024 	.area GSINIT5 (CODE)
                                   1025 	.area GSINIT  (CODE)
                                   1026 	.area GSFINAL (CODE)
                                   1027 	.area CSEG    (CODE)
                                   1028 ;--------------------------------------------------------
                                   1029 ; interrupt vector 
                                   1030 ;--------------------------------------------------------
                                   1031 	.area HOME    (CODE)
      000000                       1032 __interrupt_vect:
      000000 02 00 51         [24] 1033 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1034 	reti
      000004                       1035 	.ds	7
      00000B 32               [24] 1036 	reti
      00000C                       1037 	.ds	7
      000013 32               [24] 1038 	reti
      000014                       1039 	.ds	7
      00001B 32               [24] 1040 	reti
      00001C                       1041 	.ds	7
      000023 32               [24] 1042 	reti
      000024                       1043 	.ds	7
      00002B 32               [24] 1044 	reti
      00002C                       1045 	.ds	7
      000033 32               [24] 1046 	reti
      000034                       1047 	.ds	7
      00003B 32               [24] 1048 	reti
      00003C                       1049 	.ds	7
      000043 32               [24] 1050 	reti
      000044                       1051 	.ds	7
      00004B 02 07 54         [24] 1052 	ljmp	_PCA_ISR
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
                                   1066 	.area GSFINAL (CODE)
      0000AA 02 00 4E         [24] 1067 	ljmp	__sdcc_program_startup
                                   1068 ;--------------------------------------------------------
                                   1069 ; Home
                                   1070 ;--------------------------------------------------------
                                   1071 	.area HOME    (CODE)
                                   1072 	.area HOME    (CODE)
      00004E                       1073 __sdcc_program_startup:
      00004E 02 05 B3         [24] 1074 	ljmp	_main
                                   1075 ;	return from main will return to caller
                                   1076 ;--------------------------------------------------------
                                   1077 ; code
                                   1078 ;--------------------------------------------------------
                                   1079 	.area CSEG    (CODE)
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1082 ;------------------------------------------------------------
                                   1083 ;i                         Allocated to registers r6 r7 
                                   1084 ;------------------------------------------------------------
                           000000  1085 	G$SYSCLK_Init$0$0 ==.
                           000000  1086 	C$c8051_SDCC.h$62$0$0 ==.
                                   1087 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function SYSCLK_Init
                                   1090 ;	-----------------------------------------
      0000AD                       1091 _SYSCLK_Init:
                           000007  1092 	ar7 = 0x07
                           000006  1093 	ar6 = 0x06
                           000005  1094 	ar5 = 0x05
                           000004  1095 	ar4 = 0x04
                           000003  1096 	ar3 = 0x03
                           000002  1097 	ar2 = 0x02
                           000001  1098 	ar1 = 0x01
                           000000  1099 	ar0 = 0x00
                           000000  1100 	C$c8051_SDCC.h$66$1$35 ==.
                                   1101 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000AD 75 B1 67         [24] 1102 	mov	_OSCXCN,#0x67
                           000003  1103 	C$c8051_SDCC.h$69$1$35 ==.
                                   1104 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000B0 7E 00            [12] 1105 	mov	r6,#0x00
      0000B2 7F 01            [12] 1106 	mov	r7,#0x01
      0000B4                       1107 00107$:
      0000B4 EE               [12] 1108 	mov	a,r6
      0000B5 24 FF            [12] 1109 	add	a,#0xff
      0000B7 FC               [12] 1110 	mov	r4,a
      0000B8 EF               [12] 1111 	mov	a,r7
      0000B9 34 FF            [12] 1112 	addc	a,#0xff
      0000BB FD               [12] 1113 	mov	r5,a
      0000BC 8C 06            [24] 1114 	mov	ar6,r4
      0000BE 8D 07            [24] 1115 	mov	ar7,r5
      0000C0 EC               [12] 1116 	mov	a,r4
      0000C1 4D               [12] 1117 	orl	a,r5
      0000C2 70 F0            [24] 1118 	jnz	00107$
                           000017  1119 	C$c8051_SDCC.h$71$1$35 ==.
                                   1120 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000C4                       1121 00102$:
      0000C4 E5 B1            [12] 1122 	mov	a,_OSCXCN
      0000C6 30 E7 FB         [24] 1123 	jnb	acc.7,00102$
                           00001C  1124 	C$c8051_SDCC.h$73$1$35 ==.
                                   1125 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000C9 75 B2 88         [24] 1126 	mov	_OSCICN,#0x88
                           00001F  1127 	C$c8051_SDCC.h$76$1$35 ==.
                           00001F  1128 	XG$SYSCLK_Init$0$0 ==.
      0000CC 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'UART0_Init'
                                   1132 ;------------------------------------------------------------
                           000020  1133 	G$UART0_Init$0$0 ==.
                           000020  1134 	C$c8051_SDCC.h$84$1$35 ==.
                                   1135 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function UART0_Init
                                   1138 ;	-----------------------------------------
      0000CD                       1139 _UART0_Init:
                           000020  1140 	C$c8051_SDCC.h$86$1$37 ==.
                                   1141 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000CD 75 98 50         [24] 1142 	mov	_SCON0,#0x50
                           000023  1143 	C$c8051_SDCC.h$87$1$37 ==.
                                   1144 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000D0 75 89 20         [24] 1145 	mov	_TMOD,#0x20
                           000026  1146 	C$c8051_SDCC.h$88$1$37 ==.
                                   1147 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000D3 75 8D DC         [24] 1148 	mov	_TH1,#0xdc
                           000029  1149 	C$c8051_SDCC.h$89$1$37 ==.
                                   1150 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000D6 D2 8E            [12] 1151 	setb	_TR1
                           00002B  1152 	C$c8051_SDCC.h$90$1$37 ==.
                                   1153 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000D8 43 8E 10         [24] 1154 	orl	_CKCON,#0x10
                           00002E  1155 	C$c8051_SDCC.h$91$1$37 ==.
                                   1156 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000DB 43 87 80         [24] 1157 	orl	_PCON,#0x80
                           000031  1158 	C$c8051_SDCC.h$93$1$37 ==.
                                   1159 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000DE D2 99            [12] 1160 	setb	_TI0
                           000033  1161 	C$c8051_SDCC.h$94$1$37 ==.
                                   1162 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000E0 43 A4 01         [24] 1163 	orl	_P0MDOUT,#0x01
                           000036  1164 	C$c8051_SDCC.h$95$1$37 ==.
                           000036  1165 	XG$UART0_Init$0$0 ==.
      0000E3 22               [24] 1166 	ret
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function 'Sys_Init'
                                   1169 ;------------------------------------------------------------
                           000037  1170 	G$Sys_Init$0$0 ==.
                           000037  1171 	C$c8051_SDCC.h$103$1$37 ==.
                                   1172 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1173 ;	-----------------------------------------
                                   1174 ;	 function Sys_Init
                                   1175 ;	-----------------------------------------
      0000E4                       1176 _Sys_Init:
                           000037  1177 	C$c8051_SDCC.h$105$1$39 ==.
                                   1178 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000E4 75 FF DE         [24] 1179 	mov	_WDTCN,#0xde
                           00003A  1180 	C$c8051_SDCC.h$106$1$39 ==.
                                   1181 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000E7 75 FF AD         [24] 1182 	mov	_WDTCN,#0xad
                           00003D  1183 	C$c8051_SDCC.h$108$1$39 ==.
                                   1184 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000EA 12 00 AD         [24] 1185 	lcall	_SYSCLK_Init
                           000040  1186 	C$c8051_SDCC.h$109$1$39 ==.
                                   1187 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000ED 12 00 CD         [24] 1188 	lcall	_UART0_Init
                           000043  1189 	C$c8051_SDCC.h$111$1$39 ==.
                                   1190 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000F0 43 E1 04         [24] 1191 	orl	_XBR0,#0x04
                           000046  1192 	C$c8051_SDCC.h$112$1$39 ==.
                                   1193 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000F3 43 E3 40         [24] 1194 	orl	_XBR2,#0x40
                           000049  1195 	C$c8051_SDCC.h$113$1$39 ==.
                           000049  1196 	XG$Sys_Init$0$0 ==.
      0000F6 22               [24] 1197 	ret
                                   1198 ;------------------------------------------------------------
                                   1199 ;Allocation info for local variables in function 'putchar'
                                   1200 ;------------------------------------------------------------
                                   1201 ;c                         Allocated to registers r7 
                                   1202 ;------------------------------------------------------------
                           00004A  1203 	G$putchar$0$0 ==.
                           00004A  1204 	C$c8051_SDCC.h$129$1$39 ==.
                                   1205 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function putchar
                                   1208 ;	-----------------------------------------
      0000F7                       1209 _putchar:
      0000F7 AF 82            [24] 1210 	mov	r7,dpl
                           00004C  1211 	C$c8051_SDCC.h$132$1$41 ==.
                                   1212 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000F9                       1213 00101$:
                           00004C  1214 	C$c8051_SDCC.h$133$1$41 ==.
                                   1215 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000F9 10 99 02         [24] 1216 	jbc	_TI0,00112$
      0000FC 80 FB            [24] 1217 	sjmp	00101$
      0000FE                       1218 00112$:
                           000051  1219 	C$c8051_SDCC.h$134$1$41 ==.
                                   1220 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000FE 8F 99            [24] 1221 	mov	_SBUF0,r7
                           000053  1222 	C$c8051_SDCC.h$135$1$41 ==.
                           000053  1223 	XG$putchar$0$0 ==.
      000100 22               [24] 1224 	ret
                                   1225 ;------------------------------------------------------------
                                   1226 ;Allocation info for local variables in function 'getchar'
                                   1227 ;------------------------------------------------------------
                                   1228 ;c                         Allocated to registers r7 
                                   1229 ;------------------------------------------------------------
                           000054  1230 	G$getchar$0$0 ==.
                           000054  1231 	C$c8051_SDCC.h$154$1$41 ==.
                                   1232 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function getchar
                                   1235 ;	-----------------------------------------
      000101                       1236 _getchar:
                           000054  1237 	C$c8051_SDCC.h$157$1$43 ==.
                                   1238 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000101                       1239 00101$:
                           000054  1240 	C$c8051_SDCC.h$158$1$43 ==.
                                   1241 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000101 10 98 02         [24] 1242 	jbc	_RI0,00112$
      000104 80 FB            [24] 1243 	sjmp	00101$
      000106                       1244 00112$:
                           000059  1245 	C$c8051_SDCC.h$159$1$43 ==.
                                   1246 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000106 AF 99            [24] 1247 	mov	r7,_SBUF0
                           00005B  1248 	C$c8051_SDCC.h$160$1$43 ==.
                                   1249 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000108 8F 82            [24] 1250 	mov	dpl,r7
      00010A C0 07            [24] 1251 	push	ar7
      00010C 12 00 F7         [24] 1252 	lcall	_putchar
      00010F D0 07            [24] 1253 	pop	ar7
                           000064  1254 	C$c8051_SDCC.h$161$1$43 ==.
                                   1255 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000111 8F 82            [24] 1256 	mov	dpl,r7
                           000066  1257 	C$c8051_SDCC.h$162$1$43 ==.
                           000066  1258 	XG$getchar$0$0 ==.
      000113 22               [24] 1259 	ret
                                   1260 ;------------------------------------------------------------
                                   1261 ;Allocation info for local variables in function 'getchar_nw'
                                   1262 ;------------------------------------------------------------
                                   1263 ;c                         Allocated to registers 
                                   1264 ;------------------------------------------------------------
                           000067  1265 	G$getchar_nw$0$0 ==.
                           000067  1266 	C$c8051_SDCC.h$168$1$43 ==.
                                   1267 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function getchar_nw
                                   1270 ;	-----------------------------------------
      000114                       1271 _getchar_nw:
                           000067  1272 	C$c8051_SDCC.h$171$1$45 ==.
                                   1273 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000114 20 98 05         [24] 1274 	jb	_RI0,00102$
      000117 75 82 FF         [24] 1275 	mov	dpl,#0xff
      00011A 80 0B            [24] 1276 	sjmp	00104$
      00011C                       1277 00102$:
                           00006F  1278 	C$c8051_SDCC.h$174$2$46 ==.
                                   1279 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00011C C2 98            [12] 1280 	clr	_RI0
                           000071  1281 	C$c8051_SDCC.h$175$2$46 ==.
                                   1282 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00011E 85 99 82         [24] 1283 	mov	dpl,_SBUF0
                           000074  1284 	C$c8051_SDCC.h$176$2$46 ==.
                                   1285 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000121 12 00 F7         [24] 1286 	lcall	_putchar
                           000077  1287 	C$c8051_SDCC.h$177$2$46 ==.
                                   1288 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000124 85 99 82         [24] 1289 	mov	dpl,_SBUF0
      000127                       1290 00104$:
                           00007A  1291 	C$c8051_SDCC.h$179$1$45 ==.
                           00007A  1292 	XG$getchar_nw$0$0 ==.
      000127 22               [24] 1293 	ret
                                   1294 ;------------------------------------------------------------
                                   1295 ;Allocation info for local variables in function 'lcd_print'
                                   1296 ;------------------------------------------------------------
                                   1297 ;fmt                       Allocated to stack - _bp -5
                                   1298 ;len                       Allocated to registers r6 
                                   1299 ;i                         Allocated to registers 
                                   1300 ;ap                        Allocated to registers 
                                   1301 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1302 ;------------------------------------------------------------
                           00007B  1303 	G$lcd_print$0$0 ==.
                           00007B  1304 	C$i2c.h$84$1$45 ==.
                                   1305 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function lcd_print
                                   1308 ;	-----------------------------------------
      000128                       1309 _lcd_print:
      000128 C0 29            [24] 1310 	push	_bp
      00012A 85 81 29         [24] 1311 	mov	_bp,sp
                           000080  1312 	C$i2c.h$90$1$81 ==.
                                   1313 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00012D E5 29            [12] 1314 	mov	a,_bp
      00012F 24 FB            [12] 1315 	add	a,#0xfb
      000131 F8               [12] 1316 	mov	r0,a
      000132 86 82            [24] 1317 	mov	dpl,@r0
      000134 08               [12] 1318 	inc	r0
      000135 86 83            [24] 1319 	mov	dph,@r0
      000137 08               [12] 1320 	inc	r0
      000138 86 F0            [24] 1321 	mov	b,@r0
      00013A 12 0E EF         [24] 1322 	lcall	_strlen
      00013D E5 82            [12] 1323 	mov	a,dpl
      00013F 85 83 F0         [24] 1324 	mov	b,dph
      000142 45 F0            [12] 1325 	orl	a,b
      000144 70 02            [24] 1326 	jnz	00102$
      000146 80 62            [24] 1327 	sjmp	00109$
      000148                       1328 00102$:
                           00009B  1329 	C$i2c.h$92$2$82 ==.
                                   1330 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000148 E5 29            [12] 1331 	mov	a,_bp
      00014A 24 FB            [12] 1332 	add	a,#0xfb
      00014C FF               [12] 1333 	mov	r7,a
      00014D 8F 25            [24] 1334 	mov	_vsprintf_PARM_3,r7
                           0000A2  1335 	C$i2c.h$93$1$81 ==.
                                   1336 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00014F E5 29            [12] 1337 	mov	a,_bp
      000151 24 FB            [12] 1338 	add	a,#0xfb
      000153 F8               [12] 1339 	mov	r0,a
      000154 86 22            [24] 1340 	mov	_vsprintf_PARM_2,@r0
      000156 08               [12] 1341 	inc	r0
      000157 86 23            [24] 1342 	mov	(_vsprintf_PARM_2 + 1),@r0
      000159 08               [12] 1343 	inc	r0
      00015A 86 24            [24] 1344 	mov	(_vsprintf_PARM_2 + 2),@r0
      00015C 90 00 01         [24] 1345 	mov	dptr,#_lcd_print_text_1_81
      00015F 75 F0 00         [24] 1346 	mov	b,#0x00
      000162 12 08 5D         [24] 1347 	lcall	_vsprintf
                           0000B8  1348 	C$i2c.h$96$1$81 ==.
                                   1349 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      000165 90 00 01         [24] 1350 	mov	dptr,#_lcd_print_text_1_81
      000168 75 F0 00         [24] 1351 	mov	b,#0x00
      00016B 12 0E EF         [24] 1352 	lcall	_strlen
      00016E AE 82            [24] 1353 	mov	r6,dpl
                           0000C3  1354 	C$i2c.h$97$1$81 ==.
                                   1355 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      000170 7F 00            [12] 1356 	mov	r7,#0x00
      000172                       1357 00107$:
      000172 C3               [12] 1358 	clr	c
      000173 EF               [12] 1359 	mov	a,r7
      000174 9E               [12] 1360 	subb	a,r6
      000175 50 1F            [24] 1361 	jnc	00105$
                           0000CA  1362 	C$i2c.h$99$2$84 ==.
                                   1363 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      000177 EF               [12] 1364 	mov	a,r7
      000178 24 01            [12] 1365 	add	a,#_lcd_print_text_1_81
      00017A F5 82            [12] 1366 	mov	dpl,a
      00017C E4               [12] 1367 	clr	a
      00017D 34 00            [12] 1368 	addc	a,#(_lcd_print_text_1_81 >> 8)
      00017F F5 83            [12] 1369 	mov	dph,a
      000181 E0               [24] 1370 	movx	a,@dptr
      000182 FD               [12] 1371 	mov	r5,a
      000183 BD 0A 0D         [24] 1372 	cjne	r5,#0x0a,00108$
      000186 EF               [12] 1373 	mov	a,r7
      000187 24 01            [12] 1374 	add	a,#_lcd_print_text_1_81
      000189 F5 82            [12] 1375 	mov	dpl,a
      00018B E4               [12] 1376 	clr	a
      00018C 34 00            [12] 1377 	addc	a,#(_lcd_print_text_1_81 >> 8)
      00018E F5 83            [12] 1378 	mov	dph,a
      000190 74 0D            [12] 1379 	mov	a,#0x0d
      000192 F0               [24] 1380 	movx	@dptr,a
      000193                       1381 00108$:
                           0000E6  1382 	C$i2c.h$97$1$81 ==.
                                   1383 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      000193 0F               [12] 1384 	inc	r7
      000194 80 DC            [24] 1385 	sjmp	00107$
      000196                       1386 00105$:
                           0000E9  1387 	C$i2c.h$102$1$81 ==.
                                   1388 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      000196 75 11 01         [24] 1389 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      000199 75 12 00         [24] 1390 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      00019C 75 13 00         [24] 1391 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      00019F 75 10 00         [24] 1392 	mov	_i2c_write_data_PARM_2,#0x00
      0001A2 8E 14            [24] 1393 	mov	_i2c_write_data_PARM_4,r6
      0001A4 75 82 C6         [24] 1394 	mov	dpl,#0xc6
      0001A7 12 04 39         [24] 1395 	lcall	_i2c_write_data
      0001AA                       1396 00109$:
      0001AA D0 29            [24] 1397 	pop	_bp
                           0000FF  1398 	C$i2c.h$103$1$81 ==.
                           0000FF  1399 	XG$lcd_print$0$0 ==.
      0001AC 22               [24] 1400 	ret
                                   1401 ;------------------------------------------------------------
                                   1402 ;Allocation info for local variables in function 'lcd_clear'
                                   1403 ;------------------------------------------------------------
                                   1404 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1405 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1406 ;------------------------------------------------------------
                           000100  1407 	G$lcd_clear$0$0 ==.
                           000100  1408 	C$i2c.h$106$1$81 ==.
                                   1409 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1410 ;	-----------------------------------------
                                   1411 ;	 function lcd_clear
                                   1412 ;	-----------------------------------------
      0001AD                       1413 _lcd_clear:
                           000100  1414 	C$i2c.h$108$1$81 ==.
                                   1415 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001AD 75 0B 00         [24] 1416 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1417 	C$i2c.h$110$1$85 ==.
                                   1418 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001B0                       1419 00101$:
      0001B0 74 C0            [12] 1420 	mov	a,#0x100 - 0x40
      0001B2 25 0B            [12] 1421 	add	a,_lcd_clear_NumBytes_1_85
      0001B4 40 17            [24] 1422 	jc	00103$
      0001B6 75 16 0B         [24] 1423 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001B9 75 17 00         [24] 1424 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001BC 75 18 40         [24] 1425 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001BF 75 15 00         [24] 1426 	mov	_i2c_read_data_PARM_2,#0x00
      0001C2 75 19 01         [24] 1427 	mov	_i2c_read_data_PARM_4,#0x01
      0001C5 75 82 C6         [24] 1428 	mov	dpl,#0xc6
      0001C8 12 04 B3         [24] 1429 	lcall	_i2c_read_data
      0001CB 80 E3            [24] 1430 	sjmp	00101$
      0001CD                       1431 00103$:
                           000120  1432 	C$i2c.h$112$1$85 ==.
                                   1433 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001CD 75 0C 0C         [24] 1434 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1435 	C$i2c.h$113$1$85 ==.
                                   1436 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001D0 75 11 0C         [24] 1437 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001D3 75 12 00         [24] 1438 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001D6 75 13 40         [24] 1439 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0001D9 75 10 00         [24] 1440 	mov	_i2c_write_data_PARM_2,#0x00
      0001DC 75 14 01         [24] 1441 	mov	_i2c_write_data_PARM_4,#0x01
      0001DF 75 82 C6         [24] 1442 	mov	dpl,#0xc6
      0001E2 12 04 39         [24] 1443 	lcall	_i2c_write_data
                           000138  1444 	C$i2c.h$114$1$85 ==.
                           000138  1445 	XG$lcd_clear$0$0 ==.
      0001E5 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'read_keypad'
                                   1449 ;------------------------------------------------------------
                                   1450 ;i                         Allocated to registers r7 
                                   1451 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1452 ;------------------------------------------------------------
                           000139  1453 	G$read_keypad$0$0 ==.
                           000139  1454 	C$i2c.h$117$1$85 ==.
                                   1455 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1456 ;	-----------------------------------------
                                   1457 ;	 function read_keypad
                                   1458 ;	-----------------------------------------
      0001E6                       1459 _read_keypad:
                           000139  1460 	C$i2c.h$121$1$86 ==.
                                   1461 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      0001E6 75 16 0E         [24] 1462 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      0001E9 75 17 00         [24] 1463 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001EC 75 18 40         [24] 1464 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001EF 75 15 01         [24] 1465 	mov	_i2c_read_data_PARM_2,#0x01
      0001F2 75 19 02         [24] 1466 	mov	_i2c_read_data_PARM_4,#0x02
      0001F5 75 82 C6         [24] 1467 	mov	dpl,#0xc6
      0001F8 12 04 B3         [24] 1468 	lcall	_i2c_read_data
                           00014E  1469 	C$i2c.h$122$1$86 ==.
                                   1470 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      0001FB 74 FF            [12] 1471 	mov	a,#0xff
      0001FD B5 0E 05         [24] 1472 	cjne	a,_read_keypad_Data_1_86,00102$
      000200 75 82 00         [24] 1473 	mov	dpl,#0x00
      000203 80 5F            [24] 1474 	sjmp	00116$
      000205                       1475 00102$:
                           000158  1476 	C$i2c.h$124$1$86 ==.
                                   1477 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000205 7F 00            [12] 1478 	mov	r7,#0x00
      000207 8F 06            [24] 1479 	mov	ar6,r7
      000209                       1480 00114$:
                           00015C  1481 	C$i2c.h$126$2$87 ==.
                                   1482 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000209 8E F0            [24] 1483 	mov	b,r6
      00020B 05 F0            [12] 1484 	inc	b
      00020D 7C 01            [12] 1485 	mov	r4,#0x01
      00020F 7D 00            [12] 1486 	mov	r5,#0x00
      000211 80 06            [24] 1487 	sjmp	00145$
      000213                       1488 00144$:
      000213 EC               [12] 1489 	mov	a,r4
      000214 2C               [12] 1490 	add	a,r4
      000215 FC               [12] 1491 	mov	r4,a
      000216 ED               [12] 1492 	mov	a,r5
      000217 33               [12] 1493 	rlc	a
      000218 FD               [12] 1494 	mov	r5,a
      000219                       1495 00145$:
      000219 D5 F0 F7         [24] 1496 	djnz	b,00144$
      00021C AA 0E            [24] 1497 	mov	r2,_read_keypad_Data_1_86
      00021E 7B 00            [12] 1498 	mov	r3,#0x00
      000220 EA               [12] 1499 	mov	a,r2
      000221 52 04            [12] 1500 	anl	ar4,a
      000223 EB               [12] 1501 	mov	a,r3
      000224 52 05            [12] 1502 	anl	ar5,a
      000226 EC               [12] 1503 	mov	a,r4
      000227 4D               [12] 1504 	orl	a,r5
      000228 60 07            [24] 1505 	jz	00115$
                           00017D  1506 	C$i2c.h$127$2$87 ==.
                                   1507 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      00022A 74 31            [12] 1508 	mov	a,#0x31
      00022C 2F               [12] 1509 	add	a,r7
      00022D F5 82            [12] 1510 	mov	dpl,a
      00022F 80 33            [24] 1511 	sjmp	00116$
      000231                       1512 00115$:
                           000184  1513 	C$i2c.h$124$1$86 ==.
                                   1514 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000231 0E               [12] 1515 	inc	r6
      000232 8E 07            [24] 1516 	mov	ar7,r6
      000234 BE 08 00         [24] 1517 	cjne	r6,#0x08,00147$
      000237                       1518 00147$:
      000237 40 D0            [24] 1519 	jc	00114$
                           00018C  1520 	C$i2c.h$130$1$86 ==.
                                   1521 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000239 E5 0F            [12] 1522 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00023B 30 E0 05         [24] 1523 	jnb	acc.0,00107$
      00023E 75 82 39         [24] 1524 	mov	dpl,#0x39
      000241 80 21            [24] 1525 	sjmp	00116$
      000243                       1526 00107$:
                           000196  1527 	C$i2c.h$132$1$86 ==.
                                   1528 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000243 E5 0F            [12] 1529 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000245 30 E1 05         [24] 1530 	jnb	acc.1,00109$
      000248 75 82 2A         [24] 1531 	mov	dpl,#0x2a
      00024B 80 17            [24] 1532 	sjmp	00116$
      00024D                       1533 00109$:
                           0001A0  1534 	C$i2c.h$134$1$86 ==.
                                   1535 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00024D E5 0F            [12] 1536 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00024F 30 E2 05         [24] 1537 	jnb	acc.2,00111$
      000252 75 82 30         [24] 1538 	mov	dpl,#0x30
      000255 80 0D            [24] 1539 	sjmp	00116$
      000257                       1540 00111$:
                           0001AA  1541 	C$i2c.h$136$1$86 ==.
                                   1542 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000257 E5 0F            [12] 1543 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000259 30 E3 05         [24] 1544 	jnb	acc.3,00113$
      00025C 75 82 23         [24] 1545 	mov	dpl,#0x23
      00025F 80 03            [24] 1546 	sjmp	00116$
      000261                       1547 00113$:
                           0001B4  1548 	C$i2c.h$138$1$86 ==.
                                   1549 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      000261 75 82 FF         [24] 1550 	mov	dpl,#0xff
      000264                       1551 00116$:
                           0001B7  1552 	C$i2c.h$139$1$86 ==.
                           0001B7  1553 	XG$read_keypad$0$0 ==.
      000264 22               [24] 1554 	ret
                                   1555 ;------------------------------------------------------------
                                   1556 ;Allocation info for local variables in function 'kpd_input'
                                   1557 ;------------------------------------------------------------
                                   1558 ;mode                      Allocated to registers r7 
                                   1559 ;sum                       Allocated to registers r5 r6 
                                   1560 ;key                       Allocated to registers r3 
                                   1561 ;i                         Allocated to registers 
                                   1562 ;------------------------------------------------------------
                           0001B8  1563 	G$kpd_input$0$0 ==.
                           0001B8  1564 	C$i2c.h$151$1$86 ==.
                                   1565 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1566 ;	-----------------------------------------
                                   1567 ;	 function kpd_input
                                   1568 ;	-----------------------------------------
      000265                       1569 _kpd_input:
      000265 AF 82            [24] 1570 	mov	r7,dpl
                           0001BA  1571 	C$i2c.h$156$1$89 ==.
                                   1572 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1573 	C$i2c.h$159$1$89 ==.
                                   1574 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      000267 E4               [12] 1575 	clr	a
      000268 FD               [12] 1576 	mov	r5,a
      000269 FE               [12] 1577 	mov	r6,a
      00026A EF               [12] 1578 	mov	a,r7
      00026B 70 1D            [24] 1579 	jnz	00102$
      00026D C0 06            [24] 1580 	push	ar6
      00026F C0 05            [24] 1581 	push	ar5
      000271 74 27            [12] 1582 	mov	a,#___str_0
      000273 C0 E0            [24] 1583 	push	acc
      000275 74 0F            [12] 1584 	mov	a,#(___str_0 >> 8)
      000277 C0 E0            [24] 1585 	push	acc
      000279 74 80            [12] 1586 	mov	a,#0x80
      00027B C0 E0            [24] 1587 	push	acc
      00027D 12 01 28         [24] 1588 	lcall	_lcd_print
      000280 15 81            [12] 1589 	dec	sp
      000282 15 81            [12] 1590 	dec	sp
      000284 15 81            [12] 1591 	dec	sp
      000286 D0 05            [24] 1592 	pop	ar5
      000288 D0 06            [24] 1593 	pop	ar6
      00028A                       1594 00102$:
                           0001DD  1595 	C$i2c.h$161$1$89 ==.
                                   1596 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      00028A C0 06            [24] 1597 	push	ar6
      00028C C0 05            [24] 1598 	push	ar5
      00028E 74 08            [12] 1599 	mov	a,#0x08
      000290 C0 E0            [24] 1600 	push	acc
      000292 E4               [12] 1601 	clr	a
      000293 C0 E0            [24] 1602 	push	acc
      000295 74 08            [12] 1603 	mov	a,#0x08
      000297 C0 E0            [24] 1604 	push	acc
      000299 E4               [12] 1605 	clr	a
      00029A C0 E0            [24] 1606 	push	acc
      00029C 74 08            [12] 1607 	mov	a,#0x08
      00029E C0 E0            [24] 1608 	push	acc
      0002A0 E4               [12] 1609 	clr	a
      0002A1 C0 E0            [24] 1610 	push	acc
      0002A3 74 08            [12] 1611 	mov	a,#0x08
      0002A5 C0 E0            [24] 1612 	push	acc
      0002A7 E4               [12] 1613 	clr	a
      0002A8 C0 E0            [24] 1614 	push	acc
      0002AA 74 08            [12] 1615 	mov	a,#0x08
      0002AC C0 E0            [24] 1616 	push	acc
      0002AE E4               [12] 1617 	clr	a
      0002AF C0 E0            [24] 1618 	push	acc
      0002B1 74 3D            [12] 1619 	mov	a,#___str_1
      0002B3 C0 E0            [24] 1620 	push	acc
      0002B5 74 0F            [12] 1621 	mov	a,#(___str_1 >> 8)
      0002B7 C0 E0            [24] 1622 	push	acc
      0002B9 74 80            [12] 1623 	mov	a,#0x80
      0002BB C0 E0            [24] 1624 	push	acc
      0002BD 12 01 28         [24] 1625 	lcall	_lcd_print
      0002C0 E5 81            [12] 1626 	mov	a,sp
      0002C2 24 F3            [12] 1627 	add	a,#0xf3
      0002C4 F5 81            [12] 1628 	mov	sp,a
                           000219  1629 	C$i2c.h$163$1$89 ==.
                                   1630 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002C6 90 A1 20         [24] 1631 	mov	dptr,#0xa120
      0002C9 75 F0 07         [24] 1632 	mov	b,#0x07
      0002CC E4               [12] 1633 	clr	a
      0002CD 12 03 D4         [24] 1634 	lcall	_delay_time
      0002D0 D0 05            [24] 1635 	pop	ar5
      0002D2 D0 06            [24] 1636 	pop	ar6
                           000227  1637 	C$i2c.h$167$1$89 ==.
                                   1638 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002D4 7F 00            [12] 1639 	mov	r7,#0x00
                           000229  1640 	C$i2c.h$169$3$92 ==.
                                   1641 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002D6                       1642 00104$:
      0002D6 C0 07            [24] 1643 	push	ar7
      0002D8 C0 06            [24] 1644 	push	ar6
      0002DA C0 05            [24] 1645 	push	ar5
      0002DC 12 01 E6         [24] 1646 	lcall	_read_keypad
      0002DF AC 82            [24] 1647 	mov	r4,dpl
      0002E1 D0 05            [24] 1648 	pop	ar5
      0002E3 D0 06            [24] 1649 	pop	ar6
      0002E5 D0 07            [24] 1650 	pop	ar7
      0002E7 8C 03            [24] 1651 	mov	ar3,r4
      0002E9 BC FF 02         [24] 1652 	cjne	r4,#0xff,00146$
      0002EC 80 03            [24] 1653 	sjmp	00105$
      0002EE                       1654 00146$:
      0002EE BB 2A 17         [24] 1655 	cjne	r3,#0x2a,00106$
      0002F1                       1656 00105$:
      0002F1 90 27 10         [24] 1657 	mov	dptr,#0x2710
      0002F4 E4               [12] 1658 	clr	a
      0002F5 F5 F0            [12] 1659 	mov	b,a
      0002F7 C0 07            [24] 1660 	push	ar7
      0002F9 C0 06            [24] 1661 	push	ar6
      0002FB C0 05            [24] 1662 	push	ar5
      0002FD 12 03 D4         [24] 1663 	lcall	_delay_time
      000300 D0 05            [24] 1664 	pop	ar5
      000302 D0 06            [24] 1665 	pop	ar6
      000304 D0 07            [24] 1666 	pop	ar7
      000306 80 CE            [24] 1667 	sjmp	00104$
      000308                       1668 00106$:
                           00025B  1669 	C$i2c.h$170$2$90 ==.
                                   1670 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000308 BB 23 2A         [24] 1671 	cjne	r3,#0x23,00114$
                           00025E  1672 	C$i2c.h$172$3$91 ==.
                                   1673 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      00030B                       1674 00107$:
      00030B C0 06            [24] 1675 	push	ar6
      00030D C0 05            [24] 1676 	push	ar5
      00030F 12 01 E6         [24] 1677 	lcall	_read_keypad
      000312 AC 82            [24] 1678 	mov	r4,dpl
      000314 D0 05            [24] 1679 	pop	ar5
      000316 D0 06            [24] 1680 	pop	ar6
      000318 BC 23 13         [24] 1681 	cjne	r4,#0x23,00109$
      00031B 90 27 10         [24] 1682 	mov	dptr,#0x2710
      00031E E4               [12] 1683 	clr	a
      00031F F5 F0            [12] 1684 	mov	b,a
      000321 C0 06            [24] 1685 	push	ar6
      000323 C0 05            [24] 1686 	push	ar5
      000325 12 03 D4         [24] 1687 	lcall	_delay_time
      000328 D0 05            [24] 1688 	pop	ar5
      00032A D0 06            [24] 1689 	pop	ar6
      00032C 80 DD            [24] 1690 	sjmp	00107$
      00032E                       1691 00109$:
                           000281  1692 	C$i2c.h$173$3$91 ==.
                                   1693 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00032E 8D 82            [24] 1694 	mov	dpl,r5
      000330 8E 83            [24] 1695 	mov	dph,r6
      000332 02 03 D3         [24] 1696 	ljmp	00119$
      000335                       1697 00114$:
                           000288  1698 	C$i2c.h$177$3$92 ==.
                                   1699 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000335 8B 02            [24] 1700 	mov	ar2,r3
      000337 7C 00            [12] 1701 	mov	r4,#0x00
      000339 C0 07            [24] 1702 	push	ar7
      00033B C0 06            [24] 1703 	push	ar6
      00033D C0 05            [24] 1704 	push	ar5
      00033F C0 04            [24] 1705 	push	ar4
      000341 C0 03            [24] 1706 	push	ar3
      000343 C0 02            [24] 1707 	push	ar2
      000345 C0 02            [24] 1708 	push	ar2
      000347 C0 04            [24] 1709 	push	ar4
      000349 74 4D            [12] 1710 	mov	a,#___str_2
      00034B C0 E0            [24] 1711 	push	acc
      00034D 74 0F            [12] 1712 	mov	a,#(___str_2 >> 8)
      00034F C0 E0            [24] 1713 	push	acc
      000351 74 80            [12] 1714 	mov	a,#0x80
      000353 C0 E0            [24] 1715 	push	acc
      000355 12 01 28         [24] 1716 	lcall	_lcd_print
      000358 E5 81            [12] 1717 	mov	a,sp
      00035A 24 FB            [12] 1718 	add	a,#0xfb
      00035C F5 81            [12] 1719 	mov	sp,a
      00035E D0 02            [24] 1720 	pop	ar2
      000360 D0 03            [24] 1721 	pop	ar3
      000362 D0 04            [24] 1722 	pop	ar4
      000364 D0 05            [24] 1723 	pop	ar5
      000366 D0 06            [24] 1724 	pop	ar6
                           0002BB  1725 	C$i2c.h$178$1$89 ==.
                                   1726 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      000368 8D 45            [24] 1727 	mov	__mulint_PARM_2,r5
      00036A 8E 46            [24] 1728 	mov	(__mulint_PARM_2 + 1),r6
      00036C 90 00 0A         [24] 1729 	mov	dptr,#0x000a
      00036F C0 04            [24] 1730 	push	ar4
      000371 C0 03            [24] 1731 	push	ar3
      000373 C0 02            [24] 1732 	push	ar2
      000375 12 07 D0         [24] 1733 	lcall	__mulint
      000378 A8 82            [24] 1734 	mov	r0,dpl
      00037A A9 83            [24] 1735 	mov	r1,dph
      00037C D0 02            [24] 1736 	pop	ar2
      00037E D0 03            [24] 1737 	pop	ar3
      000380 D0 04            [24] 1738 	pop	ar4
      000382 D0 07            [24] 1739 	pop	ar7
      000384 EA               [12] 1740 	mov	a,r2
      000385 28               [12] 1741 	add	a,r0
      000386 F8               [12] 1742 	mov	r0,a
      000387 EC               [12] 1743 	mov	a,r4
      000388 39               [12] 1744 	addc	a,r1
      000389 F9               [12] 1745 	mov	r1,a
      00038A E8               [12] 1746 	mov	a,r0
      00038B 24 D0            [12] 1747 	add	a,#0xd0
      00038D FD               [12] 1748 	mov	r5,a
      00038E E9               [12] 1749 	mov	a,r1
      00038F 34 FF            [12] 1750 	addc	a,#0xff
      000391 FE               [12] 1751 	mov	r6,a
                           0002E5  1752 	C$i2c.h$179$3$92 ==.
                                   1753 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      000392                       1754 00110$:
      000392 C0 07            [24] 1755 	push	ar7
      000394 C0 06            [24] 1756 	push	ar6
      000396 C0 05            [24] 1757 	push	ar5
      000398 C0 03            [24] 1758 	push	ar3
      00039A 12 01 E6         [24] 1759 	lcall	_read_keypad
      00039D AC 82            [24] 1760 	mov	r4,dpl
      00039F D0 03            [24] 1761 	pop	ar3
      0003A1 D0 05            [24] 1762 	pop	ar5
      0003A3 D0 06            [24] 1763 	pop	ar6
      0003A5 D0 07            [24] 1764 	pop	ar7
      0003A7 EC               [12] 1765 	mov	a,r4
      0003A8 B5 03 1B         [24] 1766 	cjne	a,ar3,00118$
      0003AB 90 27 10         [24] 1767 	mov	dptr,#0x2710
      0003AE E4               [12] 1768 	clr	a
      0003AF F5 F0            [12] 1769 	mov	b,a
      0003B1 C0 07            [24] 1770 	push	ar7
      0003B3 C0 06            [24] 1771 	push	ar6
      0003B5 C0 05            [24] 1772 	push	ar5
      0003B7 C0 03            [24] 1773 	push	ar3
      0003B9 12 03 D4         [24] 1774 	lcall	_delay_time
      0003BC D0 03            [24] 1775 	pop	ar3
      0003BE D0 05            [24] 1776 	pop	ar5
      0003C0 D0 06            [24] 1777 	pop	ar6
      0003C2 D0 07            [24] 1778 	pop	ar7
      0003C4 80 CC            [24] 1779 	sjmp	00110$
      0003C6                       1780 00118$:
                           000319  1781 	C$i2c.h$167$1$89 ==.
                                   1782 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003C6 0F               [12] 1783 	inc	r7
      0003C7 BF 05 00         [24] 1784 	cjne	r7,#0x05,00155$
      0003CA                       1785 00155$:
      0003CA 50 03            [24] 1786 	jnc	00156$
      0003CC 02 02 D6         [24] 1787 	ljmp	00104$
      0003CF                       1788 00156$:
                           000322  1789 	C$i2c.h$182$1$89 ==.
                                   1790 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003CF 8D 82            [24] 1791 	mov	dpl,r5
      0003D1 8E 83            [24] 1792 	mov	dph,r6
      0003D3                       1793 00119$:
                           000326  1794 	C$i2c.h$183$1$89 ==.
                           000326  1795 	XG$kpd_input$0$0 ==.
      0003D3 22               [24] 1796 	ret
                                   1797 ;------------------------------------------------------------
                                   1798 ;Allocation info for local variables in function 'delay_time'
                                   1799 ;------------------------------------------------------------
                                   1800 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1801 ;index                     Allocated to registers 
                                   1802 ;------------------------------------------------------------
                           000327  1803 	G$delay_time$0$0 ==.
                           000327  1804 	C$i2c.h$192$1$89 ==.
                                   1805 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function delay_time
                                   1808 ;	-----------------------------------------
      0003D4                       1809 _delay_time:
      0003D4 AC 82            [24] 1810 	mov	r4,dpl
      0003D6 AD 83            [24] 1811 	mov	r5,dph
      0003D8 AE F0            [24] 1812 	mov	r6,b
      0003DA FF               [12] 1813 	mov	r7,a
                           00032E  1814 	C$i2c.h$196$1$94 ==.
                                   1815 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      0003DB 78 00            [12] 1816 	mov	r0,#0x00
      0003DD 79 00            [12] 1817 	mov	r1,#0x00
      0003DF 7A 00            [12] 1818 	mov	r2,#0x00
      0003E1 7B 00            [12] 1819 	mov	r3,#0x00
      0003E3                       1820 00103$:
      0003E3 C3               [12] 1821 	clr	c
      0003E4 E8               [12] 1822 	mov	a,r0
      0003E5 9C               [12] 1823 	subb	a,r4
      0003E6 E9               [12] 1824 	mov	a,r1
      0003E7 9D               [12] 1825 	subb	a,r5
      0003E8 EA               [12] 1826 	mov	a,r2
      0003E9 9E               [12] 1827 	subb	a,r6
      0003EA EB               [12] 1828 	mov	a,r3
      0003EB 9F               [12] 1829 	subb	a,r7
      0003EC 50 0F            [24] 1830 	jnc	00105$
      0003EE 08               [12] 1831 	inc	r0
      0003EF B8 00 09         [24] 1832 	cjne	r0,#0x00,00115$
      0003F2 09               [12] 1833 	inc	r1
      0003F3 B9 00 05         [24] 1834 	cjne	r1,#0x00,00115$
      0003F6 0A               [12] 1835 	inc	r2
      0003F7 BA 00 E9         [24] 1836 	cjne	r2,#0x00,00103$
      0003FA 0B               [12] 1837 	inc	r3
      0003FB                       1838 00115$:
      0003FB 80 E6            [24] 1839 	sjmp	00103$
      0003FD                       1840 00105$:
                           000350  1841 	C$i2c.h$197$1$94 ==.
                           000350  1842 	XG$delay_time$0$0 ==.
      0003FD 22               [24] 1843 	ret
                                   1844 ;------------------------------------------------------------
                                   1845 ;Allocation info for local variables in function 'i2c_start'
                                   1846 ;------------------------------------------------------------
                           000351  1847 	G$i2c_start$0$0 ==.
                           000351  1848 	C$i2c.h$200$1$94 ==.
                                   1849 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function i2c_start
                                   1852 ;	-----------------------------------------
      0003FE                       1853 _i2c_start:
                           000351  1854 	C$i2c.h$202$1$96 ==.
                                   1855 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      0003FE                       1856 00101$:
      0003FE 20 C7 FD         [24] 1857 	jb	_BUSY,00101$
                           000354  1858 	C$i2c.h$203$1$96 ==.
                                   1859 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000401 D2 C5            [12] 1860 	setb	_STA
                           000356  1861 	C$i2c.h$204$1$96 ==.
                                   1862 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000403                       1863 00104$:
      000403 30 C3 FD         [24] 1864 	jnb	_SI,00104$
                           000359  1865 	C$i2c.h$205$1$96 ==.
                                   1866 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000406 C2 C5            [12] 1867 	clr	_STA
                           00035B  1868 	C$i2c.h$206$1$96 ==.
                                   1869 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000408 C2 C3            [12] 1870 	clr	_SI
                           00035D  1871 	C$i2c.h$207$1$96 ==.
                           00035D  1872 	XG$i2c_start$0$0 ==.
      00040A 22               [24] 1873 	ret
                                   1874 ;------------------------------------------------------------
                                   1875 ;Allocation info for local variables in function 'i2c_write'
                                   1876 ;------------------------------------------------------------
                                   1877 ;output_data               Allocated to registers 
                                   1878 ;------------------------------------------------------------
                           00035E  1879 	G$i2c_write$0$0 ==.
                           00035E  1880 	C$i2c.h$210$1$96 ==.
                                   1881 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   1882 ;	-----------------------------------------
                                   1883 ;	 function i2c_write
                                   1884 ;	-----------------------------------------
      00040B                       1885 _i2c_write:
      00040B 85 82 C2         [24] 1886 	mov	_SMB0DAT,dpl
                           000361  1887 	C$i2c.h$213$1$98 ==.
                                   1888 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00040E                       1889 00101$:
                           000361  1890 	C$i2c.h$214$1$98 ==.
                                   1891 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00040E 10 C3 02         [24] 1892 	jbc	_SI,00112$
      000411 80 FB            [24] 1893 	sjmp	00101$
      000413                       1894 00112$:
                           000366  1895 	C$i2c.h$215$1$98 ==.
                           000366  1896 	XG$i2c_write$0$0 ==.
      000413 22               [24] 1897 	ret
                                   1898 ;------------------------------------------------------------
                                   1899 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   1900 ;------------------------------------------------------------
                                   1901 ;output_data               Allocated to registers 
                                   1902 ;------------------------------------------------------------
                           000367  1903 	G$i2c_write_and_stop$0$0 ==.
                           000367  1904 	C$i2c.h$218$1$98 ==.
                                   1905 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function i2c_write_and_stop
                                   1908 ;	-----------------------------------------
      000414                       1909 _i2c_write_and_stop:
      000414 85 82 C2         [24] 1910 	mov	_SMB0DAT,dpl
                           00036A  1911 	C$i2c.h$221$1$100 ==.
                                   1912 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000417 D2 C4            [12] 1913 	setb	_STO
                           00036C  1914 	C$i2c.h$222$1$100 ==.
                                   1915 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000419                       1916 00101$:
                           00036C  1917 	C$i2c.h$223$1$100 ==.
                                   1918 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000419 10 C3 02         [24] 1919 	jbc	_SI,00112$
      00041C 80 FB            [24] 1920 	sjmp	00101$
      00041E                       1921 00112$:
                           000371  1922 	C$i2c.h$224$1$100 ==.
                           000371  1923 	XG$i2c_write_and_stop$0$0 ==.
      00041E 22               [24] 1924 	ret
                                   1925 ;------------------------------------------------------------
                                   1926 ;Allocation info for local variables in function 'i2c_read'
                                   1927 ;------------------------------------------------------------
                                   1928 ;input_data                Allocated to registers 
                                   1929 ;------------------------------------------------------------
                           000372  1930 	G$i2c_read$0$0 ==.
                           000372  1931 	C$i2c.h$227$1$100 ==.
                                   1932 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   1933 ;	-----------------------------------------
                                   1934 ;	 function i2c_read
                                   1935 ;	-----------------------------------------
      00041F                       1936 _i2c_read:
                           000372  1937 	C$i2c.h$231$1$102 ==.
                                   1938 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00041F                       1939 00101$:
      00041F 30 C3 FD         [24] 1940 	jnb	_SI,00101$
                           000375  1941 	C$i2c.h$232$1$102 ==.
                                   1942 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000422 85 C2 82         [24] 1943 	mov	dpl,_SMB0DAT
                           000378  1944 	C$i2c.h$233$1$102 ==.
                                   1945 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000425 C2 C3            [12] 1946 	clr	_SI
                           00037A  1947 	C$i2c.h$234$1$102 ==.
                                   1948 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  1949 	C$i2c.h$235$1$102 ==.
                           00037A  1950 	XG$i2c_read$0$0 ==.
      000427 22               [24] 1951 	ret
                                   1952 ;------------------------------------------------------------
                                   1953 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   1954 ;------------------------------------------------------------
                                   1955 ;input_data                Allocated to registers r7 
                                   1956 ;------------------------------------------------------------
                           00037B  1957 	G$i2c_read_and_stop$0$0 ==.
                           00037B  1958 	C$i2c.h$238$1$102 ==.
                                   1959 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   1960 ;	-----------------------------------------
                                   1961 ;	 function i2c_read_and_stop
                                   1962 ;	-----------------------------------------
      000428                       1963 _i2c_read_and_stop:
                           00037B  1964 	C$i2c.h$242$1$104 ==.
                                   1965 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000428                       1966 00101$:
      000428 30 C3 FD         [24] 1967 	jnb	_SI,00101$
                           00037E  1968 	C$i2c.h$243$1$104 ==.
                                   1969 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      00042B AF C2            [24] 1970 	mov	r7,_SMB0DAT
                           000380  1971 	C$i2c.h$244$1$104 ==.
                                   1972 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00042D C2 C3            [12] 1973 	clr	_SI
                           000382  1974 	C$i2c.h$245$1$104 ==.
                                   1975 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00042F D2 C4            [12] 1976 	setb	_STO
                           000384  1977 	C$i2c.h$246$1$104 ==.
                                   1978 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000431                       1979 00104$:
                           000384  1980 	C$i2c.h$247$1$104 ==.
                                   1981 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000431 10 C3 02         [24] 1982 	jbc	_SI,00122$
      000434 80 FB            [24] 1983 	sjmp	00104$
      000436                       1984 00122$:
                           000389  1985 	C$i2c.h$248$1$104 ==.
                                   1986 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000436 8F 82            [24] 1987 	mov	dpl,r7
                           00038B  1988 	C$i2c.h$249$1$104 ==.
                           00038B  1989 	XG$i2c_read_and_stop$0$0 ==.
      000438 22               [24] 1990 	ret
                                   1991 ;------------------------------------------------------------
                                   1992 ;Allocation info for local variables in function 'i2c_write_data'
                                   1993 ;------------------------------------------------------------
                                   1994 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   1995 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   1996 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   1997 ;addr                      Allocated to registers r7 
                                   1998 ;i                         Allocated to registers 
                                   1999 ;------------------------------------------------------------
                           00038C  2000 	G$i2c_write_data$0$0 ==.
                           00038C  2001 	C$i2c.h$252$1$104 ==.
                                   2002 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2003 ;	-----------------------------------------
                                   2004 ;	 function i2c_write_data
                                   2005 ;	-----------------------------------------
      000439                       2006 _i2c_write_data:
      000439 AF 82            [24] 2007 	mov	r7,dpl
                           00038E  2008 	C$i2c.h$256$1$106 ==.
                                   2009 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      00043B C2 AF            [12] 2010 	clr	_EA
                           000390  2011 	C$i2c.h$257$1$106 ==.
                                   2012 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00043D C0 07            [24] 2013 	push	ar7
      00043F 12 03 FE         [24] 2014 	lcall	_i2c_start
      000442 D0 07            [24] 2015 	pop	ar7
                           000397  2016 	C$i2c.h$258$1$106 ==.
                                   2017 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000444 74 FE            [12] 2018 	mov	a,#0xfe
      000446 5F               [12] 2019 	anl	a,r7
      000447 F5 82            [12] 2020 	mov	dpl,a
      000449 12 04 0B         [24] 2021 	lcall	_i2c_write
                           00039F  2022 	C$i2c.h$259$1$106 ==.
                                   2023 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00044C 85 10 82         [24] 2024 	mov	dpl,_i2c_write_data_PARM_2
      00044F 12 04 0B         [24] 2025 	lcall	_i2c_write
                           0003A5  2026 	C$i2c.h$260$1$106 ==.
                                   2027 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000452 7F 00            [12] 2028 	mov	r7,#0x00
      000454                       2029 00103$:
      000454 AD 14            [24] 2030 	mov	r5,_i2c_write_data_PARM_4
      000456 7E 00            [12] 2031 	mov	r6,#0x00
      000458 1D               [12] 2032 	dec	r5
      000459 BD FF 01         [24] 2033 	cjne	r5,#0xff,00114$
      00045C 1E               [12] 2034 	dec	r6
      00045D                       2035 00114$:
      00045D 8F 03            [24] 2036 	mov	ar3,r7
      00045F 7C 00            [12] 2037 	mov	r4,#0x00
      000461 C3               [12] 2038 	clr	c
      000462 EB               [12] 2039 	mov	a,r3
      000463 9D               [12] 2040 	subb	a,r5
      000464 EC               [12] 2041 	mov	a,r4
      000465 64 80            [12] 2042 	xrl	a,#0x80
      000467 8E F0            [24] 2043 	mov	b,r6
      000469 63 F0 80         [24] 2044 	xrl	b,#0x80
      00046C 95 F0            [12] 2045 	subb	a,b
      00046E 50 1F            [24] 2046 	jnc	00101$
                           0003C3  2047 	C$i2c.h$261$1$106 ==.
                                   2048 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      000470 EF               [12] 2049 	mov	a,r7
      000471 25 11            [12] 2050 	add	a,_i2c_write_data_PARM_3
      000473 FC               [12] 2051 	mov	r4,a
      000474 E4               [12] 2052 	clr	a
      000475 35 12            [12] 2053 	addc	a,(_i2c_write_data_PARM_3 + 1)
      000477 FD               [12] 2054 	mov	r5,a
      000478 AE 13            [24] 2055 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      00047A 8C 82            [24] 2056 	mov	dpl,r4
      00047C 8D 83            [24] 2057 	mov	dph,r5
      00047E 8E F0            [24] 2058 	mov	b,r6
      000480 12 0F 07         [24] 2059 	lcall	__gptrget
      000483 F5 82            [12] 2060 	mov	dpl,a
      000485 C0 07            [24] 2061 	push	ar7
      000487 12 04 0B         [24] 2062 	lcall	_i2c_write
      00048A D0 07            [24] 2063 	pop	ar7
                           0003DF  2064 	C$i2c.h$260$1$106 ==.
                                   2065 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      00048C 0F               [12] 2066 	inc	r7
      00048D 80 C5            [24] 2067 	sjmp	00103$
      00048F                       2068 00101$:
                           0003E2  2069 	C$i2c.h$262$1$106 ==.
                                   2070 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      00048F AE 14            [24] 2071 	mov	r6,_i2c_write_data_PARM_4
      000491 7F 00            [12] 2072 	mov	r7,#0x00
      000493 1E               [12] 2073 	dec	r6
      000494 BE FF 01         [24] 2074 	cjne	r6,#0xff,00116$
      000497 1F               [12] 2075 	dec	r7
      000498                       2076 00116$:
      000498 EE               [12] 2077 	mov	a,r6
      000499 25 11            [12] 2078 	add	a,_i2c_write_data_PARM_3
      00049B FE               [12] 2079 	mov	r6,a
      00049C EF               [12] 2080 	mov	a,r7
      00049D 35 12            [12] 2081 	addc	a,(_i2c_write_data_PARM_3 + 1)
      00049F FF               [12] 2082 	mov	r7,a
      0004A0 AD 13            [24] 2083 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004A2 8E 82            [24] 2084 	mov	dpl,r6
      0004A4 8F 83            [24] 2085 	mov	dph,r7
      0004A6 8D F0            [24] 2086 	mov	b,r5
      0004A8 12 0F 07         [24] 2087 	lcall	__gptrget
      0004AB F5 82            [12] 2088 	mov	dpl,a
      0004AD 12 04 14         [24] 2089 	lcall	_i2c_write_and_stop
                           000403  2090 	C$i2c.h$263$1$106 ==.
                                   2091 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004B0 D2 AF            [12] 2092 	setb	_EA
                           000405  2093 	C$i2c.h$264$1$106 ==.
                           000405  2094 	XG$i2c_write_data$0$0 ==.
      0004B2 22               [24] 2095 	ret
                                   2096 ;------------------------------------------------------------
                                   2097 ;Allocation info for local variables in function 'i2c_read_data'
                                   2098 ;------------------------------------------------------------
                                   2099 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2100 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2101 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2102 ;addr                      Allocated to registers r7 
                                   2103 ;j                         Allocated to registers 
                                   2104 ;------------------------------------------------------------
                           000406  2105 	G$i2c_read_data$0$0 ==.
                           000406  2106 	C$i2c.h$267$1$106 ==.
                                   2107 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2108 ;	-----------------------------------------
                                   2109 ;	 function i2c_read_data
                                   2110 ;	-----------------------------------------
      0004B3                       2111 _i2c_read_data:
      0004B3 AF 82            [24] 2112 	mov	r7,dpl
                           000408  2113 	C$i2c.h$271$1$108 ==.
                                   2114 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004B5 C2 AF            [12] 2115 	clr	_EA
                           00040A  2116 	C$i2c.h$272$1$108 ==.
                                   2117 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004B7 C0 07            [24] 2118 	push	ar7
      0004B9 12 03 FE         [24] 2119 	lcall	_i2c_start
      0004BC D0 07            [24] 2120 	pop	ar7
                           000411  2121 	C$i2c.h$273$1$108 ==.
                                   2122 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004BE 74 FE            [12] 2123 	mov	a,#0xfe
      0004C0 5F               [12] 2124 	anl	a,r7
      0004C1 F5 82            [12] 2125 	mov	dpl,a
      0004C3 C0 07            [24] 2126 	push	ar7
      0004C5 12 04 0B         [24] 2127 	lcall	_i2c_write
                           00041B  2128 	C$i2c.h$274$1$108 ==.
                                   2129 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004C8 85 15 82         [24] 2130 	mov	dpl,_i2c_read_data_PARM_2
      0004CB 12 04 14         [24] 2131 	lcall	_i2c_write_and_stop
                           000421  2132 	C$i2c.h$275$1$108 ==.
                                   2133 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004CE 12 03 FE         [24] 2134 	lcall	_i2c_start
      0004D1 D0 07            [24] 2135 	pop	ar7
                           000426  2136 	C$i2c.h$276$1$108 ==.
                                   2137 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004D3 74 01            [12] 2138 	mov	a,#0x01
      0004D5 4F               [12] 2139 	orl	a,r7
      0004D6 F5 82            [12] 2140 	mov	dpl,a
      0004D8 12 04 0B         [24] 2141 	lcall	_i2c_write
                           00042E  2142 	C$i2c.h$277$1$108 ==.
                                   2143 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      0004DB 7F 00            [12] 2144 	mov	r7,#0x00
      0004DD                       2145 00103$:
      0004DD AD 19            [24] 2146 	mov	r5,_i2c_read_data_PARM_4
      0004DF 7E 00            [12] 2147 	mov	r6,#0x00
      0004E1 1D               [12] 2148 	dec	r5
      0004E2 BD FF 01         [24] 2149 	cjne	r5,#0xff,00114$
      0004E5 1E               [12] 2150 	dec	r6
      0004E6                       2151 00114$:
      0004E6 8F 03            [24] 2152 	mov	ar3,r7
      0004E8 7C 00            [12] 2153 	mov	r4,#0x00
      0004EA C3               [12] 2154 	clr	c
      0004EB EB               [12] 2155 	mov	a,r3
      0004EC 9D               [12] 2156 	subb	a,r5
      0004ED EC               [12] 2157 	mov	a,r4
      0004EE 64 80            [12] 2158 	xrl	a,#0x80
      0004F0 8E F0            [24] 2159 	mov	b,r6
      0004F2 63 F0 80         [24] 2160 	xrl	b,#0x80
      0004F5 95 F0            [12] 2161 	subb	a,b
      0004F7 50 2E            [24] 2162 	jnc	00101$
                           00044C  2163 	C$i2c.h$279$2$109 ==.
                                   2164 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      0004F9 D2 C2            [12] 2165 	setb	_AA
                           00044E  2166 	C$i2c.h$280$2$109 ==.
                                   2167 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      0004FB EF               [12] 2168 	mov	a,r7
      0004FC 25 16            [12] 2169 	add	a,_i2c_read_data_PARM_3
      0004FE FC               [12] 2170 	mov	r4,a
      0004FF E4               [12] 2171 	clr	a
      000500 35 17            [12] 2172 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000502 FD               [12] 2173 	mov	r5,a
      000503 AE 18            [24] 2174 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000505 C0 07            [24] 2175 	push	ar7
      000507 C0 06            [24] 2176 	push	ar6
      000509 C0 05            [24] 2177 	push	ar5
      00050B C0 04            [24] 2178 	push	ar4
      00050D 12 04 1F         [24] 2179 	lcall	_i2c_read
      000510 AB 82            [24] 2180 	mov	r3,dpl
      000512 D0 04            [24] 2181 	pop	ar4
      000514 D0 05            [24] 2182 	pop	ar5
      000516 D0 06            [24] 2183 	pop	ar6
      000518 D0 07            [24] 2184 	pop	ar7
      00051A 8C 82            [24] 2185 	mov	dpl,r4
      00051C 8D 83            [24] 2186 	mov	dph,r5
      00051E 8E F0            [24] 2187 	mov	b,r6
      000520 EB               [12] 2188 	mov	a,r3
      000521 12 07 B5         [24] 2189 	lcall	__gptrput
                           000477  2190 	C$i2c.h$277$1$108 ==.
                                   2191 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000524 0F               [12] 2192 	inc	r7
      000525 80 B6            [24] 2193 	sjmp	00103$
      000527                       2194 00101$:
                           00047A  2195 	C$i2c.h$282$1$108 ==.
                                   2196 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000527 C2 C2            [12] 2197 	clr	_AA
                           00047C  2198 	C$i2c.h$283$1$108 ==.
                                   2199 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000529 AE 19            [24] 2200 	mov	r6,_i2c_read_data_PARM_4
      00052B 7F 00            [12] 2201 	mov	r7,#0x00
      00052D 1E               [12] 2202 	dec	r6
      00052E BE FF 01         [24] 2203 	cjne	r6,#0xff,00116$
      000531 1F               [12] 2204 	dec	r7
      000532                       2205 00116$:
      000532 EE               [12] 2206 	mov	a,r6
      000533 25 16            [12] 2207 	add	a,_i2c_read_data_PARM_3
      000535 FE               [12] 2208 	mov	r6,a
      000536 EF               [12] 2209 	mov	a,r7
      000537 35 17            [12] 2210 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000539 FF               [12] 2211 	mov	r7,a
      00053A AD 18            [24] 2212 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00053C C0 07            [24] 2213 	push	ar7
      00053E C0 06            [24] 2214 	push	ar6
      000540 C0 05            [24] 2215 	push	ar5
      000542 12 04 28         [24] 2216 	lcall	_i2c_read_and_stop
      000545 AC 82            [24] 2217 	mov	r4,dpl
      000547 D0 05            [24] 2218 	pop	ar5
      000549 D0 06            [24] 2219 	pop	ar6
      00054B D0 07            [24] 2220 	pop	ar7
      00054D 8E 82            [24] 2221 	mov	dpl,r6
      00054F 8F 83            [24] 2222 	mov	dph,r7
      000551 8D F0            [24] 2223 	mov	b,r5
      000553 EC               [12] 2224 	mov	a,r4
      000554 12 07 B5         [24] 2225 	lcall	__gptrput
                           0004AA  2226 	C$i2c.h$284$1$108 ==.
                                   2227 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000557 D2 AF            [12] 2228 	setb	_EA
                           0004AC  2229 	C$i2c.h$285$1$108 ==.
                           0004AC  2230 	XG$i2c_read_data$0$0 ==.
      000559 22               [24] 2231 	ret
                                   2232 ;------------------------------------------------------------
                                   2233 ;Allocation info for local variables in function 'Accel_Init'
                                   2234 ;------------------------------------------------------------
                           0004AD  2235 	G$Accel_Init$0$0 ==.
                           0004AD  2236 	C$i2c.h$294$1$108 ==.
                                   2237 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2238 ;	-----------------------------------------
                                   2239 ;	 function Accel_Init
                                   2240 ;	-----------------------------------------
      00055A                       2241 _Accel_Init:
                           0004AD  2242 	C$i2c.h$298$1$111 ==.
                                   2243 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      00055A 75 08 23         [24] 2244 	mov	_Data2,#0x23
                           0004B0  2245 	C$i2c.h$300$1$111 ==.
                                   2246 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00055D 75 09 00         [24] 2247 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2248 	C$i2c.h$301$1$111 ==.
                                   2249 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      000560 75 09 10         [24] 2250 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2251 	C$i2c.h$302$1$111 ==.
                                   2252 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      000563 75 0A 00         [24] 2253 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2254 	C$i2c.h$304$1$111 ==.
                                   2255 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      000566 75 11 08         [24] 2256 	mov	_i2c_write_data_PARM_3,#_Data2
      000569 75 12 00         [24] 2257 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00056C 75 13 40         [24] 2258 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00056F 75 10 20         [24] 2259 	mov	_i2c_write_data_PARM_2,#0x20
      000572 75 14 01         [24] 2260 	mov	_i2c_write_data_PARM_4,#0x01
      000575 75 82 30         [24] 2261 	mov	dpl,#0x30
      000578 12 04 39         [24] 2262 	lcall	_i2c_write_data
                           0004CE  2263 	C$i2c.h$310$1$111 ==.
                           0004CE  2264 	XG$Accel_Init$0$0 ==.
      00057B 22               [24] 2265 	ret
                                   2266 ;------------------------------------------------------------
                                   2267 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2268 ;------------------------------------------------------------
                           0004CF  2269 	G$Accel_Init_C$0$0 ==.
                           0004CF  2270 	C$i2c.h$313$1$111 ==.
                                   2271 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2272 ;	-----------------------------------------
                                   2273 ;	 function Accel_Init_C
                                   2274 ;	-----------------------------------------
      00057C                       2275 _Accel_Init_C:
                           0004CF  2276 	C$i2c.h$318$1$113 ==.
                                   2277 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      00057C 75 08 04         [24] 2278 	mov	_Data2,#0x04
                           0004D2  2279 	C$i2c.h$319$1$113 ==.
                                   2280 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      00057F 75 11 08         [24] 2281 	mov	_i2c_write_data_PARM_3,#_Data2
      000582 75 12 00         [24] 2282 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000585 75 13 40         [24] 2283 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000588 75 10 23         [24] 2284 	mov	_i2c_write_data_PARM_2,#0x23
      00058B 75 14 01         [24] 2285 	mov	_i2c_write_data_PARM_4,#0x01
      00058E 75 82 3A         [24] 2286 	mov	dpl,#0x3a
      000591 12 04 39         [24] 2287 	lcall	_i2c_write_data
                           0004E7  2288 	C$i2c.h$321$1$113 ==.
                                   2289 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      000594 75 08 6B         [24] 2290 	mov	_Data2,#0x6b
                           0004EA  2291 	C$i2c.h$323$1$113 ==.
                                   2292 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      000597 75 09 00         [24] 2293 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2294 	C$i2c.h$325$1$113 ==.
                                   2295 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      00059A 75 0A 00         [24] 2296 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2297 	C$i2c.h$326$1$113 ==.
                                   2298 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      00059D 75 11 08         [24] 2299 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A0 75 12 00         [24] 2300 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005A3 75 13 40         [24] 2301 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005A6 75 10 20         [24] 2302 	mov	_i2c_write_data_PARM_2,#0x20
      0005A9 75 14 01         [24] 2303 	mov	_i2c_write_data_PARM_4,#0x01
      0005AC 75 82 3A         [24] 2304 	mov	dpl,#0x3a
      0005AF 12 04 39         [24] 2305 	lcall	_i2c_write_data
                           000505  2306 	C$i2c.h$328$1$113 ==.
                           000505  2307 	XG$Accel_Init_C$0$0 ==.
      0005B2 22               [24] 2308 	ret
                                   2309 ;------------------------------------------------------------
                                   2310 ;Allocation info for local variables in function 'main'
                                   2311 ;------------------------------------------------------------
                                   2312 ;keypad                    Allocated to registers r7 
                                   2313 ;cool                      Allocated to registers r6 
                                   2314 ;------------------------------------------------------------
                           000506  2315 	G$main$0$0 ==.
                           000506  2316 	C$kpdlcdtestPCA.c$37$1$113 ==.
                                   2317 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:37: void main(void)
                                   2318 ;	-----------------------------------------
                                   2319 ;	 function main
                                   2320 ;	-----------------------------------------
      0005B3                       2321 _main:
                           000506  2322 	C$kpdlcdtestPCA.c$40$1$122 ==.
                                   2323 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:40: Sys_Init();     // System Initialization - MUST BE 1st EXECUTABLE STATEMENT
      0005B3 12 00 E4         [24] 2324 	lcall	_Sys_Init
                           000509  2325 	C$kpdlcdtestPCA.c$41$1$122 ==.
                                   2326 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:41: Port_Init();    // Initialize ports 2 and 3 - XBR0 set to 0x05, UART0 & SMB
      0005B6 12 07 3A         [24] 2327 	lcall	_Port_Init
                           00050C  2328 	C$kpdlcdtestPCA.c$42$1$122 ==.
                                   2329 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:42: Interrupt_Init();   // You may want to change XBR0 to match your SMB wiring
      0005B9 12 07 3E         [24] 2330 	lcall	_Interrupt_Init
                           00050F  2331 	C$kpdlcdtestPCA.c$43$1$122 ==.
                                   2332 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:43: PCA_Init();
      0005BC 12 07 47         [24] 2333 	lcall	_PCA_Init
                           000512  2334 	C$kpdlcdtestPCA.c$44$1$122 ==.
                                   2335 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:44: SMB0_Init();
      0005BF 12 07 4E         [24] 2336 	lcall	_SMB0_Init
                           000515  2337 	C$kpdlcdtestPCA.c$45$1$122 ==.
                                   2338 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:45: putchar('\r');  // Dummy write to serial port
      0005C2 75 82 0D         [24] 2339 	mov	dpl,#0x0d
      0005C5 12 00 F7         [24] 2340 	lcall	_putchar
                           00051B  2341 	C$kpdlcdtestPCA.c$46$1$122 ==.
                                   2342 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:46: printf("\nStart\r\n");
      0005C8 74 50            [12] 2343 	mov	a,#___str_3
      0005CA C0 E0            [24] 2344 	push	acc
      0005CC 74 0F            [12] 2345 	mov	a,#(___str_3 >> 8)
      0005CE C0 E0            [24] 2346 	push	acc
      0005D0 74 80            [12] 2347 	mov	a,#0x80
      0005D2 C0 E0            [24] 2348 	push	acc
      0005D4 12 09 0C         [24] 2349 	lcall	_printf
      0005D7 15 81            [12] 2350 	dec	sp
      0005D9 15 81            [12] 2351 	dec	sp
      0005DB 15 81            [12] 2352 	dec	sp
                           000530  2353 	C$kpdlcdtestPCA.c$48$1$122 ==.
                                   2354 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:48: Counts = 0;
      0005DD E4               [12] 2355 	clr	a
      0005DE F5 1A            [12] 2356 	mov	_Counts,a
      0005E0 F5 1B            [12] 2357 	mov	(_Counts + 1),a
                           000535  2358 	C$kpdlcdtestPCA.c$49$1$122 ==.
                                   2359 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:49: while (Counts < 1); // Wait a long time (1s) for keypad & LCD to initialize
      0005E2                       2360 00101$:
      0005E2 C3               [12] 2361 	clr	c
      0005E3 E5 1A            [12] 2362 	mov	a,_Counts
      0005E5 94 01            [12] 2363 	subb	a,#0x01
      0005E7 E5 1B            [12] 2364 	mov	a,(_Counts + 1)
      0005E9 94 00            [12] 2365 	subb	a,#0x00
      0005EB 40 F5            [24] 2366 	jc	00101$
                           000540  2367 	C$kpdlcdtestPCA.c$51$1$122 ==.
                                   2368 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:51: lcd_clear();
      0005ED 12 01 AD         [24] 2369 	lcall	_lcd_clear
                           000543  2370 	C$kpdlcdtestPCA.c$52$1$122 ==.
                                   2371 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:52: lcd_print("Calibration:\nHello world!\n012_345_678:\nabc def ghij");
      0005F0 74 59            [12] 2372 	mov	a,#___str_4
      0005F2 C0 E0            [24] 2373 	push	acc
      0005F4 74 0F            [12] 2374 	mov	a,#(___str_4 >> 8)
      0005F6 C0 E0            [24] 2375 	push	acc
      0005F8 74 80            [12] 2376 	mov	a,#0x80
      0005FA C0 E0            [24] 2377 	push	acc
      0005FC 12 01 28         [24] 2378 	lcall	_lcd_print
      0005FF 15 81            [12] 2379 	dec	sp
      000601 15 81            [12] 2380 	dec	sp
      000603 15 81            [12] 2381 	dec	sp
                           000558  2382 	C$kpdlcdtestPCA.c$55$2$123 ==.
                                   2383 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:55: while (1) {
      000605                       2384 00112$:
                           000558  2385 	C$kpdlcdtestPCA.c$56$3$124 ==.
                                   2386 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:56: keypad = read_keypad();
      000605 12 01 E6         [24] 2387 	lcall	_read_keypad
      000608 AF 82            [24] 2388 	mov	r7,dpl
                           00055D  2389 	C$kpdlcdtestPCA.c$57$3$124 ==.
                                   2390 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:57: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      00060A C0 07            [24] 2391 	push	ar7
      00060C 12 07 93         [24] 2392 	lcall	_pause
      00060F D0 07            [24] 2393 	pop	ar7
                           000564  2394 	C$kpdlcdtestPCA.c$60$3$124 ==.
                                   2395 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:60: if (keypad != 0xFF) {
      000611 BF FF 02         [24] 2396 	cjne	r7,#0xff,00160$
      000614 80 EF            [24] 2397 	sjmp	00112$
      000616                       2398 00160$:
                           000569  2399 	C$kpdlcdtestPCA.c$61$4$125 ==.
                                   2400 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:61: while (read_keypad() != 0xFF);
      000616                       2401 00104$:
      000616 C0 07            [24] 2402 	push	ar7
      000618 12 01 E6         [24] 2403 	lcall	_read_keypad
      00061B AE 82            [24] 2404 	mov	r6,dpl
      00061D D0 07            [24] 2405 	pop	ar7
      00061F BE FF F4         [24] 2406 	cjne	r6,#0xff,00104$
                           000575  2407 	C$kpdlcdtestPCA.c$62$4$125 ==.
                                   2408 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:62: lcd_clear();
      000622 C0 07            [24] 2409 	push	ar7
      000624 12 01 AD         [24] 2410 	lcall	_lcd_clear
      000627 D0 07            [24] 2411 	pop	ar7
                           00057C  2412 	C$kpdlcdtestPCA.c$63$4$125 ==.
                                   2413 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:63: lcd_print("Your key was:\n %c,  = Hex %X\n press another", keypad, keypad);
      000629 8F 05            [24] 2414 	mov	ar5,r7
      00062B 7E 00            [12] 2415 	mov	r6,#0x00
      00062D C0 07            [24] 2416 	push	ar7
      00062F C0 06            [24] 2417 	push	ar6
      000631 C0 05            [24] 2418 	push	ar5
      000633 C0 05            [24] 2419 	push	ar5
      000635 C0 06            [24] 2420 	push	ar6
      000637 C0 05            [24] 2421 	push	ar5
      000639 C0 06            [24] 2422 	push	ar6
      00063B 74 8D            [12] 2423 	mov	a,#___str_5
      00063D C0 E0            [24] 2424 	push	acc
      00063F 74 0F            [12] 2425 	mov	a,#(___str_5 >> 8)
      000641 C0 E0            [24] 2426 	push	acc
      000643 74 80            [12] 2427 	mov	a,#0x80
      000645 C0 E0            [24] 2428 	push	acc
      000647 12 01 28         [24] 2429 	lcall	_lcd_print
      00064A E5 81            [12] 2430 	mov	a,sp
      00064C 24 F9            [12] 2431 	add	a,#0xf9
      00064E F5 81            [12] 2432 	mov	sp,a
      000650 D0 05            [24] 2433 	pop	ar5
      000652 D0 06            [24] 2434 	pop	ar6
                           0005A7  2435 	C$kpdlcdtestPCA.c$64$4$125 ==.
                                   2436 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:64: printf("\n\rYour key was: %c,  = Hex %X", keypad, keypad);
      000654 C0 05            [24] 2437 	push	ar5
      000656 C0 06            [24] 2438 	push	ar6
      000658 C0 05            [24] 2439 	push	ar5
      00065A C0 06            [24] 2440 	push	ar6
      00065C 74 B9            [12] 2441 	mov	a,#___str_6
      00065E C0 E0            [24] 2442 	push	acc
      000660 74 0F            [12] 2443 	mov	a,#(___str_6 >> 8)
      000662 C0 E0            [24] 2444 	push	acc
      000664 74 80            [12] 2445 	mov	a,#0x80
      000666 C0 E0            [24] 2446 	push	acc
      000668 12 09 0C         [24] 2447 	lcall	_printf
      00066B E5 81            [12] 2448 	mov	a,sp
      00066D 24 F9            [12] 2449 	add	a,#0xf9
      00066F F5 81            [12] 2450 	mov	sp,a
      000671 D0 07            [24] 2451 	pop	ar7
                           0005C6  2452 	C$kpdlcdtestPCA.c$65$4$125 ==.
                                   2453 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:65: if(keypad == 0)printf("   **Wire Connection/XBR0 Error**   "); // A returned value of 0 (0x00) indicates wiring error 
      000673 EF               [12] 2454 	mov	a,r7
      000674 70 19            [24] 2455 	jnz	00122$
      000676 C0 07            [24] 2456 	push	ar7
      000678 74 D7            [12] 2457 	mov	a,#___str_7
      00067A C0 E0            [24] 2458 	push	acc
      00067C 74 0F            [12] 2459 	mov	a,#(___str_7 >> 8)
      00067E C0 E0            [24] 2460 	push	acc
      000680 74 80            [12] 2461 	mov	a,#0x80
      000682 C0 E0            [24] 2462 	push	acc
      000684 12 09 0C         [24] 2463 	lcall	_printf
      000687 15 81            [12] 2464 	dec	sp
      000689 15 81            [12] 2465 	dec	sp
      00068B 15 81            [12] 2466 	dec	sp
      00068D D0 07            [24] 2467 	pop	ar7
                           0005E2  2468 	C$kpdlcdtestPCA.c$69$2$123 ==.
                                   2469 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:69: while (1) {
      00068F                       2470 00122$:
                           0005E2  2471 	C$kpdlcdtestPCA.c$70$3$126 ==.
                                   2472 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:70: cool = read_keypad();
      00068F C0 07            [24] 2473 	push	ar7
      000691 12 01 E6         [24] 2474 	lcall	_read_keypad
      000694 AE 82            [24] 2475 	mov	r6,dpl
                           0005E9  2476 	C$kpdlcdtestPCA.c$71$3$126 ==.
                                   2477 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:71: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      000696 C0 06            [24] 2478 	push	ar6
      000698 12 07 93         [24] 2479 	lcall	_pause
      00069B D0 06            [24] 2480 	pop	ar6
      00069D D0 07            [24] 2481 	pop	ar7
                           0005F2  2482 	C$kpdlcdtestPCA.c$74$3$126 ==.
                                   2483 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:74: if (cool != 0xFF) {
      00069F BE FF 02         [24] 2484 	cjne	r6,#0xff,00164$
      0006A2 80 EB            [24] 2485 	sjmp	00122$
      0006A4                       2486 00164$:
                           0005F7  2487 	C$kpdlcdtestPCA.c$75$4$127 ==.
                                   2488 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:75: while (read_keypad() != 0xFF);
      0006A4                       2489 00114$:
      0006A4 C0 07            [24] 2490 	push	ar7
      0006A6 C0 06            [24] 2491 	push	ar6
      0006A8 12 01 E6         [24] 2492 	lcall	_read_keypad
      0006AB AD 82            [24] 2493 	mov	r5,dpl
      0006AD D0 06            [24] 2494 	pop	ar6
      0006AF D0 07            [24] 2495 	pop	ar7
      0006B1 BD FF F0         [24] 2496 	cjne	r5,#0xff,00114$
                           000607  2497 	C$kpdlcdtestPCA.c$76$4$127 ==.
                                   2498 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:76: lcd_clear();
      0006B4 C0 07            [24] 2499 	push	ar7
      0006B6 C0 06            [24] 2500 	push	ar6
      0006B8 12 01 AD         [24] 2501 	lcall	_lcd_clear
      0006BB D0 06            [24] 2502 	pop	ar6
      0006BD D0 07            [24] 2503 	pop	ar7
                           000612  2504 	C$kpdlcdtestPCA.c$77$4$127 ==.
                                   2505 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:77: keypad = (keypad - 0x30) * 10;
      0006BF EF               [12] 2506 	mov	a,r7
      0006C0 24 D0            [12] 2507 	add	a,#0xd0
      0006C2 75 F0 0A         [24] 2508 	mov	b,#0x0a
      0006C5 A4               [48] 2509 	mul	ab
      0006C6 FF               [12] 2510 	mov	r7,a
                           00061A  2511 	C$kpdlcdtestPCA.c$78$4$127 ==.
                                   2512 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:78: keypad = keypad + (cool - 0x30);
      0006C7 EE               [12] 2513 	mov	a,r6
      0006C8 24 D0            [12] 2514 	add	a,#0xd0
      0006CA 2F               [12] 2515 	add	a,r7
                           00061E  2516 	C$kpdlcdtestPCA.c$79$4$127 ==.
                                   2517 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:79: lcd_print("Your key was:\n %c,  = Hex %X\n Total was: %d\n", cool, cool, keypad);
      0006CB FF               [12] 2518 	mov	r7,a
      0006CC FC               [12] 2519 	mov	r4,a
      0006CD 7D 00            [12] 2520 	mov	r5,#0x00
      0006CF 7B 00            [12] 2521 	mov	r3,#0x00
      0006D1 C0 07            [24] 2522 	push	ar7
      0006D3 C0 06            [24] 2523 	push	ar6
      0006D5 C0 03            [24] 2524 	push	ar3
      0006D7 C0 04            [24] 2525 	push	ar4
      0006D9 C0 05            [24] 2526 	push	ar5
      0006DB C0 06            [24] 2527 	push	ar6
      0006DD C0 03            [24] 2528 	push	ar3
      0006DF C0 06            [24] 2529 	push	ar6
      0006E1 C0 03            [24] 2530 	push	ar3
      0006E3 74 FC            [12] 2531 	mov	a,#___str_8
      0006E5 C0 E0            [24] 2532 	push	acc
      0006E7 74 0F            [12] 2533 	mov	a,#(___str_8 >> 8)
      0006E9 C0 E0            [24] 2534 	push	acc
      0006EB 74 80            [12] 2535 	mov	a,#0x80
      0006ED C0 E0            [24] 2536 	push	acc
      0006EF 12 01 28         [24] 2537 	lcall	_lcd_print
      0006F2 E5 81            [12] 2538 	mov	a,sp
      0006F4 24 F7            [12] 2539 	add	a,#0xf7
      0006F6 F5 81            [12] 2540 	mov	sp,a
      0006F8 D0 03            [24] 2541 	pop	ar3
      0006FA D0 06            [24] 2542 	pop	ar6
                           00064F  2543 	C$kpdlcdtestPCA.c$80$4$127 ==.
                                   2544 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:80: printf("\n\rYour key was: %c,  = Hex %X", cool, cool);
      0006FC C0 06            [24] 2545 	push	ar6
      0006FE C0 03            [24] 2546 	push	ar3
      000700 C0 06            [24] 2547 	push	ar6
      000702 C0 03            [24] 2548 	push	ar3
      000704 74 B9            [12] 2549 	mov	a,#___str_6
      000706 C0 E0            [24] 2550 	push	acc
      000708 74 0F            [12] 2551 	mov	a,#(___str_6 >> 8)
      00070A C0 E0            [24] 2552 	push	acc
      00070C 74 80            [12] 2553 	mov	a,#0x80
      00070E C0 E0            [24] 2554 	push	acc
      000710 12 09 0C         [24] 2555 	lcall	_printf
      000713 E5 81            [12] 2556 	mov	a,sp
      000715 24 F9            [12] 2557 	add	a,#0xf9
      000717 F5 81            [12] 2558 	mov	sp,a
      000719 D0 07            [24] 2559 	pop	ar7
                           00066E  2560 	C$kpdlcdtestPCA.c$81$4$127 ==.
                                   2561 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:81: if(keypad == 0)printf("   **Wire Connection/XBR0 Error**   ");
      00071B EF               [12] 2562 	mov	a,r7
      00071C 60 03            [24] 2563 	jz	00167$
      00071E 02 06 05         [24] 2564 	ljmp	00112$
      000721                       2565 00167$:
      000721 74 D7            [12] 2566 	mov	a,#___str_7
      000723 C0 E0            [24] 2567 	push	acc
      000725 74 0F            [12] 2568 	mov	a,#(___str_7 >> 8)
      000727 C0 E0            [24] 2569 	push	acc
      000729 74 80            [12] 2570 	mov	a,#0x80
      00072B C0 E0            [24] 2571 	push	acc
      00072D 12 09 0C         [24] 2572 	lcall	_printf
      000730 15 81            [12] 2573 	dec	sp
      000732 15 81            [12] 2574 	dec	sp
      000734 15 81            [12] 2575 	dec	sp
                           000689  2576 	C$kpdlcdtestPCA.c$82$4$127 ==.
                                   2577 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:82: break;
      000736 02 06 05         [24] 2578 	ljmp	00112$
                           00068C  2579 	C$kpdlcdtestPCA.c$88$1$122 ==.
                           00068C  2580 	XG$main$0$0 ==.
      000739 22               [24] 2581 	ret
                                   2582 ;------------------------------------------------------------
                                   2583 ;Allocation info for local variables in function 'Port_Init'
                                   2584 ;------------------------------------------------------------
                           00068D  2585 	G$Port_Init$0$0 ==.
                           00068D  2586 	C$kpdlcdtestPCA.c$91$1$122 ==.
                                   2587 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:91: void Port_Init(void)	//0x05
                                   2588 ;	-----------------------------------------
                                   2589 ;	 function Port_Init
                                   2590 ;	-----------------------------------------
      00073A                       2591 _Port_Init:
                           00068D  2592 	C$kpdlcdtestPCA.c$93$1$129 ==.
                                   2593 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:93: XBR0 = 0x07;    // NOTE: Only UART0 & SMB enabled; SMB on P0.2 & P0.3
      00073A 75 E1 07         [24] 2594 	mov	_XBR0,#0x07
                           000690  2595 	C$kpdlcdtestPCA.c$94$1$129 ==.
                           000690  2596 	XG$Port_Init$0$0 ==.
      00073D 22               [24] 2597 	ret
                                   2598 ;------------------------------------------------------------
                                   2599 ;Allocation info for local variables in function 'Interrupt_Init'
                                   2600 ;------------------------------------------------------------
                           000691  2601 	G$Interrupt_Init$0$0 ==.
                           000691  2602 	C$kpdlcdtestPCA.c$96$1$129 ==.
                                   2603 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:96: void Interrupt_Init(void)
                                   2604 ;	-----------------------------------------
                                   2605 ;	 function Interrupt_Init
                                   2606 ;	-----------------------------------------
      00073E                       2607 _Interrupt_Init:
                           000691  2608 	C$kpdlcdtestPCA.c$98$1$131 ==.
                                   2609 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:98: IE |= 0x02;
      00073E 43 A8 02         [24] 2610 	orl	_IE,#0x02
                           000694  2611 	C$kpdlcdtestPCA.c$99$1$131 ==.
                                   2612 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:99: EIE1 |= 0x08;
      000741 43 E6 08         [24] 2613 	orl	_EIE1,#0x08
                           000697  2614 	C$kpdlcdtestPCA.c$100$1$131 ==.
                                   2615 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:100: EA = 1;
      000744 D2 AF            [12] 2616 	setb	_EA
                           000699  2617 	C$kpdlcdtestPCA.c$101$1$131 ==.
                           000699  2618 	XG$Interrupt_Init$0$0 ==.
      000746 22               [24] 2619 	ret
                                   2620 ;------------------------------------------------------------
                                   2621 ;Allocation info for local variables in function 'PCA_Init'
                                   2622 ;------------------------------------------------------------
                           00069A  2623 	G$PCA_Init$0$0 ==.
                           00069A  2624 	C$kpdlcdtestPCA.c$103$1$131 ==.
                                   2625 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:103: void PCA_Init(void)
                                   2626 ;	-----------------------------------------
                                   2627 ;	 function PCA_Init
                                   2628 ;	-----------------------------------------
      000747                       2629 _PCA_Init:
                           00069A  2630 	C$kpdlcdtestPCA.c$105$1$133 ==.
                                   2631 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:105: PCA0MD = 0x81;      // SYSCLK/12, enable CF interrupts, suspend when idle
      000747 75 D9 81         [24] 2632 	mov	_PCA0MD,#0x81
                           00069D  2633 	C$kpdlcdtestPCA.c$107$1$133 ==.
                                   2634 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:107: PCA0CN |= 0x40;     // enable PCA
      00074A 43 D8 40         [24] 2635 	orl	_PCA0CN,#0x40
                           0006A0  2636 	C$kpdlcdtestPCA.c$108$1$133 ==.
                           0006A0  2637 	XG$PCA_Init$0$0 ==.
      00074D 22               [24] 2638 	ret
                                   2639 ;------------------------------------------------------------
                                   2640 ;Allocation info for local variables in function 'SMB0_Init'
                                   2641 ;------------------------------------------------------------
                           0006A1  2642 	G$SMB0_Init$0$0 ==.
                           0006A1  2643 	C$kpdlcdtestPCA.c$110$1$133 ==.
                                   2644 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:110: void SMB0_Init(void)    // This was at the top, moved it here to call wait()
                                   2645 ;	-----------------------------------------
                                   2646 ;	 function SMB0_Init
                                   2647 ;	-----------------------------------------
      00074E                       2648 _SMB0_Init:
                           0006A1  2649 	C$kpdlcdtestPCA.c$112$1$135 ==.
                                   2650 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:112: SMB0CR = 0x93;      // Set SCL to 100KHz
      00074E 75 CF 93         [24] 2651 	mov	_SMB0CR,#0x93
                           0006A4  2652 	C$kpdlcdtestPCA.c$113$1$135 ==.
                                   2653 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:113: ENSMB = 1;          // Enable SMBUS0
      000751 D2 C6            [12] 2654 	setb	_ENSMB
                           0006A6  2655 	C$kpdlcdtestPCA.c$114$1$135 ==.
                           0006A6  2656 	XG$SMB0_Init$0$0 ==.
      000753 22               [24] 2657 	ret
                                   2658 ;------------------------------------------------------------
                                   2659 ;Allocation info for local variables in function 'PCA_ISR'
                                   2660 ;------------------------------------------------------------
                           0006A7  2661 	G$PCA_ISR$0$0 ==.
                           0006A7  2662 	C$kpdlcdtestPCA.c$116$1$135 ==.
                                   2663 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:116: void PCA_ISR(void) __interrupt 9
                                   2664 ;	-----------------------------------------
                                   2665 ;	 function PCA_ISR
                                   2666 ;	-----------------------------------------
      000754                       2667 _PCA_ISR:
      000754 C0 E0            [24] 2668 	push	acc
      000756 C0 D0            [24] 2669 	push	psw
                           0006AB  2670 	C$kpdlcdtestPCA.c$118$1$137 ==.
                                   2671 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:118: if (CF)
                           0006AB  2672 	C$kpdlcdtestPCA.c$120$2$138 ==.
                                   2673 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:120: CF = 0;                     // clear the interrupt flag
      000758 10 DF 02         [24] 2674 	jbc	_CF,00114$
      00075B 80 2E            [24] 2675 	sjmp	00104$
      00075D                       2676 00114$:
                           0006B0  2677 	C$kpdlcdtestPCA.c$121$2$138 ==.
                                   2678 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:121: nOverflows++;               // continuous overflow counter
      00075D 05 1E            [12] 2679 	inc	_nOverflows
      00075F E4               [12] 2680 	clr	a
      000760 B5 1E 02         [24] 2681 	cjne	a,_nOverflows,00115$
      000763 05 1F            [12] 2682 	inc	(_nOverflows + 1)
      000765                       2683 00115$:
                           0006B8  2684 	C$kpdlcdtestPCA.c$122$2$138 ==.
                                   2685 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:122: nCounts++;
      000765 05 1C            [12] 2686 	inc	_nCounts
      000767 E4               [12] 2687 	clr	a
      000768 B5 1C 02         [24] 2688 	cjne	a,_nCounts,00116$
      00076B 05 1D            [12] 2689 	inc	(_nCounts + 1)
      00076D                       2690 00116$:
                           0006C0  2691 	C$kpdlcdtestPCA.c$123$2$138 ==.
                                   2692 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:123: PCA0L = PCA_START & 0xFF;   // low byte of start count
      00076D 75 E9 00         [24] 2693 	mov	_PCA0L,#0x00
                           0006C3  2694 	C$kpdlcdtestPCA.c$124$2$138 ==.
                                   2695 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:124: PCA0H = PCA_START >> 8;     // high byte of start count
      000770 75 F9 70         [24] 2696 	mov	_PCA0H,#0x70
                           0006C6  2697 	C$kpdlcdtestPCA.c$125$2$138 ==.
                                   2698 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:125: if (nCounts > 50)
      000773 C3               [12] 2699 	clr	c
      000774 74 32            [12] 2700 	mov	a,#0x32
      000776 95 1C            [12] 2701 	subb	a,_nCounts
      000778 E4               [12] 2702 	clr	a
      000779 95 1D            [12] 2703 	subb	a,(_nCounts + 1)
      00077B 50 11            [24] 2704 	jnc	00106$
                           0006D0  2705 	C$kpdlcdtestPCA.c$127$3$139 ==.
                                   2706 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:127: nCounts = 0;
      00077D E4               [12] 2707 	clr	a
      00077E F5 1C            [12] 2708 	mov	_nCounts,a
      000780 F5 1D            [12] 2709 	mov	(_nCounts + 1),a
                           0006D5  2710 	C$kpdlcdtestPCA.c$128$3$139 ==.
                                   2711 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:128: Counts++;               // seconds counter
      000782 05 1A            [12] 2712 	inc	_Counts
                                   2713 ;	genFromRTrack removed	clr	a
      000784 B5 1A 07         [24] 2714 	cjne	a,_Counts,00106$
      000787 05 1B            [12] 2715 	inc	(_Counts + 1)
      000789 80 03            [24] 2716 	sjmp	00106$
      00078B                       2717 00104$:
                           0006DE  2718 	C$kpdlcdtestPCA.c$131$1$137 ==.
                                   2719 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:131: else PCA0CN &= 0xC0;           // clear all other 9-type interrupts
      00078B 53 D8 C0         [24] 2720 	anl	_PCA0CN,#0xc0
      00078E                       2721 00106$:
      00078E D0 D0            [24] 2722 	pop	psw
      000790 D0 E0            [24] 2723 	pop	acc
                           0006E5  2724 	C$kpdlcdtestPCA.c$132$1$137 ==.
                           0006E5  2725 	XG$PCA_ISR$0$0 ==.
      000792 32               [24] 2726 	reti
                                   2727 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2728 ;	eliminated unneeded push/pop dpl
                                   2729 ;	eliminated unneeded push/pop dph
                                   2730 ;	eliminated unneeded push/pop b
                                   2731 ;------------------------------------------------------------
                                   2732 ;Allocation info for local variables in function 'pause'
                                   2733 ;------------------------------------------------------------
                           0006E6  2734 	G$pause$0$0 ==.
                           0006E6  2735 	C$kpdlcdtestPCA.c$134$1$137 ==.
                                   2736 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:134: void pause(void)
                                   2737 ;	-----------------------------------------
                                   2738 ;	 function pause
                                   2739 ;	-----------------------------------------
      000793                       2740 _pause:
                           0006E6  2741 	C$kpdlcdtestPCA.c$136$1$141 ==.
                                   2742 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:136: nCounts = 0;
      000793 E4               [12] 2743 	clr	a
      000794 F5 1C            [12] 2744 	mov	_nCounts,a
      000796 F5 1D            [12] 2745 	mov	(_nCounts + 1),a
                           0006EB  2746 	C$kpdlcdtestPCA.c$137$1$141 ==.
                                   2747 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:137: while (nCounts < 6);// 1 count -> (65536-PCA_START) x 12/22118400 = 20ms
      000798                       2748 00101$:
      000798 C3               [12] 2749 	clr	c
      000799 E5 1C            [12] 2750 	mov	a,_nCounts
      00079B 94 06            [12] 2751 	subb	a,#0x06
      00079D E5 1D            [12] 2752 	mov	a,(_nCounts + 1)
      00079F 94 00            [12] 2753 	subb	a,#0x00
      0007A1 40 F5            [24] 2754 	jc	00101$
                           0006F6  2755 	C$kpdlcdtestPCA.c$138$1$141 ==.
                           0006F6  2756 	XG$pause$0$0 ==.
      0007A3 22               [24] 2757 	ret
                                   2758 ;------------------------------------------------------------
                                   2759 ;Allocation info for local variables in function 'wait'
                                   2760 ;------------------------------------------------------------
                           0006F7  2761 	G$wait$0$0 ==.
                           0006F7  2762 	C$kpdlcdtestPCA.c$140$1$141 ==.
                                   2763 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:140: void wait(void)
                                   2764 ;	-----------------------------------------
                                   2765 ;	 function wait
                                   2766 ;	-----------------------------------------
      0007A4                       2767 _wait:
                           0006F7  2768 	C$kpdlcdtestPCA.c$142$1$143 ==.
                                   2769 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:142: nCounts = 0;
      0007A4 E4               [12] 2770 	clr	a
      0007A5 F5 1C            [12] 2771 	mov	_nCounts,a
      0007A7 F5 1D            [12] 2772 	mov	(_nCounts + 1),a
                           0006FC  2773 	C$kpdlcdtestPCA.c$143$1$143 ==.
                                   2774 ;	C:\Users\gerlig\Documents\School\LITEC\WRKSHT10\kpdlcdtestPCA.c:143: while (nCounts < 50);    // 50 counts -> 50 x 20ms = 1000ms
      0007A9                       2775 00101$:
      0007A9 C3               [12] 2776 	clr	c
      0007AA E5 1C            [12] 2777 	mov	a,_nCounts
      0007AC 94 32            [12] 2778 	subb	a,#0x32
      0007AE E5 1D            [12] 2779 	mov	a,(_nCounts + 1)
      0007B0 94 00            [12] 2780 	subb	a,#0x00
      0007B2 40 F5            [24] 2781 	jc	00101$
                           000707  2782 	C$kpdlcdtestPCA.c$144$1$143 ==.
                           000707  2783 	XG$wait$0$0 ==.
      0007B4 22               [24] 2784 	ret
                                   2785 	.area CSEG    (CODE)
                                   2786 	.area CONST   (CODE)
                           000000  2787 FkpdlcdtestPCA$__str_0$0$0 == .
      000F27                       2788 ___str_0:
      000F27 0A                    2789 	.db 0x0a
      000F28 54 79 70 65 20 64 69  2790 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      000F3C 00                    2791 	.db 0x00
                           000016  2792 FkpdlcdtestPCA$__str_1$0$0 == .
      000F3D                       2793 ___str_1:
      000F3D 20 20 20 20 20 25 63  2794 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      000F4C 00                    2795 	.db 0x00
                           000026  2796 FkpdlcdtestPCA$__str_2$0$0 == .
      000F4D                       2797 ___str_2:
      000F4D 25 63                 2798 	.ascii "%c"
      000F4F 00                    2799 	.db 0x00
                           000029  2800 FkpdlcdtestPCA$__str_3$0$0 == .
      000F50                       2801 ___str_3:
      000F50 0A                    2802 	.db 0x0a
      000F51 53 74 61 72 74        2803 	.ascii "Start"
      000F56 0D                    2804 	.db 0x0d
      000F57 0A                    2805 	.db 0x0a
      000F58 00                    2806 	.db 0x00
                           000032  2807 FkpdlcdtestPCA$__str_4$0$0 == .
      000F59                       2808 ___str_4:
      000F59 43 61 6C 69 62 72 61  2809 	.ascii "Calibration:"
             74 69 6F 6E 3A
      000F65 0A                    2810 	.db 0x0a
      000F66 48 65 6C 6C 6F 20 77  2811 	.ascii "Hello world!"
             6F 72 6C 64 21
      000F72 0A                    2812 	.db 0x0a
      000F73 30 31 32 5F 33 34 35  2813 	.ascii "012_345_678:"
             5F 36 37 38 3A
      000F7F 0A                    2814 	.db 0x0a
      000F80 61 62 63 20 64 65 66  2815 	.ascii "abc def ghij"
             20 67 68 69 6A
      000F8C 00                    2816 	.db 0x00
                           000066  2817 FkpdlcdtestPCA$__str_5$0$0 == .
      000F8D                       2818 ___str_5:
      000F8D 59 6F 75 72 20 6B 65  2819 	.ascii "Your key was:"
             79 20 77 61 73 3A
      000F9A 0A                    2820 	.db 0x0a
      000F9B 20 25 63 2C 20 20 3D  2821 	.ascii " %c,  = Hex %X"
             20 48 65 78 20 25 58
      000FA9 0A                    2822 	.db 0x0a
      000FAA 20 70 72 65 73 73 20  2823 	.ascii " press another"
             61 6E 6F 74 68 65 72
      000FB8 00                    2824 	.db 0x00
                           000092  2825 FkpdlcdtestPCA$__str_6$0$0 == .
      000FB9                       2826 ___str_6:
      000FB9 0A                    2827 	.db 0x0a
      000FBA 0D                    2828 	.db 0x0d
      000FBB 59 6F 75 72 20 6B 65  2829 	.ascii "Your key was: %c,  = Hex %X"
             79 20 77 61 73 3A 20
             25 63 2C 20 20 3D 20
             48 65 78 20 25 58
      000FD6 00                    2830 	.db 0x00
                           0000B0  2831 FkpdlcdtestPCA$__str_7$0$0 == .
      000FD7                       2832 ___str_7:
      000FD7 20 20 20 2A 2A 57 69  2833 	.ascii "   **Wire Connection/XBR0 Error**   "
             72 65 20 43 6F 6E 6E
             65 63 74 69 6F 6E 2F
             58 42 52 30 20 45 72
             72 6F 72 2A 2A 20 20
             20
      000FFB 00                    2834 	.db 0x00
                           0000D5  2835 FkpdlcdtestPCA$__str_8$0$0 == .
      000FFC                       2836 ___str_8:
      000FFC 59 6F 75 72 20 6B 65  2837 	.ascii "Your key was:"
             79 20 77 61 73 3A
      001009 0A                    2838 	.db 0x0a
      00100A 20 25 63 2C 20 20 3D  2839 	.ascii " %c,  = Hex %X"
             20 48 65 78 20 25 58
      001018 0A                    2840 	.db 0x0a
      001019 20 54 6F 74 61 6C 20  2841 	.ascii " Total was: %d"
             77 61 73 3A 20 25 64
      001027 0A                    2842 	.db 0x0a
      001028 00                    2843 	.db 0x00
                                   2844 	.area XINIT   (CODE)
                                   2845 	.area CABS    (ABS,CODE)
