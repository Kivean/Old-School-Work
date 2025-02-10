                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab3_2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_keypad
                                     13 	.globl _strlen
                                     14 	.globl _putchar
                                     15 	.globl _vsprintf
                                     16 	.globl _printf
                                     17 	.globl _getchar_nw
                                     18 	.globl _Sys_Init
                                     19 	.globl _UART0_Init
                                     20 	.globl _SYSCLK_Init
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
                                    306 	.globl _Data
                                    307 	.globl _addr
                                    308 	.globl _range
                                    309 	.globl _colrange
                                    310 	.globl _new_range
                                    311 	.globl _r_count
                                    312 	.globl _input
                                    313 	.globl _count
                                    314 	.globl _PW
                                    315 	.globl _PW_MAX
                                    316 	.globl _PW_MIN
                                    317 	.globl _PW_CENTER
                                    318 	.globl _i2c_read_data_PARM_4
                                    319 	.globl _i2c_read_data_PARM_3
                                    320 	.globl _i2c_read_data_PARM_2
                                    321 	.globl _i2c_write_data_PARM_4
                                    322 	.globl _i2c_write_data_PARM_3
                                    323 	.globl _i2c_write_data_PARM_2
                                    324 	.globl _aligned_alloc_PARM_2
                                    325 	.globl _Data2
                                    326 	.globl _lcd_print
                                    327 	.globl _lcd_clear
                                    328 	.globl _kpd_input
                                    329 	.globl _delay_time
                                    330 	.globl _i2c_start
                                    331 	.globl _i2c_write
                                    332 	.globl _i2c_write_and_stop
                                    333 	.globl _i2c_read
                                    334 	.globl _i2c_read_and_stop
                                    335 	.globl _i2c_write_data
                                    336 	.globl _i2c_read_data
                                    337 	.globl _Accel_Init
                                    338 	.globl _Accel_Init_C
                                    339 	.globl _Port_Init
                                    340 	.globl _XBR0_Init
                                    341 	.globl _SMB0_Init
                                    342 	.globl _PCA_Init
                                    343 	.globl _PCA_ISR
                                    344 	.globl _ReadRanger
                                    345 ;--------------------------------------------------------
                                    346 ; special function registers
                                    347 ;--------------------------------------------------------
                                    348 	.area RSEG    (ABS,DATA)
      000000                        349 	.org 0x0000
                           000080   350 G$P0$0$0 == 0x0080
                           000080   351 _P0	=	0x0080
                           000081   352 G$SP$0$0 == 0x0081
                           000081   353 _SP	=	0x0081
                           000082   354 G$DPL$0$0 == 0x0082
                           000082   355 _DPL	=	0x0082
                           000083   356 G$DPH$0$0 == 0x0083
                           000083   357 _DPH	=	0x0083
                           000084   358 G$P4$0$0 == 0x0084
                           000084   359 _P4	=	0x0084
                           000085   360 G$P5$0$0 == 0x0085
                           000085   361 _P5	=	0x0085
                           000086   362 G$P6$0$0 == 0x0086
                           000086   363 _P6	=	0x0086
                           000087   364 G$PCON$0$0 == 0x0087
                           000087   365 _PCON	=	0x0087
                           000088   366 G$TCON$0$0 == 0x0088
                           000088   367 _TCON	=	0x0088
                           000089   368 G$TMOD$0$0 == 0x0089
                           000089   369 _TMOD	=	0x0089
                           00008A   370 G$TL0$0$0 == 0x008a
                           00008A   371 _TL0	=	0x008a
                           00008B   372 G$TL1$0$0 == 0x008b
                           00008B   373 _TL1	=	0x008b
                           00008C   374 G$TH0$0$0 == 0x008c
                           00008C   375 _TH0	=	0x008c
                           00008D   376 G$TH1$0$0 == 0x008d
                           00008D   377 _TH1	=	0x008d
                           00008E   378 G$CKCON$0$0 == 0x008e
                           00008E   379 _CKCON	=	0x008e
                           00008F   380 G$PSCTL$0$0 == 0x008f
                           00008F   381 _PSCTL	=	0x008f
                           000090   382 G$P1$0$0 == 0x0090
                           000090   383 _P1	=	0x0090
                           000091   384 G$TMR3CN$0$0 == 0x0091
                           000091   385 _TMR3CN	=	0x0091
                           000092   386 G$TMR3RLL$0$0 == 0x0092
                           000092   387 _TMR3RLL	=	0x0092
                           000093   388 G$TMR3RLH$0$0 == 0x0093
                           000093   389 _TMR3RLH	=	0x0093
                           000094   390 G$TMR3L$0$0 == 0x0094
                           000094   391 _TMR3L	=	0x0094
                           000095   392 G$TMR3H$0$0 == 0x0095
                           000095   393 _TMR3H	=	0x0095
                           000096   394 G$P7$0$0 == 0x0096
                           000096   395 _P7	=	0x0096
                           000098   396 G$SCON$0$0 == 0x0098
                           000098   397 _SCON	=	0x0098
                           000098   398 G$SCON0$0$0 == 0x0098
                           000098   399 _SCON0	=	0x0098
                           000099   400 G$SBUF$0$0 == 0x0099
                           000099   401 _SBUF	=	0x0099
                           000099   402 G$SBUF0$0$0 == 0x0099
                           000099   403 _SBUF0	=	0x0099
                           00009A   404 G$SPI0CFG$0$0 == 0x009a
                           00009A   405 _SPI0CFG	=	0x009a
                           00009B   406 G$SPI0DAT$0$0 == 0x009b
                           00009B   407 _SPI0DAT	=	0x009b
                           00009C   408 G$ADC1$0$0 == 0x009c
                           00009C   409 _ADC1	=	0x009c
                           00009D   410 G$SPI0CKR$0$0 == 0x009d
                           00009D   411 _SPI0CKR	=	0x009d
                           00009E   412 G$CPT0CN$0$0 == 0x009e
                           00009E   413 _CPT0CN	=	0x009e
                           00009F   414 G$CPT1CN$0$0 == 0x009f
                           00009F   415 _CPT1CN	=	0x009f
                           0000A0   416 G$P2$0$0 == 0x00a0
                           0000A0   417 _P2	=	0x00a0
                           0000A1   418 G$EMI0TC$0$0 == 0x00a1
                           0000A1   419 _EMI0TC	=	0x00a1
                           0000A3   420 G$EMI0CF$0$0 == 0x00a3
                           0000A3   421 _EMI0CF	=	0x00a3
                           0000A4   422 G$PRT0CF$0$0 == 0x00a4
                           0000A4   423 _PRT0CF	=	0x00a4
                           0000A4   424 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   425 _P0MDOUT	=	0x00a4
                           0000A5   426 G$PRT1CF$0$0 == 0x00a5
                           0000A5   427 _PRT1CF	=	0x00a5
                           0000A5   428 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   429 _P1MDOUT	=	0x00a5
                           0000A6   430 G$PRT2CF$0$0 == 0x00a6
                           0000A6   431 _PRT2CF	=	0x00a6
                           0000A6   432 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   433 _P2MDOUT	=	0x00a6
                           0000A7   434 G$PRT3CF$0$0 == 0x00a7
                           0000A7   435 _PRT3CF	=	0x00a7
                           0000A7   436 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   437 _P3MDOUT	=	0x00a7
                           0000A8   438 G$IE$0$0 == 0x00a8
                           0000A8   439 _IE	=	0x00a8
                           0000A9   440 G$SADDR0$0$0 == 0x00a9
                           0000A9   441 _SADDR0	=	0x00a9
                           0000AA   442 G$ADC1CN$0$0 == 0x00aa
                           0000AA   443 _ADC1CN	=	0x00aa
                           0000AB   444 G$ADC1CF$0$0 == 0x00ab
                           0000AB   445 _ADC1CF	=	0x00ab
                           0000AC   446 G$AMX1SL$0$0 == 0x00ac
                           0000AC   447 _AMX1SL	=	0x00ac
                           0000AD   448 G$P3IF$0$0 == 0x00ad
                           0000AD   449 _P3IF	=	0x00ad
                           0000AE   450 G$SADEN1$0$0 == 0x00ae
                           0000AE   451 _SADEN1	=	0x00ae
                           0000AF   452 G$EMI0CN$0$0 == 0x00af
                           0000AF   453 _EMI0CN	=	0x00af
                           0000AF   454 G$_XPAGE$0$0 == 0x00af
                           0000AF   455 __XPAGE	=	0x00af
                           0000B0   456 G$P3$0$0 == 0x00b0
                           0000B0   457 _P3	=	0x00b0
                           0000B1   458 G$OSCXCN$0$0 == 0x00b1
                           0000B1   459 _OSCXCN	=	0x00b1
                           0000B2   460 G$OSCICN$0$0 == 0x00b2
                           0000B2   461 _OSCICN	=	0x00b2
                           0000B5   462 G$P74OUT$0$0 == 0x00b5
                           0000B5   463 _P74OUT	=	0x00b5
                           0000B6   464 G$FLSCL$0$0 == 0x00b6
                           0000B6   465 _FLSCL	=	0x00b6
                           0000B7   466 G$FLACL$0$0 == 0x00b7
                           0000B7   467 _FLACL	=	0x00b7
                           0000B8   468 G$IP$0$0 == 0x00b8
                           0000B8   469 _IP	=	0x00b8
                           0000B9   470 G$SADEN0$0$0 == 0x00b9
                           0000B9   471 _SADEN0	=	0x00b9
                           0000BA   472 G$AMX0CF$0$0 == 0x00ba
                           0000BA   473 _AMX0CF	=	0x00ba
                           0000BB   474 G$AMX0SL$0$0 == 0x00bb
                           0000BB   475 _AMX0SL	=	0x00bb
                           0000BC   476 G$ADC0CF$0$0 == 0x00bc
                           0000BC   477 _ADC0CF	=	0x00bc
                           0000BD   478 G$P1MDIN$0$0 == 0x00bd
                           0000BD   479 _P1MDIN	=	0x00bd
                           0000BE   480 G$ADC0L$0$0 == 0x00be
                           0000BE   481 _ADC0L	=	0x00be
                           0000BF   482 G$ADC0H$0$0 == 0x00bf
                           0000BF   483 _ADC0H	=	0x00bf
                           0000C0   484 G$SMB0CN$0$0 == 0x00c0
                           0000C0   485 _SMB0CN	=	0x00c0
                           0000C1   486 G$SMB0STA$0$0 == 0x00c1
                           0000C1   487 _SMB0STA	=	0x00c1
                           0000C2   488 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   489 _SMB0DAT	=	0x00c2
                           0000C3   490 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   491 _SMB0ADR	=	0x00c3
                           0000C4   492 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   493 _ADC0GTL	=	0x00c4
                           0000C5   494 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   495 _ADC0GTH	=	0x00c5
                           0000C6   496 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   497 _ADC0LTL	=	0x00c6
                           0000C7   498 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   499 _ADC0LTH	=	0x00c7
                           0000C8   500 G$T2CON$0$0 == 0x00c8
                           0000C8   501 _T2CON	=	0x00c8
                           0000C9   502 G$T4CON$0$0 == 0x00c9
                           0000C9   503 _T4CON	=	0x00c9
                           0000CA   504 G$RCAP2L$0$0 == 0x00ca
                           0000CA   505 _RCAP2L	=	0x00ca
                           0000CB   506 G$RCAP2H$0$0 == 0x00cb
                           0000CB   507 _RCAP2H	=	0x00cb
                           0000CC   508 G$TL2$0$0 == 0x00cc
                           0000CC   509 _TL2	=	0x00cc
                           0000CD   510 G$TH2$0$0 == 0x00cd
                           0000CD   511 _TH2	=	0x00cd
                           0000CF   512 G$SMB0CR$0$0 == 0x00cf
                           0000CF   513 _SMB0CR	=	0x00cf
                           0000D0   514 G$PSW$0$0 == 0x00d0
                           0000D0   515 _PSW	=	0x00d0
                           0000D1   516 G$REF0CN$0$0 == 0x00d1
                           0000D1   517 _REF0CN	=	0x00d1
                           0000D2   518 G$DAC0L$0$0 == 0x00d2
                           0000D2   519 _DAC0L	=	0x00d2
                           0000D3   520 G$DAC0H$0$0 == 0x00d3
                           0000D3   521 _DAC0H	=	0x00d3
                           0000D4   522 G$DAC0CN$0$0 == 0x00d4
                           0000D4   523 _DAC0CN	=	0x00d4
                           0000D5   524 G$DAC1L$0$0 == 0x00d5
                           0000D5   525 _DAC1L	=	0x00d5
                           0000D6   526 G$DAC1H$0$0 == 0x00d6
                           0000D6   527 _DAC1H	=	0x00d6
                           0000D7   528 G$DAC1CN$0$0 == 0x00d7
                           0000D7   529 _DAC1CN	=	0x00d7
                           0000D8   530 G$PCA0CN$0$0 == 0x00d8
                           0000D8   531 _PCA0CN	=	0x00d8
                           0000D9   532 G$PCA0MD$0$0 == 0x00d9
                           0000D9   533 _PCA0MD	=	0x00d9
                           0000DA   534 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   535 _PCA0CPM0	=	0x00da
                           0000DB   536 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   537 _PCA0CPM1	=	0x00db
                           0000DC   538 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   539 _PCA0CPM2	=	0x00dc
                           0000DD   540 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   541 _PCA0CPM3	=	0x00dd
                           0000DE   542 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   543 _PCA0CPM4	=	0x00de
                           0000E0   544 G$ACC$0$0 == 0x00e0
                           0000E0   545 _ACC	=	0x00e0
                           0000E1   546 G$XBR0$0$0 == 0x00e1
                           0000E1   547 _XBR0	=	0x00e1
                           0000E2   548 G$XBR1$0$0 == 0x00e2
                           0000E2   549 _XBR1	=	0x00e2
                           0000E3   550 G$XBR2$0$0 == 0x00e3
                           0000E3   551 _XBR2	=	0x00e3
                           0000E4   552 G$RCAP4L$0$0 == 0x00e4
                           0000E4   553 _RCAP4L	=	0x00e4
                           0000E5   554 G$RCAP4H$0$0 == 0x00e5
                           0000E5   555 _RCAP4H	=	0x00e5
                           0000E6   556 G$EIE1$0$0 == 0x00e6
                           0000E6   557 _EIE1	=	0x00e6
                           0000E7   558 G$EIE2$0$0 == 0x00e7
                           0000E7   559 _EIE2	=	0x00e7
                           0000E8   560 G$ADC0CN$0$0 == 0x00e8
                           0000E8   561 _ADC0CN	=	0x00e8
                           0000E9   562 G$PCA0L$0$0 == 0x00e9
                           0000E9   563 _PCA0L	=	0x00e9
                           0000EA   564 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   565 _PCA0CPL0	=	0x00ea
                           0000EB   566 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   567 _PCA0CPL1	=	0x00eb
                           0000EC   568 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   569 _PCA0CPL2	=	0x00ec
                           0000ED   570 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   571 _PCA0CPL3	=	0x00ed
                           0000EE   572 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   573 _PCA0CPL4	=	0x00ee
                           0000EF   574 G$RSTSRC$0$0 == 0x00ef
                           0000EF   575 _RSTSRC	=	0x00ef
                           0000F0   576 G$B$0$0 == 0x00f0
                           0000F0   577 _B	=	0x00f0
                           0000F1   578 G$SCON1$0$0 == 0x00f1
                           0000F1   579 _SCON1	=	0x00f1
                           0000F2   580 G$SBUF1$0$0 == 0x00f2
                           0000F2   581 _SBUF1	=	0x00f2
                           0000F3   582 G$SADDR1$0$0 == 0x00f3
                           0000F3   583 _SADDR1	=	0x00f3
                           0000F4   584 G$TL4$0$0 == 0x00f4
                           0000F4   585 _TL4	=	0x00f4
                           0000F5   586 G$TH4$0$0 == 0x00f5
                           0000F5   587 _TH4	=	0x00f5
                           0000F6   588 G$EIP1$0$0 == 0x00f6
                           0000F6   589 _EIP1	=	0x00f6
                           0000F7   590 G$EIP2$0$0 == 0x00f7
                           0000F7   591 _EIP2	=	0x00f7
                           0000F8   592 G$SPI0CN$0$0 == 0x00f8
                           0000F8   593 _SPI0CN	=	0x00f8
                           0000F9   594 G$PCA0H$0$0 == 0x00f9
                           0000F9   595 _PCA0H	=	0x00f9
                           0000FA   596 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   597 _PCA0CPH0	=	0x00fa
                           0000FB   598 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   599 _PCA0CPH1	=	0x00fb
                           0000FC   600 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   601 _PCA0CPH2	=	0x00fc
                           0000FD   602 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   603 _PCA0CPH3	=	0x00fd
                           0000FE   604 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   605 _PCA0CPH4	=	0x00fe
                           0000FF   606 G$WDTCN$0$0 == 0x00ff
                           0000FF   607 _WDTCN	=	0x00ff
                           008C8A   608 G$TMR0$0$0 == 0x8c8a
                           008C8A   609 _TMR0	=	0x8c8a
                           008D8B   610 G$TMR1$0$0 == 0x8d8b
                           008D8B   611 _TMR1	=	0x8d8b
                           00CDCC   612 G$TMR2$0$0 == 0xcdcc
                           00CDCC   613 _TMR2	=	0xcdcc
                           00CBCA   614 G$RCAP2$0$0 == 0xcbca
                           00CBCA   615 _RCAP2	=	0xcbca
                           009594   616 G$TMR3$0$0 == 0x9594
                           009594   617 _TMR3	=	0x9594
                           009392   618 G$TMR3RL$0$0 == 0x9392
                           009392   619 _TMR3RL	=	0x9392
                           00F5F4   620 G$TMR4$0$0 == 0xf5f4
                           00F5F4   621 _TMR4	=	0xf5f4
                           00E5E4   622 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   623 _RCAP4	=	0xe5e4
                           00BFBE   624 G$ADC0$0$0 == 0xbfbe
                           00BFBE   625 _ADC0	=	0xbfbe
                           00C5C4   626 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   627 _ADC0GT	=	0xc5c4
                           00C7C6   628 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   629 _ADC0LT	=	0xc7c6
                           00D3D2   630 G$DAC0$0$0 == 0xd3d2
                           00D3D2   631 _DAC0	=	0xd3d2
                           00D6D5   632 G$DAC1$0$0 == 0xd6d5
                           00D6D5   633 _DAC1	=	0xd6d5
                           00F9E9   634 G$PCA0$0$0 == 0xf9e9
                           00F9E9   635 _PCA0	=	0xf9e9
                           00FAEA   636 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   637 _PCA0CP0	=	0xfaea
                           00FBEB   638 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   639 _PCA0CP1	=	0xfbeb
                           00FCEC   640 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   641 _PCA0CP2	=	0xfcec
                           00FDED   642 G$PCA0CP3$0$0 == 0xfded
                           00FDED   643 _PCA0CP3	=	0xfded
                           00FEEE   644 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   645 _PCA0CP4	=	0xfeee
                                    646 ;--------------------------------------------------------
                                    647 ; special function bits
                                    648 ;--------------------------------------------------------
                                    649 	.area RSEG    (ABS,DATA)
      000000                        650 	.org 0x0000
                           000080   651 G$P0_0$0$0 == 0x0080
                           000080   652 _P0_0	=	0x0080
                           000081   653 G$P0_1$0$0 == 0x0081
                           000081   654 _P0_1	=	0x0081
                           000082   655 G$P0_2$0$0 == 0x0082
                           000082   656 _P0_2	=	0x0082
                           000083   657 G$P0_3$0$0 == 0x0083
                           000083   658 _P0_3	=	0x0083
                           000084   659 G$P0_4$0$0 == 0x0084
                           000084   660 _P0_4	=	0x0084
                           000085   661 G$P0_5$0$0 == 0x0085
                           000085   662 _P0_5	=	0x0085
                           000086   663 G$P0_6$0$0 == 0x0086
                           000086   664 _P0_6	=	0x0086
                           000087   665 G$P0_7$0$0 == 0x0087
                           000087   666 _P0_7	=	0x0087
                           000088   667 G$IT0$0$0 == 0x0088
                           000088   668 _IT0	=	0x0088
                           000089   669 G$IE0$0$0 == 0x0089
                           000089   670 _IE0	=	0x0089
                           00008A   671 G$IT1$0$0 == 0x008a
                           00008A   672 _IT1	=	0x008a
                           00008B   673 G$IE1$0$0 == 0x008b
                           00008B   674 _IE1	=	0x008b
                           00008C   675 G$TR0$0$0 == 0x008c
                           00008C   676 _TR0	=	0x008c
                           00008D   677 G$TF0$0$0 == 0x008d
                           00008D   678 _TF0	=	0x008d
                           00008E   679 G$TR1$0$0 == 0x008e
                           00008E   680 _TR1	=	0x008e
                           00008F   681 G$TF1$0$0 == 0x008f
                           00008F   682 _TF1	=	0x008f
                           000090   683 G$P1_0$0$0 == 0x0090
                           000090   684 _P1_0	=	0x0090
                           000091   685 G$P1_1$0$0 == 0x0091
                           000091   686 _P1_1	=	0x0091
                           000092   687 G$P1_2$0$0 == 0x0092
                           000092   688 _P1_2	=	0x0092
                           000093   689 G$P1_3$0$0 == 0x0093
                           000093   690 _P1_3	=	0x0093
                           000094   691 G$P1_4$0$0 == 0x0094
                           000094   692 _P1_4	=	0x0094
                           000095   693 G$P1_5$0$0 == 0x0095
                           000095   694 _P1_5	=	0x0095
                           000096   695 G$P1_6$0$0 == 0x0096
                           000096   696 _P1_6	=	0x0096
                           000097   697 G$P1_7$0$0 == 0x0097
                           000097   698 _P1_7	=	0x0097
                           000098   699 G$RI$0$0 == 0x0098
                           000098   700 _RI	=	0x0098
                           000098   701 G$RI0$0$0 == 0x0098
                           000098   702 _RI0	=	0x0098
                           000099   703 G$TI$0$0 == 0x0099
                           000099   704 _TI	=	0x0099
                           000099   705 G$TI0$0$0 == 0x0099
                           000099   706 _TI0	=	0x0099
                           00009A   707 G$RB8$0$0 == 0x009a
                           00009A   708 _RB8	=	0x009a
                           00009A   709 G$RB80$0$0 == 0x009a
                           00009A   710 _RB80	=	0x009a
                           00009B   711 G$TB8$0$0 == 0x009b
                           00009B   712 _TB8	=	0x009b
                           00009B   713 G$TB80$0$0 == 0x009b
                           00009B   714 _TB80	=	0x009b
                           00009C   715 G$REN$0$0 == 0x009c
                           00009C   716 _REN	=	0x009c
                           00009C   717 G$REN0$0$0 == 0x009c
                           00009C   718 _REN0	=	0x009c
                           00009D   719 G$SM2$0$0 == 0x009d
                           00009D   720 _SM2	=	0x009d
                           00009D   721 G$SM20$0$0 == 0x009d
                           00009D   722 _SM20	=	0x009d
                           00009D   723 G$MCE0$0$0 == 0x009d
                           00009D   724 _MCE0	=	0x009d
                           00009E   725 G$SM1$0$0 == 0x009e
                           00009E   726 _SM1	=	0x009e
                           00009E   727 G$SM10$0$0 == 0x009e
                           00009E   728 _SM10	=	0x009e
                           00009F   729 G$SM0$0$0 == 0x009f
                           00009F   730 _SM0	=	0x009f
                           00009F   731 G$SM00$0$0 == 0x009f
                           00009F   732 _SM00	=	0x009f
                           00009F   733 G$S0MODE$0$0 == 0x009f
                           00009F   734 _S0MODE	=	0x009f
                           0000A0   735 G$P2_0$0$0 == 0x00a0
                           0000A0   736 _P2_0	=	0x00a0
                           0000A1   737 G$P2_1$0$0 == 0x00a1
                           0000A1   738 _P2_1	=	0x00a1
                           0000A2   739 G$P2_2$0$0 == 0x00a2
                           0000A2   740 _P2_2	=	0x00a2
                           0000A3   741 G$P2_3$0$0 == 0x00a3
                           0000A3   742 _P2_3	=	0x00a3
                           0000A4   743 G$P2_4$0$0 == 0x00a4
                           0000A4   744 _P2_4	=	0x00a4
                           0000A5   745 G$P2_5$0$0 == 0x00a5
                           0000A5   746 _P2_5	=	0x00a5
                           0000A6   747 G$P2_6$0$0 == 0x00a6
                           0000A6   748 _P2_6	=	0x00a6
                           0000A7   749 G$P2_7$0$0 == 0x00a7
                           0000A7   750 _P2_7	=	0x00a7
                           0000A8   751 G$EX0$0$0 == 0x00a8
                           0000A8   752 _EX0	=	0x00a8
                           0000A9   753 G$ET0$0$0 == 0x00a9
                           0000A9   754 _ET0	=	0x00a9
                           0000AA   755 G$EX1$0$0 == 0x00aa
                           0000AA   756 _EX1	=	0x00aa
                           0000AB   757 G$ET1$0$0 == 0x00ab
                           0000AB   758 _ET1	=	0x00ab
                           0000AC   759 G$ES0$0$0 == 0x00ac
                           0000AC   760 _ES0	=	0x00ac
                           0000AC   761 G$ES$0$0 == 0x00ac
                           0000AC   762 _ES	=	0x00ac
                           0000AD   763 G$ET2$0$0 == 0x00ad
                           0000AD   764 _ET2	=	0x00ad
                           0000AF   765 G$EA$0$0 == 0x00af
                           0000AF   766 _EA	=	0x00af
                           0000B0   767 G$P3_0$0$0 == 0x00b0
                           0000B0   768 _P3_0	=	0x00b0
                           0000B1   769 G$P3_1$0$0 == 0x00b1
                           0000B1   770 _P3_1	=	0x00b1
                           0000B2   771 G$P3_2$0$0 == 0x00b2
                           0000B2   772 _P3_2	=	0x00b2
                           0000B3   773 G$P3_3$0$0 == 0x00b3
                           0000B3   774 _P3_3	=	0x00b3
                           0000B4   775 G$P3_4$0$0 == 0x00b4
                           0000B4   776 _P3_4	=	0x00b4
                           0000B5   777 G$P3_5$0$0 == 0x00b5
                           0000B5   778 _P3_5	=	0x00b5
                           0000B6   779 G$P3_6$0$0 == 0x00b6
                           0000B6   780 _P3_6	=	0x00b6
                           0000B7   781 G$P3_7$0$0 == 0x00b7
                           0000B7   782 _P3_7	=	0x00b7
                           0000B8   783 G$PX0$0$0 == 0x00b8
                           0000B8   784 _PX0	=	0x00b8
                           0000B9   785 G$PT0$0$0 == 0x00b9
                           0000B9   786 _PT0	=	0x00b9
                           0000BA   787 G$PX1$0$0 == 0x00ba
                           0000BA   788 _PX1	=	0x00ba
                           0000BB   789 G$PT1$0$0 == 0x00bb
                           0000BB   790 _PT1	=	0x00bb
                           0000BC   791 G$PS0$0$0 == 0x00bc
                           0000BC   792 _PS0	=	0x00bc
                           0000BC   793 G$PS$0$0 == 0x00bc
                           0000BC   794 _PS	=	0x00bc
                           0000BD   795 G$PT2$0$0 == 0x00bd
                           0000BD   796 _PT2	=	0x00bd
                           0000C0   797 G$SMBTOE$0$0 == 0x00c0
                           0000C0   798 _SMBTOE	=	0x00c0
                           0000C1   799 G$SMBFTE$0$0 == 0x00c1
                           0000C1   800 _SMBFTE	=	0x00c1
                           0000C2   801 G$AA$0$0 == 0x00c2
                           0000C2   802 _AA	=	0x00c2
                           0000C3   803 G$SI$0$0 == 0x00c3
                           0000C3   804 _SI	=	0x00c3
                           0000C4   805 G$STO$0$0 == 0x00c4
                           0000C4   806 _STO	=	0x00c4
                           0000C5   807 G$STA$0$0 == 0x00c5
                           0000C5   808 _STA	=	0x00c5
                           0000C6   809 G$ENSMB$0$0 == 0x00c6
                           0000C6   810 _ENSMB	=	0x00c6
                           0000C7   811 G$BUSY$0$0 == 0x00c7
                           0000C7   812 _BUSY	=	0x00c7
                           0000C8   813 G$CPRL2$0$0 == 0x00c8
                           0000C8   814 _CPRL2	=	0x00c8
                           0000C9   815 G$CT2$0$0 == 0x00c9
                           0000C9   816 _CT2	=	0x00c9
                           0000CA   817 G$TR2$0$0 == 0x00ca
                           0000CA   818 _TR2	=	0x00ca
                           0000CB   819 G$EXEN2$0$0 == 0x00cb
                           0000CB   820 _EXEN2	=	0x00cb
                           0000CC   821 G$TCLK$0$0 == 0x00cc
                           0000CC   822 _TCLK	=	0x00cc
                           0000CD   823 G$RCLK$0$0 == 0x00cd
                           0000CD   824 _RCLK	=	0x00cd
                           0000CE   825 G$EXF2$0$0 == 0x00ce
                           0000CE   826 _EXF2	=	0x00ce
                           0000CF   827 G$TF2$0$0 == 0x00cf
                           0000CF   828 _TF2	=	0x00cf
                           0000D0   829 G$P$0$0 == 0x00d0
                           0000D0   830 _P	=	0x00d0
                           0000D1   831 G$F1$0$0 == 0x00d1
                           0000D1   832 _F1	=	0x00d1
                           0000D2   833 G$OV$0$0 == 0x00d2
                           0000D2   834 _OV	=	0x00d2
                           0000D3   835 G$RS0$0$0 == 0x00d3
                           0000D3   836 _RS0	=	0x00d3
                           0000D4   837 G$RS1$0$0 == 0x00d4
                           0000D4   838 _RS1	=	0x00d4
                           0000D5   839 G$F0$0$0 == 0x00d5
                           0000D5   840 _F0	=	0x00d5
                           0000D6   841 G$AC$0$0 == 0x00d6
                           0000D6   842 _AC	=	0x00d6
                           0000D7   843 G$CY$0$0 == 0x00d7
                           0000D7   844 _CY	=	0x00d7
                           0000D8   845 G$CCF0$0$0 == 0x00d8
                           0000D8   846 _CCF0	=	0x00d8
                           0000D9   847 G$CCF1$0$0 == 0x00d9
                           0000D9   848 _CCF1	=	0x00d9
                           0000DA   849 G$CCF2$0$0 == 0x00da
                           0000DA   850 _CCF2	=	0x00da
                           0000DB   851 G$CCF3$0$0 == 0x00db
                           0000DB   852 _CCF3	=	0x00db
                           0000DC   853 G$CCF4$0$0 == 0x00dc
                           0000DC   854 _CCF4	=	0x00dc
                           0000DE   855 G$CR$0$0 == 0x00de
                           0000DE   856 _CR	=	0x00de
                           0000DF   857 G$CF$0$0 == 0x00df
                           0000DF   858 _CF	=	0x00df
                           0000E8   859 G$ADLJST$0$0 == 0x00e8
                           0000E8   860 _ADLJST	=	0x00e8
                           0000E8   861 G$AD0LJST$0$0 == 0x00e8
                           0000E8   862 _AD0LJST	=	0x00e8
                           0000E9   863 G$ADWINT$0$0 == 0x00e9
                           0000E9   864 _ADWINT	=	0x00e9
                           0000E9   865 G$AD0WINT$0$0 == 0x00e9
                           0000E9   866 _AD0WINT	=	0x00e9
                           0000EA   867 G$ADSTM0$0$0 == 0x00ea
                           0000EA   868 _ADSTM0	=	0x00ea
                           0000EA   869 G$AD0CM0$0$0 == 0x00ea
                           0000EA   870 _AD0CM0	=	0x00ea
                           0000EB   871 G$ADSTM1$0$0 == 0x00eb
                           0000EB   872 _ADSTM1	=	0x00eb
                           0000EB   873 G$AD0CM1$0$0 == 0x00eb
                           0000EB   874 _AD0CM1	=	0x00eb
                           0000EC   875 G$ADBUSY$0$0 == 0x00ec
                           0000EC   876 _ADBUSY	=	0x00ec
                           0000EC   877 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   878 _AD0BUSY	=	0x00ec
                           0000ED   879 G$ADCINT$0$0 == 0x00ed
                           0000ED   880 _ADCINT	=	0x00ed
                           0000ED   881 G$AD0INT$0$0 == 0x00ed
                           0000ED   882 _AD0INT	=	0x00ed
                           0000EE   883 G$ADCTM$0$0 == 0x00ee
                           0000EE   884 _ADCTM	=	0x00ee
                           0000EE   885 G$AD0TM$0$0 == 0x00ee
                           0000EE   886 _AD0TM	=	0x00ee
                           0000EF   887 G$ADCEN$0$0 == 0x00ef
                           0000EF   888 _ADCEN	=	0x00ef
                           0000EF   889 G$AD0EN$0$0 == 0x00ef
                           0000EF   890 _AD0EN	=	0x00ef
                           0000F8   891 G$SPIEN$0$0 == 0x00f8
                           0000F8   892 _SPIEN	=	0x00f8
                           0000F9   893 G$MSTEN$0$0 == 0x00f9
                           0000F9   894 _MSTEN	=	0x00f9
                           0000FA   895 G$SLVSEL$0$0 == 0x00fa
                           0000FA   896 _SLVSEL	=	0x00fa
                           0000FB   897 G$TXBSY$0$0 == 0x00fb
                           0000FB   898 _TXBSY	=	0x00fb
                           0000FC   899 G$RXOVRN$0$0 == 0x00fc
                           0000FC   900 _RXOVRN	=	0x00fc
                           0000FD   901 G$MODF$0$0 == 0x00fd
                           0000FD   902 _MODF	=	0x00fd
                           0000FE   903 G$WCOL$0$0 == 0x00fe
                           0000FE   904 _WCOL	=	0x00fe
                           0000FF   905 G$SPIF$0$0 == 0x00ff
                           0000FF   906 _SPIF	=	0x00ff
                           0000C7   907 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   908 _BUS_BUSY	=	0x00c7
                           0000C6   909 G$BUS_EN$0$0 == 0x00c6
                           0000C6   910 _BUS_EN	=	0x00c6
                           0000C5   911 G$BUS_START$0$0 == 0x00c5
                           0000C5   912 _BUS_START	=	0x00c5
                           0000C4   913 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   914 _BUS_STOP	=	0x00c4
                           0000C3   915 G$BUS_INT$0$0 == 0x00c3
                           0000C3   916 _BUS_INT	=	0x00c3
                           0000C2   917 G$BUS_AA$0$0 == 0x00c2
                           0000C2   918 _BUS_AA	=	0x00c2
                           0000C1   919 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   920 _BUS_FTE	=	0x00c1
                           0000C0   921 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   922 _BUS_TOE	=	0x00c0
                           000083   923 G$BUS_SCL$0$0 == 0x0083
                           000083   924 _BUS_SCL	=	0x0083
                                    925 ;--------------------------------------------------------
                                    926 ; overlayable register banks
                                    927 ;--------------------------------------------------------
                                    928 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        929 	.ds 8
                                    930 ;--------------------------------------------------------
                                    931 ; internal ram data
                                    932 ;--------------------------------------------------------
                                    933 	.area DSEG    (DATA)
                           000000   934 G$Data2$0$0==.
      000022                        935 _Data2::
      000022                        936 	.ds 3
                           000003   937 Llab3_2.aligned_alloc$size$1$39==.
      000025                        938 _aligned_alloc_PARM_2:
      000025                        939 	.ds 2
                           000005   940 Llab3_2.lcd_clear$NumBytes$1$85==.
      000027                        941 _lcd_clear_NumBytes_1_85:
      000027                        942 	.ds 1
                           000006   943 Llab3_2.lcd_clear$Cmd$1$85==.
      000028                        944 _lcd_clear_Cmd_1_85:
      000028                        945 	.ds 2
                           000008   946 Llab3_2.read_keypad$Data$1$86==.
      00002A                        947 _read_keypad_Data_1_86:
      00002A                        948 	.ds 2
                           00000A   949 Llab3_2.i2c_write_data$start_reg$1$105==.
      00002C                        950 _i2c_write_data_PARM_2:
      00002C                        951 	.ds 1
                           00000B   952 Llab3_2.i2c_write_data$buffer$1$105==.
      00002D                        953 _i2c_write_data_PARM_3:
      00002D                        954 	.ds 3
                           00000E   955 Llab3_2.i2c_write_data$num_bytes$1$105==.
      000030                        956 _i2c_write_data_PARM_4:
      000030                        957 	.ds 1
                           00000F   958 Llab3_2.i2c_read_data$start_reg$1$107==.
      000031                        959 _i2c_read_data_PARM_2:
      000031                        960 	.ds 1
                           000010   961 Llab3_2.i2c_read_data$buffer$1$107==.
      000032                        962 _i2c_read_data_PARM_3:
      000032                        963 	.ds 3
                           000013   964 Llab3_2.i2c_read_data$num_bytes$1$107==.
      000035                        965 _i2c_read_data_PARM_4:
      000035                        966 	.ds 1
                           000014   967 G$PW_CENTER$0$0==.
      000036                        968 _PW_CENTER::
      000036                        969 	.ds 2
                           000016   970 G$PW_MIN$0$0==.
      000038                        971 _PW_MIN::
      000038                        972 	.ds 2
                           000018   973 G$PW_MAX$0$0==.
      00003A                        974 _PW_MAX::
      00003A                        975 	.ds 2
                           00001A   976 G$PW$0$0==.
      00003C                        977 _PW::
      00003C                        978 	.ds 2
                           00001C   979 G$count$0$0==.
      00003E                        980 _count::
      00003E                        981 	.ds 2
                           00001E   982 G$input$0$0==.
      000040                        983 _input::
      000040                        984 	.ds 1
                           00001F   985 G$r_count$0$0==.
      000041                        986 _r_count::
      000041                        987 	.ds 1
                           000020   988 G$new_range$0$0==.
      000042                        989 _new_range::
      000042                        990 	.ds 1
                           000021   991 G$colrange$0$0==.
      000043                        992 _colrange::
      000043                        993 	.ds 2
                           000023   994 G$range$0$0==.
      000045                        995 _range::
      000045                        996 	.ds 2
                           000025   997 G$addr$0$0==.
      000047                        998 _addr::
      000047                        999 	.ds 1
                           000026  1000 G$Data$0$0==.
      000048                       1001 _Data::
      000048                       1002 	.ds 2
                                   1003 ;--------------------------------------------------------
                                   1004 ; overlayable items in internal ram 
                                   1005 ;--------------------------------------------------------
                                   1006 	.area	OSEG    (OVR,DATA)
                                   1007 	.area	OSEG    (OVR,DATA)
                                   1008 	.area	OSEG    (OVR,DATA)
                                   1009 	.area	OSEG    (OVR,DATA)
                                   1010 	.area	OSEG    (OVR,DATA)
                                   1011 	.area	OSEG    (OVR,DATA)
                                   1012 	.area	OSEG    (OVR,DATA)
                                   1013 ;--------------------------------------------------------
                                   1014 ; Stack segment in internal ram 
                                   1015 ;--------------------------------------------------------
                                   1016 	.area	SSEG
      000064                       1017 __start__stack:
      000064                       1018 	.ds	1
                                   1019 
                                   1020 ;--------------------------------------------------------
                                   1021 ; indirectly addressable internal ram data
                                   1022 ;--------------------------------------------------------
                                   1023 	.area ISEG    (DATA)
                                   1024 ;--------------------------------------------------------
                                   1025 ; absolute internal ram data
                                   1026 ;--------------------------------------------------------
                                   1027 	.area IABS    (ABS,DATA)
                                   1028 	.area IABS    (ABS,DATA)
                                   1029 ;--------------------------------------------------------
                                   1030 ; bit data
                                   1031 ;--------------------------------------------------------
                                   1032 	.area BSEG    (BIT)
                                   1033 ;--------------------------------------------------------
                                   1034 ; paged external ram data
                                   1035 ;--------------------------------------------------------
                                   1036 	.area PSEG    (PAG,XDATA)
                                   1037 ;--------------------------------------------------------
                                   1038 ; external ram data
                                   1039 ;--------------------------------------------------------
                                   1040 	.area XSEG    (XDATA)
                           000000  1041 Llab3_2.lcd_print$text$1$81==.
      000001                       1042 _lcd_print_text_1_81:
      000001                       1043 	.ds 80
                                   1044 ;--------------------------------------------------------
                                   1045 ; absolute external ram data
                                   1046 ;--------------------------------------------------------
                                   1047 	.area XABS    (ABS,XDATA)
                                   1048 ;--------------------------------------------------------
                                   1049 ; external initialized ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area XISEG   (XDATA)
                                   1052 	.area HOME    (CODE)
                                   1053 	.area GSINIT0 (CODE)
                                   1054 	.area GSINIT1 (CODE)
                                   1055 	.area GSINIT2 (CODE)
                                   1056 	.area GSINIT3 (CODE)
                                   1057 	.area GSINIT4 (CODE)
                                   1058 	.area GSINIT5 (CODE)
                                   1059 	.area GSINIT  (CODE)
                                   1060 	.area GSFINAL (CODE)
                                   1061 	.area CSEG    (CODE)
                                   1062 ;--------------------------------------------------------
                                   1063 ; interrupt vector 
                                   1064 ;--------------------------------------------------------
                                   1065 	.area HOME    (CODE)
      000000                       1066 __interrupt_vect:
      000000 02 00 51         [24] 1067 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1068 	reti
      000004                       1069 	.ds	7
      00000B 32               [24] 1070 	reti
      00000C                       1071 	.ds	7
      000013 32               [24] 1072 	reti
      000014                       1073 	.ds	7
      00001B 32               [24] 1074 	reti
      00001C                       1075 	.ds	7
      000023 32               [24] 1076 	reti
      000024                       1077 	.ds	7
      00002B 32               [24] 1078 	reti
      00002C                       1079 	.ds	7
      000033 32               [24] 1080 	reti
      000034                       1081 	.ds	7
      00003B 32               [24] 1082 	reti
      00003C                       1083 	.ds	7
      000043 32               [24] 1084 	reti
      000044                       1085 	.ds	7
      00004B 02 06 44         [24] 1086 	ljmp	_PCA_ISR
                                   1087 ;--------------------------------------------------------
                                   1088 ; global & static initialisations
                                   1089 ;--------------------------------------------------------
                                   1090 	.area HOME    (CODE)
                                   1091 	.area GSINIT  (CODE)
                                   1092 	.area GSFINAL (CODE)
                                   1093 	.area GSINIT  (CODE)
                                   1094 	.globl __sdcc_gsinit_startup
                                   1095 	.globl __sdcc_program_startup
                                   1096 	.globl __start__stack
                                   1097 	.globl __mcs51_genXINIT
                                   1098 	.globl __mcs51_genXRAMCLEAR
                                   1099 	.globl __mcs51_genRAMCLEAR
                           000000  1100 	C$lab3_2.c$20$1$135 ==.
                                   1101 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:20: unsigned int PW_CENTER = 2760;
      0000AA 75 36 C8         [24] 1102 	mov	_PW_CENTER,#0xc8
      0000AD 75 37 0A         [24] 1103 	mov	(_PW_CENTER + 1),#0x0a
                           000006  1104 	C$lab3_2.c$21$1$135 ==.
                                   1105 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:21: unsigned int PW_MIN = 2030;
      0000B0 75 38 EE         [24] 1106 	mov	_PW_MIN,#0xee
      0000B3 75 39 07         [24] 1107 	mov	(_PW_MIN + 1),#0x07
                           00000C  1108 	C$lab3_2.c$22$1$135 ==.
                                   1109 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:22: unsigned int PW_MAX = 3500;
      0000B6 75 3A AC         [24] 1110 	mov	_PW_MAX,#0xac
      0000B9 75 3B 0D         [24] 1111 	mov	(_PW_MAX + 1),#0x0d
                           000012  1112 	C$lab3_2.c$23$1$135 ==.
                                   1113 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:23: unsigned int PW = 0;
      0000BC E4               [12] 1114 	clr	a
      0000BD F5 3C            [12] 1115 	mov	_PW,a
      0000BF F5 3D            [12] 1116 	mov	(_PW + 1),a
                           000017  1117 	C$lab3_2.c$29$1$135 ==.
                                   1118 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:29: unsigned int range =0;
      0000C1 F5 45            [12] 1119 	mov	_range,a
      0000C3 F5 46            [12] 1120 	mov	(_range + 1),a
                           00001B  1121 	C$lab3_2.c$30$1$135 ==.
                                   1122 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:30: unsigned char addr=0xE0; // the address of the ranger is 0xE0
      0000C5 75 47 E0         [24] 1123 	mov	_addr,#0xe0
                                   1124 	.area GSFINAL (CODE)
      0000C8 02 00 4E         [24] 1125 	ljmp	__sdcc_program_startup
                                   1126 ;--------------------------------------------------------
                                   1127 ; Home
                                   1128 ;--------------------------------------------------------
                                   1129 	.area HOME    (CODE)
                                   1130 	.area HOME    (CODE)
      00004E                       1131 __sdcc_program_startup:
      00004E 02 05 D1         [24] 1132 	ljmp	_main
                                   1133 ;	return from main will return to caller
                                   1134 ;--------------------------------------------------------
                                   1135 ; code
                                   1136 ;--------------------------------------------------------
                                   1137 	.area CSEG    (CODE)
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1140 ;------------------------------------------------------------
                                   1141 ;i                         Allocated to registers r6 r7 
                                   1142 ;------------------------------------------------------------
                           000000  1143 	G$SYSCLK_Init$0$0 ==.
                           000000  1144 	C$c8051_SDCC.h$62$0$0 ==.
                                   1145 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function SYSCLK_Init
                                   1148 ;	-----------------------------------------
      0000CB                       1149 _SYSCLK_Init:
                           000007  1150 	ar7 = 0x07
                           000006  1151 	ar6 = 0x06
                           000005  1152 	ar5 = 0x05
                           000004  1153 	ar4 = 0x04
                           000003  1154 	ar3 = 0x03
                           000002  1155 	ar2 = 0x02
                           000001  1156 	ar1 = 0x01
                           000000  1157 	ar0 = 0x00
                           000000  1158 	C$c8051_SDCC.h$66$1$2 ==.
                                   1159 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000CB 75 B1 67         [24] 1160 	mov	_OSCXCN,#0x67
                           000003  1161 	C$c8051_SDCC.h$69$1$2 ==.
                                   1162 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000CE 7E 00            [12] 1163 	mov	r6,#0x00
      0000D0 7F 01            [12] 1164 	mov	r7,#0x01
      0000D2                       1165 00107$:
      0000D2 EE               [12] 1166 	mov	a,r6
      0000D3 24 FF            [12] 1167 	add	a,#0xff
      0000D5 FC               [12] 1168 	mov	r4,a
      0000D6 EF               [12] 1169 	mov	a,r7
      0000D7 34 FF            [12] 1170 	addc	a,#0xff
      0000D9 FD               [12] 1171 	mov	r5,a
      0000DA 8C 06            [24] 1172 	mov	ar6,r4
      0000DC 8D 07            [24] 1173 	mov	ar7,r5
      0000DE EC               [12] 1174 	mov	a,r4
      0000DF 4D               [12] 1175 	orl	a,r5
      0000E0 70 F0            [24] 1176 	jnz	00107$
                           000017  1177 	C$c8051_SDCC.h$71$1$2 ==.
                                   1178 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000E2                       1179 00102$:
      0000E2 E5 B1            [12] 1180 	mov	a,_OSCXCN
      0000E4 30 E7 FB         [24] 1181 	jnb	acc.7,00102$
                           00001C  1182 	C$c8051_SDCC.h$73$1$2 ==.
                                   1183 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000E7 75 B2 88         [24] 1184 	mov	_OSCICN,#0x88
                           00001F  1185 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1186 	XG$SYSCLK_Init$0$0 ==.
      0000EA 22               [24] 1187 	ret
                                   1188 ;------------------------------------------------------------
                                   1189 ;Allocation info for local variables in function 'UART0_Init'
                                   1190 ;------------------------------------------------------------
                           000020  1191 	G$UART0_Init$0$0 ==.
                           000020  1192 	C$c8051_SDCC.h$84$1$2 ==.
                                   1193 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1194 ;	-----------------------------------------
                                   1195 ;	 function UART0_Init
                                   1196 ;	-----------------------------------------
      0000EB                       1197 _UART0_Init:
                           000020  1198 	C$c8051_SDCC.h$86$1$4 ==.
                                   1199 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000EB 75 98 50         [24] 1200 	mov	_SCON0,#0x50
                           000023  1201 	C$c8051_SDCC.h$87$1$4 ==.
                                   1202 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000EE 75 89 20         [24] 1203 	mov	_TMOD,#0x20
                           000026  1204 	C$c8051_SDCC.h$88$1$4 ==.
                                   1205 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000F1 75 8D DC         [24] 1206 	mov	_TH1,#0xdc
                           000029  1207 	C$c8051_SDCC.h$89$1$4 ==.
                                   1208 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000F4 D2 8E            [12] 1209 	setb	_TR1
                           00002B  1210 	C$c8051_SDCC.h$90$1$4 ==.
                                   1211 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000F6 43 8E 10         [24] 1212 	orl	_CKCON,#0x10
                           00002E  1213 	C$c8051_SDCC.h$91$1$4 ==.
                                   1214 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000F9 43 87 80         [24] 1215 	orl	_PCON,#0x80
                           000031  1216 	C$c8051_SDCC.h$93$1$4 ==.
                                   1217 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000FC D2 99            [12] 1218 	setb	_TI0
                           000033  1219 	C$c8051_SDCC.h$94$1$4 ==.
                                   1220 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000FE 43 A4 01         [24] 1221 	orl	_P0MDOUT,#0x01
                           000036  1222 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1223 	XG$UART0_Init$0$0 ==.
      000101 22               [24] 1224 	ret
                                   1225 ;------------------------------------------------------------
                                   1226 ;Allocation info for local variables in function 'Sys_Init'
                                   1227 ;------------------------------------------------------------
                           000037  1228 	G$Sys_Init$0$0 ==.
                           000037  1229 	C$c8051_SDCC.h$103$1$4 ==.
                                   1230 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function Sys_Init
                                   1233 ;	-----------------------------------------
      000102                       1234 _Sys_Init:
                           000037  1235 	C$c8051_SDCC.h$105$1$6 ==.
                                   1236 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000102 75 FF DE         [24] 1237 	mov	_WDTCN,#0xde
                           00003A  1238 	C$c8051_SDCC.h$106$1$6 ==.
                                   1239 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000105 75 FF AD         [24] 1240 	mov	_WDTCN,#0xad
                           00003D  1241 	C$c8051_SDCC.h$108$1$6 ==.
                                   1242 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000108 12 00 CB         [24] 1243 	lcall	_SYSCLK_Init
                           000040  1244 	C$c8051_SDCC.h$109$1$6 ==.
                                   1245 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00010B 12 00 EB         [24] 1246 	lcall	_UART0_Init
                           000043  1247 	C$c8051_SDCC.h$111$1$6 ==.
                                   1248 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      00010E 43 E1 04         [24] 1249 	orl	_XBR0,#0x04
                           000046  1250 	C$c8051_SDCC.h$112$1$6 ==.
                                   1251 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000111 43 E3 40         [24] 1252 	orl	_XBR2,#0x40
                           000049  1253 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1254 	XG$Sys_Init$0$0 ==.
      000114 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'putchar'
                                   1258 ;------------------------------------------------------------
                                   1259 ;c                         Allocated to registers r7 
                                   1260 ;------------------------------------------------------------
                           00004A  1261 	G$putchar$0$0 ==.
                           00004A  1262 	C$c8051_SDCC.h$129$1$6 ==.
                                   1263 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1264 ;	-----------------------------------------
                                   1265 ;	 function putchar
                                   1266 ;	-----------------------------------------
      000115                       1267 _putchar:
      000115 AF 82            [24] 1268 	mov	r7,dpl
                           00004C  1269 	C$c8051_SDCC.h$132$1$8 ==.
                                   1270 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000117                       1271 00101$:
                           00004C  1272 	C$c8051_SDCC.h$133$1$8 ==.
                                   1273 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000117 10 99 02         [24] 1274 	jbc	_TI0,00112$
      00011A 80 FB            [24] 1275 	sjmp	00101$
      00011C                       1276 00112$:
                           000051  1277 	C$c8051_SDCC.h$134$1$8 ==.
                                   1278 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      00011C 8F 99            [24] 1279 	mov	_SBUF0,r7
                           000053  1280 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1281 	XG$putchar$0$0 ==.
      00011E 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'getchar'
                                   1285 ;------------------------------------------------------------
                                   1286 ;c                         Allocated to registers r7 
                                   1287 ;------------------------------------------------------------
                           000054  1288 	G$getchar$0$0 ==.
                           000054  1289 	C$c8051_SDCC.h$154$1$8 ==.
                                   1290 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function getchar
                                   1293 ;	-----------------------------------------
      00011F                       1294 _getchar:
                           000054  1295 	C$c8051_SDCC.h$157$1$10 ==.
                                   1296 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      00011F                       1297 00101$:
                           000054  1298 	C$c8051_SDCC.h$158$1$10 ==.
                                   1299 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      00011F 10 98 02         [24] 1300 	jbc	_RI0,00112$
      000122 80 FB            [24] 1301 	sjmp	00101$
      000124                       1302 00112$:
                           000059  1303 	C$c8051_SDCC.h$159$1$10 ==.
                                   1304 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000124 AF 99            [24] 1305 	mov	r7,_SBUF0
                           00005B  1306 	C$c8051_SDCC.h$160$1$10 ==.
                                   1307 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000126 8F 82            [24] 1308 	mov	dpl,r7
      000128 C0 07            [24] 1309 	push	ar7
      00012A 12 01 15         [24] 1310 	lcall	_putchar
      00012D D0 07            [24] 1311 	pop	ar7
                           000064  1312 	C$c8051_SDCC.h$161$1$10 ==.
                                   1313 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      00012F 8F 82            [24] 1314 	mov	dpl,r7
                           000066  1315 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1316 	XG$getchar$0$0 ==.
      000131 22               [24] 1317 	ret
                                   1318 ;------------------------------------------------------------
                                   1319 ;Allocation info for local variables in function 'getchar_nw'
                                   1320 ;------------------------------------------------------------
                                   1321 ;c                         Allocated to registers 
                                   1322 ;------------------------------------------------------------
                           000067  1323 	G$getchar_nw$0$0 ==.
                           000067  1324 	C$c8051_SDCC.h$168$1$10 ==.
                                   1325 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1326 ;	-----------------------------------------
                                   1327 ;	 function getchar_nw
                                   1328 ;	-----------------------------------------
      000132                       1329 _getchar_nw:
                           000067  1330 	C$c8051_SDCC.h$171$1$12 ==.
                                   1331 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000132 20 98 05         [24] 1332 	jb	_RI0,00102$
      000135 75 82 FF         [24] 1333 	mov	dpl,#0xff
      000138 80 0B            [24] 1334 	sjmp	00104$
      00013A                       1335 00102$:
                           00006F  1336 	C$c8051_SDCC.h$174$2$13 ==.
                                   1337 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00013A C2 98            [12] 1338 	clr	_RI0
                           000071  1339 	C$c8051_SDCC.h$175$2$13 ==.
                                   1340 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00013C 85 99 82         [24] 1341 	mov	dpl,_SBUF0
                           000074  1342 	C$c8051_SDCC.h$176$2$13 ==.
                                   1343 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      00013F 12 01 15         [24] 1344 	lcall	_putchar
                           000077  1345 	C$c8051_SDCC.h$177$2$13 ==.
                                   1346 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000142 85 99 82         [24] 1347 	mov	dpl,_SBUF0
      000145                       1348 00104$:
                           00007A  1349 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1350 	XG$getchar_nw$0$0 ==.
      000145 22               [24] 1351 	ret
                                   1352 ;------------------------------------------------------------
                                   1353 ;Allocation info for local variables in function 'lcd_print'
                                   1354 ;------------------------------------------------------------
                                   1355 ;fmt                       Allocated to stack - _bp -5
                                   1356 ;len                       Allocated to registers r6 
                                   1357 ;i                         Allocated to registers 
                                   1358 ;ap                        Allocated to registers 
                                   1359 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1360 ;------------------------------------------------------------
                           00007B  1361 	G$lcd_print$0$0 ==.
                           00007B  1362 	C$i2c.h$84$1$12 ==.
                                   1363 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1364 ;	-----------------------------------------
                                   1365 ;	 function lcd_print
                                   1366 ;	-----------------------------------------
      000146                       1367 _lcd_print:
      000146 C0 0F            [24] 1368 	push	_bp
      000148 85 81 0F         [24] 1369 	mov	_bp,sp
                           000080  1370 	C$i2c.h$90$1$81 ==.
                                   1371 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00014B E5 0F            [12] 1372 	mov	a,_bp
      00014D 24 FB            [12] 1373 	add	a,#0xfb
      00014F F8               [12] 1374 	mov	r0,a
      000150 86 82            [24] 1375 	mov	dpl,@r0
      000152 08               [12] 1376 	inc	r0
      000153 86 83            [24] 1377 	mov	dph,@r0
      000155 08               [12] 1378 	inc	r0
      000156 86 F0            [24] 1379 	mov	b,@r0
      000158 12 0E 0E         [24] 1380 	lcall	_strlen
      00015B E5 82            [12] 1381 	mov	a,dpl
      00015D 85 83 F0         [24] 1382 	mov	b,dph
      000160 45 F0            [12] 1383 	orl	a,b
      000162 70 02            [24] 1384 	jnz	00102$
      000164 80 62            [24] 1385 	sjmp	00109$
      000166                       1386 00102$:
                           00009B  1387 	C$i2c.h$92$2$82 ==.
                                   1388 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000166 E5 0F            [12] 1389 	mov	a,_bp
      000168 24 FB            [12] 1390 	add	a,#0xfb
      00016A FF               [12] 1391 	mov	r7,a
      00016B 8F 0B            [24] 1392 	mov	_vsprintf_PARM_3,r7
                           0000A2  1393 	C$i2c.h$93$1$81 ==.
                                   1394 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00016D E5 0F            [12] 1395 	mov	a,_bp
      00016F 24 FB            [12] 1396 	add	a,#0xfb
      000171 F8               [12] 1397 	mov	r0,a
      000172 86 08            [24] 1398 	mov	_vsprintf_PARM_2,@r0
      000174 08               [12] 1399 	inc	r0
      000175 86 09            [24] 1400 	mov	(_vsprintf_PARM_2 + 1),@r0
      000177 08               [12] 1401 	inc	r0
      000178 86 0A            [24] 1402 	mov	(_vsprintf_PARM_2 + 2),@r0
      00017A 90 00 01         [24] 1403 	mov	dptr,#_lcd_print_text_1_81
      00017D 75 F0 00         [24] 1404 	mov	b,#0x00
      000180 12 07 7C         [24] 1405 	lcall	_vsprintf
                           0000B8  1406 	C$i2c.h$96$1$81 ==.
                                   1407 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      000183 90 00 01         [24] 1408 	mov	dptr,#_lcd_print_text_1_81
      000186 75 F0 00         [24] 1409 	mov	b,#0x00
      000189 12 0E 0E         [24] 1410 	lcall	_strlen
      00018C AE 82            [24] 1411 	mov	r6,dpl
                           0000C3  1412 	C$i2c.h$97$1$81 ==.
                                   1413 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      00018E 7F 00            [12] 1414 	mov	r7,#0x00
      000190                       1415 00107$:
      000190 C3               [12] 1416 	clr	c
      000191 EF               [12] 1417 	mov	a,r7
      000192 9E               [12] 1418 	subb	a,r6
      000193 50 1F            [24] 1419 	jnc	00105$
                           0000CA  1420 	C$i2c.h$99$2$84 ==.
                                   1421 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      000195 EF               [12] 1422 	mov	a,r7
      000196 24 01            [12] 1423 	add	a,#_lcd_print_text_1_81
      000198 F5 82            [12] 1424 	mov	dpl,a
      00019A E4               [12] 1425 	clr	a
      00019B 34 00            [12] 1426 	addc	a,#(_lcd_print_text_1_81 >> 8)
      00019D F5 83            [12] 1427 	mov	dph,a
      00019F E0               [24] 1428 	movx	a,@dptr
      0001A0 FD               [12] 1429 	mov	r5,a
      0001A1 BD 0A 0D         [24] 1430 	cjne	r5,#0x0a,00108$
      0001A4 EF               [12] 1431 	mov	a,r7
      0001A5 24 01            [12] 1432 	add	a,#_lcd_print_text_1_81
      0001A7 F5 82            [12] 1433 	mov	dpl,a
      0001A9 E4               [12] 1434 	clr	a
      0001AA 34 00            [12] 1435 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001AC F5 83            [12] 1436 	mov	dph,a
      0001AE 74 0D            [12] 1437 	mov	a,#0x0d
      0001B0 F0               [24] 1438 	movx	@dptr,a
      0001B1                       1439 00108$:
                           0000E6  1440 	C$i2c.h$97$1$81 ==.
                                   1441 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001B1 0F               [12] 1442 	inc	r7
      0001B2 80 DC            [24] 1443 	sjmp	00107$
      0001B4                       1444 00105$:
                           0000E9  1445 	C$i2c.h$102$1$81 ==.
                                   1446 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001B4 75 2D 01         [24] 1447 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001B7 75 2E 00         [24] 1448 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001BA 75 2F 00         [24] 1449 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001BD 75 2C 00         [24] 1450 	mov	_i2c_write_data_PARM_2,#0x00
      0001C0 8E 30            [24] 1451 	mov	_i2c_write_data_PARM_4,r6
      0001C2 75 82 C6         [24] 1452 	mov	dpl,#0xc6
      0001C5 12 04 57         [24] 1453 	lcall	_i2c_write_data
      0001C8                       1454 00109$:
      0001C8 D0 0F            [24] 1455 	pop	_bp
                           0000FF  1456 	C$i2c.h$103$1$81 ==.
                           0000FF  1457 	XG$lcd_print$0$0 ==.
      0001CA 22               [24] 1458 	ret
                                   1459 ;------------------------------------------------------------
                                   1460 ;Allocation info for local variables in function 'lcd_clear'
                                   1461 ;------------------------------------------------------------
                                   1462 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1463 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1464 ;------------------------------------------------------------
                           000100  1465 	G$lcd_clear$0$0 ==.
                           000100  1466 	C$i2c.h$106$1$81 ==.
                                   1467 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1468 ;	-----------------------------------------
                                   1469 ;	 function lcd_clear
                                   1470 ;	-----------------------------------------
      0001CB                       1471 _lcd_clear:
                           000100  1472 	C$i2c.h$108$1$81 ==.
                                   1473 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001CB 75 27 00         [24] 1474 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1475 	C$i2c.h$110$1$85 ==.
                                   1476 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001CE                       1477 00101$:
      0001CE 74 C0            [12] 1478 	mov	a,#0x100 - 0x40
      0001D0 25 27            [12] 1479 	add	a,_lcd_clear_NumBytes_1_85
      0001D2 40 17            [24] 1480 	jc	00103$
      0001D4 75 32 27         [24] 1481 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001D7 75 33 00         [24] 1482 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001DA 75 34 40         [24] 1483 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001DD 75 31 00         [24] 1484 	mov	_i2c_read_data_PARM_2,#0x00
      0001E0 75 35 01         [24] 1485 	mov	_i2c_read_data_PARM_4,#0x01
      0001E3 75 82 C6         [24] 1486 	mov	dpl,#0xc6
      0001E6 12 04 D1         [24] 1487 	lcall	_i2c_read_data
      0001E9 80 E3            [24] 1488 	sjmp	00101$
      0001EB                       1489 00103$:
                           000120  1490 	C$i2c.h$112$1$85 ==.
                                   1491 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001EB 75 28 0C         [24] 1492 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1493 	C$i2c.h$113$1$85 ==.
                                   1494 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001EE 75 2D 28         [24] 1495 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001F1 75 2E 00         [24] 1496 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001F4 75 2F 40         [24] 1497 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0001F7 75 2C 00         [24] 1498 	mov	_i2c_write_data_PARM_2,#0x00
      0001FA 75 30 01         [24] 1499 	mov	_i2c_write_data_PARM_4,#0x01
      0001FD 75 82 C6         [24] 1500 	mov	dpl,#0xc6
      000200 12 04 57         [24] 1501 	lcall	_i2c_write_data
                           000138  1502 	C$i2c.h$114$1$85 ==.
                           000138  1503 	XG$lcd_clear$0$0 ==.
      000203 22               [24] 1504 	ret
                                   1505 ;------------------------------------------------------------
                                   1506 ;Allocation info for local variables in function 'read_keypad'
                                   1507 ;------------------------------------------------------------
                                   1508 ;i                         Allocated to registers r7 
                                   1509 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1510 ;------------------------------------------------------------
                           000139  1511 	G$read_keypad$0$0 ==.
                           000139  1512 	C$i2c.h$117$1$85 ==.
                                   1513 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1514 ;	-----------------------------------------
                                   1515 ;	 function read_keypad
                                   1516 ;	-----------------------------------------
      000204                       1517 _read_keypad:
                           000139  1518 	C$i2c.h$121$1$86 ==.
                                   1519 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000204 75 32 2A         [24] 1520 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000207 75 33 00         [24] 1521 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      00020A 75 34 40         [24] 1522 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00020D 75 31 01         [24] 1523 	mov	_i2c_read_data_PARM_2,#0x01
      000210 75 35 02         [24] 1524 	mov	_i2c_read_data_PARM_4,#0x02
      000213 75 82 C6         [24] 1525 	mov	dpl,#0xc6
      000216 12 04 D1         [24] 1526 	lcall	_i2c_read_data
                           00014E  1527 	C$i2c.h$122$1$86 ==.
                                   1528 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      000219 74 FF            [12] 1529 	mov	a,#0xff
      00021B B5 2A 05         [24] 1530 	cjne	a,_read_keypad_Data_1_86,00102$
      00021E 75 82 00         [24] 1531 	mov	dpl,#0x00
      000221 80 5F            [24] 1532 	sjmp	00116$
      000223                       1533 00102$:
                           000158  1534 	C$i2c.h$124$1$86 ==.
                                   1535 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000223 7F 00            [12] 1536 	mov	r7,#0x00
      000225 8F 06            [24] 1537 	mov	ar6,r7
      000227                       1538 00114$:
                           00015C  1539 	C$i2c.h$126$2$87 ==.
                                   1540 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000227 8E F0            [24] 1541 	mov	b,r6
      000229 05 F0            [12] 1542 	inc	b
      00022B 7C 01            [12] 1543 	mov	r4,#0x01
      00022D 7D 00            [12] 1544 	mov	r5,#0x00
      00022F 80 06            [24] 1545 	sjmp	00145$
      000231                       1546 00144$:
      000231 EC               [12] 1547 	mov	a,r4
      000232 2C               [12] 1548 	add	a,r4
      000233 FC               [12] 1549 	mov	r4,a
      000234 ED               [12] 1550 	mov	a,r5
      000235 33               [12] 1551 	rlc	a
      000236 FD               [12] 1552 	mov	r5,a
      000237                       1553 00145$:
      000237 D5 F0 F7         [24] 1554 	djnz	b,00144$
      00023A AA 2A            [24] 1555 	mov	r2,_read_keypad_Data_1_86
      00023C 7B 00            [12] 1556 	mov	r3,#0x00
      00023E EA               [12] 1557 	mov	a,r2
      00023F 52 04            [12] 1558 	anl	ar4,a
      000241 EB               [12] 1559 	mov	a,r3
      000242 52 05            [12] 1560 	anl	ar5,a
      000244 EC               [12] 1561 	mov	a,r4
      000245 4D               [12] 1562 	orl	a,r5
      000246 60 07            [24] 1563 	jz	00115$
                           00017D  1564 	C$i2c.h$127$2$87 ==.
                                   1565 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      000248 74 31            [12] 1566 	mov	a,#0x31
      00024A 2F               [12] 1567 	add	a,r7
      00024B F5 82            [12] 1568 	mov	dpl,a
      00024D 80 33            [24] 1569 	sjmp	00116$
      00024F                       1570 00115$:
                           000184  1571 	C$i2c.h$124$1$86 ==.
                                   1572 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      00024F 0E               [12] 1573 	inc	r6
      000250 8E 07            [24] 1574 	mov	ar7,r6
      000252 BE 08 00         [24] 1575 	cjne	r6,#0x08,00147$
      000255                       1576 00147$:
      000255 40 D0            [24] 1577 	jc	00114$
                           00018C  1578 	C$i2c.h$130$1$86 ==.
                                   1579 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000257 E5 2B            [12] 1580 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000259 30 E0 05         [24] 1581 	jnb	acc.0,00107$
      00025C 75 82 39         [24] 1582 	mov	dpl,#0x39
      00025F 80 21            [24] 1583 	sjmp	00116$
      000261                       1584 00107$:
                           000196  1585 	C$i2c.h$132$1$86 ==.
                                   1586 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000261 E5 2B            [12] 1587 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000263 30 E1 05         [24] 1588 	jnb	acc.1,00109$
      000266 75 82 2A         [24] 1589 	mov	dpl,#0x2a
      000269 80 17            [24] 1590 	sjmp	00116$
      00026B                       1591 00109$:
                           0001A0  1592 	C$i2c.h$134$1$86 ==.
                                   1593 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00026B E5 2B            [12] 1594 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00026D 30 E2 05         [24] 1595 	jnb	acc.2,00111$
      000270 75 82 30         [24] 1596 	mov	dpl,#0x30
      000273 80 0D            [24] 1597 	sjmp	00116$
      000275                       1598 00111$:
                           0001AA  1599 	C$i2c.h$136$1$86 ==.
                                   1600 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000275 E5 2B            [12] 1601 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000277 30 E3 05         [24] 1602 	jnb	acc.3,00113$
      00027A 75 82 23         [24] 1603 	mov	dpl,#0x23
      00027D 80 03            [24] 1604 	sjmp	00116$
      00027F                       1605 00113$:
                           0001B4  1606 	C$i2c.h$138$1$86 ==.
                                   1607 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      00027F 75 82 FF         [24] 1608 	mov	dpl,#0xff
      000282                       1609 00116$:
                           0001B7  1610 	C$i2c.h$139$1$86 ==.
                           0001B7  1611 	XG$read_keypad$0$0 ==.
      000282 22               [24] 1612 	ret
                                   1613 ;------------------------------------------------------------
                                   1614 ;Allocation info for local variables in function 'kpd_input'
                                   1615 ;------------------------------------------------------------
                                   1616 ;mode                      Allocated to registers r7 
                                   1617 ;sum                       Allocated to registers r5 r6 
                                   1618 ;key                       Allocated to registers r3 
                                   1619 ;i                         Allocated to registers 
                                   1620 ;------------------------------------------------------------
                           0001B8  1621 	G$kpd_input$0$0 ==.
                           0001B8  1622 	C$i2c.h$151$1$86 ==.
                                   1623 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1624 ;	-----------------------------------------
                                   1625 ;	 function kpd_input
                                   1626 ;	-----------------------------------------
      000283                       1627 _kpd_input:
      000283 AF 82            [24] 1628 	mov	r7,dpl
                           0001BA  1629 	C$i2c.h$156$1$89 ==.
                                   1630 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1631 	C$i2c.h$159$1$89 ==.
                                   1632 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      000285 E4               [12] 1633 	clr	a
      000286 FD               [12] 1634 	mov	r5,a
      000287 FE               [12] 1635 	mov	r6,a
      000288 EF               [12] 1636 	mov	a,r7
      000289 70 1D            [24] 1637 	jnz	00102$
      00028B C0 06            [24] 1638 	push	ar6
      00028D C0 05            [24] 1639 	push	ar5
      00028F 74 46            [12] 1640 	mov	a,#___str_0
      000291 C0 E0            [24] 1641 	push	acc
      000293 74 0E            [12] 1642 	mov	a,#(___str_0 >> 8)
      000295 C0 E0            [24] 1643 	push	acc
      000297 74 80            [12] 1644 	mov	a,#0x80
      000299 C0 E0            [24] 1645 	push	acc
      00029B 12 01 46         [24] 1646 	lcall	_lcd_print
      00029E 15 81            [12] 1647 	dec	sp
      0002A0 15 81            [12] 1648 	dec	sp
      0002A2 15 81            [12] 1649 	dec	sp
      0002A4 D0 05            [24] 1650 	pop	ar5
      0002A6 D0 06            [24] 1651 	pop	ar6
      0002A8                       1652 00102$:
                           0001DD  1653 	C$i2c.h$161$1$89 ==.
                                   1654 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002A8 C0 06            [24] 1655 	push	ar6
      0002AA C0 05            [24] 1656 	push	ar5
      0002AC 74 08            [12] 1657 	mov	a,#0x08
      0002AE C0 E0            [24] 1658 	push	acc
      0002B0 E4               [12] 1659 	clr	a
      0002B1 C0 E0            [24] 1660 	push	acc
      0002B3 74 08            [12] 1661 	mov	a,#0x08
      0002B5 C0 E0            [24] 1662 	push	acc
      0002B7 E4               [12] 1663 	clr	a
      0002B8 C0 E0            [24] 1664 	push	acc
      0002BA 74 08            [12] 1665 	mov	a,#0x08
      0002BC C0 E0            [24] 1666 	push	acc
      0002BE E4               [12] 1667 	clr	a
      0002BF C0 E0            [24] 1668 	push	acc
      0002C1 74 08            [12] 1669 	mov	a,#0x08
      0002C3 C0 E0            [24] 1670 	push	acc
      0002C5 E4               [12] 1671 	clr	a
      0002C6 C0 E0            [24] 1672 	push	acc
      0002C8 74 08            [12] 1673 	mov	a,#0x08
      0002CA C0 E0            [24] 1674 	push	acc
      0002CC E4               [12] 1675 	clr	a
      0002CD C0 E0            [24] 1676 	push	acc
      0002CF 74 5C            [12] 1677 	mov	a,#___str_1
      0002D1 C0 E0            [24] 1678 	push	acc
      0002D3 74 0E            [12] 1679 	mov	a,#(___str_1 >> 8)
      0002D5 C0 E0            [24] 1680 	push	acc
      0002D7 74 80            [12] 1681 	mov	a,#0x80
      0002D9 C0 E0            [24] 1682 	push	acc
      0002DB 12 01 46         [24] 1683 	lcall	_lcd_print
      0002DE E5 81            [12] 1684 	mov	a,sp
      0002E0 24 F3            [12] 1685 	add	a,#0xf3
      0002E2 F5 81            [12] 1686 	mov	sp,a
                           000219  1687 	C$i2c.h$163$1$89 ==.
                                   1688 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002E4 90 A1 20         [24] 1689 	mov	dptr,#0xa120
      0002E7 75 F0 07         [24] 1690 	mov	b,#0x07
      0002EA E4               [12] 1691 	clr	a
      0002EB 12 03 F2         [24] 1692 	lcall	_delay_time
      0002EE D0 05            [24] 1693 	pop	ar5
      0002F0 D0 06            [24] 1694 	pop	ar6
                           000227  1695 	C$i2c.h$167$1$89 ==.
                                   1696 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002F2 7F 00            [12] 1697 	mov	r7,#0x00
                           000229  1698 	C$i2c.h$169$3$92 ==.
                                   1699 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002F4                       1700 00104$:
      0002F4 C0 07            [24] 1701 	push	ar7
      0002F6 C0 06            [24] 1702 	push	ar6
      0002F8 C0 05            [24] 1703 	push	ar5
      0002FA 12 02 04         [24] 1704 	lcall	_read_keypad
      0002FD AC 82            [24] 1705 	mov	r4,dpl
      0002FF D0 05            [24] 1706 	pop	ar5
      000301 D0 06            [24] 1707 	pop	ar6
      000303 D0 07            [24] 1708 	pop	ar7
      000305 8C 03            [24] 1709 	mov	ar3,r4
      000307 BC FF 02         [24] 1710 	cjne	r4,#0xff,00146$
      00030A 80 03            [24] 1711 	sjmp	00105$
      00030C                       1712 00146$:
      00030C BB 2A 17         [24] 1713 	cjne	r3,#0x2a,00106$
      00030F                       1714 00105$:
      00030F 90 27 10         [24] 1715 	mov	dptr,#0x2710
      000312 E4               [12] 1716 	clr	a
      000313 F5 F0            [12] 1717 	mov	b,a
      000315 C0 07            [24] 1718 	push	ar7
      000317 C0 06            [24] 1719 	push	ar6
      000319 C0 05            [24] 1720 	push	ar5
      00031B 12 03 F2         [24] 1721 	lcall	_delay_time
      00031E D0 05            [24] 1722 	pop	ar5
      000320 D0 06            [24] 1723 	pop	ar6
      000322 D0 07            [24] 1724 	pop	ar7
      000324 80 CE            [24] 1725 	sjmp	00104$
      000326                       1726 00106$:
                           00025B  1727 	C$i2c.h$170$2$90 ==.
                                   1728 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000326 BB 23 2A         [24] 1729 	cjne	r3,#0x23,00114$
                           00025E  1730 	C$i2c.h$172$3$91 ==.
                                   1731 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      000329                       1732 00107$:
      000329 C0 06            [24] 1733 	push	ar6
      00032B C0 05            [24] 1734 	push	ar5
      00032D 12 02 04         [24] 1735 	lcall	_read_keypad
      000330 AC 82            [24] 1736 	mov	r4,dpl
      000332 D0 05            [24] 1737 	pop	ar5
      000334 D0 06            [24] 1738 	pop	ar6
      000336 BC 23 13         [24] 1739 	cjne	r4,#0x23,00109$
      000339 90 27 10         [24] 1740 	mov	dptr,#0x2710
      00033C E4               [12] 1741 	clr	a
      00033D F5 F0            [12] 1742 	mov	b,a
      00033F C0 06            [24] 1743 	push	ar6
      000341 C0 05            [24] 1744 	push	ar5
      000343 12 03 F2         [24] 1745 	lcall	_delay_time
      000346 D0 05            [24] 1746 	pop	ar5
      000348 D0 06            [24] 1747 	pop	ar6
      00034A 80 DD            [24] 1748 	sjmp	00107$
      00034C                       1749 00109$:
                           000281  1750 	C$i2c.h$173$3$91 ==.
                                   1751 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00034C 8D 82            [24] 1752 	mov	dpl,r5
      00034E 8E 83            [24] 1753 	mov	dph,r6
      000350 02 03 F1         [24] 1754 	ljmp	00119$
      000353                       1755 00114$:
                           000288  1756 	C$i2c.h$177$3$92 ==.
                                   1757 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000353 8B 02            [24] 1758 	mov	ar2,r3
      000355 7C 00            [12] 1759 	mov	r4,#0x00
      000357 C0 07            [24] 1760 	push	ar7
      000359 C0 06            [24] 1761 	push	ar6
      00035B C0 05            [24] 1762 	push	ar5
      00035D C0 04            [24] 1763 	push	ar4
      00035F C0 03            [24] 1764 	push	ar3
      000361 C0 02            [24] 1765 	push	ar2
      000363 C0 02            [24] 1766 	push	ar2
      000365 C0 04            [24] 1767 	push	ar4
      000367 74 6C            [12] 1768 	mov	a,#___str_2
      000369 C0 E0            [24] 1769 	push	acc
      00036B 74 0E            [12] 1770 	mov	a,#(___str_2 >> 8)
      00036D C0 E0            [24] 1771 	push	acc
      00036F 74 80            [12] 1772 	mov	a,#0x80
      000371 C0 E0            [24] 1773 	push	acc
      000373 12 01 46         [24] 1774 	lcall	_lcd_print
      000376 E5 81            [12] 1775 	mov	a,sp
      000378 24 FB            [12] 1776 	add	a,#0xfb
      00037A F5 81            [12] 1777 	mov	sp,a
      00037C D0 02            [24] 1778 	pop	ar2
      00037E D0 03            [24] 1779 	pop	ar3
      000380 D0 04            [24] 1780 	pop	ar4
      000382 D0 05            [24] 1781 	pop	ar5
      000384 D0 06            [24] 1782 	pop	ar6
                           0002BB  1783 	C$i2c.h$178$1$89 ==.
                                   1784 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      000386 8D 11            [24] 1785 	mov	__mulint_PARM_2,r5
      000388 8E 12            [24] 1786 	mov	(__mulint_PARM_2 + 1),r6
      00038A 90 00 0A         [24] 1787 	mov	dptr,#0x000a
      00038D C0 04            [24] 1788 	push	ar4
      00038F C0 03            [24] 1789 	push	ar3
      000391 C0 02            [24] 1790 	push	ar2
      000393 12 06 EF         [24] 1791 	lcall	__mulint
      000396 A8 82            [24] 1792 	mov	r0,dpl
      000398 A9 83            [24] 1793 	mov	r1,dph
      00039A D0 02            [24] 1794 	pop	ar2
      00039C D0 03            [24] 1795 	pop	ar3
      00039E D0 04            [24] 1796 	pop	ar4
      0003A0 D0 07            [24] 1797 	pop	ar7
      0003A2 EA               [12] 1798 	mov	a,r2
      0003A3 28               [12] 1799 	add	a,r0
      0003A4 F8               [12] 1800 	mov	r0,a
      0003A5 EC               [12] 1801 	mov	a,r4
      0003A6 39               [12] 1802 	addc	a,r1
      0003A7 F9               [12] 1803 	mov	r1,a
      0003A8 E8               [12] 1804 	mov	a,r0
      0003A9 24 D0            [12] 1805 	add	a,#0xd0
      0003AB FD               [12] 1806 	mov	r5,a
      0003AC E9               [12] 1807 	mov	a,r1
      0003AD 34 FF            [12] 1808 	addc	a,#0xff
      0003AF FE               [12] 1809 	mov	r6,a
                           0002E5  1810 	C$i2c.h$179$3$92 ==.
                                   1811 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003B0                       1812 00110$:
      0003B0 C0 07            [24] 1813 	push	ar7
      0003B2 C0 06            [24] 1814 	push	ar6
      0003B4 C0 05            [24] 1815 	push	ar5
      0003B6 C0 03            [24] 1816 	push	ar3
      0003B8 12 02 04         [24] 1817 	lcall	_read_keypad
      0003BB AC 82            [24] 1818 	mov	r4,dpl
      0003BD D0 03            [24] 1819 	pop	ar3
      0003BF D0 05            [24] 1820 	pop	ar5
      0003C1 D0 06            [24] 1821 	pop	ar6
      0003C3 D0 07            [24] 1822 	pop	ar7
      0003C5 EC               [12] 1823 	mov	a,r4
      0003C6 B5 03 1B         [24] 1824 	cjne	a,ar3,00118$
      0003C9 90 27 10         [24] 1825 	mov	dptr,#0x2710
      0003CC E4               [12] 1826 	clr	a
      0003CD F5 F0            [12] 1827 	mov	b,a
      0003CF C0 07            [24] 1828 	push	ar7
      0003D1 C0 06            [24] 1829 	push	ar6
      0003D3 C0 05            [24] 1830 	push	ar5
      0003D5 C0 03            [24] 1831 	push	ar3
      0003D7 12 03 F2         [24] 1832 	lcall	_delay_time
      0003DA D0 03            [24] 1833 	pop	ar3
      0003DC D0 05            [24] 1834 	pop	ar5
      0003DE D0 06            [24] 1835 	pop	ar6
      0003E0 D0 07            [24] 1836 	pop	ar7
      0003E2 80 CC            [24] 1837 	sjmp	00110$
      0003E4                       1838 00118$:
                           000319  1839 	C$i2c.h$167$1$89 ==.
                                   1840 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003E4 0F               [12] 1841 	inc	r7
      0003E5 BF 05 00         [24] 1842 	cjne	r7,#0x05,00155$
      0003E8                       1843 00155$:
      0003E8 50 03            [24] 1844 	jnc	00156$
      0003EA 02 02 F4         [24] 1845 	ljmp	00104$
      0003ED                       1846 00156$:
                           000322  1847 	C$i2c.h$182$1$89 ==.
                                   1848 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003ED 8D 82            [24] 1849 	mov	dpl,r5
      0003EF 8E 83            [24] 1850 	mov	dph,r6
      0003F1                       1851 00119$:
                           000326  1852 	C$i2c.h$183$1$89 ==.
                           000326  1853 	XG$kpd_input$0$0 ==.
      0003F1 22               [24] 1854 	ret
                                   1855 ;------------------------------------------------------------
                                   1856 ;Allocation info for local variables in function 'delay_time'
                                   1857 ;------------------------------------------------------------
                                   1858 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1859 ;index                     Allocated to registers 
                                   1860 ;------------------------------------------------------------
                           000327  1861 	G$delay_time$0$0 ==.
                           000327  1862 	C$i2c.h$192$1$89 ==.
                                   1863 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1864 ;	-----------------------------------------
                                   1865 ;	 function delay_time
                                   1866 ;	-----------------------------------------
      0003F2                       1867 _delay_time:
      0003F2 AC 82            [24] 1868 	mov	r4,dpl
      0003F4 AD 83            [24] 1869 	mov	r5,dph
      0003F6 AE F0            [24] 1870 	mov	r6,b
      0003F8 FF               [12] 1871 	mov	r7,a
                           00032E  1872 	C$i2c.h$196$1$94 ==.
                                   1873 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      0003F9 78 00            [12] 1874 	mov	r0,#0x00
      0003FB 79 00            [12] 1875 	mov	r1,#0x00
      0003FD 7A 00            [12] 1876 	mov	r2,#0x00
      0003FF 7B 00            [12] 1877 	mov	r3,#0x00
      000401                       1878 00103$:
      000401 C3               [12] 1879 	clr	c
      000402 E8               [12] 1880 	mov	a,r0
      000403 9C               [12] 1881 	subb	a,r4
      000404 E9               [12] 1882 	mov	a,r1
      000405 9D               [12] 1883 	subb	a,r5
      000406 EA               [12] 1884 	mov	a,r2
      000407 9E               [12] 1885 	subb	a,r6
      000408 EB               [12] 1886 	mov	a,r3
      000409 9F               [12] 1887 	subb	a,r7
      00040A 50 0F            [24] 1888 	jnc	00105$
      00040C 08               [12] 1889 	inc	r0
      00040D B8 00 09         [24] 1890 	cjne	r0,#0x00,00115$
      000410 09               [12] 1891 	inc	r1
      000411 B9 00 05         [24] 1892 	cjne	r1,#0x00,00115$
      000414 0A               [12] 1893 	inc	r2
      000415 BA 00 E9         [24] 1894 	cjne	r2,#0x00,00103$
      000418 0B               [12] 1895 	inc	r3
      000419                       1896 00115$:
      000419 80 E6            [24] 1897 	sjmp	00103$
      00041B                       1898 00105$:
                           000350  1899 	C$i2c.h$197$1$94 ==.
                           000350  1900 	XG$delay_time$0$0 ==.
      00041B 22               [24] 1901 	ret
                                   1902 ;------------------------------------------------------------
                                   1903 ;Allocation info for local variables in function 'i2c_start'
                                   1904 ;------------------------------------------------------------
                           000351  1905 	G$i2c_start$0$0 ==.
                           000351  1906 	C$i2c.h$200$1$94 ==.
                                   1907 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1908 ;	-----------------------------------------
                                   1909 ;	 function i2c_start
                                   1910 ;	-----------------------------------------
      00041C                       1911 _i2c_start:
                           000351  1912 	C$i2c.h$202$1$96 ==.
                                   1913 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      00041C                       1914 00101$:
      00041C 20 C7 FD         [24] 1915 	jb	_BUSY,00101$
                           000354  1916 	C$i2c.h$203$1$96 ==.
                                   1917 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      00041F D2 C5            [12] 1918 	setb	_STA
                           000356  1919 	C$i2c.h$204$1$96 ==.
                                   1920 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000421                       1921 00104$:
      000421 30 C3 FD         [24] 1922 	jnb	_SI,00104$
                           000359  1923 	C$i2c.h$205$1$96 ==.
                                   1924 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000424 C2 C5            [12] 1925 	clr	_STA
                           00035B  1926 	C$i2c.h$206$1$96 ==.
                                   1927 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000426 C2 C3            [12] 1928 	clr	_SI
                           00035D  1929 	C$i2c.h$207$1$96 ==.
                           00035D  1930 	XG$i2c_start$0$0 ==.
      000428 22               [24] 1931 	ret
                                   1932 ;------------------------------------------------------------
                                   1933 ;Allocation info for local variables in function 'i2c_write'
                                   1934 ;------------------------------------------------------------
                                   1935 ;output_data               Allocated to registers 
                                   1936 ;------------------------------------------------------------
                           00035E  1937 	G$i2c_write$0$0 ==.
                           00035E  1938 	C$i2c.h$210$1$96 ==.
                                   1939 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   1940 ;	-----------------------------------------
                                   1941 ;	 function i2c_write
                                   1942 ;	-----------------------------------------
      000429                       1943 _i2c_write:
      000429 85 82 C2         [24] 1944 	mov	_SMB0DAT,dpl
                           000361  1945 	C$i2c.h$213$1$98 ==.
                                   1946 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00042C                       1947 00101$:
                           000361  1948 	C$i2c.h$214$1$98 ==.
                                   1949 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00042C 10 C3 02         [24] 1950 	jbc	_SI,00112$
      00042F 80 FB            [24] 1951 	sjmp	00101$
      000431                       1952 00112$:
                           000366  1953 	C$i2c.h$215$1$98 ==.
                           000366  1954 	XG$i2c_write$0$0 ==.
      000431 22               [24] 1955 	ret
                                   1956 ;------------------------------------------------------------
                                   1957 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   1958 ;------------------------------------------------------------
                                   1959 ;output_data               Allocated to registers 
                                   1960 ;------------------------------------------------------------
                           000367  1961 	G$i2c_write_and_stop$0$0 ==.
                           000367  1962 	C$i2c.h$218$1$98 ==.
                                   1963 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   1964 ;	-----------------------------------------
                                   1965 ;	 function i2c_write_and_stop
                                   1966 ;	-----------------------------------------
      000432                       1967 _i2c_write_and_stop:
      000432 85 82 C2         [24] 1968 	mov	_SMB0DAT,dpl
                           00036A  1969 	C$i2c.h$221$1$100 ==.
                                   1970 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000435 D2 C4            [12] 1971 	setb	_STO
                           00036C  1972 	C$i2c.h$222$1$100 ==.
                                   1973 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000437                       1974 00101$:
                           00036C  1975 	C$i2c.h$223$1$100 ==.
                                   1976 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000437 10 C3 02         [24] 1977 	jbc	_SI,00112$
      00043A 80 FB            [24] 1978 	sjmp	00101$
      00043C                       1979 00112$:
                           000371  1980 	C$i2c.h$224$1$100 ==.
                           000371  1981 	XG$i2c_write_and_stop$0$0 ==.
      00043C 22               [24] 1982 	ret
                                   1983 ;------------------------------------------------------------
                                   1984 ;Allocation info for local variables in function 'i2c_read'
                                   1985 ;------------------------------------------------------------
                                   1986 ;input_data                Allocated to registers 
                                   1987 ;------------------------------------------------------------
                           000372  1988 	G$i2c_read$0$0 ==.
                           000372  1989 	C$i2c.h$227$1$100 ==.
                                   1990 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   1991 ;	-----------------------------------------
                                   1992 ;	 function i2c_read
                                   1993 ;	-----------------------------------------
      00043D                       1994 _i2c_read:
                           000372  1995 	C$i2c.h$231$1$102 ==.
                                   1996 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00043D                       1997 00101$:
      00043D 30 C3 FD         [24] 1998 	jnb	_SI,00101$
                           000375  1999 	C$i2c.h$232$1$102 ==.
                                   2000 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000440 85 C2 82         [24] 2001 	mov	dpl,_SMB0DAT
                           000378  2002 	C$i2c.h$233$1$102 ==.
                                   2003 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000443 C2 C3            [12] 2004 	clr	_SI
                           00037A  2005 	C$i2c.h$234$1$102 ==.
                                   2006 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2007 	C$i2c.h$235$1$102 ==.
                           00037A  2008 	XG$i2c_read$0$0 ==.
      000445 22               [24] 2009 	ret
                                   2010 ;------------------------------------------------------------
                                   2011 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2012 ;------------------------------------------------------------
                                   2013 ;input_data                Allocated to registers r7 
                                   2014 ;------------------------------------------------------------
                           00037B  2015 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2016 	C$i2c.h$238$1$102 ==.
                                   2017 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2018 ;	-----------------------------------------
                                   2019 ;	 function i2c_read_and_stop
                                   2020 ;	-----------------------------------------
      000446                       2021 _i2c_read_and_stop:
                           00037B  2022 	C$i2c.h$242$1$104 ==.
                                   2023 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000446                       2024 00101$:
      000446 30 C3 FD         [24] 2025 	jnb	_SI,00101$
                           00037E  2026 	C$i2c.h$243$1$104 ==.
                                   2027 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      000449 AF C2            [24] 2028 	mov	r7,_SMB0DAT
                           000380  2029 	C$i2c.h$244$1$104 ==.
                                   2030 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00044B C2 C3            [12] 2031 	clr	_SI
                           000382  2032 	C$i2c.h$245$1$104 ==.
                                   2033 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00044D D2 C4            [12] 2034 	setb	_STO
                           000384  2035 	C$i2c.h$246$1$104 ==.
                                   2036 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      00044F                       2037 00104$:
                           000384  2038 	C$i2c.h$247$1$104 ==.
                                   2039 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      00044F 10 C3 02         [24] 2040 	jbc	_SI,00122$
      000452 80 FB            [24] 2041 	sjmp	00104$
      000454                       2042 00122$:
                           000389  2043 	C$i2c.h$248$1$104 ==.
                                   2044 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000454 8F 82            [24] 2045 	mov	dpl,r7
                           00038B  2046 	C$i2c.h$249$1$104 ==.
                           00038B  2047 	XG$i2c_read_and_stop$0$0 ==.
      000456 22               [24] 2048 	ret
                                   2049 ;------------------------------------------------------------
                                   2050 ;Allocation info for local variables in function 'i2c_write_data'
                                   2051 ;------------------------------------------------------------
                                   2052 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2053 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2054 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2055 ;addr                      Allocated to registers r7 
                                   2056 ;i                         Allocated to registers 
                                   2057 ;------------------------------------------------------------
                           00038C  2058 	G$i2c_write_data$0$0 ==.
                           00038C  2059 	C$i2c.h$252$1$104 ==.
                                   2060 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2061 ;	-----------------------------------------
                                   2062 ;	 function i2c_write_data
                                   2063 ;	-----------------------------------------
      000457                       2064 _i2c_write_data:
      000457 AF 82            [24] 2065 	mov	r7,dpl
                           00038E  2066 	C$i2c.h$256$1$106 ==.
                                   2067 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      000459 C2 AF            [12] 2068 	clr	_EA
                           000390  2069 	C$i2c.h$257$1$106 ==.
                                   2070 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00045B C0 07            [24] 2071 	push	ar7
      00045D 12 04 1C         [24] 2072 	lcall	_i2c_start
      000460 D0 07            [24] 2073 	pop	ar7
                           000397  2074 	C$i2c.h$258$1$106 ==.
                                   2075 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000462 74 FE            [12] 2076 	mov	a,#0xfe
      000464 5F               [12] 2077 	anl	a,r7
      000465 F5 82            [12] 2078 	mov	dpl,a
      000467 12 04 29         [24] 2079 	lcall	_i2c_write
                           00039F  2080 	C$i2c.h$259$1$106 ==.
                                   2081 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00046A 85 2C 82         [24] 2082 	mov	dpl,_i2c_write_data_PARM_2
      00046D 12 04 29         [24] 2083 	lcall	_i2c_write
                           0003A5  2084 	C$i2c.h$260$1$106 ==.
                                   2085 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000470 7F 00            [12] 2086 	mov	r7,#0x00
      000472                       2087 00103$:
      000472 AD 30            [24] 2088 	mov	r5,_i2c_write_data_PARM_4
      000474 7E 00            [12] 2089 	mov	r6,#0x00
      000476 1D               [12] 2090 	dec	r5
      000477 BD FF 01         [24] 2091 	cjne	r5,#0xff,00114$
      00047A 1E               [12] 2092 	dec	r6
      00047B                       2093 00114$:
      00047B 8F 03            [24] 2094 	mov	ar3,r7
      00047D 7C 00            [12] 2095 	mov	r4,#0x00
      00047F C3               [12] 2096 	clr	c
      000480 EB               [12] 2097 	mov	a,r3
      000481 9D               [12] 2098 	subb	a,r5
      000482 EC               [12] 2099 	mov	a,r4
      000483 64 80            [12] 2100 	xrl	a,#0x80
      000485 8E F0            [24] 2101 	mov	b,r6
      000487 63 F0 80         [24] 2102 	xrl	b,#0x80
      00048A 95 F0            [12] 2103 	subb	a,b
      00048C 50 1F            [24] 2104 	jnc	00101$
                           0003C3  2105 	C$i2c.h$261$1$106 ==.
                                   2106 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      00048E EF               [12] 2107 	mov	a,r7
      00048F 25 2D            [12] 2108 	add	a,_i2c_write_data_PARM_3
      000491 FC               [12] 2109 	mov	r4,a
      000492 E4               [12] 2110 	clr	a
      000493 35 2E            [12] 2111 	addc	a,(_i2c_write_data_PARM_3 + 1)
      000495 FD               [12] 2112 	mov	r5,a
      000496 AE 2F            [24] 2113 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      000498 8C 82            [24] 2114 	mov	dpl,r4
      00049A 8D 83            [24] 2115 	mov	dph,r5
      00049C 8E F0            [24] 2116 	mov	b,r6
      00049E 12 0E 26         [24] 2117 	lcall	__gptrget
      0004A1 F5 82            [12] 2118 	mov	dpl,a
      0004A3 C0 07            [24] 2119 	push	ar7
      0004A5 12 04 29         [24] 2120 	lcall	_i2c_write
      0004A8 D0 07            [24] 2121 	pop	ar7
                           0003DF  2122 	C$i2c.h$260$1$106 ==.
                                   2123 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004AA 0F               [12] 2124 	inc	r7
      0004AB 80 C5            [24] 2125 	sjmp	00103$
      0004AD                       2126 00101$:
                           0003E2  2127 	C$i2c.h$262$1$106 ==.
                                   2128 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004AD AE 30            [24] 2129 	mov	r6,_i2c_write_data_PARM_4
      0004AF 7F 00            [12] 2130 	mov	r7,#0x00
      0004B1 1E               [12] 2131 	dec	r6
      0004B2 BE FF 01         [24] 2132 	cjne	r6,#0xff,00116$
      0004B5 1F               [12] 2133 	dec	r7
      0004B6                       2134 00116$:
      0004B6 EE               [12] 2135 	mov	a,r6
      0004B7 25 2D            [12] 2136 	add	a,_i2c_write_data_PARM_3
      0004B9 FE               [12] 2137 	mov	r6,a
      0004BA EF               [12] 2138 	mov	a,r7
      0004BB 35 2E            [12] 2139 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004BD FF               [12] 2140 	mov	r7,a
      0004BE AD 2F            [24] 2141 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004C0 8E 82            [24] 2142 	mov	dpl,r6
      0004C2 8F 83            [24] 2143 	mov	dph,r7
      0004C4 8D F0            [24] 2144 	mov	b,r5
      0004C6 12 0E 26         [24] 2145 	lcall	__gptrget
      0004C9 F5 82            [12] 2146 	mov	dpl,a
      0004CB 12 04 32         [24] 2147 	lcall	_i2c_write_and_stop
                           000403  2148 	C$i2c.h$263$1$106 ==.
                                   2149 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004CE D2 AF            [12] 2150 	setb	_EA
                           000405  2151 	C$i2c.h$264$1$106 ==.
                           000405  2152 	XG$i2c_write_data$0$0 ==.
      0004D0 22               [24] 2153 	ret
                                   2154 ;------------------------------------------------------------
                                   2155 ;Allocation info for local variables in function 'i2c_read_data'
                                   2156 ;------------------------------------------------------------
                                   2157 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2158 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2159 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2160 ;addr                      Allocated to registers r7 
                                   2161 ;j                         Allocated to registers 
                                   2162 ;------------------------------------------------------------
                           000406  2163 	G$i2c_read_data$0$0 ==.
                           000406  2164 	C$i2c.h$267$1$106 ==.
                                   2165 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2166 ;	-----------------------------------------
                                   2167 ;	 function i2c_read_data
                                   2168 ;	-----------------------------------------
      0004D1                       2169 _i2c_read_data:
      0004D1 AF 82            [24] 2170 	mov	r7,dpl
                           000408  2171 	C$i2c.h$271$1$108 ==.
                                   2172 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004D3 C2 AF            [12] 2173 	clr	_EA
                           00040A  2174 	C$i2c.h$272$1$108 ==.
                                   2175 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004D5 C0 07            [24] 2176 	push	ar7
      0004D7 12 04 1C         [24] 2177 	lcall	_i2c_start
      0004DA D0 07            [24] 2178 	pop	ar7
                           000411  2179 	C$i2c.h$273$1$108 ==.
                                   2180 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004DC 74 FE            [12] 2181 	mov	a,#0xfe
      0004DE 5F               [12] 2182 	anl	a,r7
      0004DF F5 82            [12] 2183 	mov	dpl,a
      0004E1 C0 07            [24] 2184 	push	ar7
      0004E3 12 04 29         [24] 2185 	lcall	_i2c_write
                           00041B  2186 	C$i2c.h$274$1$108 ==.
                                   2187 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004E6 85 31 82         [24] 2188 	mov	dpl,_i2c_read_data_PARM_2
      0004E9 12 04 32         [24] 2189 	lcall	_i2c_write_and_stop
                           000421  2190 	C$i2c.h$275$1$108 ==.
                                   2191 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004EC 12 04 1C         [24] 2192 	lcall	_i2c_start
      0004EF D0 07            [24] 2193 	pop	ar7
                           000426  2194 	C$i2c.h$276$1$108 ==.
                                   2195 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004F1 74 01            [12] 2196 	mov	a,#0x01
      0004F3 4F               [12] 2197 	orl	a,r7
      0004F4 F5 82            [12] 2198 	mov	dpl,a
      0004F6 12 04 29         [24] 2199 	lcall	_i2c_write
                           00042E  2200 	C$i2c.h$277$1$108 ==.
                                   2201 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      0004F9 7F 00            [12] 2202 	mov	r7,#0x00
      0004FB                       2203 00103$:
      0004FB AD 35            [24] 2204 	mov	r5,_i2c_read_data_PARM_4
      0004FD 7E 00            [12] 2205 	mov	r6,#0x00
      0004FF 1D               [12] 2206 	dec	r5
      000500 BD FF 01         [24] 2207 	cjne	r5,#0xff,00114$
      000503 1E               [12] 2208 	dec	r6
      000504                       2209 00114$:
      000504 8F 03            [24] 2210 	mov	ar3,r7
      000506 7C 00            [12] 2211 	mov	r4,#0x00
      000508 C3               [12] 2212 	clr	c
      000509 EB               [12] 2213 	mov	a,r3
      00050A 9D               [12] 2214 	subb	a,r5
      00050B EC               [12] 2215 	mov	a,r4
      00050C 64 80            [12] 2216 	xrl	a,#0x80
      00050E 8E F0            [24] 2217 	mov	b,r6
      000510 63 F0 80         [24] 2218 	xrl	b,#0x80
      000513 95 F0            [12] 2219 	subb	a,b
      000515 50 2E            [24] 2220 	jnc	00101$
                           00044C  2221 	C$i2c.h$279$2$109 ==.
                                   2222 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000517 D2 C2            [12] 2223 	setb	_AA
                           00044E  2224 	C$i2c.h$280$2$109 ==.
                                   2225 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      000519 EF               [12] 2226 	mov	a,r7
      00051A 25 32            [12] 2227 	add	a,_i2c_read_data_PARM_3
      00051C FC               [12] 2228 	mov	r4,a
      00051D E4               [12] 2229 	clr	a
      00051E 35 33            [12] 2230 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000520 FD               [12] 2231 	mov	r5,a
      000521 AE 34            [24] 2232 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000523 C0 07            [24] 2233 	push	ar7
      000525 C0 06            [24] 2234 	push	ar6
      000527 C0 05            [24] 2235 	push	ar5
      000529 C0 04            [24] 2236 	push	ar4
      00052B 12 04 3D         [24] 2237 	lcall	_i2c_read
      00052E AB 82            [24] 2238 	mov	r3,dpl
      000530 D0 04            [24] 2239 	pop	ar4
      000532 D0 05            [24] 2240 	pop	ar5
      000534 D0 06            [24] 2241 	pop	ar6
      000536 D0 07            [24] 2242 	pop	ar7
      000538 8C 82            [24] 2243 	mov	dpl,r4
      00053A 8D 83            [24] 2244 	mov	dph,r5
      00053C 8E F0            [24] 2245 	mov	b,r6
      00053E EB               [12] 2246 	mov	a,r3
      00053F 12 06 D4         [24] 2247 	lcall	__gptrput
                           000477  2248 	C$i2c.h$277$1$108 ==.
                                   2249 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000542 0F               [12] 2250 	inc	r7
      000543 80 B6            [24] 2251 	sjmp	00103$
      000545                       2252 00101$:
                           00047A  2253 	C$i2c.h$282$1$108 ==.
                                   2254 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000545 C2 C2            [12] 2255 	clr	_AA
                           00047C  2256 	C$i2c.h$283$1$108 ==.
                                   2257 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000547 AE 35            [24] 2258 	mov	r6,_i2c_read_data_PARM_4
      000549 7F 00            [12] 2259 	mov	r7,#0x00
      00054B 1E               [12] 2260 	dec	r6
      00054C BE FF 01         [24] 2261 	cjne	r6,#0xff,00116$
      00054F 1F               [12] 2262 	dec	r7
      000550                       2263 00116$:
      000550 EE               [12] 2264 	mov	a,r6
      000551 25 32            [12] 2265 	add	a,_i2c_read_data_PARM_3
      000553 FE               [12] 2266 	mov	r6,a
      000554 EF               [12] 2267 	mov	a,r7
      000555 35 33            [12] 2268 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000557 FF               [12] 2269 	mov	r7,a
      000558 AD 34            [24] 2270 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00055A C0 07            [24] 2271 	push	ar7
      00055C C0 06            [24] 2272 	push	ar6
      00055E C0 05            [24] 2273 	push	ar5
      000560 12 04 46         [24] 2274 	lcall	_i2c_read_and_stop
      000563 AC 82            [24] 2275 	mov	r4,dpl
      000565 D0 05            [24] 2276 	pop	ar5
      000567 D0 06            [24] 2277 	pop	ar6
      000569 D0 07            [24] 2278 	pop	ar7
      00056B 8E 82            [24] 2279 	mov	dpl,r6
      00056D 8F 83            [24] 2280 	mov	dph,r7
      00056F 8D F0            [24] 2281 	mov	b,r5
      000571 EC               [12] 2282 	mov	a,r4
      000572 12 06 D4         [24] 2283 	lcall	__gptrput
                           0004AA  2284 	C$i2c.h$284$1$108 ==.
                                   2285 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000575 D2 AF            [12] 2286 	setb	_EA
                           0004AC  2287 	C$i2c.h$285$1$108 ==.
                           0004AC  2288 	XG$i2c_read_data$0$0 ==.
      000577 22               [24] 2289 	ret
                                   2290 ;------------------------------------------------------------
                                   2291 ;Allocation info for local variables in function 'Accel_Init'
                                   2292 ;------------------------------------------------------------
                           0004AD  2293 	G$Accel_Init$0$0 ==.
                           0004AD  2294 	C$i2c.h$294$1$108 ==.
                                   2295 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2296 ;	-----------------------------------------
                                   2297 ;	 function Accel_Init
                                   2298 ;	-----------------------------------------
      000578                       2299 _Accel_Init:
                           0004AD  2300 	C$i2c.h$298$1$111 ==.
                                   2301 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      000578 75 22 23         [24] 2302 	mov	_Data2,#0x23
                           0004B0  2303 	C$i2c.h$300$1$111 ==.
                                   2304 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00057B 75 23 00         [24] 2305 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2306 	C$i2c.h$301$1$111 ==.
                                   2307 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      00057E 75 23 10         [24] 2308 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2309 	C$i2c.h$302$1$111 ==.
                                   2310 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      000581 75 24 00         [24] 2311 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2312 	C$i2c.h$304$1$111 ==.
                                   2313 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      000584 75 2D 22         [24] 2314 	mov	_i2c_write_data_PARM_3,#_Data2
      000587 75 2E 00         [24] 2315 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00058A 75 2F 40         [24] 2316 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00058D 75 2C 20         [24] 2317 	mov	_i2c_write_data_PARM_2,#0x20
      000590 75 30 01         [24] 2318 	mov	_i2c_write_data_PARM_4,#0x01
      000593 75 82 30         [24] 2319 	mov	dpl,#0x30
      000596 12 04 57         [24] 2320 	lcall	_i2c_write_data
                           0004CE  2321 	C$i2c.h$310$1$111 ==.
                           0004CE  2322 	XG$Accel_Init$0$0 ==.
      000599 22               [24] 2323 	ret
                                   2324 ;------------------------------------------------------------
                                   2325 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2326 ;------------------------------------------------------------
                           0004CF  2327 	G$Accel_Init_C$0$0 ==.
                           0004CF  2328 	C$i2c.h$313$1$111 ==.
                                   2329 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2330 ;	-----------------------------------------
                                   2331 ;	 function Accel_Init_C
                                   2332 ;	-----------------------------------------
      00059A                       2333 _Accel_Init_C:
                           0004CF  2334 	C$i2c.h$318$1$113 ==.
                                   2335 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      00059A 75 22 04         [24] 2336 	mov	_Data2,#0x04
                           0004D2  2337 	C$i2c.h$319$1$113 ==.
                                   2338 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      00059D 75 2D 22         [24] 2339 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A0 75 2E 00         [24] 2340 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005A3 75 2F 40         [24] 2341 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005A6 75 2C 23         [24] 2342 	mov	_i2c_write_data_PARM_2,#0x23
      0005A9 75 30 01         [24] 2343 	mov	_i2c_write_data_PARM_4,#0x01
      0005AC 75 82 3A         [24] 2344 	mov	dpl,#0x3a
      0005AF 12 04 57         [24] 2345 	lcall	_i2c_write_data
                           0004E7  2346 	C$i2c.h$321$1$113 ==.
                                   2347 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005B2 75 22 6B         [24] 2348 	mov	_Data2,#0x6b
                           0004EA  2349 	C$i2c.h$323$1$113 ==.
                                   2350 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005B5 75 23 00         [24] 2351 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2352 	C$i2c.h$325$1$113 ==.
                                   2353 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005B8 75 24 00         [24] 2354 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2355 	C$i2c.h$326$1$113 ==.
                                   2356 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005BB 75 2D 22         [24] 2357 	mov	_i2c_write_data_PARM_3,#_Data2
      0005BE 75 2E 00         [24] 2358 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C1 75 2F 40         [24] 2359 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005C4 75 2C 20         [24] 2360 	mov	_i2c_write_data_PARM_2,#0x20
      0005C7 75 30 01         [24] 2361 	mov	_i2c_write_data_PARM_4,#0x01
      0005CA 75 82 3A         [24] 2362 	mov	dpl,#0x3a
      0005CD 12 04 57         [24] 2363 	lcall	_i2c_write_data
                           000505  2364 	C$i2c.h$328$1$113 ==.
                           000505  2365 	XG$Accel_Init_C$0$0 ==.
      0005D0 22               [24] 2366 	ret
                                   2367 ;------------------------------------------------------------
                                   2368 ;Allocation info for local variables in function 'main'
                                   2369 ;------------------------------------------------------------
                           000506  2370 	G$main$0$0 ==.
                           000506  2371 	C$lab3_2.c$36$1$113 ==.
                                   2372 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:36: void main(void)
                                   2373 ;	-----------------------------------------
                                   2374 ;	 function main
                                   2375 ;	-----------------------------------------
      0005D1                       2376 _main:
                           000506  2377 	C$lab3_2.c$39$1$121 ==.
                                   2378 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:39: Sys_Init();
      0005D1 12 01 02         [24] 2379 	lcall	_Sys_Init
                           000509  2380 	C$lab3_2.c$40$1$121 ==.
                                   2381 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:40: putchar(' '); //the quotes in this line may not format correctly
      0005D4 75 82 20         [24] 2382 	mov	dpl,#0x20
      0005D7 12 01 15         [24] 2383 	lcall	_putchar
                           00050F  2384 	C$lab3_2.c$41$1$121 ==.
                                   2385 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:41: Port_Init();
      0005DA 12 06 27         [24] 2386 	lcall	_Port_Init
                           000512  2387 	C$lab3_2.c$42$1$121 ==.
                                   2388 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:42: XBR0_Init();
      0005DD 12 06 2B         [24] 2389 	lcall	_XBR0_Init
                           000515  2390 	C$lab3_2.c$43$1$121 ==.
                                   2391 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:43: PCA_Init();
      0005E0 12 06 35         [24] 2392 	lcall	_PCA_Init
                           000518  2393 	C$lab3_2.c$44$1$121 ==.
                                   2394 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:44: SMB0_Init();
      0005E3 12 06 2F         [24] 2395 	lcall	_SMB0_Init
                           00051B  2396 	C$lab3_2.c$47$1$121 ==.
                                   2397 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:47: printf("Ain't this neat\n\r");
      0005E6 74 6F            [12] 2398 	mov	a,#___str_3
      0005E8 C0 E0            [24] 2399 	push	acc
      0005EA 74 0E            [12] 2400 	mov	a,#(___str_3 >> 8)
      0005EC C0 E0            [24] 2401 	push	acc
      0005EE 74 80            [12] 2402 	mov	a,#0x80
      0005F0 C0 E0            [24] 2403 	push	acc
      0005F2 12 08 2B         [24] 2404 	lcall	_printf
      0005F5 15 81            [12] 2405 	dec	sp
      0005F7 15 81            [12] 2406 	dec	sp
      0005F9 15 81            [12] 2407 	dec	sp
                           000530  2408 	C$lab3_2.c$49$1$121 ==.
                                   2409 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:49: while (1)
      0005FB                       2410 00104$:
                           000530  2411 	C$lab3_2.c$51$2$122 ==.
                                   2412 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:51: if (new_range)
      0005FB E5 42            [12] 2413 	mov	a,_new_range
      0005FD 60 FC            [24] 2414 	jz	00104$
                           000534  2415 	C$lab3_2.c$53$3$123 ==.
                                   2416 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:53: colrange = ReadRanger();
      0005FF 12 06 6B         [24] 2417 	lcall	_ReadRanger
      000602 85 82 43         [24] 2418 	mov	_colrange,dpl
      000605 85 83 44         [24] 2419 	mov	(_colrange + 1),dph
                           00053D  2420 	C$lab3_2.c$54$3$123 ==.
                                   2421 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:54: new_range = 0;
      000608 75 42 00         [24] 2422 	mov	_new_range,#0x00
                           000540  2423 	C$lab3_2.c$55$3$123 ==.
                                   2424 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:55: printf("Range: %i ", colrange);
      00060B C0 43            [24] 2425 	push	_colrange
      00060D C0 44            [24] 2426 	push	(_colrange + 1)
      00060F 74 81            [12] 2427 	mov	a,#___str_4
      000611 C0 E0            [24] 2428 	push	acc
      000613 74 0E            [12] 2429 	mov	a,#(___str_4 >> 8)
      000615 C0 E0            [24] 2430 	push	acc
      000617 74 80            [12] 2431 	mov	a,#0x80
      000619 C0 E0            [24] 2432 	push	acc
      00061B 12 08 2B         [24] 2433 	lcall	_printf
      00061E E5 81            [12] 2434 	mov	a,sp
      000620 24 FB            [12] 2435 	add	a,#0xfb
      000622 F5 81            [12] 2436 	mov	sp,a
      000624 80 D5            [24] 2437 	sjmp	00104$
                           00055B  2438 	C$lab3_2.c$59$1$121 ==.
                           00055B  2439 	XG$main$0$0 ==.
      000626 22               [24] 2440 	ret
                                   2441 ;------------------------------------------------------------
                                   2442 ;Allocation info for local variables in function 'Port_Init'
                                   2443 ;------------------------------------------------------------
                           00055C  2444 	G$Port_Init$0$0 ==.
                           00055C  2445 	C$lab3_2.c$67$1$121 ==.
                                   2446 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:67: void Port_Init()
                                   2447 ;	-----------------------------------------
                                   2448 ;	 function Port_Init
                                   2449 ;	-----------------------------------------
      000627                       2450 _Port_Init:
                           00055C  2451 	C$lab3_2.c$69$1$124 ==.
                                   2452 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:69: P1MDOUT |= 0x04;  //set output pin for CEX2 in push-pull mode
      000627 43 A5 04         [24] 2453 	orl	_P1MDOUT,#0x04
                           00055F  2454 	C$lab3_2.c$72$1$124 ==.
                           00055F  2455 	XG$Port_Init$0$0 ==.
      00062A 22               [24] 2456 	ret
                                   2457 ;------------------------------------------------------------
                                   2458 ;Allocation info for local variables in function 'XBR0_Init'
                                   2459 ;------------------------------------------------------------
                           000560  2460 	G$XBR0_Init$0$0 ==.
                           000560  2461 	C$lab3_2.c$80$1$124 ==.
                                   2462 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:80: void XBR0_Init()
                                   2463 ;	-----------------------------------------
                                   2464 ;	 function XBR0_Init
                                   2465 ;	-----------------------------------------
      00062B                       2466 _XBR0_Init:
                           000560  2467 	C$lab3_2.c$82$1$125 ==.
                                   2468 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:82: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      00062B 75 E1 27         [24] 2469 	mov	_XBR0,#0x27
                           000563  2470 	C$lab3_2.c$84$1$125 ==.
                           000563  2471 	XG$XBR0_Init$0$0 ==.
      00062E 22               [24] 2472 	ret
                                   2473 ;------------------------------------------------------------
                                   2474 ;Allocation info for local variables in function 'SMB0_Init'
                                   2475 ;------------------------------------------------------------
                           000564  2476 	G$SMB0_Init$0$0 ==.
                           000564  2477 	C$lab3_2.c$86$1$125 ==.
                                   2478 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:86: void SMB0_Init()
                                   2479 ;	-----------------------------------------
                                   2480 ;	 function SMB0_Init
                                   2481 ;	-----------------------------------------
      00062F                       2482 _SMB0_Init:
                           000564  2483 	C$lab3_2.c$88$1$126 ==.
                                   2484 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:88: SMB0CR = 0x93; // set SCL to 100KHz
      00062F 75 CF 93         [24] 2485 	mov	_SMB0CR,#0x93
                           000567  2486 	C$lab3_2.c$89$1$126 ==.
                                   2487 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:89: ENSMB = 1; // enable SMBUS0
      000632 D2 C6            [12] 2488 	setb	_ENSMB
                           000569  2489 	C$lab3_2.c$90$1$126 ==.
                           000569  2490 	XG$SMB0_Init$0$0 ==.
      000634 22               [24] 2491 	ret
                                   2492 ;------------------------------------------------------------
                                   2493 ;Allocation info for local variables in function 'PCA_Init'
                                   2494 ;------------------------------------------------------------
                           00056A  2495 	G$PCA_Init$0$0 ==.
                           00056A  2496 	C$lab3_2.c$98$1$126 ==.
                                   2497 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:98: void PCA_Init(void)
                                   2498 ;	-----------------------------------------
                                   2499 ;	 function PCA_Init
                                   2500 ;	-----------------------------------------
      000635                       2501 _PCA_Init:
                           00056A  2502 	C$lab3_2.c$100$1$128 ==.
                                   2503 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:100: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      000635 75 D9 81         [24] 2504 	mov	_PCA0MD,#0x81
                           00056D  2505 	C$lab3_2.c$101$1$128 ==.
                                   2506 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:101: PCA0CPM2 = 0xC2; //CCM2 in 16 bit compare mode
      000638 75 DC C2         [24] 2507 	mov	_PCA0CPM2,#0xc2
                           000570  2508 	C$lab3_2.c$102$1$128 ==.
                                   2509 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:102: PCA0CN = 0x40; //enable PCA counter
      00063B 75 D8 40         [24] 2510 	mov	_PCA0CN,#0x40
                           000573  2511 	C$lab3_2.c$103$1$128 ==.
                                   2512 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:103: EIE1 |= 0x08;
      00063E 43 E6 08         [24] 2513 	orl	_EIE1,#0x08
                           000576  2514 	C$lab3_2.c$104$1$128 ==.
                                   2515 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:104: EA = 1;
      000641 D2 AF            [12] 2516 	setb	_EA
                           000578  2517 	C$lab3_2.c$106$1$128 ==.
                           000578  2518 	XG$PCA_Init$0$0 ==.
      000643 22               [24] 2519 	ret
                                   2520 ;------------------------------------------------------------
                                   2521 ;Allocation info for local variables in function 'PCA_ISR'
                                   2522 ;------------------------------------------------------------
                           000579  2523 	G$PCA_ISR$0$0 ==.
                           000579  2524 	C$lab3_2.c$114$1$128 ==.
                                   2525 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:114: void PCA_ISR (void) __interrupt 9
                                   2526 ;	-----------------------------------------
                                   2527 ;	 function PCA_ISR
                                   2528 ;	-----------------------------------------
      000644                       2529 _PCA_ISR:
      000644 C0 E0            [24] 2530 	push	acc
      000646 C0 D0            [24] 2531 	push	psw
                           00057D  2532 	C$lab3_2.c$116$1$130 ==.
                                   2533 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:116: if (CF)
                           00057D  2534 	C$lab3_2.c$118$2$131 ==.
                                   2535 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:118: CF = 0;
      000648 10 DF 02         [24] 2536 	jbc	_CF,00114$
      00064B 80 16            [24] 2537 	sjmp	00104$
      00064D                       2538 00114$:
                           000582  2539 	C$lab3_2.c$119$2$131 ==.
                                   2540 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:119: PCA0 = 28671; //20 ms period 36408
      00064D 75 E9 FF         [24] 2541 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      000650 75 F9 6F         [24] 2542 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           000588  2543 	C$lab3_2.c$120$2$131 ==.
                                   2544 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:120: r_count ++;
      000653 05 41            [12] 2545 	inc	_r_count
                           00058A  2546 	C$lab3_2.c$121$2$131 ==.
                                   2547 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:121: if(r_count >= 4)
      000655 74 FC            [12] 2548 	mov	a,#0x100 - 0x04
      000657 25 41            [12] 2549 	add	a,_r_count
      000659 50 0B            [24] 2550 	jnc	00106$
                           000590  2551 	C$lab3_2.c$123$3$132 ==.
                                   2552 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:123: new_range = 1;
      00065B 75 42 01         [24] 2553 	mov	_new_range,#0x01
                           000593  2554 	C$lab3_2.c$124$3$132 ==.
                                   2555 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:124: r_count = 0;
      00065E 75 41 00         [24] 2556 	mov	_r_count,#0x00
      000661 80 03            [24] 2557 	sjmp	00106$
      000663                       2558 00104$:
                           000598  2559 	C$lab3_2.c$129$2$133 ==.
                                   2560 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:129: PCA0CN &= 0x40;
      000663 53 D8 40         [24] 2561 	anl	_PCA0CN,#0x40
      000666                       2562 00106$:
      000666 D0 D0            [24] 2563 	pop	psw
      000668 D0 E0            [24] 2564 	pop	acc
                           00059F  2565 	C$lab3_2.c$131$1$130 ==.
                           00059F  2566 	XG$PCA_ISR$0$0 ==.
      00066A 32               [24] 2567 	reti
                                   2568 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2569 ;	eliminated unneeded push/pop dpl
                                   2570 ;	eliminated unneeded push/pop dph
                                   2571 ;	eliminated unneeded push/pop b
                                   2572 ;------------------------------------------------------------
                                   2573 ;Allocation info for local variables in function 'ReadRanger'
                                   2574 ;------------------------------------------------------------
                           0005A0  2575 	G$ReadRanger$0$0 ==.
                           0005A0  2576 	C$lab3_2.c$133$1$130 ==.
                                   2577 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:133: unsigned int ReadRanger(void)
                                   2578 ;	-----------------------------------------
                                   2579 ;	 function ReadRanger
                                   2580 ;	-----------------------------------------
      00066B                       2581 _ReadRanger:
                           0005A0  2582 	C$lab3_2.c$135$1$135 ==.
                                   2583 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:135: i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
      00066B 75 32 48         [24] 2584 	mov	_i2c_read_data_PARM_3,#_Data
      00066E 75 33 00         [24] 2585 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000671 75 34 40         [24] 2586 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000674 75 31 02         [24] 2587 	mov	_i2c_read_data_PARM_2,#0x02
      000677 75 35 02         [24] 2588 	mov	_i2c_read_data_PARM_4,#0x02
      00067A 85 47 82         [24] 2589 	mov	dpl,_addr
      00067D 12 04 D1         [24] 2590 	lcall	_i2c_read_data
                           0005B5  2591 	C$lab3_2.c$136$1$135 ==.
                                   2592 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:136: range = (((unsigned int)Data[0] << 8) | Data[1]);
      000680 AF 48            [24] 2593 	mov	r7,_Data
      000682 7E 00            [12] 2594 	mov	r6,#0x00
      000684 AC 49            [24] 2595 	mov	r4,(_Data + 0x0001)
      000686 7D 00            [12] 2596 	mov	r5,#0x00
      000688 EC               [12] 2597 	mov	a,r4
      000689 4E               [12] 2598 	orl	a,r6
      00068A F5 45            [12] 2599 	mov	_range,a
      00068C ED               [12] 2600 	mov	a,r5
      00068D 4F               [12] 2601 	orl	a,r7
      00068E F5 46            [12] 2602 	mov	(_range + 1),a
                           0005C5  2603 	C$lab3_2.c$137$1$135 ==.
                                   2604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:137: printf("1: %i 2: %i\r\n", Data[0], Data[1]);
      000690 AE 49            [24] 2605 	mov	r6,(_Data + 0x0001)
      000692 7F 00            [12] 2606 	mov	r7,#0x00
      000694 AC 48            [24] 2607 	mov	r4,_Data
      000696 7D 00            [12] 2608 	mov	r5,#0x00
      000698 C0 06            [24] 2609 	push	ar6
      00069A C0 07            [24] 2610 	push	ar7
      00069C C0 04            [24] 2611 	push	ar4
      00069E C0 05            [24] 2612 	push	ar5
      0006A0 74 8C            [12] 2613 	mov	a,#___str_5
      0006A2 C0 E0            [24] 2614 	push	acc
      0006A4 74 0E            [12] 2615 	mov	a,#(___str_5 >> 8)
      0006A6 C0 E0            [24] 2616 	push	acc
      0006A8 74 80            [12] 2617 	mov	a,#0x80
      0006AA C0 E0            [24] 2618 	push	acc
      0006AC 12 08 2B         [24] 2619 	lcall	_printf
      0006AF E5 81            [12] 2620 	mov	a,sp
      0006B1 24 F9            [12] 2621 	add	a,#0xf9
      0006B3 F5 81            [12] 2622 	mov	sp,a
                           0005EA  2623 	C$lab3_2.c$138$1$135 ==.
                                   2624 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:138: Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
      0006B5 75 48 51         [24] 2625 	mov	_Data,#0x51
                           0005ED  2626 	C$lab3_2.c$139$1$135 ==.
                                   2627 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:139: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      0006B8 75 2D 48         [24] 2628 	mov	_i2c_write_data_PARM_3,#_Data
      0006BB 75 2E 00         [24] 2629 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0006BE 75 2F 40         [24] 2630 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0006C1 75 2C 00         [24] 2631 	mov	_i2c_write_data_PARM_2,#0x00
      0006C4 75 30 01         [24] 2632 	mov	_i2c_write_data_PARM_4,#0x01
      0006C7 85 47 82         [24] 2633 	mov	dpl,_addr
      0006CA 12 04 57         [24] 2634 	lcall	_i2c_write_data
                           000602  2635 	C$lab3_2.c$140$1$135 ==.
                                   2636 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-2\lab3-2.c:140: return range;
      0006CD 85 45 82         [24] 2637 	mov	dpl,_range
      0006D0 85 46 83         [24] 2638 	mov	dph,(_range + 1)
                           000608  2639 	C$lab3_2.c$141$1$135 ==.
                           000608  2640 	XG$ReadRanger$0$0 ==.
      0006D3 22               [24] 2641 	ret
                                   2642 	.area CSEG    (CODE)
                                   2643 	.area CONST   (CODE)
                           000000  2644 Flab3_2$__str_0$0$0 == .
      000E46                       2645 ___str_0:
      000E46 0A                    2646 	.db 0x0a
      000E47 54 79 70 65 20 64 69  2647 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      000E5B 00                    2648 	.db 0x00
                           000016  2649 Flab3_2$__str_1$0$0 == .
      000E5C                       2650 ___str_1:
      000E5C 20 20 20 20 20 25 63  2651 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      000E6B 00                    2652 	.db 0x00
                           000026  2653 Flab3_2$__str_2$0$0 == .
      000E6C                       2654 ___str_2:
      000E6C 25 63                 2655 	.ascii "%c"
      000E6E 00                    2656 	.db 0x00
                           000029  2657 Flab3_2$__str_3$0$0 == .
      000E6F                       2658 ___str_3:
      000E6F 41 69 6E 27 74 20 74  2659 	.ascii "Ain't this neat"
             68 69 73 20 6E 65 61
             74
      000E7E 0A                    2660 	.db 0x0a
      000E7F 0D                    2661 	.db 0x0d
      000E80 00                    2662 	.db 0x00
                           00003B  2663 Flab3_2$__str_4$0$0 == .
      000E81                       2664 ___str_4:
      000E81 52 61 6E 67 65 3A 20  2665 	.ascii "Range: %i "
             25 69 20
      000E8B 00                    2666 	.db 0x00
                           000046  2667 Flab3_2$__str_5$0$0 == .
      000E8C                       2668 ___str_5:
      000E8C 31 3A 20 25 69 20 32  2669 	.ascii "1: %i 2: %i"
             3A 20 25 69
      000E97 0D                    2670 	.db 0x0d
      000E98 0A                    2671 	.db 0x0a
      000E99 00                    2672 	.db 0x00
                                   2673 	.area XINIT   (CODE)
                                   2674 	.area CABS    (ABS,CODE)
