                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab3_3
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
                                     21 	.globl _SS0
                                     22 	.globl _BUS_SCL
                                     23 	.globl _BUS_TOE
                                     24 	.globl _BUS_FTE
                                     25 	.globl _BUS_AA
                                     26 	.globl _BUS_INT
                                     27 	.globl _BUS_STOP
                                     28 	.globl _BUS_START
                                     29 	.globl _BUS_EN
                                     30 	.globl _BUS_BUSY
                                     31 	.globl _SPIF
                                     32 	.globl _WCOL
                                     33 	.globl _MODF
                                     34 	.globl _RXOVRN
                                     35 	.globl _TXBSY
                                     36 	.globl _SLVSEL
                                     37 	.globl _MSTEN
                                     38 	.globl _SPIEN
                                     39 	.globl _AD0EN
                                     40 	.globl _ADCEN
                                     41 	.globl _AD0TM
                                     42 	.globl _ADCTM
                                     43 	.globl _AD0INT
                                     44 	.globl _ADCINT
                                     45 	.globl _AD0BUSY
                                     46 	.globl _ADBUSY
                                     47 	.globl _AD0CM1
                                     48 	.globl _ADSTM1
                                     49 	.globl _AD0CM0
                                     50 	.globl _ADSTM0
                                     51 	.globl _AD0WINT
                                     52 	.globl _ADWINT
                                     53 	.globl _AD0LJST
                                     54 	.globl _ADLJST
                                     55 	.globl _CF
                                     56 	.globl _CR
                                     57 	.globl _CCF4
                                     58 	.globl _CCF3
                                     59 	.globl _CCF2
                                     60 	.globl _CCF1
                                     61 	.globl _CCF0
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _TF2
                                     71 	.globl _EXF2
                                     72 	.globl _RCLK
                                     73 	.globl _TCLK
                                     74 	.globl _EXEN2
                                     75 	.globl _TR2
                                     76 	.globl _CT2
                                     77 	.globl _CPRL2
                                     78 	.globl _BUSY
                                     79 	.globl _ENSMB
                                     80 	.globl _STA
                                     81 	.globl _STO
                                     82 	.globl _SI
                                     83 	.globl _AA
                                     84 	.globl _SMBFTE
                                     85 	.globl _SMBTOE
                                     86 	.globl _PT2
                                     87 	.globl _PS
                                     88 	.globl _PS0
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ET2
                                    103 	.globl _ES
                                    104 	.globl _ES0
                                    105 	.globl _ET1
                                    106 	.globl _EX1
                                    107 	.globl _ET0
                                    108 	.globl _EX0
                                    109 	.globl _P2_7
                                    110 	.globl _P2_6
                                    111 	.globl _P2_5
                                    112 	.globl _P2_4
                                    113 	.globl _P2_3
                                    114 	.globl _P2_2
                                    115 	.globl _P2_1
                                    116 	.globl _P2_0
                                    117 	.globl _S0MODE
                                    118 	.globl _SM00
                                    119 	.globl _SM0
                                    120 	.globl _SM10
                                    121 	.globl _SM1
                                    122 	.globl _MCE0
                                    123 	.globl _SM20
                                    124 	.globl _SM2
                                    125 	.globl _REN0
                                    126 	.globl _REN
                                    127 	.globl _TB80
                                    128 	.globl _TB8
                                    129 	.globl _RB80
                                    130 	.globl _RB8
                                    131 	.globl _TI0
                                    132 	.globl _TI
                                    133 	.globl _RI0
                                    134 	.globl _RI
                                    135 	.globl _P1_7
                                    136 	.globl _P1_6
                                    137 	.globl _P1_5
                                    138 	.globl _P1_4
                                    139 	.globl _P1_3
                                    140 	.globl _P1_2
                                    141 	.globl _P1_1
                                    142 	.globl _P1_0
                                    143 	.globl _TF1
                                    144 	.globl _TR1
                                    145 	.globl _TF0
                                    146 	.globl _TR0
                                    147 	.globl _IE1
                                    148 	.globl _IT1
                                    149 	.globl _IE0
                                    150 	.globl _IT0
                                    151 	.globl _P0_7
                                    152 	.globl _P0_6
                                    153 	.globl _P0_5
                                    154 	.globl _P0_4
                                    155 	.globl _P0_3
                                    156 	.globl _P0_2
                                    157 	.globl _P0_1
                                    158 	.globl _P0_0
                                    159 	.globl _PCA0CP4
                                    160 	.globl _PCA0CP3
                                    161 	.globl _PCA0CP2
                                    162 	.globl _PCA0CP1
                                    163 	.globl _PCA0CP0
                                    164 	.globl _PCA0
                                    165 	.globl _DAC1
                                    166 	.globl _DAC0
                                    167 	.globl _ADC0LT
                                    168 	.globl _ADC0GT
                                    169 	.globl _ADC0
                                    170 	.globl _RCAP4
                                    171 	.globl _TMR4
                                    172 	.globl _TMR3RL
                                    173 	.globl _TMR3
                                    174 	.globl _RCAP2
                                    175 	.globl _TMR2
                                    176 	.globl _TMR1
                                    177 	.globl _TMR0
                                    178 	.globl _WDTCN
                                    179 	.globl _PCA0CPH4
                                    180 	.globl _PCA0CPH3
                                    181 	.globl _PCA0CPH2
                                    182 	.globl _PCA0CPH1
                                    183 	.globl _PCA0CPH0
                                    184 	.globl _PCA0H
                                    185 	.globl _SPI0CN
                                    186 	.globl _EIP2
                                    187 	.globl _EIP1
                                    188 	.globl _TH4
                                    189 	.globl _TL4
                                    190 	.globl _SADDR1
                                    191 	.globl _SBUF1
                                    192 	.globl _SCON1
                                    193 	.globl _B
                                    194 	.globl _RSTSRC
                                    195 	.globl _PCA0CPL4
                                    196 	.globl _PCA0CPL3
                                    197 	.globl _PCA0CPL2
                                    198 	.globl _PCA0CPL1
                                    199 	.globl _PCA0CPL0
                                    200 	.globl _PCA0L
                                    201 	.globl _ADC0CN
                                    202 	.globl _EIE2
                                    203 	.globl _EIE1
                                    204 	.globl _RCAP4H
                                    205 	.globl _RCAP4L
                                    206 	.globl _XBR2
                                    207 	.globl _XBR1
                                    208 	.globl _XBR0
                                    209 	.globl _ACC
                                    210 	.globl _PCA0CPM4
                                    211 	.globl _PCA0CPM3
                                    212 	.globl _PCA0CPM2
                                    213 	.globl _PCA0CPM1
                                    214 	.globl _PCA0CPM0
                                    215 	.globl _PCA0MD
                                    216 	.globl _PCA0CN
                                    217 	.globl _DAC1CN
                                    218 	.globl _DAC1H
                                    219 	.globl _DAC1L
                                    220 	.globl _DAC0CN
                                    221 	.globl _DAC0H
                                    222 	.globl _DAC0L
                                    223 	.globl _REF0CN
                                    224 	.globl _PSW
                                    225 	.globl _SMB0CR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T4CON
                                    231 	.globl _T2CON
                                    232 	.globl _ADC0LTH
                                    233 	.globl _ADC0LTL
                                    234 	.globl _ADC0GTH
                                    235 	.globl _ADC0GTL
                                    236 	.globl _SMB0ADR
                                    237 	.globl _SMB0DAT
                                    238 	.globl _SMB0STA
                                    239 	.globl _SMB0CN
                                    240 	.globl _ADC0H
                                    241 	.globl _ADC0L
                                    242 	.globl _P1MDIN
                                    243 	.globl _ADC0CF
                                    244 	.globl _AMX0SL
                                    245 	.globl _AMX0CF
                                    246 	.globl _SADEN0
                                    247 	.globl _IP
                                    248 	.globl _FLACL
                                    249 	.globl _FLSCL
                                    250 	.globl _P74OUT
                                    251 	.globl _OSCICN
                                    252 	.globl _OSCXCN
                                    253 	.globl _P3
                                    254 	.globl __XPAGE
                                    255 	.globl _EMI0CN
                                    256 	.globl _SADEN1
                                    257 	.globl _P3IF
                                    258 	.globl _AMX1SL
                                    259 	.globl _ADC1CF
                                    260 	.globl _ADC1CN
                                    261 	.globl _SADDR0
                                    262 	.globl _IE
                                    263 	.globl _P3MDOUT
                                    264 	.globl _PRT3CF
                                    265 	.globl _P2MDOUT
                                    266 	.globl _PRT2CF
                                    267 	.globl _P1MDOUT
                                    268 	.globl _PRT1CF
                                    269 	.globl _P0MDOUT
                                    270 	.globl _PRT0CF
                                    271 	.globl _EMI0CF
                                    272 	.globl _EMI0TC
                                    273 	.globl _P2
                                    274 	.globl _CPT1CN
                                    275 	.globl _CPT0CN
                                    276 	.globl _SPI0CKR
                                    277 	.globl _ADC1
                                    278 	.globl _SPI0DAT
                                    279 	.globl _SPI0CFG
                                    280 	.globl _SBUF0
                                    281 	.globl _SBUF
                                    282 	.globl _SCON0
                                    283 	.globl _SCON
                                    284 	.globl _P7
                                    285 	.globl _TMR3H
                                    286 	.globl _TMR3L
                                    287 	.globl _TMR3RLH
                                    288 	.globl _TMR3RLL
                                    289 	.globl _TMR3CN
                                    290 	.globl _P1
                                    291 	.globl _PSCTL
                                    292 	.globl _CKCON
                                    293 	.globl _TH1
                                    294 	.globl _TH0
                                    295 	.globl _TL1
                                    296 	.globl _TL0
                                    297 	.globl _TMOD
                                    298 	.globl _TCON
                                    299 	.globl _PCON
                                    300 	.globl _P6
                                    301 	.globl _P5
                                    302 	.globl _P4
                                    303 	.globl _DPH
                                    304 	.globl _DPL
                                    305 	.globl _SP
                                    306 	.globl _P0
                                    307 	.globl _Data
                                    308 	.globl _addr
                                    309 	.globl _range
                                    310 	.globl _colrange
                                    311 	.globl _new_range
                                    312 	.globl _r_count
                                    313 	.globl _input
                                    314 	.globl _count
                                    315 	.globl _PW
                                    316 	.globl _PW_MAX
                                    317 	.globl _PW_MIN
                                    318 	.globl _PW_CENTER
                                    319 	.globl _i2c_read_data_PARM_4
                                    320 	.globl _i2c_read_data_PARM_3
                                    321 	.globl _i2c_read_data_PARM_2
                                    322 	.globl _i2c_write_data_PARM_4
                                    323 	.globl _i2c_write_data_PARM_3
                                    324 	.globl _i2c_write_data_PARM_2
                                    325 	.globl _aligned_alloc_PARM_2
                                    326 	.globl _Data2
                                    327 	.globl _lcd_print
                                    328 	.globl _lcd_clear
                                    329 	.globl _kpd_input
                                    330 	.globl _delay_time
                                    331 	.globl _i2c_start
                                    332 	.globl _i2c_write
                                    333 	.globl _i2c_write_and_stop
                                    334 	.globl _i2c_read
                                    335 	.globl _i2c_read_and_stop
                                    336 	.globl _i2c_write_data
                                    337 	.globl _i2c_read_data
                                    338 	.globl _Accel_Init
                                    339 	.globl _Accel_Init_C
                                    340 	.globl _Port_Init
                                    341 	.globl _XBR0_Init
                                    342 	.globl _SMB0_Init
                                    343 	.globl _PCA_Init
                                    344 	.globl _PCA_ISR
                                    345 	.globl _Drive
                                    346 	.globl _ReadRanger
                                    347 ;--------------------------------------------------------
                                    348 ; special function registers
                                    349 ;--------------------------------------------------------
                                    350 	.area RSEG    (ABS,DATA)
      000000                        351 	.org 0x0000
                           000080   352 G$P0$0$0 == 0x0080
                           000080   353 _P0	=	0x0080
                           000081   354 G$SP$0$0 == 0x0081
                           000081   355 _SP	=	0x0081
                           000082   356 G$DPL$0$0 == 0x0082
                           000082   357 _DPL	=	0x0082
                           000083   358 G$DPH$0$0 == 0x0083
                           000083   359 _DPH	=	0x0083
                           000084   360 G$P4$0$0 == 0x0084
                           000084   361 _P4	=	0x0084
                           000085   362 G$P5$0$0 == 0x0085
                           000085   363 _P5	=	0x0085
                           000086   364 G$P6$0$0 == 0x0086
                           000086   365 _P6	=	0x0086
                           000087   366 G$PCON$0$0 == 0x0087
                           000087   367 _PCON	=	0x0087
                           000088   368 G$TCON$0$0 == 0x0088
                           000088   369 _TCON	=	0x0088
                           000089   370 G$TMOD$0$0 == 0x0089
                           000089   371 _TMOD	=	0x0089
                           00008A   372 G$TL0$0$0 == 0x008a
                           00008A   373 _TL0	=	0x008a
                           00008B   374 G$TL1$0$0 == 0x008b
                           00008B   375 _TL1	=	0x008b
                           00008C   376 G$TH0$0$0 == 0x008c
                           00008C   377 _TH0	=	0x008c
                           00008D   378 G$TH1$0$0 == 0x008d
                           00008D   379 _TH1	=	0x008d
                           00008E   380 G$CKCON$0$0 == 0x008e
                           00008E   381 _CKCON	=	0x008e
                           00008F   382 G$PSCTL$0$0 == 0x008f
                           00008F   383 _PSCTL	=	0x008f
                           000090   384 G$P1$0$0 == 0x0090
                           000090   385 _P1	=	0x0090
                           000091   386 G$TMR3CN$0$0 == 0x0091
                           000091   387 _TMR3CN	=	0x0091
                           000092   388 G$TMR3RLL$0$0 == 0x0092
                           000092   389 _TMR3RLL	=	0x0092
                           000093   390 G$TMR3RLH$0$0 == 0x0093
                           000093   391 _TMR3RLH	=	0x0093
                           000094   392 G$TMR3L$0$0 == 0x0094
                           000094   393 _TMR3L	=	0x0094
                           000095   394 G$TMR3H$0$0 == 0x0095
                           000095   395 _TMR3H	=	0x0095
                           000096   396 G$P7$0$0 == 0x0096
                           000096   397 _P7	=	0x0096
                           000098   398 G$SCON$0$0 == 0x0098
                           000098   399 _SCON	=	0x0098
                           000098   400 G$SCON0$0$0 == 0x0098
                           000098   401 _SCON0	=	0x0098
                           000099   402 G$SBUF$0$0 == 0x0099
                           000099   403 _SBUF	=	0x0099
                           000099   404 G$SBUF0$0$0 == 0x0099
                           000099   405 _SBUF0	=	0x0099
                           00009A   406 G$SPI0CFG$0$0 == 0x009a
                           00009A   407 _SPI0CFG	=	0x009a
                           00009B   408 G$SPI0DAT$0$0 == 0x009b
                           00009B   409 _SPI0DAT	=	0x009b
                           00009C   410 G$ADC1$0$0 == 0x009c
                           00009C   411 _ADC1	=	0x009c
                           00009D   412 G$SPI0CKR$0$0 == 0x009d
                           00009D   413 _SPI0CKR	=	0x009d
                           00009E   414 G$CPT0CN$0$0 == 0x009e
                           00009E   415 _CPT0CN	=	0x009e
                           00009F   416 G$CPT1CN$0$0 == 0x009f
                           00009F   417 _CPT1CN	=	0x009f
                           0000A0   418 G$P2$0$0 == 0x00a0
                           0000A0   419 _P2	=	0x00a0
                           0000A1   420 G$EMI0TC$0$0 == 0x00a1
                           0000A1   421 _EMI0TC	=	0x00a1
                           0000A3   422 G$EMI0CF$0$0 == 0x00a3
                           0000A3   423 _EMI0CF	=	0x00a3
                           0000A4   424 G$PRT0CF$0$0 == 0x00a4
                           0000A4   425 _PRT0CF	=	0x00a4
                           0000A4   426 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   427 _P0MDOUT	=	0x00a4
                           0000A5   428 G$PRT1CF$0$0 == 0x00a5
                           0000A5   429 _PRT1CF	=	0x00a5
                           0000A5   430 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   431 _P1MDOUT	=	0x00a5
                           0000A6   432 G$PRT2CF$0$0 == 0x00a6
                           0000A6   433 _PRT2CF	=	0x00a6
                           0000A6   434 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   435 _P2MDOUT	=	0x00a6
                           0000A7   436 G$PRT3CF$0$0 == 0x00a7
                           0000A7   437 _PRT3CF	=	0x00a7
                           0000A7   438 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   439 _P3MDOUT	=	0x00a7
                           0000A8   440 G$IE$0$0 == 0x00a8
                           0000A8   441 _IE	=	0x00a8
                           0000A9   442 G$SADDR0$0$0 == 0x00a9
                           0000A9   443 _SADDR0	=	0x00a9
                           0000AA   444 G$ADC1CN$0$0 == 0x00aa
                           0000AA   445 _ADC1CN	=	0x00aa
                           0000AB   446 G$ADC1CF$0$0 == 0x00ab
                           0000AB   447 _ADC1CF	=	0x00ab
                           0000AC   448 G$AMX1SL$0$0 == 0x00ac
                           0000AC   449 _AMX1SL	=	0x00ac
                           0000AD   450 G$P3IF$0$0 == 0x00ad
                           0000AD   451 _P3IF	=	0x00ad
                           0000AE   452 G$SADEN1$0$0 == 0x00ae
                           0000AE   453 _SADEN1	=	0x00ae
                           0000AF   454 G$EMI0CN$0$0 == 0x00af
                           0000AF   455 _EMI0CN	=	0x00af
                           0000AF   456 G$_XPAGE$0$0 == 0x00af
                           0000AF   457 __XPAGE	=	0x00af
                           0000B0   458 G$P3$0$0 == 0x00b0
                           0000B0   459 _P3	=	0x00b0
                           0000B1   460 G$OSCXCN$0$0 == 0x00b1
                           0000B1   461 _OSCXCN	=	0x00b1
                           0000B2   462 G$OSCICN$0$0 == 0x00b2
                           0000B2   463 _OSCICN	=	0x00b2
                           0000B5   464 G$P74OUT$0$0 == 0x00b5
                           0000B5   465 _P74OUT	=	0x00b5
                           0000B6   466 G$FLSCL$0$0 == 0x00b6
                           0000B6   467 _FLSCL	=	0x00b6
                           0000B7   468 G$FLACL$0$0 == 0x00b7
                           0000B7   469 _FLACL	=	0x00b7
                           0000B8   470 G$IP$0$0 == 0x00b8
                           0000B8   471 _IP	=	0x00b8
                           0000B9   472 G$SADEN0$0$0 == 0x00b9
                           0000B9   473 _SADEN0	=	0x00b9
                           0000BA   474 G$AMX0CF$0$0 == 0x00ba
                           0000BA   475 _AMX0CF	=	0x00ba
                           0000BB   476 G$AMX0SL$0$0 == 0x00bb
                           0000BB   477 _AMX0SL	=	0x00bb
                           0000BC   478 G$ADC0CF$0$0 == 0x00bc
                           0000BC   479 _ADC0CF	=	0x00bc
                           0000BD   480 G$P1MDIN$0$0 == 0x00bd
                           0000BD   481 _P1MDIN	=	0x00bd
                           0000BE   482 G$ADC0L$0$0 == 0x00be
                           0000BE   483 _ADC0L	=	0x00be
                           0000BF   484 G$ADC0H$0$0 == 0x00bf
                           0000BF   485 _ADC0H	=	0x00bf
                           0000C0   486 G$SMB0CN$0$0 == 0x00c0
                           0000C0   487 _SMB0CN	=	0x00c0
                           0000C1   488 G$SMB0STA$0$0 == 0x00c1
                           0000C1   489 _SMB0STA	=	0x00c1
                           0000C2   490 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   491 _SMB0DAT	=	0x00c2
                           0000C3   492 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   493 _SMB0ADR	=	0x00c3
                           0000C4   494 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   495 _ADC0GTL	=	0x00c4
                           0000C5   496 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   497 _ADC0GTH	=	0x00c5
                           0000C6   498 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   499 _ADC0LTL	=	0x00c6
                           0000C7   500 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   501 _ADC0LTH	=	0x00c7
                           0000C8   502 G$T2CON$0$0 == 0x00c8
                           0000C8   503 _T2CON	=	0x00c8
                           0000C9   504 G$T4CON$0$0 == 0x00c9
                           0000C9   505 _T4CON	=	0x00c9
                           0000CA   506 G$RCAP2L$0$0 == 0x00ca
                           0000CA   507 _RCAP2L	=	0x00ca
                           0000CB   508 G$RCAP2H$0$0 == 0x00cb
                           0000CB   509 _RCAP2H	=	0x00cb
                           0000CC   510 G$TL2$0$0 == 0x00cc
                           0000CC   511 _TL2	=	0x00cc
                           0000CD   512 G$TH2$0$0 == 0x00cd
                           0000CD   513 _TH2	=	0x00cd
                           0000CF   514 G$SMB0CR$0$0 == 0x00cf
                           0000CF   515 _SMB0CR	=	0x00cf
                           0000D0   516 G$PSW$0$0 == 0x00d0
                           0000D0   517 _PSW	=	0x00d0
                           0000D1   518 G$REF0CN$0$0 == 0x00d1
                           0000D1   519 _REF0CN	=	0x00d1
                           0000D2   520 G$DAC0L$0$0 == 0x00d2
                           0000D2   521 _DAC0L	=	0x00d2
                           0000D3   522 G$DAC0H$0$0 == 0x00d3
                           0000D3   523 _DAC0H	=	0x00d3
                           0000D4   524 G$DAC0CN$0$0 == 0x00d4
                           0000D4   525 _DAC0CN	=	0x00d4
                           0000D5   526 G$DAC1L$0$0 == 0x00d5
                           0000D5   527 _DAC1L	=	0x00d5
                           0000D6   528 G$DAC1H$0$0 == 0x00d6
                           0000D6   529 _DAC1H	=	0x00d6
                           0000D7   530 G$DAC1CN$0$0 == 0x00d7
                           0000D7   531 _DAC1CN	=	0x00d7
                           0000D8   532 G$PCA0CN$0$0 == 0x00d8
                           0000D8   533 _PCA0CN	=	0x00d8
                           0000D9   534 G$PCA0MD$0$0 == 0x00d9
                           0000D9   535 _PCA0MD	=	0x00d9
                           0000DA   536 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   537 _PCA0CPM0	=	0x00da
                           0000DB   538 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   539 _PCA0CPM1	=	0x00db
                           0000DC   540 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   541 _PCA0CPM2	=	0x00dc
                           0000DD   542 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   543 _PCA0CPM3	=	0x00dd
                           0000DE   544 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   545 _PCA0CPM4	=	0x00de
                           0000E0   546 G$ACC$0$0 == 0x00e0
                           0000E0   547 _ACC	=	0x00e0
                           0000E1   548 G$XBR0$0$0 == 0x00e1
                           0000E1   549 _XBR0	=	0x00e1
                           0000E2   550 G$XBR1$0$0 == 0x00e2
                           0000E2   551 _XBR1	=	0x00e2
                           0000E3   552 G$XBR2$0$0 == 0x00e3
                           0000E3   553 _XBR2	=	0x00e3
                           0000E4   554 G$RCAP4L$0$0 == 0x00e4
                           0000E4   555 _RCAP4L	=	0x00e4
                           0000E5   556 G$RCAP4H$0$0 == 0x00e5
                           0000E5   557 _RCAP4H	=	0x00e5
                           0000E6   558 G$EIE1$0$0 == 0x00e6
                           0000E6   559 _EIE1	=	0x00e6
                           0000E7   560 G$EIE2$0$0 == 0x00e7
                           0000E7   561 _EIE2	=	0x00e7
                           0000E8   562 G$ADC0CN$0$0 == 0x00e8
                           0000E8   563 _ADC0CN	=	0x00e8
                           0000E9   564 G$PCA0L$0$0 == 0x00e9
                           0000E9   565 _PCA0L	=	0x00e9
                           0000EA   566 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   567 _PCA0CPL0	=	0x00ea
                           0000EB   568 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   569 _PCA0CPL1	=	0x00eb
                           0000EC   570 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   571 _PCA0CPL2	=	0x00ec
                           0000ED   572 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   573 _PCA0CPL3	=	0x00ed
                           0000EE   574 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   575 _PCA0CPL4	=	0x00ee
                           0000EF   576 G$RSTSRC$0$0 == 0x00ef
                           0000EF   577 _RSTSRC	=	0x00ef
                           0000F0   578 G$B$0$0 == 0x00f0
                           0000F0   579 _B	=	0x00f0
                           0000F1   580 G$SCON1$0$0 == 0x00f1
                           0000F1   581 _SCON1	=	0x00f1
                           0000F2   582 G$SBUF1$0$0 == 0x00f2
                           0000F2   583 _SBUF1	=	0x00f2
                           0000F3   584 G$SADDR1$0$0 == 0x00f3
                           0000F3   585 _SADDR1	=	0x00f3
                           0000F4   586 G$TL4$0$0 == 0x00f4
                           0000F4   587 _TL4	=	0x00f4
                           0000F5   588 G$TH4$0$0 == 0x00f5
                           0000F5   589 _TH4	=	0x00f5
                           0000F6   590 G$EIP1$0$0 == 0x00f6
                           0000F6   591 _EIP1	=	0x00f6
                           0000F7   592 G$EIP2$0$0 == 0x00f7
                           0000F7   593 _EIP2	=	0x00f7
                           0000F8   594 G$SPI0CN$0$0 == 0x00f8
                           0000F8   595 _SPI0CN	=	0x00f8
                           0000F9   596 G$PCA0H$0$0 == 0x00f9
                           0000F9   597 _PCA0H	=	0x00f9
                           0000FA   598 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   599 _PCA0CPH0	=	0x00fa
                           0000FB   600 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   601 _PCA0CPH1	=	0x00fb
                           0000FC   602 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   603 _PCA0CPH2	=	0x00fc
                           0000FD   604 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   605 _PCA0CPH3	=	0x00fd
                           0000FE   606 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   607 _PCA0CPH4	=	0x00fe
                           0000FF   608 G$WDTCN$0$0 == 0x00ff
                           0000FF   609 _WDTCN	=	0x00ff
                           008C8A   610 G$TMR0$0$0 == 0x8c8a
                           008C8A   611 _TMR0	=	0x8c8a
                           008D8B   612 G$TMR1$0$0 == 0x8d8b
                           008D8B   613 _TMR1	=	0x8d8b
                           00CDCC   614 G$TMR2$0$0 == 0xcdcc
                           00CDCC   615 _TMR2	=	0xcdcc
                           00CBCA   616 G$RCAP2$0$0 == 0xcbca
                           00CBCA   617 _RCAP2	=	0xcbca
                           009594   618 G$TMR3$0$0 == 0x9594
                           009594   619 _TMR3	=	0x9594
                           009392   620 G$TMR3RL$0$0 == 0x9392
                           009392   621 _TMR3RL	=	0x9392
                           00F5F4   622 G$TMR4$0$0 == 0xf5f4
                           00F5F4   623 _TMR4	=	0xf5f4
                           00E5E4   624 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   625 _RCAP4	=	0xe5e4
                           00BFBE   626 G$ADC0$0$0 == 0xbfbe
                           00BFBE   627 _ADC0	=	0xbfbe
                           00C5C4   628 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   629 _ADC0GT	=	0xc5c4
                           00C7C6   630 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   631 _ADC0LT	=	0xc7c6
                           00D3D2   632 G$DAC0$0$0 == 0xd3d2
                           00D3D2   633 _DAC0	=	0xd3d2
                           00D6D5   634 G$DAC1$0$0 == 0xd6d5
                           00D6D5   635 _DAC1	=	0xd6d5
                           00F9E9   636 G$PCA0$0$0 == 0xf9e9
                           00F9E9   637 _PCA0	=	0xf9e9
                           00FAEA   638 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   639 _PCA0CP0	=	0xfaea
                           00FBEB   640 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   641 _PCA0CP1	=	0xfbeb
                           00FCEC   642 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   643 _PCA0CP2	=	0xfcec
                           00FDED   644 G$PCA0CP3$0$0 == 0xfded
                           00FDED   645 _PCA0CP3	=	0xfded
                           00FEEE   646 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   647 _PCA0CP4	=	0xfeee
                                    648 ;--------------------------------------------------------
                                    649 ; special function bits
                                    650 ;--------------------------------------------------------
                                    651 	.area RSEG    (ABS,DATA)
      000000                        652 	.org 0x0000
                           000080   653 G$P0_0$0$0 == 0x0080
                           000080   654 _P0_0	=	0x0080
                           000081   655 G$P0_1$0$0 == 0x0081
                           000081   656 _P0_1	=	0x0081
                           000082   657 G$P0_2$0$0 == 0x0082
                           000082   658 _P0_2	=	0x0082
                           000083   659 G$P0_3$0$0 == 0x0083
                           000083   660 _P0_3	=	0x0083
                           000084   661 G$P0_4$0$0 == 0x0084
                           000084   662 _P0_4	=	0x0084
                           000085   663 G$P0_5$0$0 == 0x0085
                           000085   664 _P0_5	=	0x0085
                           000086   665 G$P0_6$0$0 == 0x0086
                           000086   666 _P0_6	=	0x0086
                           000087   667 G$P0_7$0$0 == 0x0087
                           000087   668 _P0_7	=	0x0087
                           000088   669 G$IT0$0$0 == 0x0088
                           000088   670 _IT0	=	0x0088
                           000089   671 G$IE0$0$0 == 0x0089
                           000089   672 _IE0	=	0x0089
                           00008A   673 G$IT1$0$0 == 0x008a
                           00008A   674 _IT1	=	0x008a
                           00008B   675 G$IE1$0$0 == 0x008b
                           00008B   676 _IE1	=	0x008b
                           00008C   677 G$TR0$0$0 == 0x008c
                           00008C   678 _TR0	=	0x008c
                           00008D   679 G$TF0$0$0 == 0x008d
                           00008D   680 _TF0	=	0x008d
                           00008E   681 G$TR1$0$0 == 0x008e
                           00008E   682 _TR1	=	0x008e
                           00008F   683 G$TF1$0$0 == 0x008f
                           00008F   684 _TF1	=	0x008f
                           000090   685 G$P1_0$0$0 == 0x0090
                           000090   686 _P1_0	=	0x0090
                           000091   687 G$P1_1$0$0 == 0x0091
                           000091   688 _P1_1	=	0x0091
                           000092   689 G$P1_2$0$0 == 0x0092
                           000092   690 _P1_2	=	0x0092
                           000093   691 G$P1_3$0$0 == 0x0093
                           000093   692 _P1_3	=	0x0093
                           000094   693 G$P1_4$0$0 == 0x0094
                           000094   694 _P1_4	=	0x0094
                           000095   695 G$P1_5$0$0 == 0x0095
                           000095   696 _P1_5	=	0x0095
                           000096   697 G$P1_6$0$0 == 0x0096
                           000096   698 _P1_6	=	0x0096
                           000097   699 G$P1_7$0$0 == 0x0097
                           000097   700 _P1_7	=	0x0097
                           000098   701 G$RI$0$0 == 0x0098
                           000098   702 _RI	=	0x0098
                           000098   703 G$RI0$0$0 == 0x0098
                           000098   704 _RI0	=	0x0098
                           000099   705 G$TI$0$0 == 0x0099
                           000099   706 _TI	=	0x0099
                           000099   707 G$TI0$0$0 == 0x0099
                           000099   708 _TI0	=	0x0099
                           00009A   709 G$RB8$0$0 == 0x009a
                           00009A   710 _RB8	=	0x009a
                           00009A   711 G$RB80$0$0 == 0x009a
                           00009A   712 _RB80	=	0x009a
                           00009B   713 G$TB8$0$0 == 0x009b
                           00009B   714 _TB8	=	0x009b
                           00009B   715 G$TB80$0$0 == 0x009b
                           00009B   716 _TB80	=	0x009b
                           00009C   717 G$REN$0$0 == 0x009c
                           00009C   718 _REN	=	0x009c
                           00009C   719 G$REN0$0$0 == 0x009c
                           00009C   720 _REN0	=	0x009c
                           00009D   721 G$SM2$0$0 == 0x009d
                           00009D   722 _SM2	=	0x009d
                           00009D   723 G$SM20$0$0 == 0x009d
                           00009D   724 _SM20	=	0x009d
                           00009D   725 G$MCE0$0$0 == 0x009d
                           00009D   726 _MCE0	=	0x009d
                           00009E   727 G$SM1$0$0 == 0x009e
                           00009E   728 _SM1	=	0x009e
                           00009E   729 G$SM10$0$0 == 0x009e
                           00009E   730 _SM10	=	0x009e
                           00009F   731 G$SM0$0$0 == 0x009f
                           00009F   732 _SM0	=	0x009f
                           00009F   733 G$SM00$0$0 == 0x009f
                           00009F   734 _SM00	=	0x009f
                           00009F   735 G$S0MODE$0$0 == 0x009f
                           00009F   736 _S0MODE	=	0x009f
                           0000A0   737 G$P2_0$0$0 == 0x00a0
                           0000A0   738 _P2_0	=	0x00a0
                           0000A1   739 G$P2_1$0$0 == 0x00a1
                           0000A1   740 _P2_1	=	0x00a1
                           0000A2   741 G$P2_2$0$0 == 0x00a2
                           0000A2   742 _P2_2	=	0x00a2
                           0000A3   743 G$P2_3$0$0 == 0x00a3
                           0000A3   744 _P2_3	=	0x00a3
                           0000A4   745 G$P2_4$0$0 == 0x00a4
                           0000A4   746 _P2_4	=	0x00a4
                           0000A5   747 G$P2_5$0$0 == 0x00a5
                           0000A5   748 _P2_5	=	0x00a5
                           0000A6   749 G$P2_6$0$0 == 0x00a6
                           0000A6   750 _P2_6	=	0x00a6
                           0000A7   751 G$P2_7$0$0 == 0x00a7
                           0000A7   752 _P2_7	=	0x00a7
                           0000A8   753 G$EX0$0$0 == 0x00a8
                           0000A8   754 _EX0	=	0x00a8
                           0000A9   755 G$ET0$0$0 == 0x00a9
                           0000A9   756 _ET0	=	0x00a9
                           0000AA   757 G$EX1$0$0 == 0x00aa
                           0000AA   758 _EX1	=	0x00aa
                           0000AB   759 G$ET1$0$0 == 0x00ab
                           0000AB   760 _ET1	=	0x00ab
                           0000AC   761 G$ES0$0$0 == 0x00ac
                           0000AC   762 _ES0	=	0x00ac
                           0000AC   763 G$ES$0$0 == 0x00ac
                           0000AC   764 _ES	=	0x00ac
                           0000AD   765 G$ET2$0$0 == 0x00ad
                           0000AD   766 _ET2	=	0x00ad
                           0000AF   767 G$EA$0$0 == 0x00af
                           0000AF   768 _EA	=	0x00af
                           0000B0   769 G$P3_0$0$0 == 0x00b0
                           0000B0   770 _P3_0	=	0x00b0
                           0000B1   771 G$P3_1$0$0 == 0x00b1
                           0000B1   772 _P3_1	=	0x00b1
                           0000B2   773 G$P3_2$0$0 == 0x00b2
                           0000B2   774 _P3_2	=	0x00b2
                           0000B3   775 G$P3_3$0$0 == 0x00b3
                           0000B3   776 _P3_3	=	0x00b3
                           0000B4   777 G$P3_4$0$0 == 0x00b4
                           0000B4   778 _P3_4	=	0x00b4
                           0000B5   779 G$P3_5$0$0 == 0x00b5
                           0000B5   780 _P3_5	=	0x00b5
                           0000B6   781 G$P3_6$0$0 == 0x00b6
                           0000B6   782 _P3_6	=	0x00b6
                           0000B7   783 G$P3_7$0$0 == 0x00b7
                           0000B7   784 _P3_7	=	0x00b7
                           0000B8   785 G$PX0$0$0 == 0x00b8
                           0000B8   786 _PX0	=	0x00b8
                           0000B9   787 G$PT0$0$0 == 0x00b9
                           0000B9   788 _PT0	=	0x00b9
                           0000BA   789 G$PX1$0$0 == 0x00ba
                           0000BA   790 _PX1	=	0x00ba
                           0000BB   791 G$PT1$0$0 == 0x00bb
                           0000BB   792 _PT1	=	0x00bb
                           0000BC   793 G$PS0$0$0 == 0x00bc
                           0000BC   794 _PS0	=	0x00bc
                           0000BC   795 G$PS$0$0 == 0x00bc
                           0000BC   796 _PS	=	0x00bc
                           0000BD   797 G$PT2$0$0 == 0x00bd
                           0000BD   798 _PT2	=	0x00bd
                           0000C0   799 G$SMBTOE$0$0 == 0x00c0
                           0000C0   800 _SMBTOE	=	0x00c0
                           0000C1   801 G$SMBFTE$0$0 == 0x00c1
                           0000C1   802 _SMBFTE	=	0x00c1
                           0000C2   803 G$AA$0$0 == 0x00c2
                           0000C2   804 _AA	=	0x00c2
                           0000C3   805 G$SI$0$0 == 0x00c3
                           0000C3   806 _SI	=	0x00c3
                           0000C4   807 G$STO$0$0 == 0x00c4
                           0000C4   808 _STO	=	0x00c4
                           0000C5   809 G$STA$0$0 == 0x00c5
                           0000C5   810 _STA	=	0x00c5
                           0000C6   811 G$ENSMB$0$0 == 0x00c6
                           0000C6   812 _ENSMB	=	0x00c6
                           0000C7   813 G$BUSY$0$0 == 0x00c7
                           0000C7   814 _BUSY	=	0x00c7
                           0000C8   815 G$CPRL2$0$0 == 0x00c8
                           0000C8   816 _CPRL2	=	0x00c8
                           0000C9   817 G$CT2$0$0 == 0x00c9
                           0000C9   818 _CT2	=	0x00c9
                           0000CA   819 G$TR2$0$0 == 0x00ca
                           0000CA   820 _TR2	=	0x00ca
                           0000CB   821 G$EXEN2$0$0 == 0x00cb
                           0000CB   822 _EXEN2	=	0x00cb
                           0000CC   823 G$TCLK$0$0 == 0x00cc
                           0000CC   824 _TCLK	=	0x00cc
                           0000CD   825 G$RCLK$0$0 == 0x00cd
                           0000CD   826 _RCLK	=	0x00cd
                           0000CE   827 G$EXF2$0$0 == 0x00ce
                           0000CE   828 _EXF2	=	0x00ce
                           0000CF   829 G$TF2$0$0 == 0x00cf
                           0000CF   830 _TF2	=	0x00cf
                           0000D0   831 G$P$0$0 == 0x00d0
                           0000D0   832 _P	=	0x00d0
                           0000D1   833 G$F1$0$0 == 0x00d1
                           0000D1   834 _F1	=	0x00d1
                           0000D2   835 G$OV$0$0 == 0x00d2
                           0000D2   836 _OV	=	0x00d2
                           0000D3   837 G$RS0$0$0 == 0x00d3
                           0000D3   838 _RS0	=	0x00d3
                           0000D4   839 G$RS1$0$0 == 0x00d4
                           0000D4   840 _RS1	=	0x00d4
                           0000D5   841 G$F0$0$0 == 0x00d5
                           0000D5   842 _F0	=	0x00d5
                           0000D6   843 G$AC$0$0 == 0x00d6
                           0000D6   844 _AC	=	0x00d6
                           0000D7   845 G$CY$0$0 == 0x00d7
                           0000D7   846 _CY	=	0x00d7
                           0000D8   847 G$CCF0$0$0 == 0x00d8
                           0000D8   848 _CCF0	=	0x00d8
                           0000D9   849 G$CCF1$0$0 == 0x00d9
                           0000D9   850 _CCF1	=	0x00d9
                           0000DA   851 G$CCF2$0$0 == 0x00da
                           0000DA   852 _CCF2	=	0x00da
                           0000DB   853 G$CCF3$0$0 == 0x00db
                           0000DB   854 _CCF3	=	0x00db
                           0000DC   855 G$CCF4$0$0 == 0x00dc
                           0000DC   856 _CCF4	=	0x00dc
                           0000DE   857 G$CR$0$0 == 0x00de
                           0000DE   858 _CR	=	0x00de
                           0000DF   859 G$CF$0$0 == 0x00df
                           0000DF   860 _CF	=	0x00df
                           0000E8   861 G$ADLJST$0$0 == 0x00e8
                           0000E8   862 _ADLJST	=	0x00e8
                           0000E8   863 G$AD0LJST$0$0 == 0x00e8
                           0000E8   864 _AD0LJST	=	0x00e8
                           0000E9   865 G$ADWINT$0$0 == 0x00e9
                           0000E9   866 _ADWINT	=	0x00e9
                           0000E9   867 G$AD0WINT$0$0 == 0x00e9
                           0000E9   868 _AD0WINT	=	0x00e9
                           0000EA   869 G$ADSTM0$0$0 == 0x00ea
                           0000EA   870 _ADSTM0	=	0x00ea
                           0000EA   871 G$AD0CM0$0$0 == 0x00ea
                           0000EA   872 _AD0CM0	=	0x00ea
                           0000EB   873 G$ADSTM1$0$0 == 0x00eb
                           0000EB   874 _ADSTM1	=	0x00eb
                           0000EB   875 G$AD0CM1$0$0 == 0x00eb
                           0000EB   876 _AD0CM1	=	0x00eb
                           0000EC   877 G$ADBUSY$0$0 == 0x00ec
                           0000EC   878 _ADBUSY	=	0x00ec
                           0000EC   879 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   880 _AD0BUSY	=	0x00ec
                           0000ED   881 G$ADCINT$0$0 == 0x00ed
                           0000ED   882 _ADCINT	=	0x00ed
                           0000ED   883 G$AD0INT$0$0 == 0x00ed
                           0000ED   884 _AD0INT	=	0x00ed
                           0000EE   885 G$ADCTM$0$0 == 0x00ee
                           0000EE   886 _ADCTM	=	0x00ee
                           0000EE   887 G$AD0TM$0$0 == 0x00ee
                           0000EE   888 _AD0TM	=	0x00ee
                           0000EF   889 G$ADCEN$0$0 == 0x00ef
                           0000EF   890 _ADCEN	=	0x00ef
                           0000EF   891 G$AD0EN$0$0 == 0x00ef
                           0000EF   892 _AD0EN	=	0x00ef
                           0000F8   893 G$SPIEN$0$0 == 0x00f8
                           0000F8   894 _SPIEN	=	0x00f8
                           0000F9   895 G$MSTEN$0$0 == 0x00f9
                           0000F9   896 _MSTEN	=	0x00f9
                           0000FA   897 G$SLVSEL$0$0 == 0x00fa
                           0000FA   898 _SLVSEL	=	0x00fa
                           0000FB   899 G$TXBSY$0$0 == 0x00fb
                           0000FB   900 _TXBSY	=	0x00fb
                           0000FC   901 G$RXOVRN$0$0 == 0x00fc
                           0000FC   902 _RXOVRN	=	0x00fc
                           0000FD   903 G$MODF$0$0 == 0x00fd
                           0000FD   904 _MODF	=	0x00fd
                           0000FE   905 G$WCOL$0$0 == 0x00fe
                           0000FE   906 _WCOL	=	0x00fe
                           0000FF   907 G$SPIF$0$0 == 0x00ff
                           0000FF   908 _SPIF	=	0x00ff
                           0000C7   909 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   910 _BUS_BUSY	=	0x00c7
                           0000C6   911 G$BUS_EN$0$0 == 0x00c6
                           0000C6   912 _BUS_EN	=	0x00c6
                           0000C5   913 G$BUS_START$0$0 == 0x00c5
                           0000C5   914 _BUS_START	=	0x00c5
                           0000C4   915 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   916 _BUS_STOP	=	0x00c4
                           0000C3   917 G$BUS_INT$0$0 == 0x00c3
                           0000C3   918 _BUS_INT	=	0x00c3
                           0000C2   919 G$BUS_AA$0$0 == 0x00c2
                           0000C2   920 _BUS_AA	=	0x00c2
                           0000C1   921 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   922 _BUS_FTE	=	0x00c1
                           0000C0   923 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   924 _BUS_TOE	=	0x00c0
                           000083   925 G$BUS_SCL$0$0 == 0x0083
                           000083   926 _BUS_SCL	=	0x0083
                           0000B6   927 G$SS0$0$0 == 0x00b6
                           0000B6   928 _SS0	=	0x00b6
                                    929 ;--------------------------------------------------------
                                    930 ; overlayable register banks
                                    931 ;--------------------------------------------------------
                                    932 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        933 	.ds 8
                                    934 ;--------------------------------------------------------
                                    935 ; internal ram data
                                    936 ;--------------------------------------------------------
                                    937 	.area DSEG    (DATA)
                           000000   938 G$Data2$0$0==.
      000022                        939 _Data2::
      000022                        940 	.ds 3
                           000003   941 Llab3_3.aligned_alloc$size$1$39==.
      000025                        942 _aligned_alloc_PARM_2:
      000025                        943 	.ds 2
                           000005   944 Llab3_3.lcd_clear$NumBytes$1$85==.
      000027                        945 _lcd_clear_NumBytes_1_85:
      000027                        946 	.ds 1
                           000006   947 Llab3_3.lcd_clear$Cmd$1$85==.
      000028                        948 _lcd_clear_Cmd_1_85:
      000028                        949 	.ds 2
                           000008   950 Llab3_3.read_keypad$Data$1$86==.
      00002A                        951 _read_keypad_Data_1_86:
      00002A                        952 	.ds 2
                           00000A   953 Llab3_3.i2c_write_data$start_reg$1$105==.
      00002C                        954 _i2c_write_data_PARM_2:
      00002C                        955 	.ds 1
                           00000B   956 Llab3_3.i2c_write_data$buffer$1$105==.
      00002D                        957 _i2c_write_data_PARM_3:
      00002D                        958 	.ds 3
                           00000E   959 Llab3_3.i2c_write_data$num_bytes$1$105==.
      000030                        960 _i2c_write_data_PARM_4:
      000030                        961 	.ds 1
                           00000F   962 Llab3_3.i2c_read_data$start_reg$1$107==.
      000031                        963 _i2c_read_data_PARM_2:
      000031                        964 	.ds 1
                           000010   965 Llab3_3.i2c_read_data$buffer$1$107==.
      000032                        966 _i2c_read_data_PARM_3:
      000032                        967 	.ds 3
                           000013   968 Llab3_3.i2c_read_data$num_bytes$1$107==.
      000035                        969 _i2c_read_data_PARM_4:
      000035                        970 	.ds 1
                           000014   971 G$PW_CENTER$0$0==.
      000036                        972 _PW_CENTER::
      000036                        973 	.ds 2
                           000016   974 G$PW_MIN$0$0==.
      000038                        975 _PW_MIN::
      000038                        976 	.ds 2
                           000018   977 G$PW_MAX$0$0==.
      00003A                        978 _PW_MAX::
      00003A                        979 	.ds 2
                           00001A   980 G$PW$0$0==.
      00003C                        981 _PW::
      00003C                        982 	.ds 2
                           00001C   983 G$count$0$0==.
      00003E                        984 _count::
      00003E                        985 	.ds 2
                           00001E   986 G$input$0$0==.
      000040                        987 _input::
      000040                        988 	.ds 1
                           00001F   989 G$r_count$0$0==.
      000041                        990 _r_count::
      000041                        991 	.ds 1
                           000020   992 G$new_range$0$0==.
      000042                        993 _new_range::
      000042                        994 	.ds 1
                           000021   995 G$colrange$0$0==.
      000043                        996 _colrange::
      000043                        997 	.ds 2
                           000023   998 G$range$0$0==.
      000045                        999 _range::
      000045                       1000 	.ds 2
                           000025  1001 G$addr$0$0==.
      000047                       1002 _addr::
      000047                       1003 	.ds 1
                           000026  1004 G$Data$0$0==.
      000048                       1005 _Data::
      000048                       1006 	.ds 2
                                   1007 ;--------------------------------------------------------
                                   1008 ; overlayable items in internal ram 
                                   1009 ;--------------------------------------------------------
                                   1010 	.area	OSEG    (OVR,DATA)
                                   1011 	.area	OSEG    (OVR,DATA)
                                   1012 	.area	OSEG    (OVR,DATA)
                                   1013 	.area	OSEG    (OVR,DATA)
                                   1014 	.area	OSEG    (OVR,DATA)
                                   1015 	.area	OSEG    (OVR,DATA)
                                   1016 	.area	OSEG    (OVR,DATA)
                                   1017 ;--------------------------------------------------------
                                   1018 ; Stack segment in internal ram 
                                   1019 ;--------------------------------------------------------
                                   1020 	.area	SSEG
      000064                       1021 __start__stack:
      000064                       1022 	.ds	1
                                   1023 
                                   1024 ;--------------------------------------------------------
                                   1025 ; indirectly addressable internal ram data
                                   1026 ;--------------------------------------------------------
                                   1027 	.area ISEG    (DATA)
                                   1028 ;--------------------------------------------------------
                                   1029 ; absolute internal ram data
                                   1030 ;--------------------------------------------------------
                                   1031 	.area IABS    (ABS,DATA)
                                   1032 	.area IABS    (ABS,DATA)
                                   1033 ;--------------------------------------------------------
                                   1034 ; bit data
                                   1035 ;--------------------------------------------------------
                                   1036 	.area BSEG    (BIT)
                                   1037 ;--------------------------------------------------------
                                   1038 ; paged external ram data
                                   1039 ;--------------------------------------------------------
                                   1040 	.area PSEG    (PAG,XDATA)
                                   1041 ;--------------------------------------------------------
                                   1042 ; external ram data
                                   1043 ;--------------------------------------------------------
                                   1044 	.area XSEG    (XDATA)
                           000000  1045 Llab3_3.lcd_print$text$1$81==.
      000001                       1046 _lcd_print_text_1_81:
      000001                       1047 	.ds 80
                                   1048 ;--------------------------------------------------------
                                   1049 ; absolute external ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area XABS    (ABS,XDATA)
                                   1052 ;--------------------------------------------------------
                                   1053 ; external initialized ram data
                                   1054 ;--------------------------------------------------------
                                   1055 	.area XISEG   (XDATA)
                                   1056 	.area HOME    (CODE)
                                   1057 	.area GSINIT0 (CODE)
                                   1058 	.area GSINIT1 (CODE)
                                   1059 	.area GSINIT2 (CODE)
                                   1060 	.area GSINIT3 (CODE)
                                   1061 	.area GSINIT4 (CODE)
                                   1062 	.area GSINIT5 (CODE)
                                   1063 	.area GSINIT  (CODE)
                                   1064 	.area GSFINAL (CODE)
                                   1065 	.area CSEG    (CODE)
                                   1066 ;--------------------------------------------------------
                                   1067 ; interrupt vector 
                                   1068 ;--------------------------------------------------------
                                   1069 	.area HOME    (CODE)
      000000                       1070 __interrupt_vect:
      000000 02 00 51         [24] 1071 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1072 	reti
      000004                       1073 	.ds	7
      00000B 32               [24] 1074 	reti
      00000C                       1075 	.ds	7
      000013 32               [24] 1076 	reti
      000014                       1077 	.ds	7
      00001B 32               [24] 1078 	reti
      00001C                       1079 	.ds	7
      000023 32               [24] 1080 	reti
      000024                       1081 	.ds	7
      00002B 32               [24] 1082 	reti
      00002C                       1083 	.ds	7
      000033 32               [24] 1084 	reti
      000034                       1085 	.ds	7
      00003B 32               [24] 1086 	reti
      00003C                       1087 	.ds	7
      000043 32               [24] 1088 	reti
      000044                       1089 	.ds	7
      00004B 02 06 78         [24] 1090 	ljmp	_PCA_ISR
                                   1091 ;--------------------------------------------------------
                                   1092 ; global & static initialisations
                                   1093 ;--------------------------------------------------------
                                   1094 	.area HOME    (CODE)
                                   1095 	.area GSINIT  (CODE)
                                   1096 	.area GSFINAL (CODE)
                                   1097 	.area GSINIT  (CODE)
                                   1098 	.globl __sdcc_gsinit_startup
                                   1099 	.globl __sdcc_program_startup
                                   1100 	.globl __start__stack
                                   1101 	.globl __mcs51_genXINIT
                                   1102 	.globl __mcs51_genXRAMCLEAR
                                   1103 	.globl __mcs51_genRAMCLEAR
                           000000  1104 	C$lab3_3.c$22$1$143 ==.
                                   1105 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:22: unsigned int PW_CENTER = 2760;
      0000AA 75 36 C8         [24] 1106 	mov	_PW_CENTER,#0xc8
      0000AD 75 37 0A         [24] 1107 	mov	(_PW_CENTER + 1),#0x0a
                           000006  1108 	C$lab3_3.c$23$1$143 ==.
                                   1109 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:23: unsigned int PW_MIN = 2030;
      0000B0 75 38 EE         [24] 1110 	mov	_PW_MIN,#0xee
      0000B3 75 39 07         [24] 1111 	mov	(_PW_MIN + 1),#0x07
                           00000C  1112 	C$lab3_3.c$24$1$143 ==.
                                   1113 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:24: unsigned int PW_MAX = 3500;
      0000B6 75 3A AC         [24] 1114 	mov	_PW_MAX,#0xac
      0000B9 75 3B 0D         [24] 1115 	mov	(_PW_MAX + 1),#0x0d
                           000012  1116 	C$lab3_3.c$25$1$143 ==.
                                   1117 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:25: unsigned int PW = 0;
      0000BC E4               [12] 1118 	clr	a
      0000BD F5 3C            [12] 1119 	mov	_PW,a
      0000BF F5 3D            [12] 1120 	mov	(_PW + 1),a
                           000017  1121 	C$lab3_3.c$31$1$143 ==.
                                   1122 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:31: unsigned int range =0;
      0000C1 F5 45            [12] 1123 	mov	_range,a
      0000C3 F5 46            [12] 1124 	mov	(_range + 1),a
                           00001B  1125 	C$lab3_3.c$32$1$143 ==.
                                   1126 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:32: unsigned char addr=0xE0; // the address of the ranger is 0xE0
      0000C5 75 47 E0         [24] 1127 	mov	_addr,#0xe0
                                   1128 	.area GSFINAL (CODE)
      0000C8 02 00 4E         [24] 1129 	ljmp	__sdcc_program_startup
                                   1130 ;--------------------------------------------------------
                                   1131 ; Home
                                   1132 ;--------------------------------------------------------
                                   1133 	.area HOME    (CODE)
                                   1134 	.area HOME    (CODE)
      00004E                       1135 __sdcc_program_startup:
      00004E 02 05 D1         [24] 1136 	ljmp	_main
                                   1137 ;	return from main will return to caller
                                   1138 ;--------------------------------------------------------
                                   1139 ; code
                                   1140 ;--------------------------------------------------------
                                   1141 	.area CSEG    (CODE)
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1144 ;------------------------------------------------------------
                                   1145 ;i                         Allocated to registers r6 r7 
                                   1146 ;------------------------------------------------------------
                           000000  1147 	G$SYSCLK_Init$0$0 ==.
                           000000  1148 	C$c8051_SDCC.h$62$0$0 ==.
                                   1149 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function SYSCLK_Init
                                   1152 ;	-----------------------------------------
      0000CB                       1153 _SYSCLK_Init:
                           000007  1154 	ar7 = 0x07
                           000006  1155 	ar6 = 0x06
                           000005  1156 	ar5 = 0x05
                           000004  1157 	ar4 = 0x04
                           000003  1158 	ar3 = 0x03
                           000002  1159 	ar2 = 0x02
                           000001  1160 	ar1 = 0x01
                           000000  1161 	ar0 = 0x00
                           000000  1162 	C$c8051_SDCC.h$66$1$2 ==.
                                   1163 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000CB 75 B1 67         [24] 1164 	mov	_OSCXCN,#0x67
                           000003  1165 	C$c8051_SDCC.h$69$1$2 ==.
                                   1166 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000CE 7E 00            [12] 1167 	mov	r6,#0x00
      0000D0 7F 01            [12] 1168 	mov	r7,#0x01
      0000D2                       1169 00107$:
      0000D2 EE               [12] 1170 	mov	a,r6
      0000D3 24 FF            [12] 1171 	add	a,#0xff
      0000D5 FC               [12] 1172 	mov	r4,a
      0000D6 EF               [12] 1173 	mov	a,r7
      0000D7 34 FF            [12] 1174 	addc	a,#0xff
      0000D9 FD               [12] 1175 	mov	r5,a
      0000DA 8C 06            [24] 1176 	mov	ar6,r4
      0000DC 8D 07            [24] 1177 	mov	ar7,r5
      0000DE EC               [12] 1178 	mov	a,r4
      0000DF 4D               [12] 1179 	orl	a,r5
      0000E0 70 F0            [24] 1180 	jnz	00107$
                           000017  1181 	C$c8051_SDCC.h$71$1$2 ==.
                                   1182 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000E2                       1183 00102$:
      0000E2 E5 B1            [12] 1184 	mov	a,_OSCXCN
      0000E4 30 E7 FB         [24] 1185 	jnb	acc.7,00102$
                           00001C  1186 	C$c8051_SDCC.h$73$1$2 ==.
                                   1187 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000E7 75 B2 88         [24] 1188 	mov	_OSCICN,#0x88
                           00001F  1189 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1190 	XG$SYSCLK_Init$0$0 ==.
      0000EA 22               [24] 1191 	ret
                                   1192 ;------------------------------------------------------------
                                   1193 ;Allocation info for local variables in function 'UART0_Init'
                                   1194 ;------------------------------------------------------------
                           000020  1195 	G$UART0_Init$0$0 ==.
                           000020  1196 	C$c8051_SDCC.h$84$1$2 ==.
                                   1197 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function UART0_Init
                                   1200 ;	-----------------------------------------
      0000EB                       1201 _UART0_Init:
                           000020  1202 	C$c8051_SDCC.h$86$1$4 ==.
                                   1203 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000EB 75 98 50         [24] 1204 	mov	_SCON0,#0x50
                           000023  1205 	C$c8051_SDCC.h$87$1$4 ==.
                                   1206 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000EE 75 89 20         [24] 1207 	mov	_TMOD,#0x20
                           000026  1208 	C$c8051_SDCC.h$88$1$4 ==.
                                   1209 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000F1 75 8D DC         [24] 1210 	mov	_TH1,#0xdc
                           000029  1211 	C$c8051_SDCC.h$89$1$4 ==.
                                   1212 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000F4 D2 8E            [12] 1213 	setb	_TR1
                           00002B  1214 	C$c8051_SDCC.h$90$1$4 ==.
                                   1215 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000F6 43 8E 10         [24] 1216 	orl	_CKCON,#0x10
                           00002E  1217 	C$c8051_SDCC.h$91$1$4 ==.
                                   1218 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000F9 43 87 80         [24] 1219 	orl	_PCON,#0x80
                           000031  1220 	C$c8051_SDCC.h$93$1$4 ==.
                                   1221 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000FC D2 99            [12] 1222 	setb	_TI0
                           000033  1223 	C$c8051_SDCC.h$94$1$4 ==.
                                   1224 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000FE 43 A4 01         [24] 1225 	orl	_P0MDOUT,#0x01
                           000036  1226 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1227 	XG$UART0_Init$0$0 ==.
      000101 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function 'Sys_Init'
                                   1231 ;------------------------------------------------------------
                           000037  1232 	G$Sys_Init$0$0 ==.
                           000037  1233 	C$c8051_SDCC.h$103$1$4 ==.
                                   1234 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function Sys_Init
                                   1237 ;	-----------------------------------------
      000102                       1238 _Sys_Init:
                           000037  1239 	C$c8051_SDCC.h$105$1$6 ==.
                                   1240 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000102 75 FF DE         [24] 1241 	mov	_WDTCN,#0xde
                           00003A  1242 	C$c8051_SDCC.h$106$1$6 ==.
                                   1243 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000105 75 FF AD         [24] 1244 	mov	_WDTCN,#0xad
                           00003D  1245 	C$c8051_SDCC.h$108$1$6 ==.
                                   1246 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000108 12 00 CB         [24] 1247 	lcall	_SYSCLK_Init
                           000040  1248 	C$c8051_SDCC.h$109$1$6 ==.
                                   1249 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00010B 12 00 EB         [24] 1250 	lcall	_UART0_Init
                           000043  1251 	C$c8051_SDCC.h$111$1$6 ==.
                                   1252 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      00010E 43 E1 04         [24] 1253 	orl	_XBR0,#0x04
                           000046  1254 	C$c8051_SDCC.h$112$1$6 ==.
                                   1255 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000111 43 E3 40         [24] 1256 	orl	_XBR2,#0x40
                           000049  1257 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1258 	XG$Sys_Init$0$0 ==.
      000114 22               [24] 1259 	ret
                                   1260 ;------------------------------------------------------------
                                   1261 ;Allocation info for local variables in function 'putchar'
                                   1262 ;------------------------------------------------------------
                                   1263 ;c                         Allocated to registers r7 
                                   1264 ;------------------------------------------------------------
                           00004A  1265 	G$putchar$0$0 ==.
                           00004A  1266 	C$c8051_SDCC.h$129$1$6 ==.
                                   1267 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function putchar
                                   1270 ;	-----------------------------------------
      000115                       1271 _putchar:
      000115 AF 82            [24] 1272 	mov	r7,dpl
                           00004C  1273 	C$c8051_SDCC.h$132$1$8 ==.
                                   1274 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000117                       1275 00101$:
                           00004C  1276 	C$c8051_SDCC.h$133$1$8 ==.
                                   1277 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000117 10 99 02         [24] 1278 	jbc	_TI0,00112$
      00011A 80 FB            [24] 1279 	sjmp	00101$
      00011C                       1280 00112$:
                           000051  1281 	C$c8051_SDCC.h$134$1$8 ==.
                                   1282 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      00011C 8F 99            [24] 1283 	mov	_SBUF0,r7
                           000053  1284 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1285 	XG$putchar$0$0 ==.
      00011E 22               [24] 1286 	ret
                                   1287 ;------------------------------------------------------------
                                   1288 ;Allocation info for local variables in function 'getchar'
                                   1289 ;------------------------------------------------------------
                                   1290 ;c                         Allocated to registers r7 
                                   1291 ;------------------------------------------------------------
                           000054  1292 	G$getchar$0$0 ==.
                           000054  1293 	C$c8051_SDCC.h$154$1$8 ==.
                                   1294 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1295 ;	-----------------------------------------
                                   1296 ;	 function getchar
                                   1297 ;	-----------------------------------------
      00011F                       1298 _getchar:
                           000054  1299 	C$c8051_SDCC.h$157$1$10 ==.
                                   1300 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      00011F                       1301 00101$:
                           000054  1302 	C$c8051_SDCC.h$158$1$10 ==.
                                   1303 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      00011F 10 98 02         [24] 1304 	jbc	_RI0,00112$
      000122 80 FB            [24] 1305 	sjmp	00101$
      000124                       1306 00112$:
                           000059  1307 	C$c8051_SDCC.h$159$1$10 ==.
                                   1308 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000124 AF 99            [24] 1309 	mov	r7,_SBUF0
                           00005B  1310 	C$c8051_SDCC.h$160$1$10 ==.
                                   1311 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000126 8F 82            [24] 1312 	mov	dpl,r7
      000128 C0 07            [24] 1313 	push	ar7
      00012A 12 01 15         [24] 1314 	lcall	_putchar
      00012D D0 07            [24] 1315 	pop	ar7
                           000064  1316 	C$c8051_SDCC.h$161$1$10 ==.
                                   1317 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      00012F 8F 82            [24] 1318 	mov	dpl,r7
                           000066  1319 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1320 	XG$getchar$0$0 ==.
      000131 22               [24] 1321 	ret
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'getchar_nw'
                                   1324 ;------------------------------------------------------------
                                   1325 ;c                         Allocated to registers 
                                   1326 ;------------------------------------------------------------
                           000067  1327 	G$getchar_nw$0$0 ==.
                           000067  1328 	C$c8051_SDCC.h$168$1$10 ==.
                                   1329 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function getchar_nw
                                   1332 ;	-----------------------------------------
      000132                       1333 _getchar_nw:
                           000067  1334 	C$c8051_SDCC.h$171$1$12 ==.
                                   1335 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000132 20 98 05         [24] 1336 	jb	_RI0,00102$
      000135 75 82 FF         [24] 1337 	mov	dpl,#0xff
      000138 80 0B            [24] 1338 	sjmp	00104$
      00013A                       1339 00102$:
                           00006F  1340 	C$c8051_SDCC.h$174$2$13 ==.
                                   1341 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00013A C2 98            [12] 1342 	clr	_RI0
                           000071  1343 	C$c8051_SDCC.h$175$2$13 ==.
                                   1344 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00013C 85 99 82         [24] 1345 	mov	dpl,_SBUF0
                           000074  1346 	C$c8051_SDCC.h$176$2$13 ==.
                                   1347 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      00013F 12 01 15         [24] 1348 	lcall	_putchar
                           000077  1349 	C$c8051_SDCC.h$177$2$13 ==.
                                   1350 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000142 85 99 82         [24] 1351 	mov	dpl,_SBUF0
      000145                       1352 00104$:
                           00007A  1353 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1354 	XG$getchar_nw$0$0 ==.
      000145 22               [24] 1355 	ret
                                   1356 ;------------------------------------------------------------
                                   1357 ;Allocation info for local variables in function 'lcd_print'
                                   1358 ;------------------------------------------------------------
                                   1359 ;fmt                       Allocated to stack - _bp -5
                                   1360 ;len                       Allocated to registers r6 
                                   1361 ;i                         Allocated to registers 
                                   1362 ;ap                        Allocated to registers 
                                   1363 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1364 ;------------------------------------------------------------
                           00007B  1365 	G$lcd_print$0$0 ==.
                           00007B  1366 	C$i2c.h$84$1$12 ==.
                                   1367 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function lcd_print
                                   1370 ;	-----------------------------------------
      000146                       1371 _lcd_print:
      000146 C0 0F            [24] 1372 	push	_bp
      000148 85 81 0F         [24] 1373 	mov	_bp,sp
                           000080  1374 	C$i2c.h$90$1$81 ==.
                                   1375 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00014B E5 0F            [12] 1376 	mov	a,_bp
      00014D 24 FB            [12] 1377 	add	a,#0xfb
      00014F F8               [12] 1378 	mov	r0,a
      000150 86 82            [24] 1379 	mov	dpl,@r0
      000152 08               [12] 1380 	inc	r0
      000153 86 83            [24] 1381 	mov	dph,@r0
      000155 08               [12] 1382 	inc	r0
      000156 86 F0            [24] 1383 	mov	b,@r0
      000158 12 0E EE         [24] 1384 	lcall	_strlen
      00015B E5 82            [12] 1385 	mov	a,dpl
      00015D 85 83 F0         [24] 1386 	mov	b,dph
      000160 45 F0            [12] 1387 	orl	a,b
      000162 70 02            [24] 1388 	jnz	00102$
      000164 80 62            [24] 1389 	sjmp	00109$
      000166                       1390 00102$:
                           00009B  1391 	C$i2c.h$92$2$82 ==.
                                   1392 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000166 E5 0F            [12] 1393 	mov	a,_bp
      000168 24 FB            [12] 1394 	add	a,#0xfb
      00016A FF               [12] 1395 	mov	r7,a
      00016B 8F 0B            [24] 1396 	mov	_vsprintf_PARM_3,r7
                           0000A2  1397 	C$i2c.h$93$1$81 ==.
                                   1398 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00016D E5 0F            [12] 1399 	mov	a,_bp
      00016F 24 FB            [12] 1400 	add	a,#0xfb
      000171 F8               [12] 1401 	mov	r0,a
      000172 86 08            [24] 1402 	mov	_vsprintf_PARM_2,@r0
      000174 08               [12] 1403 	inc	r0
      000175 86 09            [24] 1404 	mov	(_vsprintf_PARM_2 + 1),@r0
      000177 08               [12] 1405 	inc	r0
      000178 86 0A            [24] 1406 	mov	(_vsprintf_PARM_2 + 2),@r0
      00017A 90 00 01         [24] 1407 	mov	dptr,#_lcd_print_text_1_81
      00017D 75 F0 00         [24] 1408 	mov	b,#0x00
      000180 12 08 5C         [24] 1409 	lcall	_vsprintf
                           0000B8  1410 	C$i2c.h$96$1$81 ==.
                                   1411 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      000183 90 00 01         [24] 1412 	mov	dptr,#_lcd_print_text_1_81
      000186 75 F0 00         [24] 1413 	mov	b,#0x00
      000189 12 0E EE         [24] 1414 	lcall	_strlen
      00018C AE 82            [24] 1415 	mov	r6,dpl
                           0000C3  1416 	C$i2c.h$97$1$81 ==.
                                   1417 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      00018E 7F 00            [12] 1418 	mov	r7,#0x00
      000190                       1419 00107$:
      000190 C3               [12] 1420 	clr	c
      000191 EF               [12] 1421 	mov	a,r7
      000192 9E               [12] 1422 	subb	a,r6
      000193 50 1F            [24] 1423 	jnc	00105$
                           0000CA  1424 	C$i2c.h$99$2$84 ==.
                                   1425 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      000195 EF               [12] 1426 	mov	a,r7
      000196 24 01            [12] 1427 	add	a,#_lcd_print_text_1_81
      000198 F5 82            [12] 1428 	mov	dpl,a
      00019A E4               [12] 1429 	clr	a
      00019B 34 00            [12] 1430 	addc	a,#(_lcd_print_text_1_81 >> 8)
      00019D F5 83            [12] 1431 	mov	dph,a
      00019F E0               [24] 1432 	movx	a,@dptr
      0001A0 FD               [12] 1433 	mov	r5,a
      0001A1 BD 0A 0D         [24] 1434 	cjne	r5,#0x0a,00108$
      0001A4 EF               [12] 1435 	mov	a,r7
      0001A5 24 01            [12] 1436 	add	a,#_lcd_print_text_1_81
      0001A7 F5 82            [12] 1437 	mov	dpl,a
      0001A9 E4               [12] 1438 	clr	a
      0001AA 34 00            [12] 1439 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001AC F5 83            [12] 1440 	mov	dph,a
      0001AE 74 0D            [12] 1441 	mov	a,#0x0d
      0001B0 F0               [24] 1442 	movx	@dptr,a
      0001B1                       1443 00108$:
                           0000E6  1444 	C$i2c.h$97$1$81 ==.
                                   1445 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001B1 0F               [12] 1446 	inc	r7
      0001B2 80 DC            [24] 1447 	sjmp	00107$
      0001B4                       1448 00105$:
                           0000E9  1449 	C$i2c.h$102$1$81 ==.
                                   1450 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001B4 75 2D 01         [24] 1451 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001B7 75 2E 00         [24] 1452 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001BA 75 2F 00         [24] 1453 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001BD 75 2C 00         [24] 1454 	mov	_i2c_write_data_PARM_2,#0x00
      0001C0 8E 30            [24] 1455 	mov	_i2c_write_data_PARM_4,r6
      0001C2 75 82 C6         [24] 1456 	mov	dpl,#0xc6
      0001C5 12 04 57         [24] 1457 	lcall	_i2c_write_data
      0001C8                       1458 00109$:
      0001C8 D0 0F            [24] 1459 	pop	_bp
                           0000FF  1460 	C$i2c.h$103$1$81 ==.
                           0000FF  1461 	XG$lcd_print$0$0 ==.
      0001CA 22               [24] 1462 	ret
                                   1463 ;------------------------------------------------------------
                                   1464 ;Allocation info for local variables in function 'lcd_clear'
                                   1465 ;------------------------------------------------------------
                                   1466 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1467 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1468 ;------------------------------------------------------------
                           000100  1469 	G$lcd_clear$0$0 ==.
                           000100  1470 	C$i2c.h$106$1$81 ==.
                                   1471 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1472 ;	-----------------------------------------
                                   1473 ;	 function lcd_clear
                                   1474 ;	-----------------------------------------
      0001CB                       1475 _lcd_clear:
                           000100  1476 	C$i2c.h$108$1$81 ==.
                                   1477 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001CB 75 27 00         [24] 1478 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1479 	C$i2c.h$110$1$85 ==.
                                   1480 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001CE                       1481 00101$:
      0001CE 74 C0            [12] 1482 	mov	a,#0x100 - 0x40
      0001D0 25 27            [12] 1483 	add	a,_lcd_clear_NumBytes_1_85
      0001D2 40 17            [24] 1484 	jc	00103$
      0001D4 75 32 27         [24] 1485 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001D7 75 33 00         [24] 1486 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001DA 75 34 40         [24] 1487 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001DD 75 31 00         [24] 1488 	mov	_i2c_read_data_PARM_2,#0x00
      0001E0 75 35 01         [24] 1489 	mov	_i2c_read_data_PARM_4,#0x01
      0001E3 75 82 C6         [24] 1490 	mov	dpl,#0xc6
      0001E6 12 04 D1         [24] 1491 	lcall	_i2c_read_data
      0001E9 80 E3            [24] 1492 	sjmp	00101$
      0001EB                       1493 00103$:
                           000120  1494 	C$i2c.h$112$1$85 ==.
                                   1495 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001EB 75 28 0C         [24] 1496 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1497 	C$i2c.h$113$1$85 ==.
                                   1498 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001EE 75 2D 28         [24] 1499 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001F1 75 2E 00         [24] 1500 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001F4 75 2F 40         [24] 1501 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0001F7 75 2C 00         [24] 1502 	mov	_i2c_write_data_PARM_2,#0x00
      0001FA 75 30 01         [24] 1503 	mov	_i2c_write_data_PARM_4,#0x01
      0001FD 75 82 C6         [24] 1504 	mov	dpl,#0xc6
      000200 12 04 57         [24] 1505 	lcall	_i2c_write_data
                           000138  1506 	C$i2c.h$114$1$85 ==.
                           000138  1507 	XG$lcd_clear$0$0 ==.
      000203 22               [24] 1508 	ret
                                   1509 ;------------------------------------------------------------
                                   1510 ;Allocation info for local variables in function 'read_keypad'
                                   1511 ;------------------------------------------------------------
                                   1512 ;i                         Allocated to registers r7 
                                   1513 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1514 ;------------------------------------------------------------
                           000139  1515 	G$read_keypad$0$0 ==.
                           000139  1516 	C$i2c.h$117$1$85 ==.
                                   1517 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1518 ;	-----------------------------------------
                                   1519 ;	 function read_keypad
                                   1520 ;	-----------------------------------------
      000204                       1521 _read_keypad:
                           000139  1522 	C$i2c.h$121$1$86 ==.
                                   1523 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000204 75 32 2A         [24] 1524 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000207 75 33 00         [24] 1525 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      00020A 75 34 40         [24] 1526 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00020D 75 31 01         [24] 1527 	mov	_i2c_read_data_PARM_2,#0x01
      000210 75 35 02         [24] 1528 	mov	_i2c_read_data_PARM_4,#0x02
      000213 75 82 C6         [24] 1529 	mov	dpl,#0xc6
      000216 12 04 D1         [24] 1530 	lcall	_i2c_read_data
                           00014E  1531 	C$i2c.h$122$1$86 ==.
                                   1532 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      000219 74 FF            [12] 1533 	mov	a,#0xff
      00021B B5 2A 05         [24] 1534 	cjne	a,_read_keypad_Data_1_86,00102$
      00021E 75 82 00         [24] 1535 	mov	dpl,#0x00
      000221 80 5F            [24] 1536 	sjmp	00116$
      000223                       1537 00102$:
                           000158  1538 	C$i2c.h$124$1$86 ==.
                                   1539 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000223 7F 00            [12] 1540 	mov	r7,#0x00
      000225 8F 06            [24] 1541 	mov	ar6,r7
      000227                       1542 00114$:
                           00015C  1543 	C$i2c.h$126$2$87 ==.
                                   1544 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000227 8E F0            [24] 1545 	mov	b,r6
      000229 05 F0            [12] 1546 	inc	b
      00022B 7C 01            [12] 1547 	mov	r4,#0x01
      00022D 7D 00            [12] 1548 	mov	r5,#0x00
      00022F 80 06            [24] 1549 	sjmp	00145$
      000231                       1550 00144$:
      000231 EC               [12] 1551 	mov	a,r4
      000232 2C               [12] 1552 	add	a,r4
      000233 FC               [12] 1553 	mov	r4,a
      000234 ED               [12] 1554 	mov	a,r5
      000235 33               [12] 1555 	rlc	a
      000236 FD               [12] 1556 	mov	r5,a
      000237                       1557 00145$:
      000237 D5 F0 F7         [24] 1558 	djnz	b,00144$
      00023A AA 2A            [24] 1559 	mov	r2,_read_keypad_Data_1_86
      00023C 7B 00            [12] 1560 	mov	r3,#0x00
      00023E EA               [12] 1561 	mov	a,r2
      00023F 52 04            [12] 1562 	anl	ar4,a
      000241 EB               [12] 1563 	mov	a,r3
      000242 52 05            [12] 1564 	anl	ar5,a
      000244 EC               [12] 1565 	mov	a,r4
      000245 4D               [12] 1566 	orl	a,r5
      000246 60 07            [24] 1567 	jz	00115$
                           00017D  1568 	C$i2c.h$127$2$87 ==.
                                   1569 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      000248 74 31            [12] 1570 	mov	a,#0x31
      00024A 2F               [12] 1571 	add	a,r7
      00024B F5 82            [12] 1572 	mov	dpl,a
      00024D 80 33            [24] 1573 	sjmp	00116$
      00024F                       1574 00115$:
                           000184  1575 	C$i2c.h$124$1$86 ==.
                                   1576 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      00024F 0E               [12] 1577 	inc	r6
      000250 8E 07            [24] 1578 	mov	ar7,r6
      000252 BE 08 00         [24] 1579 	cjne	r6,#0x08,00147$
      000255                       1580 00147$:
      000255 40 D0            [24] 1581 	jc	00114$
                           00018C  1582 	C$i2c.h$130$1$86 ==.
                                   1583 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000257 E5 2B            [12] 1584 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000259 30 E0 05         [24] 1585 	jnb	acc.0,00107$
      00025C 75 82 39         [24] 1586 	mov	dpl,#0x39
      00025F 80 21            [24] 1587 	sjmp	00116$
      000261                       1588 00107$:
                           000196  1589 	C$i2c.h$132$1$86 ==.
                                   1590 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000261 E5 2B            [12] 1591 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000263 30 E1 05         [24] 1592 	jnb	acc.1,00109$
      000266 75 82 2A         [24] 1593 	mov	dpl,#0x2a
      000269 80 17            [24] 1594 	sjmp	00116$
      00026B                       1595 00109$:
                           0001A0  1596 	C$i2c.h$134$1$86 ==.
                                   1597 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00026B E5 2B            [12] 1598 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00026D 30 E2 05         [24] 1599 	jnb	acc.2,00111$
      000270 75 82 30         [24] 1600 	mov	dpl,#0x30
      000273 80 0D            [24] 1601 	sjmp	00116$
      000275                       1602 00111$:
                           0001AA  1603 	C$i2c.h$136$1$86 ==.
                                   1604 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000275 E5 2B            [12] 1605 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000277 30 E3 05         [24] 1606 	jnb	acc.3,00113$
      00027A 75 82 23         [24] 1607 	mov	dpl,#0x23
      00027D 80 03            [24] 1608 	sjmp	00116$
      00027F                       1609 00113$:
                           0001B4  1610 	C$i2c.h$138$1$86 ==.
                                   1611 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      00027F 75 82 FF         [24] 1612 	mov	dpl,#0xff
      000282                       1613 00116$:
                           0001B7  1614 	C$i2c.h$139$1$86 ==.
                           0001B7  1615 	XG$read_keypad$0$0 ==.
      000282 22               [24] 1616 	ret
                                   1617 ;------------------------------------------------------------
                                   1618 ;Allocation info for local variables in function 'kpd_input'
                                   1619 ;------------------------------------------------------------
                                   1620 ;mode                      Allocated to registers r7 
                                   1621 ;sum                       Allocated to registers r5 r6 
                                   1622 ;key                       Allocated to registers r3 
                                   1623 ;i                         Allocated to registers 
                                   1624 ;------------------------------------------------------------
                           0001B8  1625 	G$kpd_input$0$0 ==.
                           0001B8  1626 	C$i2c.h$151$1$86 ==.
                                   1627 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function kpd_input
                                   1630 ;	-----------------------------------------
      000283                       1631 _kpd_input:
      000283 AF 82            [24] 1632 	mov	r7,dpl
                           0001BA  1633 	C$i2c.h$156$1$89 ==.
                                   1634 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1635 	C$i2c.h$159$1$89 ==.
                                   1636 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      000285 E4               [12] 1637 	clr	a
      000286 FD               [12] 1638 	mov	r5,a
      000287 FE               [12] 1639 	mov	r6,a
      000288 EF               [12] 1640 	mov	a,r7
      000289 70 1D            [24] 1641 	jnz	00102$
      00028B C0 06            [24] 1642 	push	ar6
      00028D C0 05            [24] 1643 	push	ar5
      00028F 74 26            [12] 1644 	mov	a,#___str_0
      000291 C0 E0            [24] 1645 	push	acc
      000293 74 0F            [12] 1646 	mov	a,#(___str_0 >> 8)
      000295 C0 E0            [24] 1647 	push	acc
      000297 74 80            [12] 1648 	mov	a,#0x80
      000299 C0 E0            [24] 1649 	push	acc
      00029B 12 01 46         [24] 1650 	lcall	_lcd_print
      00029E 15 81            [12] 1651 	dec	sp
      0002A0 15 81            [12] 1652 	dec	sp
      0002A2 15 81            [12] 1653 	dec	sp
      0002A4 D0 05            [24] 1654 	pop	ar5
      0002A6 D0 06            [24] 1655 	pop	ar6
      0002A8                       1656 00102$:
                           0001DD  1657 	C$i2c.h$161$1$89 ==.
                                   1658 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002A8 C0 06            [24] 1659 	push	ar6
      0002AA C0 05            [24] 1660 	push	ar5
      0002AC 74 08            [12] 1661 	mov	a,#0x08
      0002AE C0 E0            [24] 1662 	push	acc
      0002B0 E4               [12] 1663 	clr	a
      0002B1 C0 E0            [24] 1664 	push	acc
      0002B3 74 08            [12] 1665 	mov	a,#0x08
      0002B5 C0 E0            [24] 1666 	push	acc
      0002B7 E4               [12] 1667 	clr	a
      0002B8 C0 E0            [24] 1668 	push	acc
      0002BA 74 08            [12] 1669 	mov	a,#0x08
      0002BC C0 E0            [24] 1670 	push	acc
      0002BE E4               [12] 1671 	clr	a
      0002BF C0 E0            [24] 1672 	push	acc
      0002C1 74 08            [12] 1673 	mov	a,#0x08
      0002C3 C0 E0            [24] 1674 	push	acc
      0002C5 E4               [12] 1675 	clr	a
      0002C6 C0 E0            [24] 1676 	push	acc
      0002C8 74 08            [12] 1677 	mov	a,#0x08
      0002CA C0 E0            [24] 1678 	push	acc
      0002CC E4               [12] 1679 	clr	a
      0002CD C0 E0            [24] 1680 	push	acc
      0002CF 74 3C            [12] 1681 	mov	a,#___str_1
      0002D1 C0 E0            [24] 1682 	push	acc
      0002D3 74 0F            [12] 1683 	mov	a,#(___str_1 >> 8)
      0002D5 C0 E0            [24] 1684 	push	acc
      0002D7 74 80            [12] 1685 	mov	a,#0x80
      0002D9 C0 E0            [24] 1686 	push	acc
      0002DB 12 01 46         [24] 1687 	lcall	_lcd_print
      0002DE E5 81            [12] 1688 	mov	a,sp
      0002E0 24 F3            [12] 1689 	add	a,#0xf3
      0002E2 F5 81            [12] 1690 	mov	sp,a
                           000219  1691 	C$i2c.h$163$1$89 ==.
                                   1692 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002E4 90 A1 20         [24] 1693 	mov	dptr,#0xa120
      0002E7 75 F0 07         [24] 1694 	mov	b,#0x07
      0002EA E4               [12] 1695 	clr	a
      0002EB 12 03 F2         [24] 1696 	lcall	_delay_time
      0002EE D0 05            [24] 1697 	pop	ar5
      0002F0 D0 06            [24] 1698 	pop	ar6
                           000227  1699 	C$i2c.h$167$1$89 ==.
                                   1700 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002F2 7F 00            [12] 1701 	mov	r7,#0x00
                           000229  1702 	C$i2c.h$169$3$92 ==.
                                   1703 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002F4                       1704 00104$:
      0002F4 C0 07            [24] 1705 	push	ar7
      0002F6 C0 06            [24] 1706 	push	ar6
      0002F8 C0 05            [24] 1707 	push	ar5
      0002FA 12 02 04         [24] 1708 	lcall	_read_keypad
      0002FD AC 82            [24] 1709 	mov	r4,dpl
      0002FF D0 05            [24] 1710 	pop	ar5
      000301 D0 06            [24] 1711 	pop	ar6
      000303 D0 07            [24] 1712 	pop	ar7
      000305 8C 03            [24] 1713 	mov	ar3,r4
      000307 BC FF 02         [24] 1714 	cjne	r4,#0xff,00146$
      00030A 80 03            [24] 1715 	sjmp	00105$
      00030C                       1716 00146$:
      00030C BB 2A 17         [24] 1717 	cjne	r3,#0x2a,00106$
      00030F                       1718 00105$:
      00030F 90 27 10         [24] 1719 	mov	dptr,#0x2710
      000312 E4               [12] 1720 	clr	a
      000313 F5 F0            [12] 1721 	mov	b,a
      000315 C0 07            [24] 1722 	push	ar7
      000317 C0 06            [24] 1723 	push	ar6
      000319 C0 05            [24] 1724 	push	ar5
      00031B 12 03 F2         [24] 1725 	lcall	_delay_time
      00031E D0 05            [24] 1726 	pop	ar5
      000320 D0 06            [24] 1727 	pop	ar6
      000322 D0 07            [24] 1728 	pop	ar7
      000324 80 CE            [24] 1729 	sjmp	00104$
      000326                       1730 00106$:
                           00025B  1731 	C$i2c.h$170$2$90 ==.
                                   1732 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000326 BB 23 2A         [24] 1733 	cjne	r3,#0x23,00114$
                           00025E  1734 	C$i2c.h$172$3$91 ==.
                                   1735 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      000329                       1736 00107$:
      000329 C0 06            [24] 1737 	push	ar6
      00032B C0 05            [24] 1738 	push	ar5
      00032D 12 02 04         [24] 1739 	lcall	_read_keypad
      000330 AC 82            [24] 1740 	mov	r4,dpl
      000332 D0 05            [24] 1741 	pop	ar5
      000334 D0 06            [24] 1742 	pop	ar6
      000336 BC 23 13         [24] 1743 	cjne	r4,#0x23,00109$
      000339 90 27 10         [24] 1744 	mov	dptr,#0x2710
      00033C E4               [12] 1745 	clr	a
      00033D F5 F0            [12] 1746 	mov	b,a
      00033F C0 06            [24] 1747 	push	ar6
      000341 C0 05            [24] 1748 	push	ar5
      000343 12 03 F2         [24] 1749 	lcall	_delay_time
      000346 D0 05            [24] 1750 	pop	ar5
      000348 D0 06            [24] 1751 	pop	ar6
      00034A 80 DD            [24] 1752 	sjmp	00107$
      00034C                       1753 00109$:
                           000281  1754 	C$i2c.h$173$3$91 ==.
                                   1755 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00034C 8D 82            [24] 1756 	mov	dpl,r5
      00034E 8E 83            [24] 1757 	mov	dph,r6
      000350 02 03 F1         [24] 1758 	ljmp	00119$
      000353                       1759 00114$:
                           000288  1760 	C$i2c.h$177$3$92 ==.
                                   1761 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000353 8B 02            [24] 1762 	mov	ar2,r3
      000355 7C 00            [12] 1763 	mov	r4,#0x00
      000357 C0 07            [24] 1764 	push	ar7
      000359 C0 06            [24] 1765 	push	ar6
      00035B C0 05            [24] 1766 	push	ar5
      00035D C0 04            [24] 1767 	push	ar4
      00035F C0 03            [24] 1768 	push	ar3
      000361 C0 02            [24] 1769 	push	ar2
      000363 C0 02            [24] 1770 	push	ar2
      000365 C0 04            [24] 1771 	push	ar4
      000367 74 4C            [12] 1772 	mov	a,#___str_2
      000369 C0 E0            [24] 1773 	push	acc
      00036B 74 0F            [12] 1774 	mov	a,#(___str_2 >> 8)
      00036D C0 E0            [24] 1775 	push	acc
      00036F 74 80            [12] 1776 	mov	a,#0x80
      000371 C0 E0            [24] 1777 	push	acc
      000373 12 01 46         [24] 1778 	lcall	_lcd_print
      000376 E5 81            [12] 1779 	mov	a,sp
      000378 24 FB            [12] 1780 	add	a,#0xfb
      00037A F5 81            [12] 1781 	mov	sp,a
      00037C D0 02            [24] 1782 	pop	ar2
      00037E D0 03            [24] 1783 	pop	ar3
      000380 D0 04            [24] 1784 	pop	ar4
      000382 D0 05            [24] 1785 	pop	ar5
      000384 D0 06            [24] 1786 	pop	ar6
                           0002BB  1787 	C$i2c.h$178$1$89 ==.
                                   1788 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      000386 8D 11            [24] 1789 	mov	__mulint_PARM_2,r5
      000388 8E 12            [24] 1790 	mov	(__mulint_PARM_2 + 1),r6
      00038A 90 00 0A         [24] 1791 	mov	dptr,#0x000a
      00038D C0 04            [24] 1792 	push	ar4
      00038F C0 03            [24] 1793 	push	ar3
      000391 C0 02            [24] 1794 	push	ar2
      000393 12 07 CF         [24] 1795 	lcall	__mulint
      000396 A8 82            [24] 1796 	mov	r0,dpl
      000398 A9 83            [24] 1797 	mov	r1,dph
      00039A D0 02            [24] 1798 	pop	ar2
      00039C D0 03            [24] 1799 	pop	ar3
      00039E D0 04            [24] 1800 	pop	ar4
      0003A0 D0 07            [24] 1801 	pop	ar7
      0003A2 EA               [12] 1802 	mov	a,r2
      0003A3 28               [12] 1803 	add	a,r0
      0003A4 F8               [12] 1804 	mov	r0,a
      0003A5 EC               [12] 1805 	mov	a,r4
      0003A6 39               [12] 1806 	addc	a,r1
      0003A7 F9               [12] 1807 	mov	r1,a
      0003A8 E8               [12] 1808 	mov	a,r0
      0003A9 24 D0            [12] 1809 	add	a,#0xd0
      0003AB FD               [12] 1810 	mov	r5,a
      0003AC E9               [12] 1811 	mov	a,r1
      0003AD 34 FF            [12] 1812 	addc	a,#0xff
      0003AF FE               [12] 1813 	mov	r6,a
                           0002E5  1814 	C$i2c.h$179$3$92 ==.
                                   1815 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003B0                       1816 00110$:
      0003B0 C0 07            [24] 1817 	push	ar7
      0003B2 C0 06            [24] 1818 	push	ar6
      0003B4 C0 05            [24] 1819 	push	ar5
      0003B6 C0 03            [24] 1820 	push	ar3
      0003B8 12 02 04         [24] 1821 	lcall	_read_keypad
      0003BB AC 82            [24] 1822 	mov	r4,dpl
      0003BD D0 03            [24] 1823 	pop	ar3
      0003BF D0 05            [24] 1824 	pop	ar5
      0003C1 D0 06            [24] 1825 	pop	ar6
      0003C3 D0 07            [24] 1826 	pop	ar7
      0003C5 EC               [12] 1827 	mov	a,r4
      0003C6 B5 03 1B         [24] 1828 	cjne	a,ar3,00118$
      0003C9 90 27 10         [24] 1829 	mov	dptr,#0x2710
      0003CC E4               [12] 1830 	clr	a
      0003CD F5 F0            [12] 1831 	mov	b,a
      0003CF C0 07            [24] 1832 	push	ar7
      0003D1 C0 06            [24] 1833 	push	ar6
      0003D3 C0 05            [24] 1834 	push	ar5
      0003D5 C0 03            [24] 1835 	push	ar3
      0003D7 12 03 F2         [24] 1836 	lcall	_delay_time
      0003DA D0 03            [24] 1837 	pop	ar3
      0003DC D0 05            [24] 1838 	pop	ar5
      0003DE D0 06            [24] 1839 	pop	ar6
      0003E0 D0 07            [24] 1840 	pop	ar7
      0003E2 80 CC            [24] 1841 	sjmp	00110$
      0003E4                       1842 00118$:
                           000319  1843 	C$i2c.h$167$1$89 ==.
                                   1844 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003E4 0F               [12] 1845 	inc	r7
      0003E5 BF 05 00         [24] 1846 	cjne	r7,#0x05,00155$
      0003E8                       1847 00155$:
      0003E8 50 03            [24] 1848 	jnc	00156$
      0003EA 02 02 F4         [24] 1849 	ljmp	00104$
      0003ED                       1850 00156$:
                           000322  1851 	C$i2c.h$182$1$89 ==.
                                   1852 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003ED 8D 82            [24] 1853 	mov	dpl,r5
      0003EF 8E 83            [24] 1854 	mov	dph,r6
      0003F1                       1855 00119$:
                           000326  1856 	C$i2c.h$183$1$89 ==.
                           000326  1857 	XG$kpd_input$0$0 ==.
      0003F1 22               [24] 1858 	ret
                                   1859 ;------------------------------------------------------------
                                   1860 ;Allocation info for local variables in function 'delay_time'
                                   1861 ;------------------------------------------------------------
                                   1862 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1863 ;index                     Allocated to registers 
                                   1864 ;------------------------------------------------------------
                           000327  1865 	G$delay_time$0$0 ==.
                           000327  1866 	C$i2c.h$192$1$89 ==.
                                   1867 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function delay_time
                                   1870 ;	-----------------------------------------
      0003F2                       1871 _delay_time:
      0003F2 AC 82            [24] 1872 	mov	r4,dpl
      0003F4 AD 83            [24] 1873 	mov	r5,dph
      0003F6 AE F0            [24] 1874 	mov	r6,b
      0003F8 FF               [12] 1875 	mov	r7,a
                           00032E  1876 	C$i2c.h$196$1$94 ==.
                                   1877 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      0003F9 78 00            [12] 1878 	mov	r0,#0x00
      0003FB 79 00            [12] 1879 	mov	r1,#0x00
      0003FD 7A 00            [12] 1880 	mov	r2,#0x00
      0003FF 7B 00            [12] 1881 	mov	r3,#0x00
      000401                       1882 00103$:
      000401 C3               [12] 1883 	clr	c
      000402 E8               [12] 1884 	mov	a,r0
      000403 9C               [12] 1885 	subb	a,r4
      000404 E9               [12] 1886 	mov	a,r1
      000405 9D               [12] 1887 	subb	a,r5
      000406 EA               [12] 1888 	mov	a,r2
      000407 9E               [12] 1889 	subb	a,r6
      000408 EB               [12] 1890 	mov	a,r3
      000409 9F               [12] 1891 	subb	a,r7
      00040A 50 0F            [24] 1892 	jnc	00105$
      00040C 08               [12] 1893 	inc	r0
      00040D B8 00 09         [24] 1894 	cjne	r0,#0x00,00115$
      000410 09               [12] 1895 	inc	r1
      000411 B9 00 05         [24] 1896 	cjne	r1,#0x00,00115$
      000414 0A               [12] 1897 	inc	r2
      000415 BA 00 E9         [24] 1898 	cjne	r2,#0x00,00103$
      000418 0B               [12] 1899 	inc	r3
      000419                       1900 00115$:
      000419 80 E6            [24] 1901 	sjmp	00103$
      00041B                       1902 00105$:
                           000350  1903 	C$i2c.h$197$1$94 ==.
                           000350  1904 	XG$delay_time$0$0 ==.
      00041B 22               [24] 1905 	ret
                                   1906 ;------------------------------------------------------------
                                   1907 ;Allocation info for local variables in function 'i2c_start'
                                   1908 ;------------------------------------------------------------
                           000351  1909 	G$i2c_start$0$0 ==.
                           000351  1910 	C$i2c.h$200$1$94 ==.
                                   1911 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1912 ;	-----------------------------------------
                                   1913 ;	 function i2c_start
                                   1914 ;	-----------------------------------------
      00041C                       1915 _i2c_start:
                           000351  1916 	C$i2c.h$202$1$96 ==.
                                   1917 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      00041C                       1918 00101$:
      00041C 20 C7 FD         [24] 1919 	jb	_BUSY,00101$
                           000354  1920 	C$i2c.h$203$1$96 ==.
                                   1921 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      00041F D2 C5            [12] 1922 	setb	_STA
                           000356  1923 	C$i2c.h$204$1$96 ==.
                                   1924 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000421                       1925 00104$:
      000421 30 C3 FD         [24] 1926 	jnb	_SI,00104$
                           000359  1927 	C$i2c.h$205$1$96 ==.
                                   1928 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000424 C2 C5            [12] 1929 	clr	_STA
                           00035B  1930 	C$i2c.h$206$1$96 ==.
                                   1931 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000426 C2 C3            [12] 1932 	clr	_SI
                           00035D  1933 	C$i2c.h$207$1$96 ==.
                           00035D  1934 	XG$i2c_start$0$0 ==.
      000428 22               [24] 1935 	ret
                                   1936 ;------------------------------------------------------------
                                   1937 ;Allocation info for local variables in function 'i2c_write'
                                   1938 ;------------------------------------------------------------
                                   1939 ;output_data               Allocated to registers 
                                   1940 ;------------------------------------------------------------
                           00035E  1941 	G$i2c_write$0$0 ==.
                           00035E  1942 	C$i2c.h$210$1$96 ==.
                                   1943 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   1944 ;	-----------------------------------------
                                   1945 ;	 function i2c_write
                                   1946 ;	-----------------------------------------
      000429                       1947 _i2c_write:
      000429 85 82 C2         [24] 1948 	mov	_SMB0DAT,dpl
                           000361  1949 	C$i2c.h$213$1$98 ==.
                                   1950 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00042C                       1951 00101$:
                           000361  1952 	C$i2c.h$214$1$98 ==.
                                   1953 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00042C 10 C3 02         [24] 1954 	jbc	_SI,00112$
      00042F 80 FB            [24] 1955 	sjmp	00101$
      000431                       1956 00112$:
                           000366  1957 	C$i2c.h$215$1$98 ==.
                           000366  1958 	XG$i2c_write$0$0 ==.
      000431 22               [24] 1959 	ret
                                   1960 ;------------------------------------------------------------
                                   1961 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   1962 ;------------------------------------------------------------
                                   1963 ;output_data               Allocated to registers 
                                   1964 ;------------------------------------------------------------
                           000367  1965 	G$i2c_write_and_stop$0$0 ==.
                           000367  1966 	C$i2c.h$218$1$98 ==.
                                   1967 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   1968 ;	-----------------------------------------
                                   1969 ;	 function i2c_write_and_stop
                                   1970 ;	-----------------------------------------
      000432                       1971 _i2c_write_and_stop:
      000432 85 82 C2         [24] 1972 	mov	_SMB0DAT,dpl
                           00036A  1973 	C$i2c.h$221$1$100 ==.
                                   1974 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000435 D2 C4            [12] 1975 	setb	_STO
                           00036C  1976 	C$i2c.h$222$1$100 ==.
                                   1977 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000437                       1978 00101$:
                           00036C  1979 	C$i2c.h$223$1$100 ==.
                                   1980 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000437 10 C3 02         [24] 1981 	jbc	_SI,00112$
      00043A 80 FB            [24] 1982 	sjmp	00101$
      00043C                       1983 00112$:
                           000371  1984 	C$i2c.h$224$1$100 ==.
                           000371  1985 	XG$i2c_write_and_stop$0$0 ==.
      00043C 22               [24] 1986 	ret
                                   1987 ;------------------------------------------------------------
                                   1988 ;Allocation info for local variables in function 'i2c_read'
                                   1989 ;------------------------------------------------------------
                                   1990 ;input_data                Allocated to registers 
                                   1991 ;------------------------------------------------------------
                           000372  1992 	G$i2c_read$0$0 ==.
                           000372  1993 	C$i2c.h$227$1$100 ==.
                                   1994 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   1995 ;	-----------------------------------------
                                   1996 ;	 function i2c_read
                                   1997 ;	-----------------------------------------
      00043D                       1998 _i2c_read:
                           000372  1999 	C$i2c.h$231$1$102 ==.
                                   2000 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00043D                       2001 00101$:
      00043D 30 C3 FD         [24] 2002 	jnb	_SI,00101$
                           000375  2003 	C$i2c.h$232$1$102 ==.
                                   2004 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000440 85 C2 82         [24] 2005 	mov	dpl,_SMB0DAT
                           000378  2006 	C$i2c.h$233$1$102 ==.
                                   2007 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000443 C2 C3            [12] 2008 	clr	_SI
                           00037A  2009 	C$i2c.h$234$1$102 ==.
                                   2010 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2011 	C$i2c.h$235$1$102 ==.
                           00037A  2012 	XG$i2c_read$0$0 ==.
      000445 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2016 ;------------------------------------------------------------
                                   2017 ;input_data                Allocated to registers r7 
                                   2018 ;------------------------------------------------------------
                           00037B  2019 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2020 	C$i2c.h$238$1$102 ==.
                                   2021 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function i2c_read_and_stop
                                   2024 ;	-----------------------------------------
      000446                       2025 _i2c_read_and_stop:
                           00037B  2026 	C$i2c.h$242$1$104 ==.
                                   2027 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000446                       2028 00101$:
      000446 30 C3 FD         [24] 2029 	jnb	_SI,00101$
                           00037E  2030 	C$i2c.h$243$1$104 ==.
                                   2031 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      000449 AF C2            [24] 2032 	mov	r7,_SMB0DAT
                           000380  2033 	C$i2c.h$244$1$104 ==.
                                   2034 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00044B C2 C3            [12] 2035 	clr	_SI
                           000382  2036 	C$i2c.h$245$1$104 ==.
                                   2037 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00044D D2 C4            [12] 2038 	setb	_STO
                           000384  2039 	C$i2c.h$246$1$104 ==.
                                   2040 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      00044F                       2041 00104$:
                           000384  2042 	C$i2c.h$247$1$104 ==.
                                   2043 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      00044F 10 C3 02         [24] 2044 	jbc	_SI,00122$
      000452 80 FB            [24] 2045 	sjmp	00104$
      000454                       2046 00122$:
                           000389  2047 	C$i2c.h$248$1$104 ==.
                                   2048 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000454 8F 82            [24] 2049 	mov	dpl,r7
                           00038B  2050 	C$i2c.h$249$1$104 ==.
                           00038B  2051 	XG$i2c_read_and_stop$0$0 ==.
      000456 22               [24] 2052 	ret
                                   2053 ;------------------------------------------------------------
                                   2054 ;Allocation info for local variables in function 'i2c_write_data'
                                   2055 ;------------------------------------------------------------
                                   2056 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2057 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2058 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2059 ;addr                      Allocated to registers r7 
                                   2060 ;i                         Allocated to registers 
                                   2061 ;------------------------------------------------------------
                           00038C  2062 	G$i2c_write_data$0$0 ==.
                           00038C  2063 	C$i2c.h$252$1$104 ==.
                                   2064 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2065 ;	-----------------------------------------
                                   2066 ;	 function i2c_write_data
                                   2067 ;	-----------------------------------------
      000457                       2068 _i2c_write_data:
      000457 AF 82            [24] 2069 	mov	r7,dpl
                           00038E  2070 	C$i2c.h$256$1$106 ==.
                                   2071 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      000459 C2 AF            [12] 2072 	clr	_EA
                           000390  2073 	C$i2c.h$257$1$106 ==.
                                   2074 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00045B C0 07            [24] 2075 	push	ar7
      00045D 12 04 1C         [24] 2076 	lcall	_i2c_start
      000460 D0 07            [24] 2077 	pop	ar7
                           000397  2078 	C$i2c.h$258$1$106 ==.
                                   2079 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000462 74 FE            [12] 2080 	mov	a,#0xfe
      000464 5F               [12] 2081 	anl	a,r7
      000465 F5 82            [12] 2082 	mov	dpl,a
      000467 12 04 29         [24] 2083 	lcall	_i2c_write
                           00039F  2084 	C$i2c.h$259$1$106 ==.
                                   2085 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00046A 85 2C 82         [24] 2086 	mov	dpl,_i2c_write_data_PARM_2
      00046D 12 04 29         [24] 2087 	lcall	_i2c_write
                           0003A5  2088 	C$i2c.h$260$1$106 ==.
                                   2089 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000470 7F 00            [12] 2090 	mov	r7,#0x00
      000472                       2091 00103$:
      000472 AD 30            [24] 2092 	mov	r5,_i2c_write_data_PARM_4
      000474 7E 00            [12] 2093 	mov	r6,#0x00
      000476 1D               [12] 2094 	dec	r5
      000477 BD FF 01         [24] 2095 	cjne	r5,#0xff,00114$
      00047A 1E               [12] 2096 	dec	r6
      00047B                       2097 00114$:
      00047B 8F 03            [24] 2098 	mov	ar3,r7
      00047D 7C 00            [12] 2099 	mov	r4,#0x00
      00047F C3               [12] 2100 	clr	c
      000480 EB               [12] 2101 	mov	a,r3
      000481 9D               [12] 2102 	subb	a,r5
      000482 EC               [12] 2103 	mov	a,r4
      000483 64 80            [12] 2104 	xrl	a,#0x80
      000485 8E F0            [24] 2105 	mov	b,r6
      000487 63 F0 80         [24] 2106 	xrl	b,#0x80
      00048A 95 F0            [12] 2107 	subb	a,b
      00048C 50 1F            [24] 2108 	jnc	00101$
                           0003C3  2109 	C$i2c.h$261$1$106 ==.
                                   2110 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      00048E EF               [12] 2111 	mov	a,r7
      00048F 25 2D            [12] 2112 	add	a,_i2c_write_data_PARM_3
      000491 FC               [12] 2113 	mov	r4,a
      000492 E4               [12] 2114 	clr	a
      000493 35 2E            [12] 2115 	addc	a,(_i2c_write_data_PARM_3 + 1)
      000495 FD               [12] 2116 	mov	r5,a
      000496 AE 2F            [24] 2117 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      000498 8C 82            [24] 2118 	mov	dpl,r4
      00049A 8D 83            [24] 2119 	mov	dph,r5
      00049C 8E F0            [24] 2120 	mov	b,r6
      00049E 12 0F 06         [24] 2121 	lcall	__gptrget
      0004A1 F5 82            [12] 2122 	mov	dpl,a
      0004A3 C0 07            [24] 2123 	push	ar7
      0004A5 12 04 29         [24] 2124 	lcall	_i2c_write
      0004A8 D0 07            [24] 2125 	pop	ar7
                           0003DF  2126 	C$i2c.h$260$1$106 ==.
                                   2127 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004AA 0F               [12] 2128 	inc	r7
      0004AB 80 C5            [24] 2129 	sjmp	00103$
      0004AD                       2130 00101$:
                           0003E2  2131 	C$i2c.h$262$1$106 ==.
                                   2132 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004AD AE 30            [24] 2133 	mov	r6,_i2c_write_data_PARM_4
      0004AF 7F 00            [12] 2134 	mov	r7,#0x00
      0004B1 1E               [12] 2135 	dec	r6
      0004B2 BE FF 01         [24] 2136 	cjne	r6,#0xff,00116$
      0004B5 1F               [12] 2137 	dec	r7
      0004B6                       2138 00116$:
      0004B6 EE               [12] 2139 	mov	a,r6
      0004B7 25 2D            [12] 2140 	add	a,_i2c_write_data_PARM_3
      0004B9 FE               [12] 2141 	mov	r6,a
      0004BA EF               [12] 2142 	mov	a,r7
      0004BB 35 2E            [12] 2143 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004BD FF               [12] 2144 	mov	r7,a
      0004BE AD 2F            [24] 2145 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004C0 8E 82            [24] 2146 	mov	dpl,r6
      0004C2 8F 83            [24] 2147 	mov	dph,r7
      0004C4 8D F0            [24] 2148 	mov	b,r5
      0004C6 12 0F 06         [24] 2149 	lcall	__gptrget
      0004C9 F5 82            [12] 2150 	mov	dpl,a
      0004CB 12 04 32         [24] 2151 	lcall	_i2c_write_and_stop
                           000403  2152 	C$i2c.h$263$1$106 ==.
                                   2153 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004CE D2 AF            [12] 2154 	setb	_EA
                           000405  2155 	C$i2c.h$264$1$106 ==.
                           000405  2156 	XG$i2c_write_data$0$0 ==.
      0004D0 22               [24] 2157 	ret
                                   2158 ;------------------------------------------------------------
                                   2159 ;Allocation info for local variables in function 'i2c_read_data'
                                   2160 ;------------------------------------------------------------
                                   2161 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2162 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2163 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2164 ;addr                      Allocated to registers r7 
                                   2165 ;j                         Allocated to registers 
                                   2166 ;------------------------------------------------------------
                           000406  2167 	G$i2c_read_data$0$0 ==.
                           000406  2168 	C$i2c.h$267$1$106 ==.
                                   2169 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2170 ;	-----------------------------------------
                                   2171 ;	 function i2c_read_data
                                   2172 ;	-----------------------------------------
      0004D1                       2173 _i2c_read_data:
      0004D1 AF 82            [24] 2174 	mov	r7,dpl
                           000408  2175 	C$i2c.h$271$1$108 ==.
                                   2176 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004D3 C2 AF            [12] 2177 	clr	_EA
                           00040A  2178 	C$i2c.h$272$1$108 ==.
                                   2179 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004D5 C0 07            [24] 2180 	push	ar7
      0004D7 12 04 1C         [24] 2181 	lcall	_i2c_start
      0004DA D0 07            [24] 2182 	pop	ar7
                           000411  2183 	C$i2c.h$273$1$108 ==.
                                   2184 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004DC 74 FE            [12] 2185 	mov	a,#0xfe
      0004DE 5F               [12] 2186 	anl	a,r7
      0004DF F5 82            [12] 2187 	mov	dpl,a
      0004E1 C0 07            [24] 2188 	push	ar7
      0004E3 12 04 29         [24] 2189 	lcall	_i2c_write
                           00041B  2190 	C$i2c.h$274$1$108 ==.
                                   2191 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004E6 85 31 82         [24] 2192 	mov	dpl,_i2c_read_data_PARM_2
      0004E9 12 04 32         [24] 2193 	lcall	_i2c_write_and_stop
                           000421  2194 	C$i2c.h$275$1$108 ==.
                                   2195 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004EC 12 04 1C         [24] 2196 	lcall	_i2c_start
      0004EF D0 07            [24] 2197 	pop	ar7
                           000426  2198 	C$i2c.h$276$1$108 ==.
                                   2199 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004F1 74 01            [12] 2200 	mov	a,#0x01
      0004F3 4F               [12] 2201 	orl	a,r7
      0004F4 F5 82            [12] 2202 	mov	dpl,a
      0004F6 12 04 29         [24] 2203 	lcall	_i2c_write
                           00042E  2204 	C$i2c.h$277$1$108 ==.
                                   2205 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      0004F9 7F 00            [12] 2206 	mov	r7,#0x00
      0004FB                       2207 00103$:
      0004FB AD 35            [24] 2208 	mov	r5,_i2c_read_data_PARM_4
      0004FD 7E 00            [12] 2209 	mov	r6,#0x00
      0004FF 1D               [12] 2210 	dec	r5
      000500 BD FF 01         [24] 2211 	cjne	r5,#0xff,00114$
      000503 1E               [12] 2212 	dec	r6
      000504                       2213 00114$:
      000504 8F 03            [24] 2214 	mov	ar3,r7
      000506 7C 00            [12] 2215 	mov	r4,#0x00
      000508 C3               [12] 2216 	clr	c
      000509 EB               [12] 2217 	mov	a,r3
      00050A 9D               [12] 2218 	subb	a,r5
      00050B EC               [12] 2219 	mov	a,r4
      00050C 64 80            [12] 2220 	xrl	a,#0x80
      00050E 8E F0            [24] 2221 	mov	b,r6
      000510 63 F0 80         [24] 2222 	xrl	b,#0x80
      000513 95 F0            [12] 2223 	subb	a,b
      000515 50 2E            [24] 2224 	jnc	00101$
                           00044C  2225 	C$i2c.h$279$2$109 ==.
                                   2226 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000517 D2 C2            [12] 2227 	setb	_AA
                           00044E  2228 	C$i2c.h$280$2$109 ==.
                                   2229 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      000519 EF               [12] 2230 	mov	a,r7
      00051A 25 32            [12] 2231 	add	a,_i2c_read_data_PARM_3
      00051C FC               [12] 2232 	mov	r4,a
      00051D E4               [12] 2233 	clr	a
      00051E 35 33            [12] 2234 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000520 FD               [12] 2235 	mov	r5,a
      000521 AE 34            [24] 2236 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000523 C0 07            [24] 2237 	push	ar7
      000525 C0 06            [24] 2238 	push	ar6
      000527 C0 05            [24] 2239 	push	ar5
      000529 C0 04            [24] 2240 	push	ar4
      00052B 12 04 3D         [24] 2241 	lcall	_i2c_read
      00052E AB 82            [24] 2242 	mov	r3,dpl
      000530 D0 04            [24] 2243 	pop	ar4
      000532 D0 05            [24] 2244 	pop	ar5
      000534 D0 06            [24] 2245 	pop	ar6
      000536 D0 07            [24] 2246 	pop	ar7
      000538 8C 82            [24] 2247 	mov	dpl,r4
      00053A 8D 83            [24] 2248 	mov	dph,r5
      00053C 8E F0            [24] 2249 	mov	b,r6
      00053E EB               [12] 2250 	mov	a,r3
      00053F 12 07 B4         [24] 2251 	lcall	__gptrput
                           000477  2252 	C$i2c.h$277$1$108 ==.
                                   2253 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000542 0F               [12] 2254 	inc	r7
      000543 80 B6            [24] 2255 	sjmp	00103$
      000545                       2256 00101$:
                           00047A  2257 	C$i2c.h$282$1$108 ==.
                                   2258 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000545 C2 C2            [12] 2259 	clr	_AA
                           00047C  2260 	C$i2c.h$283$1$108 ==.
                                   2261 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000547 AE 35            [24] 2262 	mov	r6,_i2c_read_data_PARM_4
      000549 7F 00            [12] 2263 	mov	r7,#0x00
      00054B 1E               [12] 2264 	dec	r6
      00054C BE FF 01         [24] 2265 	cjne	r6,#0xff,00116$
      00054F 1F               [12] 2266 	dec	r7
      000550                       2267 00116$:
      000550 EE               [12] 2268 	mov	a,r6
      000551 25 32            [12] 2269 	add	a,_i2c_read_data_PARM_3
      000553 FE               [12] 2270 	mov	r6,a
      000554 EF               [12] 2271 	mov	a,r7
      000555 35 33            [12] 2272 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000557 FF               [12] 2273 	mov	r7,a
      000558 AD 34            [24] 2274 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00055A C0 07            [24] 2275 	push	ar7
      00055C C0 06            [24] 2276 	push	ar6
      00055E C0 05            [24] 2277 	push	ar5
      000560 12 04 46         [24] 2278 	lcall	_i2c_read_and_stop
      000563 AC 82            [24] 2279 	mov	r4,dpl
      000565 D0 05            [24] 2280 	pop	ar5
      000567 D0 06            [24] 2281 	pop	ar6
      000569 D0 07            [24] 2282 	pop	ar7
      00056B 8E 82            [24] 2283 	mov	dpl,r6
      00056D 8F 83            [24] 2284 	mov	dph,r7
      00056F 8D F0            [24] 2285 	mov	b,r5
      000571 EC               [12] 2286 	mov	a,r4
      000572 12 07 B4         [24] 2287 	lcall	__gptrput
                           0004AA  2288 	C$i2c.h$284$1$108 ==.
                                   2289 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000575 D2 AF            [12] 2290 	setb	_EA
                           0004AC  2291 	C$i2c.h$285$1$108 ==.
                           0004AC  2292 	XG$i2c_read_data$0$0 ==.
      000577 22               [24] 2293 	ret
                                   2294 ;------------------------------------------------------------
                                   2295 ;Allocation info for local variables in function 'Accel_Init'
                                   2296 ;------------------------------------------------------------
                           0004AD  2297 	G$Accel_Init$0$0 ==.
                           0004AD  2298 	C$i2c.h$294$1$108 ==.
                                   2299 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2300 ;	-----------------------------------------
                                   2301 ;	 function Accel_Init
                                   2302 ;	-----------------------------------------
      000578                       2303 _Accel_Init:
                           0004AD  2304 	C$i2c.h$298$1$111 ==.
                                   2305 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      000578 75 22 23         [24] 2306 	mov	_Data2,#0x23
                           0004B0  2307 	C$i2c.h$300$1$111 ==.
                                   2308 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00057B 75 23 00         [24] 2309 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2310 	C$i2c.h$301$1$111 ==.
                                   2311 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      00057E 75 23 10         [24] 2312 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2313 	C$i2c.h$302$1$111 ==.
                                   2314 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      000581 75 24 00         [24] 2315 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2316 	C$i2c.h$304$1$111 ==.
                                   2317 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      000584 75 2D 22         [24] 2318 	mov	_i2c_write_data_PARM_3,#_Data2
      000587 75 2E 00         [24] 2319 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00058A 75 2F 40         [24] 2320 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00058D 75 2C 20         [24] 2321 	mov	_i2c_write_data_PARM_2,#0x20
      000590 75 30 01         [24] 2322 	mov	_i2c_write_data_PARM_4,#0x01
      000593 75 82 30         [24] 2323 	mov	dpl,#0x30
      000596 12 04 57         [24] 2324 	lcall	_i2c_write_data
                           0004CE  2325 	C$i2c.h$310$1$111 ==.
                           0004CE  2326 	XG$Accel_Init$0$0 ==.
      000599 22               [24] 2327 	ret
                                   2328 ;------------------------------------------------------------
                                   2329 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2330 ;------------------------------------------------------------
                           0004CF  2331 	G$Accel_Init_C$0$0 ==.
                           0004CF  2332 	C$i2c.h$313$1$111 ==.
                                   2333 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2334 ;	-----------------------------------------
                                   2335 ;	 function Accel_Init_C
                                   2336 ;	-----------------------------------------
      00059A                       2337 _Accel_Init_C:
                           0004CF  2338 	C$i2c.h$318$1$113 ==.
                                   2339 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      00059A 75 22 04         [24] 2340 	mov	_Data2,#0x04
                           0004D2  2341 	C$i2c.h$319$1$113 ==.
                                   2342 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      00059D 75 2D 22         [24] 2343 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A0 75 2E 00         [24] 2344 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005A3 75 2F 40         [24] 2345 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005A6 75 2C 23         [24] 2346 	mov	_i2c_write_data_PARM_2,#0x23
      0005A9 75 30 01         [24] 2347 	mov	_i2c_write_data_PARM_4,#0x01
      0005AC 75 82 3A         [24] 2348 	mov	dpl,#0x3a
      0005AF 12 04 57         [24] 2349 	lcall	_i2c_write_data
                           0004E7  2350 	C$i2c.h$321$1$113 ==.
                                   2351 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005B2 75 22 6B         [24] 2352 	mov	_Data2,#0x6b
                           0004EA  2353 	C$i2c.h$323$1$113 ==.
                                   2354 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005B5 75 23 00         [24] 2355 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2356 	C$i2c.h$325$1$113 ==.
                                   2357 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005B8 75 24 00         [24] 2358 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2359 	C$i2c.h$326$1$113 ==.
                                   2360 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005BB 75 2D 22         [24] 2361 	mov	_i2c_write_data_PARM_3,#_Data2
      0005BE 75 2E 00         [24] 2362 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C1 75 2F 40         [24] 2363 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005C4 75 2C 20         [24] 2364 	mov	_i2c_write_data_PARM_2,#0x20
      0005C7 75 30 01         [24] 2365 	mov	_i2c_write_data_PARM_4,#0x01
      0005CA 75 82 3A         [24] 2366 	mov	dpl,#0x3a
      0005CD 12 04 57         [24] 2367 	lcall	_i2c_write_data
                           000505  2368 	C$i2c.h$328$1$113 ==.
                           000505  2369 	XG$Accel_Init_C$0$0 ==.
      0005D0 22               [24] 2370 	ret
                                   2371 ;------------------------------------------------------------
                                   2372 ;Allocation info for local variables in function 'main'
                                   2373 ;------------------------------------------------------------
                           000506  2374 	G$main$0$0 ==.
                           000506  2375 	C$lab3_3.c$39$1$113 ==.
                                   2376 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:39: void main(void)
                                   2377 ;	-----------------------------------------
                                   2378 ;	 function main
                                   2379 ;	-----------------------------------------
      0005D1                       2380 _main:
                           000506  2381 	C$lab3_3.c$42$1$121 ==.
                                   2382 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:42: Sys_Init();
      0005D1 12 01 02         [24] 2383 	lcall	_Sys_Init
                           000509  2384 	C$lab3_3.c$43$1$121 ==.
                                   2385 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:43: putchar(' '); //the quotes in this line may not format correctly
      0005D4 75 82 20         [24] 2386 	mov	dpl,#0x20
      0005D7 12 01 15         [24] 2387 	lcall	_putchar
                           00050F  2388 	C$lab3_3.c$44$1$121 ==.
                                   2389 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:44: Port_Init();
      0005DA 12 06 55         [24] 2390 	lcall	_Port_Init
                           000512  2391 	C$lab3_3.c$45$1$121 ==.
                                   2392 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:45: XBR0_Init();
      0005DD 12 06 5F         [24] 2393 	lcall	_XBR0_Init
                           000515  2394 	C$lab3_3.c$46$1$121 ==.
                                   2395 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:46: PCA_Init();
      0005E0 12 06 69         [24] 2396 	lcall	_PCA_Init
                           000518  2397 	C$lab3_3.c$47$1$121 ==.
                                   2398 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:47: SMB0_Init();
      0005E3 12 06 63         [24] 2399 	lcall	_SMB0_Init
                           00051B  2400 	C$lab3_3.c$50$1$121 ==.
                                   2401 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:50: printf("Big Think\n\r");
      0005E6 74 4F            [12] 2402 	mov	a,#___str_3
      0005E8 C0 E0            [24] 2403 	push	acc
      0005EA 74 0F            [12] 2404 	mov	a,#(___str_3 >> 8)
      0005EC C0 E0            [24] 2405 	push	acc
      0005EE 74 80            [12] 2406 	mov	a,#0x80
      0005F0 C0 E0            [24] 2407 	push	acc
      0005F2 12 09 0B         [24] 2408 	lcall	_printf
      0005F5 15 81            [12] 2409 	dec	sp
      0005F7 15 81            [12] 2410 	dec	sp
      0005F9 15 81            [12] 2411 	dec	sp
                           000530  2412 	C$lab3_3.c$52$1$121 ==.
                                   2413 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:52: PW = PW_CENTER;
      0005FB 85 36 3C         [24] 2414 	mov	_PW,_PW_CENTER
      0005FE 85 37 3D         [24] 2415 	mov	(_PW + 1),(_PW_CENTER + 1)
                           000536  2416 	C$lab3_3.c$53$1$121 ==.
                                   2417 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:53: count = 0;
      000601 E4               [12] 2418 	clr	a
      000602 F5 3E            [12] 2419 	mov	_count,a
      000604 F5 3F            [12] 2420 	mov	(_count + 1),a
                           00053B  2421 	C$lab3_3.c$54$1$121 ==.
                                   2422 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:54: PCA0CP2 = 0xFFFF - PW;
      000606 14               [12] 2423 	dec	a
      000607 C3               [12] 2424 	clr	c
      000608 95 3C            [12] 2425 	subb	a,_PW
      00060A F5 EC            [12] 2426 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      00060C 74 FF            [12] 2427 	mov	a,#0xff
      00060E 95 3D            [12] 2428 	subb	a,(_PW + 1)
      000610 F5 FC            [12] 2429 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000547  2430 	C$lab3_3.c$55$1$121 ==.
                                   2431 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:55: while (count < 75);
      000612                       2432 00101$:
      000612 C3               [12] 2433 	clr	c
      000613 E5 3E            [12] 2434 	mov	a,_count
      000615 94 4B            [12] 2435 	subb	a,#0x4b
      000617 E5 3F            [12] 2436 	mov	a,(_count + 1)
      000619 94 00            [12] 2437 	subb	a,#0x00
      00061B 40 F5            [24] 2438 	jc	00101$
                           000552  2439 	C$lab3_3.c$62$1$121 ==.
                                   2440 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:62: while (1)
      00061D                       2441 00109$:
                           000552  2442 	C$lab3_3.c$64$2$122 ==.
                                   2443 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:64: if (SS0) {
      00061D 30 B6 FD         [24] 2444 	jnb	_SS0,00109$
                           000555  2445 	C$lab3_3.c$65$3$123 ==.
                                   2446 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:65: if (new_range){
      000620 E5 42            [12] 2447 	mov	a,_new_range
      000622 60 F9            [24] 2448 	jz	00109$
                           000559  2449 	C$lab3_3.c$66$4$124 ==.
                                   2450 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:66: colrange = ReadRanger();
      000624 12 07 72         [24] 2451 	lcall	_ReadRanger
      000627 85 82 43         [24] 2452 	mov	_colrange,dpl
      00062A 85 83 44         [24] 2453 	mov	(_colrange + 1),dph
                           000562  2454 	C$lab3_3.c$67$4$124 ==.
                                   2455 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:67: new_range = 0;
      00062D 75 42 00         [24] 2456 	mov	_new_range,#0x00
                           000565  2457 	C$lab3_3.c$68$4$124 ==.
                                   2458 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:68: printf("Range: %i ", colrange);
      000630 C0 43            [24] 2459 	push	_colrange
      000632 C0 44            [24] 2460 	push	(_colrange + 1)
      000634 74 5B            [12] 2461 	mov	a,#___str_4
      000636 C0 E0            [24] 2462 	push	acc
      000638 74 0F            [12] 2463 	mov	a,#(___str_4 >> 8)
      00063A C0 E0            [24] 2464 	push	acc
      00063C 74 80            [12] 2465 	mov	a,#0x80
      00063E C0 E0            [24] 2466 	push	acc
      000640 12 09 0B         [24] 2467 	lcall	_printf
      000643 E5 81            [12] 2468 	mov	a,sp
      000645 24 FB            [12] 2469 	add	a,#0xfb
      000647 F5 81            [12] 2470 	mov	sp,a
                           00057E  2471 	C$lab3_3.c$69$4$124 ==.
                                   2472 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:69: Drive(colrange);
      000649 85 43 82         [24] 2473 	mov	dpl,_colrange
      00064C 85 44 83         [24] 2474 	mov	dph,(_colrange + 1)
      00064F 12 06 A7         [24] 2475 	lcall	_Drive
      000652 80 C9            [24] 2476 	sjmp	00109$
                           000589  2477 	C$lab3_3.c$74$1$121 ==.
                           000589  2478 	XG$main$0$0 ==.
      000654 22               [24] 2479 	ret
                                   2480 ;------------------------------------------------------------
                                   2481 ;Allocation info for local variables in function 'Port_Init'
                                   2482 ;------------------------------------------------------------
                           00058A  2483 	G$Port_Init$0$0 ==.
                           00058A  2484 	C$lab3_3.c$82$1$121 ==.
                                   2485 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:82: void Port_Init()
                                   2486 ;	-----------------------------------------
                                   2487 ;	 function Port_Init
                                   2488 ;	-----------------------------------------
      000655                       2489 _Port_Init:
                           00058A  2490 	C$lab3_3.c$84$1$125 ==.
                                   2491 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:84: P1MDOUT |= 0x04;  //set output pin for CEX2 in push-pull mode
      000655 43 A5 04         [24] 2492 	orl	_P1MDOUT,#0x04
                           00058D  2493 	C$lab3_3.c$87$1$125 ==.
                                   2494 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:87: P3MDOUT &= 0xBF; //setup port 3.6 for SS input
      000658 53 A7 BF         [24] 2495 	anl	_P3MDOUT,#0xbf
                           000590  2496 	C$lab3_3.c$88$1$125 ==.
                                   2497 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:88: P3 |= ~0xBF;
      00065B 43 B0 40         [24] 2498 	orl	_P3,#0x40
                           000593  2499 	C$lab3_3.c$89$1$125 ==.
                           000593  2500 	XG$Port_Init$0$0 ==.
      00065E 22               [24] 2501 	ret
                                   2502 ;------------------------------------------------------------
                                   2503 ;Allocation info for local variables in function 'XBR0_Init'
                                   2504 ;------------------------------------------------------------
                           000594  2505 	G$XBR0_Init$0$0 ==.
                           000594  2506 	C$lab3_3.c$97$1$125 ==.
                                   2507 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:97: void XBR0_Init()
                                   2508 ;	-----------------------------------------
                                   2509 ;	 function XBR0_Init
                                   2510 ;	-----------------------------------------
      00065F                       2511 _XBR0_Init:
                           000594  2512 	C$lab3_3.c$99$1$126 ==.
                                   2513 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:99: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      00065F 75 E1 27         [24] 2514 	mov	_XBR0,#0x27
                           000597  2515 	C$lab3_3.c$101$1$126 ==.
                           000597  2516 	XG$XBR0_Init$0$0 ==.
      000662 22               [24] 2517 	ret
                                   2518 ;------------------------------------------------------------
                                   2519 ;Allocation info for local variables in function 'SMB0_Init'
                                   2520 ;------------------------------------------------------------
                           000598  2521 	G$SMB0_Init$0$0 ==.
                           000598  2522 	C$lab3_3.c$103$1$126 ==.
                                   2523 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:103: void SMB0_Init()
                                   2524 ;	-----------------------------------------
                                   2525 ;	 function SMB0_Init
                                   2526 ;	-----------------------------------------
      000663                       2527 _SMB0_Init:
                           000598  2528 	C$lab3_3.c$105$1$127 ==.
                                   2529 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:105: SMB0CR = 0x93; // set SCL to 100KHz
      000663 75 CF 93         [24] 2530 	mov	_SMB0CR,#0x93
                           00059B  2531 	C$lab3_3.c$106$1$127 ==.
                                   2532 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:106: ENSMB = 1; // enable SMBUS0
      000666 D2 C6            [12] 2533 	setb	_ENSMB
                           00059D  2534 	C$lab3_3.c$107$1$127 ==.
                           00059D  2535 	XG$SMB0_Init$0$0 ==.
      000668 22               [24] 2536 	ret
                                   2537 ;------------------------------------------------------------
                                   2538 ;Allocation info for local variables in function 'PCA_Init'
                                   2539 ;------------------------------------------------------------
                           00059E  2540 	G$PCA_Init$0$0 ==.
                           00059E  2541 	C$lab3_3.c$115$1$127 ==.
                                   2542 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:115: void PCA_Init(void)
                                   2543 ;	-----------------------------------------
                                   2544 ;	 function PCA_Init
                                   2545 ;	-----------------------------------------
      000669                       2546 _PCA_Init:
                           00059E  2547 	C$lab3_3.c$117$1$129 ==.
                                   2548 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:117: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      000669 75 D9 81         [24] 2549 	mov	_PCA0MD,#0x81
                           0005A1  2550 	C$lab3_3.c$118$1$129 ==.
                                   2551 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:118: PCA0CPM2 = 0xC2; //CCM2 in 16 bit compare mode
      00066C 75 DC C2         [24] 2552 	mov	_PCA0CPM2,#0xc2
                           0005A4  2553 	C$lab3_3.c$119$1$129 ==.
                                   2554 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:119: PCA0CN = 0x40; //enable PCA counter
      00066F 75 D8 40         [24] 2555 	mov	_PCA0CN,#0x40
                           0005A7  2556 	C$lab3_3.c$120$1$129 ==.
                                   2557 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:120: EIE1 |= 0x08;
      000672 43 E6 08         [24] 2558 	orl	_EIE1,#0x08
                           0005AA  2559 	C$lab3_3.c$121$1$129 ==.
                                   2560 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:121: EA = 1;
      000675 D2 AF            [12] 2561 	setb	_EA
                           0005AC  2562 	C$lab3_3.c$123$1$129 ==.
                           0005AC  2563 	XG$PCA_Init$0$0 ==.
      000677 22               [24] 2564 	ret
                                   2565 ;------------------------------------------------------------
                                   2566 ;Allocation info for local variables in function 'PCA_ISR'
                                   2567 ;------------------------------------------------------------
                           0005AD  2568 	G$PCA_ISR$0$0 ==.
                           0005AD  2569 	C$lab3_3.c$131$1$129 ==.
                                   2570 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:131: void PCA_ISR (void) __interrupt 9
                                   2571 ;	-----------------------------------------
                                   2572 ;	 function PCA_ISR
                                   2573 ;	-----------------------------------------
      000678                       2574 _PCA_ISR:
      000678 C0 E0            [24] 2575 	push	acc
      00067A C0 D0            [24] 2576 	push	psw
                           0005B1  2577 	C$lab3_3.c$133$1$131 ==.
                                   2578 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:133: if (CF)
                           0005B1  2579 	C$lab3_3.c$135$2$132 ==.
                                   2580 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:135: CF = 0;
      00067C 10 DF 02         [24] 2581 	jbc	_CF,00114$
      00067F 80 1E            [24] 2582 	sjmp	00104$
      000681                       2583 00114$:
                           0005B6  2584 	C$lab3_3.c$136$2$132 ==.
                                   2585 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:136: PCA0 = 28671; //20 ms period 36408
      000681 75 E9 FF         [24] 2586 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      000684 75 F9 6F         [24] 2587 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           0005BC  2588 	C$lab3_3.c$137$2$132 ==.
                                   2589 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:137: count++;
      000687 05 3E            [12] 2590 	inc	_count
      000689 E4               [12] 2591 	clr	a
      00068A B5 3E 02         [24] 2592 	cjne	a,_count,00115$
      00068D 05 3F            [12] 2593 	inc	(_count + 1)
      00068F                       2594 00115$:
                           0005C4  2595 	C$lab3_3.c$138$2$132 ==.
                                   2596 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:138: r_count ++;
      00068F 05 41            [12] 2597 	inc	_r_count
                           0005C6  2598 	C$lab3_3.c$139$2$132 ==.
                                   2599 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:139: if(r_count >= 4)
      000691 74 FC            [12] 2600 	mov	a,#0x100 - 0x04
      000693 25 41            [12] 2601 	add	a,_r_count
      000695 50 0B            [24] 2602 	jnc	00106$
                           0005CC  2603 	C$lab3_3.c$141$3$133 ==.
                                   2604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:141: new_range = 1;
      000697 75 42 01         [24] 2605 	mov	_new_range,#0x01
                           0005CF  2606 	C$lab3_3.c$142$3$133 ==.
                                   2607 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:142: r_count = 0;
      00069A 75 41 00         [24] 2608 	mov	_r_count,#0x00
      00069D 80 03            [24] 2609 	sjmp	00106$
      00069F                       2610 00104$:
                           0005D4  2611 	C$lab3_3.c$147$2$134 ==.
                                   2612 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:147: PCA0CN &= 0x40;
      00069F 53 D8 40         [24] 2613 	anl	_PCA0CN,#0x40
      0006A2                       2614 00106$:
      0006A2 D0 D0            [24] 2615 	pop	psw
      0006A4 D0 E0            [24] 2616 	pop	acc
                           0005DB  2617 	C$lab3_3.c$149$1$131 ==.
                           0005DB  2618 	XG$PCA_ISR$0$0 ==.
      0006A6 32               [24] 2619 	reti
                                   2620 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2621 ;	eliminated unneeded push/pop dpl
                                   2622 ;	eliminated unneeded push/pop dph
                                   2623 ;	eliminated unneeded push/pop b
                                   2624 ;------------------------------------------------------------
                                   2625 ;Allocation info for local variables in function 'Drive'
                                   2626 ;------------------------------------------------------------
                                   2627 ;distance                  Allocated to registers r6 r7 
                                   2628 ;------------------------------------------------------------
                           0005DC  2629 	G$Drive$0$0 ==.
                           0005DC  2630 	C$lab3_3.c$152$1$131 ==.
                                   2631 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:152: void Drive(unsigned int distance)
                                   2632 ;	-----------------------------------------
                                   2633 ;	 function Drive
                                   2634 ;	-----------------------------------------
      0006A7                       2635 _Drive:
      0006A7 AE 82            [24] 2636 	mov	r6,dpl
      0006A9 AF 83            [24] 2637 	mov	r7,dph
                           0005E0  2638 	C$lab3_3.c$154$1$136 ==.
                                   2639 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:154: if (distance <= 10) {
      0006AB C3               [12] 2640 	clr	c
      0006AC 74 0A            [12] 2641 	mov	a,#0x0a
      0006AE 9E               [12] 2642 	subb	a,r6
      0006AF E4               [12] 2643 	clr	a
      0006B0 9F               [12] 2644 	subb	a,r7
      0006B1 40 09            [24] 2645 	jc	00116$
                           0005E8  2646 	C$lab3_3.c$155$2$137 ==.
                                   2647 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:155: PW = PW_MAX;
      0006B3 85 3A 3C         [24] 2648 	mov	_PW,_PW_MAX
      0006B6 85 3B 3D         [24] 2649 	mov	(_PW + 1),(_PW_MAX + 1)
      0006B9 02 07 4B         [24] 2650 	ljmp	00117$
      0006BC                       2651 00116$:
                           0005F1  2652 	C$lab3_3.c$157$1$136 ==.
                                   2653 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:157: else if ((distance > 10) && (distance < 40)) {
      0006BC C3               [12] 2654 	clr	c
      0006BD 74 0A            [12] 2655 	mov	a,#0x0a
      0006BF 9E               [12] 2656 	subb	a,r6
      0006C0 E4               [12] 2657 	clr	a
      0006C1 9F               [12] 2658 	subb	a,r7
      0006C2 50 2C            [24] 2659 	jnc	00112$
      0006C4 C3               [12] 2660 	clr	c
      0006C5 EE               [12] 2661 	mov	a,r6
      0006C6 94 28            [12] 2662 	subb	a,#0x28
      0006C8 EF               [12] 2663 	mov	a,r7
      0006C9 94 00            [12] 2664 	subb	a,#0x00
      0006CB 50 23            [24] 2665 	jnc	00112$
                           000602  2666 	C$lab3_3.c$158$2$138 ==.
                                   2667 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:158: distance = distance - 10;
      0006CD EE               [12] 2668 	mov	a,r6
      0006CE 24 F6            [12] 2669 	add	a,#0xf6
      0006D0 FE               [12] 2670 	mov	r6,a
      0006D1 EF               [12] 2671 	mov	a,r7
      0006D2 34 FF            [12] 2672 	addc	a,#0xff
      0006D4 FF               [12] 2673 	mov	r7,a
                           00060A  2674 	C$lab3_3.c$159$1$136 ==.
                                   2675 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:159: PW = PW_MAX - (distance * 24);
      0006D5 8E 11            [24] 2676 	mov	__mulint_PARM_2,r6
      0006D7 8F 12            [24] 2677 	mov	(__mulint_PARM_2 + 1),r7
      0006D9 90 00 18         [24] 2678 	mov	dptr,#0x0018
      0006DC 12 07 CF         [24] 2679 	lcall	__mulint
      0006DF AC 82            [24] 2680 	mov	r4,dpl
      0006E1 AD 83            [24] 2681 	mov	r5,dph
      0006E3 E5 3A            [12] 2682 	mov	a,_PW_MAX
      0006E5 C3               [12] 2683 	clr	c
      0006E6 9C               [12] 2684 	subb	a,r4
      0006E7 F5 3C            [12] 2685 	mov	_PW,a
      0006E9 E5 3B            [12] 2686 	mov	a,(_PW_MAX + 1)
      0006EB 9D               [12] 2687 	subb	a,r5
      0006EC F5 3D            [12] 2688 	mov	(_PW + 1),a
      0006EE 80 5B            [24] 2689 	sjmp	00117$
      0006F0                       2690 00112$:
                           000625  2691 	C$lab3_3.c$161$1$136 ==.
                                   2692 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:161: else if ((distance > 40) && (distance < 50)) {
      0006F0 C3               [12] 2693 	clr	c
      0006F1 74 28            [12] 2694 	mov	a,#0x28
      0006F3 9E               [12] 2695 	subb	a,r6
      0006F4 E4               [12] 2696 	clr	a
      0006F5 9F               [12] 2697 	subb	a,r7
      0006F6 50 11            [24] 2698 	jnc	00108$
      0006F8 C3               [12] 2699 	clr	c
      0006F9 EE               [12] 2700 	mov	a,r6
      0006FA 94 32            [12] 2701 	subb	a,#0x32
      0006FC EF               [12] 2702 	mov	a,r7
      0006FD 94 00            [12] 2703 	subb	a,#0x00
      0006FF 50 08            [24] 2704 	jnc	00108$
                           000636  2705 	C$lab3_3.c$162$2$139 ==.
                                   2706 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:162: PW = PW_CENTER;
      000701 85 36 3C         [24] 2707 	mov	_PW,_PW_CENTER
      000704 85 37 3D         [24] 2708 	mov	(_PW + 1),(_PW_CENTER + 1)
      000707 80 42            [24] 2709 	sjmp	00117$
      000709                       2710 00108$:
                           00063E  2711 	C$lab3_3.c$164$1$136 ==.
                                   2712 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:164: else if ((distance > 50) && (distance < 90)) {
      000709 C3               [12] 2713 	clr	c
      00070A 74 32            [12] 2714 	mov	a,#0x32
      00070C 9E               [12] 2715 	subb	a,r6
      00070D E4               [12] 2716 	clr	a
      00070E 9F               [12] 2717 	subb	a,r7
      00070F 50 2C            [24] 2718 	jnc	00104$
      000711 C3               [12] 2719 	clr	c
      000712 EE               [12] 2720 	mov	a,r6
      000713 94 5A            [12] 2721 	subb	a,#0x5a
      000715 EF               [12] 2722 	mov	a,r7
      000716 94 00            [12] 2723 	subb	a,#0x00
      000718 50 23            [24] 2724 	jnc	00104$
                           00064F  2725 	C$lab3_3.c$165$2$140 ==.
                                   2726 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:165: distance = distance - 50;
      00071A EE               [12] 2727 	mov	a,r6
      00071B 24 CE            [12] 2728 	add	a,#0xce
      00071D FE               [12] 2729 	mov	r6,a
      00071E EF               [12] 2730 	mov	a,r7
      00071F 34 FF            [12] 2731 	addc	a,#0xff
      000721 FF               [12] 2732 	mov	r7,a
                           000657  2733 	C$lab3_3.c$166$1$136 ==.
                                   2734 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:166: PW = PW_CENTER - (distance * 18);
      000722 8E 11            [24] 2735 	mov	__mulint_PARM_2,r6
      000724 8F 12            [24] 2736 	mov	(__mulint_PARM_2 + 1),r7
      000726 90 00 12         [24] 2737 	mov	dptr,#0x0012
      000729 12 07 CF         [24] 2738 	lcall	__mulint
      00072C AC 82            [24] 2739 	mov	r4,dpl
      00072E AD 83            [24] 2740 	mov	r5,dph
      000730 E5 36            [12] 2741 	mov	a,_PW_CENTER
      000732 C3               [12] 2742 	clr	c
      000733 9C               [12] 2743 	subb	a,r4
      000734 F5 3C            [12] 2744 	mov	_PW,a
      000736 E5 37            [12] 2745 	mov	a,(_PW_CENTER + 1)
      000738 9D               [12] 2746 	subb	a,r5
      000739 F5 3D            [12] 2747 	mov	(_PW + 1),a
      00073B 80 0E            [24] 2748 	sjmp	00117$
      00073D                       2749 00104$:
                           000672  2750 	C$lab3_3.c$168$1$136 ==.
                                   2751 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:168: else if (distance > 90) {
      00073D C3               [12] 2752 	clr	c
      00073E 74 5A            [12] 2753 	mov	a,#0x5a
      000740 9E               [12] 2754 	subb	a,r6
      000741 E4               [12] 2755 	clr	a
      000742 9F               [12] 2756 	subb	a,r7
      000743 50 06            [24] 2757 	jnc	00117$
                           00067A  2758 	C$lab3_3.c$169$2$141 ==.
                                   2759 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:169: PW = PW_MIN;
      000745 85 38 3C         [24] 2760 	mov	_PW,_PW_MIN
      000748 85 39 3D         [24] 2761 	mov	(_PW + 1),(_PW_MIN + 1)
      00074B                       2762 00117$:
                           000680  2763 	C$lab3_3.c$171$1$136 ==.
                                   2764 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:171: printf("PW: %u\n\r", PW);
      00074B C0 3C            [24] 2765 	push	_PW
      00074D C0 3D            [24] 2766 	push	(_PW + 1)
      00074F 74 66            [12] 2767 	mov	a,#___str_5
      000751 C0 E0            [24] 2768 	push	acc
      000753 74 0F            [12] 2769 	mov	a,#(___str_5 >> 8)
      000755 C0 E0            [24] 2770 	push	acc
      000757 74 80            [12] 2771 	mov	a,#0x80
      000759 C0 E0            [24] 2772 	push	acc
      00075B 12 09 0B         [24] 2773 	lcall	_printf
      00075E E5 81            [12] 2774 	mov	a,sp
      000760 24 FB            [12] 2775 	add	a,#0xfb
      000762 F5 81            [12] 2776 	mov	sp,a
                           000699  2777 	C$lab3_3.c$172$1$136 ==.
                                   2778 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:172: PCA0CP2 = 0xFFFF - PW;
      000764 74 FF            [12] 2779 	mov	a,#0xff
      000766 C3               [12] 2780 	clr	c
      000767 95 3C            [12] 2781 	subb	a,_PW
      000769 F5 EC            [12] 2782 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      00076B 74 FF            [12] 2783 	mov	a,#0xff
      00076D 95 3D            [12] 2784 	subb	a,(_PW + 1)
      00076F F5 FC            [12] 2785 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           0006A6  2786 	C$lab3_3.c$174$1$136 ==.
                           0006A6  2787 	XG$Drive$0$0 ==.
      000771 22               [24] 2788 	ret
                                   2789 ;------------------------------------------------------------
                                   2790 ;Allocation info for local variables in function 'ReadRanger'
                                   2791 ;------------------------------------------------------------
                           0006A7  2792 	G$ReadRanger$0$0 ==.
                           0006A7  2793 	C$lab3_3.c$176$1$136 ==.
                                   2794 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:176: unsigned int ReadRanger(void)
                                   2795 ;	-----------------------------------------
                                   2796 ;	 function ReadRanger
                                   2797 ;	-----------------------------------------
      000772                       2798 _ReadRanger:
                           0006A7  2799 	C$lab3_3.c$178$1$143 ==.
                                   2800 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:178: i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
      000772 75 32 48         [24] 2801 	mov	_i2c_read_data_PARM_3,#_Data
      000775 75 33 00         [24] 2802 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000778 75 34 40         [24] 2803 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00077B 75 31 02         [24] 2804 	mov	_i2c_read_data_PARM_2,#0x02
      00077E 75 35 02         [24] 2805 	mov	_i2c_read_data_PARM_4,#0x02
      000781 85 47 82         [24] 2806 	mov	dpl,_addr
      000784 12 04 D1         [24] 2807 	lcall	_i2c_read_data
                           0006BC  2808 	C$lab3_3.c$179$1$143 ==.
                                   2809 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:179: range = (((unsigned int)Data[0] << 8) | Data[1]);
      000787 AF 48            [24] 2810 	mov	r7,_Data
      000789 7E 00            [12] 2811 	mov	r6,#0x00
      00078B AC 49            [24] 2812 	mov	r4,(_Data + 0x0001)
      00078D 7D 00            [12] 2813 	mov	r5,#0x00
      00078F EC               [12] 2814 	mov	a,r4
      000790 4E               [12] 2815 	orl	a,r6
      000791 F5 45            [12] 2816 	mov	_range,a
      000793 ED               [12] 2817 	mov	a,r5
      000794 4F               [12] 2818 	orl	a,r7
      000795 F5 46            [12] 2819 	mov	(_range + 1),a
                           0006CC  2820 	C$lab3_3.c$180$1$143 ==.
                                   2821 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:180: Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
      000797 75 48 51         [24] 2822 	mov	_Data,#0x51
                           0006CF  2823 	C$lab3_3.c$181$1$143 ==.
                                   2824 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:181: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      00079A 75 2D 48         [24] 2825 	mov	_i2c_write_data_PARM_3,#_Data
                                   2826 ;	1-genFromRTrack replaced	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00079D 8E 2E            [24] 2827 	mov	(_i2c_write_data_PARM_3 + 1),r6
      00079F 75 2F 40         [24] 2828 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
                                   2829 ;	1-genFromRTrack replaced	mov	_i2c_write_data_PARM_2,#0x00
      0007A2 8E 2C            [24] 2830 	mov	_i2c_write_data_PARM_2,r6
      0007A4 75 30 01         [24] 2831 	mov	_i2c_write_data_PARM_4,#0x01
      0007A7 85 47 82         [24] 2832 	mov	dpl,_addr
      0007AA 12 04 57         [24] 2833 	lcall	_i2c_write_data
                           0006E2  2834 	C$lab3_3.c$182$1$143 ==.
                                   2835 ;	C:\Users\gerlig\Documents\School\LITEC\LAB3-3\lab3-3.c:182: return range;
      0007AD 85 45 82         [24] 2836 	mov	dpl,_range
      0007B0 85 46 83         [24] 2837 	mov	dph,(_range + 1)
                           0006E8  2838 	C$lab3_3.c$183$1$143 ==.
                           0006E8  2839 	XG$ReadRanger$0$0 ==.
      0007B3 22               [24] 2840 	ret
                                   2841 	.area CSEG    (CODE)
                                   2842 	.area CONST   (CODE)
                           000000  2843 Flab3_3$__str_0$0$0 == .
      000F26                       2844 ___str_0:
      000F26 0A                    2845 	.db 0x0a
      000F27 54 79 70 65 20 64 69  2846 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      000F3B 00                    2847 	.db 0x00
                           000016  2848 Flab3_3$__str_1$0$0 == .
      000F3C                       2849 ___str_1:
      000F3C 20 20 20 20 20 25 63  2850 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      000F4B 00                    2851 	.db 0x00
                           000026  2852 Flab3_3$__str_2$0$0 == .
      000F4C                       2853 ___str_2:
      000F4C 25 63                 2854 	.ascii "%c"
      000F4E 00                    2855 	.db 0x00
                           000029  2856 Flab3_3$__str_3$0$0 == .
      000F4F                       2857 ___str_3:
      000F4F 42 69 67 20 54 68 69  2858 	.ascii "Big Think"
             6E 6B
      000F58 0A                    2859 	.db 0x0a
      000F59 0D                    2860 	.db 0x0d
      000F5A 00                    2861 	.db 0x00
                           000035  2862 Flab3_3$__str_4$0$0 == .
      000F5B                       2863 ___str_4:
      000F5B 52 61 6E 67 65 3A 20  2864 	.ascii "Range: %i "
             25 69 20
      000F65 00                    2865 	.db 0x00
                           000040  2866 Flab3_3$__str_5$0$0 == .
      000F66                       2867 ___str_5:
      000F66 50 57 3A 20 25 75     2868 	.ascii "PW: %u"
      000F6C 0A                    2869 	.db 0x0a
      000F6D 0D                    2870 	.db 0x0d
      000F6E 00                    2871 	.db 0x00
                                   2872 	.area XINIT   (CODE)
                                   2873 	.area CABS    (ABS,CODE)
