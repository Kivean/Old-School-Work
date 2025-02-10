                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LAB6
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
                                     17 	.globl _abs
                                     18 	.globl _getchar_nw
                                     19 	.globl _Sys_Init
                                     20 	.globl _UART0_Init
                                     21 	.globl _SYSCLK_Init
                                     22 	.globl _RUN
                                     23 	.globl _BUS_SCL
                                     24 	.globl _BUS_TOE
                                     25 	.globl _BUS_FTE
                                     26 	.globl _BUS_AA
                                     27 	.globl _BUS_INT
                                     28 	.globl _BUS_STOP
                                     29 	.globl _BUS_START
                                     30 	.globl _BUS_EN
                                     31 	.globl _BUS_BUSY
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
                                    308 	.globl _set_heading
                                    309 	.globl _run_stop
                                    310 	.globl _Data
                                    311 	.globl _error
                                    312 	.globl _desired_heading
                                    313 	.globl _xCounts
                                    314 	.globl _nCounts
                                    315 	.globl _h_count
                                    316 	.globl _prev_range
                                    317 	.globl _heading
                                    318 	.globl _range
                                    319 	.globl _new_heading
                                    320 	.globl _battery
                                    321 	.globl _h_switch
                                    322 	.globl _prev_error
                                    323 	.globl _kd
                                    324 	.globl _kp
                                    325 	.globl _SERVO_PW
                                    326 	.globl _SERVO_MIN
                                    327 	.globl _SERVO_MAX
                                    328 	.globl _SERVO_CENTER
                                    329 	.globl _LEFT_PW
                                    330 	.globl _TAIL_PW
                                    331 	.globl _MOTOR_MIN
                                    332 	.globl _MOTOR_MAX
                                    333 	.globl _MOTOR_STOP
                                    334 	.globl _i2c_read_data_PARM_4
                                    335 	.globl _i2c_read_data_PARM_3
                                    336 	.globl _i2c_read_data_PARM_2
                                    337 	.globl _i2c_write_data_PARM_4
                                    338 	.globl _i2c_write_data_PARM_3
                                    339 	.globl _i2c_write_data_PARM_2
                                    340 	.globl _aligned_alloc_PARM_2
                                    341 	.globl _Data2
                                    342 	.globl _lcd_print
                                    343 	.globl _lcd_clear
                                    344 	.globl _kpd_input
                                    345 	.globl _delay_time
                                    346 	.globl _i2c_start
                                    347 	.globl _i2c_write
                                    348 	.globl _i2c_write_and_stop
                                    349 	.globl _i2c_read
                                    350 	.globl _i2c_read_and_stop
                                    351 	.globl _i2c_write_data
                                    352 	.globl _i2c_read_data
                                    353 	.globl _Accel_Init
                                    354 	.globl _Accel_Init_C
                                    355 	.globl _PCA_Init
                                    356 	.globl _SMB_Init
                                    357 	.globl _Port_Init
                                    358 	.globl _XBR0_Init
                                    359 	.globl _ADC_Init
                                    360 	.globl _read_compass
                                    361 	.globl _read_ranger
                                    362 	.globl _set_tail_PWM
                                    363 	.globl _set_gains
                                    364 	.globl _tilt_set
                                    365 	.globl _thrust_set
                                    366 	.globl _PCA_ISR
                                    367 	.globl _read_AD_input
                                    368 	.globl _pause
                                    369 	.globl _wait
                                    370 ;--------------------------------------------------------
                                    371 ; special function registers
                                    372 ;--------------------------------------------------------
                                    373 	.area RSEG    (ABS,DATA)
      000000                        374 	.org 0x0000
                           000080   375 G$P0$0$0 == 0x0080
                           000080   376 _P0	=	0x0080
                           000081   377 G$SP$0$0 == 0x0081
                           000081   378 _SP	=	0x0081
                           000082   379 G$DPL$0$0 == 0x0082
                           000082   380 _DPL	=	0x0082
                           000083   381 G$DPH$0$0 == 0x0083
                           000083   382 _DPH	=	0x0083
                           000084   383 G$P4$0$0 == 0x0084
                           000084   384 _P4	=	0x0084
                           000085   385 G$P5$0$0 == 0x0085
                           000085   386 _P5	=	0x0085
                           000086   387 G$P6$0$0 == 0x0086
                           000086   388 _P6	=	0x0086
                           000087   389 G$PCON$0$0 == 0x0087
                           000087   390 _PCON	=	0x0087
                           000088   391 G$TCON$0$0 == 0x0088
                           000088   392 _TCON	=	0x0088
                           000089   393 G$TMOD$0$0 == 0x0089
                           000089   394 _TMOD	=	0x0089
                           00008A   395 G$TL0$0$0 == 0x008a
                           00008A   396 _TL0	=	0x008a
                           00008B   397 G$TL1$0$0 == 0x008b
                           00008B   398 _TL1	=	0x008b
                           00008C   399 G$TH0$0$0 == 0x008c
                           00008C   400 _TH0	=	0x008c
                           00008D   401 G$TH1$0$0 == 0x008d
                           00008D   402 _TH1	=	0x008d
                           00008E   403 G$CKCON$0$0 == 0x008e
                           00008E   404 _CKCON	=	0x008e
                           00008F   405 G$PSCTL$0$0 == 0x008f
                           00008F   406 _PSCTL	=	0x008f
                           000090   407 G$P1$0$0 == 0x0090
                           000090   408 _P1	=	0x0090
                           000091   409 G$TMR3CN$0$0 == 0x0091
                           000091   410 _TMR3CN	=	0x0091
                           000092   411 G$TMR3RLL$0$0 == 0x0092
                           000092   412 _TMR3RLL	=	0x0092
                           000093   413 G$TMR3RLH$0$0 == 0x0093
                           000093   414 _TMR3RLH	=	0x0093
                           000094   415 G$TMR3L$0$0 == 0x0094
                           000094   416 _TMR3L	=	0x0094
                           000095   417 G$TMR3H$0$0 == 0x0095
                           000095   418 _TMR3H	=	0x0095
                           000096   419 G$P7$0$0 == 0x0096
                           000096   420 _P7	=	0x0096
                           000098   421 G$SCON$0$0 == 0x0098
                           000098   422 _SCON	=	0x0098
                           000098   423 G$SCON0$0$0 == 0x0098
                           000098   424 _SCON0	=	0x0098
                           000099   425 G$SBUF$0$0 == 0x0099
                           000099   426 _SBUF	=	0x0099
                           000099   427 G$SBUF0$0$0 == 0x0099
                           000099   428 _SBUF0	=	0x0099
                           00009A   429 G$SPI0CFG$0$0 == 0x009a
                           00009A   430 _SPI0CFG	=	0x009a
                           00009B   431 G$SPI0DAT$0$0 == 0x009b
                           00009B   432 _SPI0DAT	=	0x009b
                           00009C   433 G$ADC1$0$0 == 0x009c
                           00009C   434 _ADC1	=	0x009c
                           00009D   435 G$SPI0CKR$0$0 == 0x009d
                           00009D   436 _SPI0CKR	=	0x009d
                           00009E   437 G$CPT0CN$0$0 == 0x009e
                           00009E   438 _CPT0CN	=	0x009e
                           00009F   439 G$CPT1CN$0$0 == 0x009f
                           00009F   440 _CPT1CN	=	0x009f
                           0000A0   441 G$P2$0$0 == 0x00a0
                           0000A0   442 _P2	=	0x00a0
                           0000A1   443 G$EMI0TC$0$0 == 0x00a1
                           0000A1   444 _EMI0TC	=	0x00a1
                           0000A3   445 G$EMI0CF$0$0 == 0x00a3
                           0000A3   446 _EMI0CF	=	0x00a3
                           0000A4   447 G$PRT0CF$0$0 == 0x00a4
                           0000A4   448 _PRT0CF	=	0x00a4
                           0000A4   449 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   450 _P0MDOUT	=	0x00a4
                           0000A5   451 G$PRT1CF$0$0 == 0x00a5
                           0000A5   452 _PRT1CF	=	0x00a5
                           0000A5   453 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   454 _P1MDOUT	=	0x00a5
                           0000A6   455 G$PRT2CF$0$0 == 0x00a6
                           0000A6   456 _PRT2CF	=	0x00a6
                           0000A6   457 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   458 _P2MDOUT	=	0x00a6
                           0000A7   459 G$PRT3CF$0$0 == 0x00a7
                           0000A7   460 _PRT3CF	=	0x00a7
                           0000A7   461 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   462 _P3MDOUT	=	0x00a7
                           0000A8   463 G$IE$0$0 == 0x00a8
                           0000A8   464 _IE	=	0x00a8
                           0000A9   465 G$SADDR0$0$0 == 0x00a9
                           0000A9   466 _SADDR0	=	0x00a9
                           0000AA   467 G$ADC1CN$0$0 == 0x00aa
                           0000AA   468 _ADC1CN	=	0x00aa
                           0000AB   469 G$ADC1CF$0$0 == 0x00ab
                           0000AB   470 _ADC1CF	=	0x00ab
                           0000AC   471 G$AMX1SL$0$0 == 0x00ac
                           0000AC   472 _AMX1SL	=	0x00ac
                           0000AD   473 G$P3IF$0$0 == 0x00ad
                           0000AD   474 _P3IF	=	0x00ad
                           0000AE   475 G$SADEN1$0$0 == 0x00ae
                           0000AE   476 _SADEN1	=	0x00ae
                           0000AF   477 G$EMI0CN$0$0 == 0x00af
                           0000AF   478 _EMI0CN	=	0x00af
                           0000AF   479 G$_XPAGE$0$0 == 0x00af
                           0000AF   480 __XPAGE	=	0x00af
                           0000B0   481 G$P3$0$0 == 0x00b0
                           0000B0   482 _P3	=	0x00b0
                           0000B1   483 G$OSCXCN$0$0 == 0x00b1
                           0000B1   484 _OSCXCN	=	0x00b1
                           0000B2   485 G$OSCICN$0$0 == 0x00b2
                           0000B2   486 _OSCICN	=	0x00b2
                           0000B5   487 G$P74OUT$0$0 == 0x00b5
                           0000B5   488 _P74OUT	=	0x00b5
                           0000B6   489 G$FLSCL$0$0 == 0x00b6
                           0000B6   490 _FLSCL	=	0x00b6
                           0000B7   491 G$FLACL$0$0 == 0x00b7
                           0000B7   492 _FLACL	=	0x00b7
                           0000B8   493 G$IP$0$0 == 0x00b8
                           0000B8   494 _IP	=	0x00b8
                           0000B9   495 G$SADEN0$0$0 == 0x00b9
                           0000B9   496 _SADEN0	=	0x00b9
                           0000BA   497 G$AMX0CF$0$0 == 0x00ba
                           0000BA   498 _AMX0CF	=	0x00ba
                           0000BB   499 G$AMX0SL$0$0 == 0x00bb
                           0000BB   500 _AMX0SL	=	0x00bb
                           0000BC   501 G$ADC0CF$0$0 == 0x00bc
                           0000BC   502 _ADC0CF	=	0x00bc
                           0000BD   503 G$P1MDIN$0$0 == 0x00bd
                           0000BD   504 _P1MDIN	=	0x00bd
                           0000BE   505 G$ADC0L$0$0 == 0x00be
                           0000BE   506 _ADC0L	=	0x00be
                           0000BF   507 G$ADC0H$0$0 == 0x00bf
                           0000BF   508 _ADC0H	=	0x00bf
                           0000C0   509 G$SMB0CN$0$0 == 0x00c0
                           0000C0   510 _SMB0CN	=	0x00c0
                           0000C1   511 G$SMB0STA$0$0 == 0x00c1
                           0000C1   512 _SMB0STA	=	0x00c1
                           0000C2   513 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   514 _SMB0DAT	=	0x00c2
                           0000C3   515 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   516 _SMB0ADR	=	0x00c3
                           0000C4   517 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   518 _ADC0GTL	=	0x00c4
                           0000C5   519 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   520 _ADC0GTH	=	0x00c5
                           0000C6   521 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   522 _ADC0LTL	=	0x00c6
                           0000C7   523 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   524 _ADC0LTH	=	0x00c7
                           0000C8   525 G$T2CON$0$0 == 0x00c8
                           0000C8   526 _T2CON	=	0x00c8
                           0000C9   527 G$T4CON$0$0 == 0x00c9
                           0000C9   528 _T4CON	=	0x00c9
                           0000CA   529 G$RCAP2L$0$0 == 0x00ca
                           0000CA   530 _RCAP2L	=	0x00ca
                           0000CB   531 G$RCAP2H$0$0 == 0x00cb
                           0000CB   532 _RCAP2H	=	0x00cb
                           0000CC   533 G$TL2$0$0 == 0x00cc
                           0000CC   534 _TL2	=	0x00cc
                           0000CD   535 G$TH2$0$0 == 0x00cd
                           0000CD   536 _TH2	=	0x00cd
                           0000CF   537 G$SMB0CR$0$0 == 0x00cf
                           0000CF   538 _SMB0CR	=	0x00cf
                           0000D0   539 G$PSW$0$0 == 0x00d0
                           0000D0   540 _PSW	=	0x00d0
                           0000D1   541 G$REF0CN$0$0 == 0x00d1
                           0000D1   542 _REF0CN	=	0x00d1
                           0000D2   543 G$DAC0L$0$0 == 0x00d2
                           0000D2   544 _DAC0L	=	0x00d2
                           0000D3   545 G$DAC0H$0$0 == 0x00d3
                           0000D3   546 _DAC0H	=	0x00d3
                           0000D4   547 G$DAC0CN$0$0 == 0x00d4
                           0000D4   548 _DAC0CN	=	0x00d4
                           0000D5   549 G$DAC1L$0$0 == 0x00d5
                           0000D5   550 _DAC1L	=	0x00d5
                           0000D6   551 G$DAC1H$0$0 == 0x00d6
                           0000D6   552 _DAC1H	=	0x00d6
                           0000D7   553 G$DAC1CN$0$0 == 0x00d7
                           0000D7   554 _DAC1CN	=	0x00d7
                           0000D8   555 G$PCA0CN$0$0 == 0x00d8
                           0000D8   556 _PCA0CN	=	0x00d8
                           0000D9   557 G$PCA0MD$0$0 == 0x00d9
                           0000D9   558 _PCA0MD	=	0x00d9
                           0000DA   559 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   560 _PCA0CPM0	=	0x00da
                           0000DB   561 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   562 _PCA0CPM1	=	0x00db
                           0000DC   563 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   564 _PCA0CPM2	=	0x00dc
                           0000DD   565 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   566 _PCA0CPM3	=	0x00dd
                           0000DE   567 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   568 _PCA0CPM4	=	0x00de
                           0000E0   569 G$ACC$0$0 == 0x00e0
                           0000E0   570 _ACC	=	0x00e0
                           0000E1   571 G$XBR0$0$0 == 0x00e1
                           0000E1   572 _XBR0	=	0x00e1
                           0000E2   573 G$XBR1$0$0 == 0x00e2
                           0000E2   574 _XBR1	=	0x00e2
                           0000E3   575 G$XBR2$0$0 == 0x00e3
                           0000E3   576 _XBR2	=	0x00e3
                           0000E4   577 G$RCAP4L$0$0 == 0x00e4
                           0000E4   578 _RCAP4L	=	0x00e4
                           0000E5   579 G$RCAP4H$0$0 == 0x00e5
                           0000E5   580 _RCAP4H	=	0x00e5
                           0000E6   581 G$EIE1$0$0 == 0x00e6
                           0000E6   582 _EIE1	=	0x00e6
                           0000E7   583 G$EIE2$0$0 == 0x00e7
                           0000E7   584 _EIE2	=	0x00e7
                           0000E8   585 G$ADC0CN$0$0 == 0x00e8
                           0000E8   586 _ADC0CN	=	0x00e8
                           0000E9   587 G$PCA0L$0$0 == 0x00e9
                           0000E9   588 _PCA0L	=	0x00e9
                           0000EA   589 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   590 _PCA0CPL0	=	0x00ea
                           0000EB   591 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   592 _PCA0CPL1	=	0x00eb
                           0000EC   593 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   594 _PCA0CPL2	=	0x00ec
                           0000ED   595 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   596 _PCA0CPL3	=	0x00ed
                           0000EE   597 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   598 _PCA0CPL4	=	0x00ee
                           0000EF   599 G$RSTSRC$0$0 == 0x00ef
                           0000EF   600 _RSTSRC	=	0x00ef
                           0000F0   601 G$B$0$0 == 0x00f0
                           0000F0   602 _B	=	0x00f0
                           0000F1   603 G$SCON1$0$0 == 0x00f1
                           0000F1   604 _SCON1	=	0x00f1
                           0000F2   605 G$SBUF1$0$0 == 0x00f2
                           0000F2   606 _SBUF1	=	0x00f2
                           0000F3   607 G$SADDR1$0$0 == 0x00f3
                           0000F3   608 _SADDR1	=	0x00f3
                           0000F4   609 G$TL4$0$0 == 0x00f4
                           0000F4   610 _TL4	=	0x00f4
                           0000F5   611 G$TH4$0$0 == 0x00f5
                           0000F5   612 _TH4	=	0x00f5
                           0000F6   613 G$EIP1$0$0 == 0x00f6
                           0000F6   614 _EIP1	=	0x00f6
                           0000F7   615 G$EIP2$0$0 == 0x00f7
                           0000F7   616 _EIP2	=	0x00f7
                           0000F8   617 G$SPI0CN$0$0 == 0x00f8
                           0000F8   618 _SPI0CN	=	0x00f8
                           0000F9   619 G$PCA0H$0$0 == 0x00f9
                           0000F9   620 _PCA0H	=	0x00f9
                           0000FA   621 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   622 _PCA0CPH0	=	0x00fa
                           0000FB   623 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   624 _PCA0CPH1	=	0x00fb
                           0000FC   625 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   626 _PCA0CPH2	=	0x00fc
                           0000FD   627 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   628 _PCA0CPH3	=	0x00fd
                           0000FE   629 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   630 _PCA0CPH4	=	0x00fe
                           0000FF   631 G$WDTCN$0$0 == 0x00ff
                           0000FF   632 _WDTCN	=	0x00ff
                           008C8A   633 G$TMR0$0$0 == 0x8c8a
                           008C8A   634 _TMR0	=	0x8c8a
                           008D8B   635 G$TMR1$0$0 == 0x8d8b
                           008D8B   636 _TMR1	=	0x8d8b
                           00CDCC   637 G$TMR2$0$0 == 0xcdcc
                           00CDCC   638 _TMR2	=	0xcdcc
                           00CBCA   639 G$RCAP2$0$0 == 0xcbca
                           00CBCA   640 _RCAP2	=	0xcbca
                           009594   641 G$TMR3$0$0 == 0x9594
                           009594   642 _TMR3	=	0x9594
                           009392   643 G$TMR3RL$0$0 == 0x9392
                           009392   644 _TMR3RL	=	0x9392
                           00F5F4   645 G$TMR4$0$0 == 0xf5f4
                           00F5F4   646 _TMR4	=	0xf5f4
                           00E5E4   647 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   648 _RCAP4	=	0xe5e4
                           00BFBE   649 G$ADC0$0$0 == 0xbfbe
                           00BFBE   650 _ADC0	=	0xbfbe
                           00C5C4   651 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   652 _ADC0GT	=	0xc5c4
                           00C7C6   653 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   654 _ADC0LT	=	0xc7c6
                           00D3D2   655 G$DAC0$0$0 == 0xd3d2
                           00D3D2   656 _DAC0	=	0xd3d2
                           00D6D5   657 G$DAC1$0$0 == 0xd6d5
                           00D6D5   658 _DAC1	=	0xd6d5
                           00F9E9   659 G$PCA0$0$0 == 0xf9e9
                           00F9E9   660 _PCA0	=	0xf9e9
                           00FAEA   661 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   662 _PCA0CP0	=	0xfaea
                           00FBEB   663 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   664 _PCA0CP1	=	0xfbeb
                           00FCEC   665 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   666 _PCA0CP2	=	0xfcec
                           00FDED   667 G$PCA0CP3$0$0 == 0xfded
                           00FDED   668 _PCA0CP3	=	0xfded
                           00FEEE   669 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   670 _PCA0CP4	=	0xfeee
                                    671 ;--------------------------------------------------------
                                    672 ; special function bits
                                    673 ;--------------------------------------------------------
                                    674 	.area RSEG    (ABS,DATA)
      000000                        675 	.org 0x0000
                           000080   676 G$P0_0$0$0 == 0x0080
                           000080   677 _P0_0	=	0x0080
                           000081   678 G$P0_1$0$0 == 0x0081
                           000081   679 _P0_1	=	0x0081
                           000082   680 G$P0_2$0$0 == 0x0082
                           000082   681 _P0_2	=	0x0082
                           000083   682 G$P0_3$0$0 == 0x0083
                           000083   683 _P0_3	=	0x0083
                           000084   684 G$P0_4$0$0 == 0x0084
                           000084   685 _P0_4	=	0x0084
                           000085   686 G$P0_5$0$0 == 0x0085
                           000085   687 _P0_5	=	0x0085
                           000086   688 G$P0_6$0$0 == 0x0086
                           000086   689 _P0_6	=	0x0086
                           000087   690 G$P0_7$0$0 == 0x0087
                           000087   691 _P0_7	=	0x0087
                           000088   692 G$IT0$0$0 == 0x0088
                           000088   693 _IT0	=	0x0088
                           000089   694 G$IE0$0$0 == 0x0089
                           000089   695 _IE0	=	0x0089
                           00008A   696 G$IT1$0$0 == 0x008a
                           00008A   697 _IT1	=	0x008a
                           00008B   698 G$IE1$0$0 == 0x008b
                           00008B   699 _IE1	=	0x008b
                           00008C   700 G$TR0$0$0 == 0x008c
                           00008C   701 _TR0	=	0x008c
                           00008D   702 G$TF0$0$0 == 0x008d
                           00008D   703 _TF0	=	0x008d
                           00008E   704 G$TR1$0$0 == 0x008e
                           00008E   705 _TR1	=	0x008e
                           00008F   706 G$TF1$0$0 == 0x008f
                           00008F   707 _TF1	=	0x008f
                           000090   708 G$P1_0$0$0 == 0x0090
                           000090   709 _P1_0	=	0x0090
                           000091   710 G$P1_1$0$0 == 0x0091
                           000091   711 _P1_1	=	0x0091
                           000092   712 G$P1_2$0$0 == 0x0092
                           000092   713 _P1_2	=	0x0092
                           000093   714 G$P1_3$0$0 == 0x0093
                           000093   715 _P1_3	=	0x0093
                           000094   716 G$P1_4$0$0 == 0x0094
                           000094   717 _P1_4	=	0x0094
                           000095   718 G$P1_5$0$0 == 0x0095
                           000095   719 _P1_5	=	0x0095
                           000096   720 G$P1_6$0$0 == 0x0096
                           000096   721 _P1_6	=	0x0096
                           000097   722 G$P1_7$0$0 == 0x0097
                           000097   723 _P1_7	=	0x0097
                           000098   724 G$RI$0$0 == 0x0098
                           000098   725 _RI	=	0x0098
                           000098   726 G$RI0$0$0 == 0x0098
                           000098   727 _RI0	=	0x0098
                           000099   728 G$TI$0$0 == 0x0099
                           000099   729 _TI	=	0x0099
                           000099   730 G$TI0$0$0 == 0x0099
                           000099   731 _TI0	=	0x0099
                           00009A   732 G$RB8$0$0 == 0x009a
                           00009A   733 _RB8	=	0x009a
                           00009A   734 G$RB80$0$0 == 0x009a
                           00009A   735 _RB80	=	0x009a
                           00009B   736 G$TB8$0$0 == 0x009b
                           00009B   737 _TB8	=	0x009b
                           00009B   738 G$TB80$0$0 == 0x009b
                           00009B   739 _TB80	=	0x009b
                           00009C   740 G$REN$0$0 == 0x009c
                           00009C   741 _REN	=	0x009c
                           00009C   742 G$REN0$0$0 == 0x009c
                           00009C   743 _REN0	=	0x009c
                           00009D   744 G$SM2$0$0 == 0x009d
                           00009D   745 _SM2	=	0x009d
                           00009D   746 G$SM20$0$0 == 0x009d
                           00009D   747 _SM20	=	0x009d
                           00009D   748 G$MCE0$0$0 == 0x009d
                           00009D   749 _MCE0	=	0x009d
                           00009E   750 G$SM1$0$0 == 0x009e
                           00009E   751 _SM1	=	0x009e
                           00009E   752 G$SM10$0$0 == 0x009e
                           00009E   753 _SM10	=	0x009e
                           00009F   754 G$SM0$0$0 == 0x009f
                           00009F   755 _SM0	=	0x009f
                           00009F   756 G$SM00$0$0 == 0x009f
                           00009F   757 _SM00	=	0x009f
                           00009F   758 G$S0MODE$0$0 == 0x009f
                           00009F   759 _S0MODE	=	0x009f
                           0000A0   760 G$P2_0$0$0 == 0x00a0
                           0000A0   761 _P2_0	=	0x00a0
                           0000A1   762 G$P2_1$0$0 == 0x00a1
                           0000A1   763 _P2_1	=	0x00a1
                           0000A2   764 G$P2_2$0$0 == 0x00a2
                           0000A2   765 _P2_2	=	0x00a2
                           0000A3   766 G$P2_3$0$0 == 0x00a3
                           0000A3   767 _P2_3	=	0x00a3
                           0000A4   768 G$P2_4$0$0 == 0x00a4
                           0000A4   769 _P2_4	=	0x00a4
                           0000A5   770 G$P2_5$0$0 == 0x00a5
                           0000A5   771 _P2_5	=	0x00a5
                           0000A6   772 G$P2_6$0$0 == 0x00a6
                           0000A6   773 _P2_6	=	0x00a6
                           0000A7   774 G$P2_7$0$0 == 0x00a7
                           0000A7   775 _P2_7	=	0x00a7
                           0000A8   776 G$EX0$0$0 == 0x00a8
                           0000A8   777 _EX0	=	0x00a8
                           0000A9   778 G$ET0$0$0 == 0x00a9
                           0000A9   779 _ET0	=	0x00a9
                           0000AA   780 G$EX1$0$0 == 0x00aa
                           0000AA   781 _EX1	=	0x00aa
                           0000AB   782 G$ET1$0$0 == 0x00ab
                           0000AB   783 _ET1	=	0x00ab
                           0000AC   784 G$ES0$0$0 == 0x00ac
                           0000AC   785 _ES0	=	0x00ac
                           0000AC   786 G$ES$0$0 == 0x00ac
                           0000AC   787 _ES	=	0x00ac
                           0000AD   788 G$ET2$0$0 == 0x00ad
                           0000AD   789 _ET2	=	0x00ad
                           0000AF   790 G$EA$0$0 == 0x00af
                           0000AF   791 _EA	=	0x00af
                           0000B0   792 G$P3_0$0$0 == 0x00b0
                           0000B0   793 _P3_0	=	0x00b0
                           0000B1   794 G$P3_1$0$0 == 0x00b1
                           0000B1   795 _P3_1	=	0x00b1
                           0000B2   796 G$P3_2$0$0 == 0x00b2
                           0000B2   797 _P3_2	=	0x00b2
                           0000B3   798 G$P3_3$0$0 == 0x00b3
                           0000B3   799 _P3_3	=	0x00b3
                           0000B4   800 G$P3_4$0$0 == 0x00b4
                           0000B4   801 _P3_4	=	0x00b4
                           0000B5   802 G$P3_5$0$0 == 0x00b5
                           0000B5   803 _P3_5	=	0x00b5
                           0000B6   804 G$P3_6$0$0 == 0x00b6
                           0000B6   805 _P3_6	=	0x00b6
                           0000B7   806 G$P3_7$0$0 == 0x00b7
                           0000B7   807 _P3_7	=	0x00b7
                           0000B8   808 G$PX0$0$0 == 0x00b8
                           0000B8   809 _PX0	=	0x00b8
                           0000B9   810 G$PT0$0$0 == 0x00b9
                           0000B9   811 _PT0	=	0x00b9
                           0000BA   812 G$PX1$0$0 == 0x00ba
                           0000BA   813 _PX1	=	0x00ba
                           0000BB   814 G$PT1$0$0 == 0x00bb
                           0000BB   815 _PT1	=	0x00bb
                           0000BC   816 G$PS0$0$0 == 0x00bc
                           0000BC   817 _PS0	=	0x00bc
                           0000BC   818 G$PS$0$0 == 0x00bc
                           0000BC   819 _PS	=	0x00bc
                           0000BD   820 G$PT2$0$0 == 0x00bd
                           0000BD   821 _PT2	=	0x00bd
                           0000C0   822 G$SMBTOE$0$0 == 0x00c0
                           0000C0   823 _SMBTOE	=	0x00c0
                           0000C1   824 G$SMBFTE$0$0 == 0x00c1
                           0000C1   825 _SMBFTE	=	0x00c1
                           0000C2   826 G$AA$0$0 == 0x00c2
                           0000C2   827 _AA	=	0x00c2
                           0000C3   828 G$SI$0$0 == 0x00c3
                           0000C3   829 _SI	=	0x00c3
                           0000C4   830 G$STO$0$0 == 0x00c4
                           0000C4   831 _STO	=	0x00c4
                           0000C5   832 G$STA$0$0 == 0x00c5
                           0000C5   833 _STA	=	0x00c5
                           0000C6   834 G$ENSMB$0$0 == 0x00c6
                           0000C6   835 _ENSMB	=	0x00c6
                           0000C7   836 G$BUSY$0$0 == 0x00c7
                           0000C7   837 _BUSY	=	0x00c7
                           0000C8   838 G$CPRL2$0$0 == 0x00c8
                           0000C8   839 _CPRL2	=	0x00c8
                           0000C9   840 G$CT2$0$0 == 0x00c9
                           0000C9   841 _CT2	=	0x00c9
                           0000CA   842 G$TR2$0$0 == 0x00ca
                           0000CA   843 _TR2	=	0x00ca
                           0000CB   844 G$EXEN2$0$0 == 0x00cb
                           0000CB   845 _EXEN2	=	0x00cb
                           0000CC   846 G$TCLK$0$0 == 0x00cc
                           0000CC   847 _TCLK	=	0x00cc
                           0000CD   848 G$RCLK$0$0 == 0x00cd
                           0000CD   849 _RCLK	=	0x00cd
                           0000CE   850 G$EXF2$0$0 == 0x00ce
                           0000CE   851 _EXF2	=	0x00ce
                           0000CF   852 G$TF2$0$0 == 0x00cf
                           0000CF   853 _TF2	=	0x00cf
                           0000D0   854 G$P$0$0 == 0x00d0
                           0000D0   855 _P	=	0x00d0
                           0000D1   856 G$F1$0$0 == 0x00d1
                           0000D1   857 _F1	=	0x00d1
                           0000D2   858 G$OV$0$0 == 0x00d2
                           0000D2   859 _OV	=	0x00d2
                           0000D3   860 G$RS0$0$0 == 0x00d3
                           0000D3   861 _RS0	=	0x00d3
                           0000D4   862 G$RS1$0$0 == 0x00d4
                           0000D4   863 _RS1	=	0x00d4
                           0000D5   864 G$F0$0$0 == 0x00d5
                           0000D5   865 _F0	=	0x00d5
                           0000D6   866 G$AC$0$0 == 0x00d6
                           0000D6   867 _AC	=	0x00d6
                           0000D7   868 G$CY$0$0 == 0x00d7
                           0000D7   869 _CY	=	0x00d7
                           0000D8   870 G$CCF0$0$0 == 0x00d8
                           0000D8   871 _CCF0	=	0x00d8
                           0000D9   872 G$CCF1$0$0 == 0x00d9
                           0000D9   873 _CCF1	=	0x00d9
                           0000DA   874 G$CCF2$0$0 == 0x00da
                           0000DA   875 _CCF2	=	0x00da
                           0000DB   876 G$CCF3$0$0 == 0x00db
                           0000DB   877 _CCF3	=	0x00db
                           0000DC   878 G$CCF4$0$0 == 0x00dc
                           0000DC   879 _CCF4	=	0x00dc
                           0000DE   880 G$CR$0$0 == 0x00de
                           0000DE   881 _CR	=	0x00de
                           0000DF   882 G$CF$0$0 == 0x00df
                           0000DF   883 _CF	=	0x00df
                           0000E8   884 G$ADLJST$0$0 == 0x00e8
                           0000E8   885 _ADLJST	=	0x00e8
                           0000E8   886 G$AD0LJST$0$0 == 0x00e8
                           0000E8   887 _AD0LJST	=	0x00e8
                           0000E9   888 G$ADWINT$0$0 == 0x00e9
                           0000E9   889 _ADWINT	=	0x00e9
                           0000E9   890 G$AD0WINT$0$0 == 0x00e9
                           0000E9   891 _AD0WINT	=	0x00e9
                           0000EA   892 G$ADSTM0$0$0 == 0x00ea
                           0000EA   893 _ADSTM0	=	0x00ea
                           0000EA   894 G$AD0CM0$0$0 == 0x00ea
                           0000EA   895 _AD0CM0	=	0x00ea
                           0000EB   896 G$ADSTM1$0$0 == 0x00eb
                           0000EB   897 _ADSTM1	=	0x00eb
                           0000EB   898 G$AD0CM1$0$0 == 0x00eb
                           0000EB   899 _AD0CM1	=	0x00eb
                           0000EC   900 G$ADBUSY$0$0 == 0x00ec
                           0000EC   901 _ADBUSY	=	0x00ec
                           0000EC   902 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   903 _AD0BUSY	=	0x00ec
                           0000ED   904 G$ADCINT$0$0 == 0x00ed
                           0000ED   905 _ADCINT	=	0x00ed
                           0000ED   906 G$AD0INT$0$0 == 0x00ed
                           0000ED   907 _AD0INT	=	0x00ed
                           0000EE   908 G$ADCTM$0$0 == 0x00ee
                           0000EE   909 _ADCTM	=	0x00ee
                           0000EE   910 G$AD0TM$0$0 == 0x00ee
                           0000EE   911 _AD0TM	=	0x00ee
                           0000EF   912 G$ADCEN$0$0 == 0x00ef
                           0000EF   913 _ADCEN	=	0x00ef
                           0000EF   914 G$AD0EN$0$0 == 0x00ef
                           0000EF   915 _AD0EN	=	0x00ef
                           0000F8   916 G$SPIEN$0$0 == 0x00f8
                           0000F8   917 _SPIEN	=	0x00f8
                           0000F9   918 G$MSTEN$0$0 == 0x00f9
                           0000F9   919 _MSTEN	=	0x00f9
                           0000FA   920 G$SLVSEL$0$0 == 0x00fa
                           0000FA   921 _SLVSEL	=	0x00fa
                           0000FB   922 G$TXBSY$0$0 == 0x00fb
                           0000FB   923 _TXBSY	=	0x00fb
                           0000FC   924 G$RXOVRN$0$0 == 0x00fc
                           0000FC   925 _RXOVRN	=	0x00fc
                           0000FD   926 G$MODF$0$0 == 0x00fd
                           0000FD   927 _MODF	=	0x00fd
                           0000FE   928 G$WCOL$0$0 == 0x00fe
                           0000FE   929 _WCOL	=	0x00fe
                           0000FF   930 G$SPIF$0$0 == 0x00ff
                           0000FF   931 _SPIF	=	0x00ff
                           0000C7   932 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   933 _BUS_BUSY	=	0x00c7
                           0000C6   934 G$BUS_EN$0$0 == 0x00c6
                           0000C6   935 _BUS_EN	=	0x00c6
                           0000C5   936 G$BUS_START$0$0 == 0x00c5
                           0000C5   937 _BUS_START	=	0x00c5
                           0000C4   938 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   939 _BUS_STOP	=	0x00c4
                           0000C3   940 G$BUS_INT$0$0 == 0x00c3
                           0000C3   941 _BUS_INT	=	0x00c3
                           0000C2   942 G$BUS_AA$0$0 == 0x00c2
                           0000C2   943 _BUS_AA	=	0x00c2
                           0000C1   944 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   945 _BUS_FTE	=	0x00c1
                           0000C0   946 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   947 _BUS_TOE	=	0x00c0
                           000083   948 G$BUS_SCL$0$0 == 0x0083
                           000083   949 _BUS_SCL	=	0x0083
                           0000B7   950 G$RUN$0$0 == 0x00b7
                           0000B7   951 _RUN	=	0x00b7
                                    952 ;--------------------------------------------------------
                                    953 ; overlayable register banks
                                    954 ;--------------------------------------------------------
                                    955 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        956 	.ds 8
                                    957 ;--------------------------------------------------------
                                    958 ; internal ram data
                                    959 ;--------------------------------------------------------
                                    960 	.area DSEG    (DATA)
                           000000   961 G$Data2$0$0==.
      000022                        962 _Data2::
      000022                        963 	.ds 3
                           000003   964 LLAB6.aligned_alloc$size$1$26==.
      000025                        965 _aligned_alloc_PARM_2:
      000025                        966 	.ds 2
                           000005   967 LLAB6.lcd_clear$NumBytes$1$85==.
      000027                        968 _lcd_clear_NumBytes_1_85:
      000027                        969 	.ds 1
                           000006   970 LLAB6.lcd_clear$Cmd$1$85==.
      000028                        971 _lcd_clear_Cmd_1_85:
      000028                        972 	.ds 2
                           000008   973 LLAB6.read_keypad$Data$1$86==.
      00002A                        974 _read_keypad_Data_1_86:
      00002A                        975 	.ds 2
                           00000A   976 LLAB6.i2c_write_data$start_reg$1$105==.
      00002C                        977 _i2c_write_data_PARM_2:
      00002C                        978 	.ds 1
                           00000B   979 LLAB6.i2c_write_data$buffer$1$105==.
      00002D                        980 _i2c_write_data_PARM_3:
      00002D                        981 	.ds 3
                           00000E   982 LLAB6.i2c_write_data$num_bytes$1$105==.
      000030                        983 _i2c_write_data_PARM_4:
      000030                        984 	.ds 1
                           00000F   985 LLAB6.i2c_read_data$start_reg$1$107==.
      000031                        986 _i2c_read_data_PARM_2:
      000031                        987 	.ds 1
                           000010   988 LLAB6.i2c_read_data$buffer$1$107==.
      000032                        989 _i2c_read_data_PARM_3:
      000032                        990 	.ds 3
                           000013   991 LLAB6.i2c_read_data$num_bytes$1$107==.
      000035                        992 _i2c_read_data_PARM_4:
      000035                        993 	.ds 1
                           000014   994 G$MOTOR_STOP$0$0==.
      000036                        995 _MOTOR_STOP::
      000036                        996 	.ds 2
                           000016   997 G$MOTOR_MAX$0$0==.
      000038                        998 _MOTOR_MAX::
      000038                        999 	.ds 2
                           000018  1000 G$MOTOR_MIN$0$0==.
      00003A                       1001 _MOTOR_MIN::
      00003A                       1002 	.ds 2
                           00001A  1003 G$TAIL_PW$0$0==.
      00003C                       1004 _TAIL_PW::
      00003C                       1005 	.ds 2
                           00001C  1006 G$LEFT_PW$0$0==.
      00003E                       1007 _LEFT_PW::
      00003E                       1008 	.ds 2
                           00001E  1009 G$SERVO_CENTER$0$0==.
      000040                       1010 _SERVO_CENTER::
      000040                       1011 	.ds 2
                           000020  1012 G$SERVO_MAX$0$0==.
      000042                       1013 _SERVO_MAX::
      000042                       1014 	.ds 2
                           000022  1015 G$SERVO_MIN$0$0==.
      000044                       1016 _SERVO_MIN::
      000044                       1017 	.ds 2
                           000024  1018 G$SERVO_PW$0$0==.
      000046                       1019 _SERVO_PW::
      000046                       1020 	.ds 2
                           000026  1021 G$kp$0$0==.
      000048                       1022 _kp::
      000048                       1023 	.ds 1
                           000027  1024 G$kd$0$0==.
      000049                       1025 _kd::
      000049                       1026 	.ds 1
                           000028  1027 G$prev_error$0$0==.
      00004A                       1028 _prev_error::
      00004A                       1029 	.ds 2
                           00002A  1030 G$h_switch$0$0==.
      00004C                       1031 _h_switch::
      00004C                       1032 	.ds 1
                           00002B  1033 G$battery$0$0==.
      00004D                       1034 _battery::
      00004D                       1035 	.ds 1
                           00002C  1036 G$new_heading$0$0==.
      00004E                       1037 _new_heading::
      00004E                       1038 	.ds 1
                           00002D  1039 G$range$0$0==.
      00004F                       1040 _range::
      00004F                       1041 	.ds 2
                           00002F  1042 G$heading$0$0==.
      000051                       1043 _heading::
      000051                       1044 	.ds 2
                           000031  1045 G$prev_range$0$0==.
      000053                       1046 _prev_range::
      000053                       1047 	.ds 2
                           000033  1048 G$h_count$0$0==.
      000055                       1049 _h_count::
      000055                       1050 	.ds 1
                           000034  1051 G$nCounts$0$0==.
      000056                       1052 _nCounts::
      000056                       1053 	.ds 1
                           000035  1054 G$xCounts$0$0==.
      000057                       1055 _xCounts::
      000057                       1056 	.ds 1
                           000036  1057 G$desired_heading$0$0==.
      000058                       1058 _desired_heading::
      000058                       1059 	.ds 2
                           000038  1060 G$error$0$0==.
      00005A                       1061 _error::
      00005A                       1062 	.ds 2
                           00003A  1063 G$Data$0$0==.
      00005C                       1064 _Data::
      00005C                       1065 	.ds 2
                           00003C  1066 G$run_stop$0$0==.
      00005E                       1067 _run_stop::
      00005E                       1068 	.ds 1
                           00003D  1069 G$set_heading$0$0==.
      00005F                       1070 _set_heading::
      00005F                       1071 	.ds 2
                           00003F  1072 LLAB6.set_tail_PWM$sloc0$1$0==.
      000061                       1073 _set_tail_PWM_sloc0_1_0:
      000061                       1074 	.ds 4
                                   1075 ;--------------------------------------------------------
                                   1076 ; overlayable items in internal ram 
                                   1077 ;--------------------------------------------------------
                                   1078 	.area	OSEG    (OVR,DATA)
                                   1079 	.area	OSEG    (OVR,DATA)
                                   1080 	.area	OSEG    (OVR,DATA)
                                   1081 	.area	OSEG    (OVR,DATA)
                                   1082 	.area	OSEG    (OVR,DATA)
                                   1083 	.area	OSEG    (OVR,DATA)
                                   1084 	.area	OSEG    (OVR,DATA)
                                   1085 	.area	OSEG    (OVR,DATA)
                                   1086 ;--------------------------------------------------------
                                   1087 ; Stack segment in internal ram 
                                   1088 ;--------------------------------------------------------
                                   1089 	.area	SSEG
      00007F                       1090 __start__stack:
      00007F                       1091 	.ds	1
                                   1092 
                                   1093 ;--------------------------------------------------------
                                   1094 ; indirectly addressable internal ram data
                                   1095 ;--------------------------------------------------------
                                   1096 	.area ISEG    (DATA)
                                   1097 ;--------------------------------------------------------
                                   1098 ; absolute internal ram data
                                   1099 ;--------------------------------------------------------
                                   1100 	.area IABS    (ABS,DATA)
                                   1101 	.area IABS    (ABS,DATA)
                                   1102 ;--------------------------------------------------------
                                   1103 ; bit data
                                   1104 ;--------------------------------------------------------
                                   1105 	.area BSEG    (BIT)
                           000000  1106 LLAB6.main$sloc0$1$0==.
      000000                       1107 _main_sloc0_1_0:
      000000                       1108 	.ds 1
                                   1109 ;--------------------------------------------------------
                                   1110 ; paged external ram data
                                   1111 ;--------------------------------------------------------
                                   1112 	.area PSEG    (PAG,XDATA)
                                   1113 ;--------------------------------------------------------
                                   1114 ; external ram data
                                   1115 ;--------------------------------------------------------
                                   1116 	.area XSEG    (XDATA)
                           000000  1117 LLAB6.lcd_print$text$1$81==.
      000001                       1118 _lcd_print_text_1_81:
      000001                       1119 	.ds 80
                                   1120 ;--------------------------------------------------------
                                   1121 ; absolute external ram data
                                   1122 ;--------------------------------------------------------
                                   1123 	.area XABS    (ABS,XDATA)
                                   1124 ;--------------------------------------------------------
                                   1125 ; external initialized ram data
                                   1126 ;--------------------------------------------------------
                                   1127 	.area XISEG   (XDATA)
                                   1128 	.area HOME    (CODE)
                                   1129 	.area GSINIT0 (CODE)
                                   1130 	.area GSINIT1 (CODE)
                                   1131 	.area GSINIT2 (CODE)
                                   1132 	.area GSINIT3 (CODE)
                                   1133 	.area GSINIT4 (CODE)
                                   1134 	.area GSINIT5 (CODE)
                                   1135 	.area GSINIT  (CODE)
                                   1136 	.area GSFINAL (CODE)
                                   1137 	.area CSEG    (CODE)
                                   1138 ;--------------------------------------------------------
                                   1139 ; interrupt vector 
                                   1140 ;--------------------------------------------------------
                                   1141 	.area HOME    (CODE)
      000000                       1142 __interrupt_vect:
      000000 02 00 51         [24] 1143 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1144 	reti
      000004                       1145 	.ds	7
      00000B 32               [24] 1146 	reti
      00000C                       1147 	.ds	7
      000013 32               [24] 1148 	reti
      000014                       1149 	.ds	7
      00001B 32               [24] 1150 	reti
      00001C                       1151 	.ds	7
      000023 32               [24] 1152 	reti
      000024                       1153 	.ds	7
      00002B 32               [24] 1154 	reti
      00002C                       1155 	.ds	7
      000033 32               [24] 1156 	reti
      000034                       1157 	.ds	7
      00003B 32               [24] 1158 	reti
      00003C                       1159 	.ds	7
      000043 32               [24] 1160 	reti
      000044                       1161 	.ds	7
      00004B 02 0C 53         [24] 1162 	ljmp	_PCA_ISR
                                   1163 ;--------------------------------------------------------
                                   1164 ; global & static initialisations
                                   1165 ;--------------------------------------------------------
                                   1166 	.area HOME    (CODE)
                                   1167 	.area GSINIT  (CODE)
                                   1168 	.area GSFINAL (CODE)
                                   1169 	.area GSINIT  (CODE)
                                   1170 	.globl __sdcc_gsinit_startup
                                   1171 	.globl __sdcc_program_startup
                                   1172 	.globl __start__stack
                                   1173 	.globl __mcs51_genXINIT
                                   1174 	.globl __mcs51_genXRAMCLEAR
                                   1175 	.globl __mcs51_genRAMCLEAR
                           000000  1176 	C$LAB6.c$41$1$192 ==.
                                   1177 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:41: unsigned int MOTOR_STOP = 2765;
      0000AA 75 36 CD         [24] 1178 	mov	_MOTOR_STOP,#0xcd
      0000AD 75 37 0A         [24] 1179 	mov	(_MOTOR_STOP + 1),#0x0a
                           000006  1180 	C$LAB6.c$42$1$192 ==.
                                   1181 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:42: unsigned int MOTOR_MAX = 3502;
      0000B0 75 38 AE         [24] 1182 	mov	_MOTOR_MAX,#0xae
      0000B3 75 39 0D         [24] 1183 	mov	(_MOTOR_MAX + 1),#0x0d
                           00000C  1184 	C$LAB6.c$43$1$192 ==.
                                   1185 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:43: unsigned int MOTOR_MIN = 2028;
      0000B6 75 3A EC         [24] 1186 	mov	_MOTOR_MIN,#0xec
      0000B9 75 3B 07         [24] 1187 	mov	(_MOTOR_MIN + 1),#0x07
                           000012  1188 	C$LAB6.c$44$1$192 ==.
                                   1189 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:44: unsigned int TAIL_PW = 0;
      0000BC E4               [12] 1190 	clr	a
      0000BD F5 3C            [12] 1191 	mov	_TAIL_PW,a
      0000BF F5 3D            [12] 1192 	mov	(_TAIL_PW + 1),a
                           000017  1193 	C$LAB6.c$45$1$192 ==.
                                   1194 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:45: unsigned int LEFT_PW = 0;
      0000C1 F5 3E            [12] 1195 	mov	_LEFT_PW,a
      0000C3 F5 3F            [12] 1196 	mov	(_LEFT_PW + 1),a
                           00001B  1197 	C$LAB6.c$47$1$192 ==.
                                   1198 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:47: unsigned int SERVO_CENTER = 3175;
      0000C5 75 40 67         [24] 1199 	mov	_SERVO_CENTER,#0x67
      0000C8 75 41 0C         [24] 1200 	mov	(_SERVO_CENTER + 1),#0x0c
                           000021  1201 	C$LAB6.c$48$1$192 ==.
                                   1202 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:48: unsigned int SERVO_MAX = 3425;
      0000CB 75 42 61         [24] 1203 	mov	_SERVO_MAX,#0x61
      0000CE 75 43 0D         [24] 1204 	mov	(_SERVO_MAX + 1),#0x0d
                           000027  1205 	C$LAB6.c$49$1$192 ==.
                                   1206 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:49: unsigned int SERVO_MIN = 2895;
      0000D1 75 44 4F         [24] 1207 	mov	_SERVO_MIN,#0x4f
      0000D4 75 45 0B         [24] 1208 	mov	(_SERVO_MIN + 1),#0x0b
                           00002D  1209 	C$LAB6.c$50$1$192 ==.
                                   1210 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:50: unsigned int SERVO_PW = 0;
      0000D7 F5 46            [12] 1211 	mov	_SERVO_PW,a
      0000D9 F5 47            [12] 1212 	mov	(_SERVO_PW + 1),a
                           000031  1213 	C$LAB6.c$53$1$192 ==.
                                   1214 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:53: unsigned char kp = 30;                // set this value (all arbitrary)
      0000DB 75 48 1E         [24] 1215 	mov	_kp,#0x1e
                           000034  1216 	C$LAB6.c$54$1$192 ==.
                                   1217 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:54: unsigned char kd = 30;                // set this value
      0000DE 75 49 1E         [24] 1218 	mov	_kd,#0x1e
                           000037  1219 	C$LAB6.c$55$1$192 ==.
                                   1220 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:55: signed int prev_error = 20;      // set this value
      0000E1 75 4A 14         [24] 1221 	mov	_prev_error,#0x14
                                   1222 ;	1-genFromRTrack replaced	mov	(_prev_error + 1),#0x00
      0000E4 F5 4B            [12] 1223 	mov	(_prev_error + 1),a
                           00003C  1224 	C$LAB6.c$57$1$192 ==.
                                   1225 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:57: unsigned char h_switch = 0;
                                   1226 ;	1-genFromRTrack replaced	mov	_h_switch,#0x00
      0000E6 F5 4C            [12] 1227 	mov	_h_switch,a
                           00003E  1228 	C$LAB6.c$59$1$192 ==.
                                   1229 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:59: unsigned char new_heading = 0; // flag for count of compass timing
                                   1230 ;	1-genFromRTrack replaced	mov	_new_heading,#0x00
      0000E8 F5 4E            [12] 1231 	mov	_new_heading,a
                           000040  1232 	C$LAB6.c$66$1$192 ==.
                                   1233 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:66: unsigned char run_stop = 0;
                                   1234 ;	1-genFromRTrack replaced	mov	_run_stop,#0x00
      0000EA F5 5E            [12] 1235 	mov	_run_stop,a
                                   1236 	.area GSFINAL (CODE)
      0000EC 02 00 4E         [24] 1237 	ljmp	__sdcc_program_startup
                                   1238 ;--------------------------------------------------------
                                   1239 ; Home
                                   1240 ;--------------------------------------------------------
                                   1241 	.area HOME    (CODE)
                                   1242 	.area HOME    (CODE)
      00004E                       1243 __sdcc_program_startup:
      00004E 02 05 F5         [24] 1244 	ljmp	_main
                                   1245 ;	return from main will return to caller
                                   1246 ;--------------------------------------------------------
                                   1247 ; code
                                   1248 ;--------------------------------------------------------
                                   1249 	.area CSEG    (CODE)
                                   1250 ;------------------------------------------------------------
                                   1251 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1252 ;------------------------------------------------------------
                                   1253 ;i                         Allocated to registers r6 r7 
                                   1254 ;------------------------------------------------------------
                           000000  1255 	G$SYSCLK_Init$0$0 ==.
                           000000  1256 	C$c8051_SDCC.h$62$0$0 ==.
                                   1257 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function SYSCLK_Init
                                   1260 ;	-----------------------------------------
      0000EF                       1261 _SYSCLK_Init:
                           000007  1262 	ar7 = 0x07
                           000006  1263 	ar6 = 0x06
                           000005  1264 	ar5 = 0x05
                           000004  1265 	ar4 = 0x04
                           000003  1266 	ar3 = 0x03
                           000002  1267 	ar2 = 0x02
                           000001  1268 	ar1 = 0x01
                           000000  1269 	ar0 = 0x00
                           000000  1270 	C$c8051_SDCC.h$66$1$2 ==.
                                   1271 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000EF 75 B1 67         [24] 1272 	mov	_OSCXCN,#0x67
                           000003  1273 	C$c8051_SDCC.h$69$1$2 ==.
                                   1274 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000F2 7E 00            [12] 1275 	mov	r6,#0x00
      0000F4 7F 01            [12] 1276 	mov	r7,#0x01
      0000F6                       1277 00107$:
      0000F6 EE               [12] 1278 	mov	a,r6
      0000F7 24 FF            [12] 1279 	add	a,#0xff
      0000F9 FC               [12] 1280 	mov	r4,a
      0000FA EF               [12] 1281 	mov	a,r7
      0000FB 34 FF            [12] 1282 	addc	a,#0xff
      0000FD FD               [12] 1283 	mov	r5,a
      0000FE 8C 06            [24] 1284 	mov	ar6,r4
      000100 8D 07            [24] 1285 	mov	ar7,r5
      000102 EC               [12] 1286 	mov	a,r4
      000103 4D               [12] 1287 	orl	a,r5
      000104 70 F0            [24] 1288 	jnz	00107$
                           000017  1289 	C$c8051_SDCC.h$71$1$2 ==.
                                   1290 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000106                       1291 00102$:
      000106 E5 B1            [12] 1292 	mov	a,_OSCXCN
      000108 30 E7 FB         [24] 1293 	jnb	acc.7,00102$
                           00001C  1294 	C$c8051_SDCC.h$73$1$2 ==.
                                   1295 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00010B 75 B2 88         [24] 1296 	mov	_OSCICN,#0x88
                           00001F  1297 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1298 	XG$SYSCLK_Init$0$0 ==.
      00010E 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'UART0_Init'
                                   1302 ;------------------------------------------------------------
                           000020  1303 	G$UART0_Init$0$0 ==.
                           000020  1304 	C$c8051_SDCC.h$84$1$2 ==.
                                   1305 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function UART0_Init
                                   1308 ;	-----------------------------------------
      00010F                       1309 _UART0_Init:
                           000020  1310 	C$c8051_SDCC.h$86$1$4 ==.
                                   1311 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      00010F 75 98 50         [24] 1312 	mov	_SCON0,#0x50
                           000023  1313 	C$c8051_SDCC.h$87$1$4 ==.
                                   1314 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000112 75 89 20         [24] 1315 	mov	_TMOD,#0x20
                           000026  1316 	C$c8051_SDCC.h$88$1$4 ==.
                                   1317 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000115 75 8D DC         [24] 1318 	mov	_TH1,#0xdc
                           000029  1319 	C$c8051_SDCC.h$89$1$4 ==.
                                   1320 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      000118 D2 8E            [12] 1321 	setb	_TR1
                           00002B  1322 	C$c8051_SDCC.h$90$1$4 ==.
                                   1323 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00011A 43 8E 10         [24] 1324 	orl	_CKCON,#0x10
                           00002E  1325 	C$c8051_SDCC.h$91$1$4 ==.
                                   1326 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      00011D 43 87 80         [24] 1327 	orl	_PCON,#0x80
                           000031  1328 	C$c8051_SDCC.h$93$1$4 ==.
                                   1329 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000120 D2 99            [12] 1330 	setb	_TI0
                           000033  1331 	C$c8051_SDCC.h$94$1$4 ==.
                                   1332 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000122 43 A4 01         [24] 1333 	orl	_P0MDOUT,#0x01
                           000036  1334 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1335 	XG$UART0_Init$0$0 ==.
      000125 22               [24] 1336 	ret
                                   1337 ;------------------------------------------------------------
                                   1338 ;Allocation info for local variables in function 'Sys_Init'
                                   1339 ;------------------------------------------------------------
                           000037  1340 	G$Sys_Init$0$0 ==.
                           000037  1341 	C$c8051_SDCC.h$103$1$4 ==.
                                   1342 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1343 ;	-----------------------------------------
                                   1344 ;	 function Sys_Init
                                   1345 ;	-----------------------------------------
      000126                       1346 _Sys_Init:
                           000037  1347 	C$c8051_SDCC.h$105$1$6 ==.
                                   1348 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000126 75 FF DE         [24] 1349 	mov	_WDTCN,#0xde
                           00003A  1350 	C$c8051_SDCC.h$106$1$6 ==.
                                   1351 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000129 75 FF AD         [24] 1352 	mov	_WDTCN,#0xad
                           00003D  1353 	C$c8051_SDCC.h$108$1$6 ==.
                                   1354 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00012C 12 00 EF         [24] 1355 	lcall	_SYSCLK_Init
                           000040  1356 	C$c8051_SDCC.h$109$1$6 ==.
                                   1357 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00012F 12 01 0F         [24] 1358 	lcall	_UART0_Init
                           000043  1359 	C$c8051_SDCC.h$111$1$6 ==.
                                   1360 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000132 43 E1 04         [24] 1361 	orl	_XBR0,#0x04
                           000046  1362 	C$c8051_SDCC.h$112$1$6 ==.
                                   1363 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000135 43 E3 40         [24] 1364 	orl	_XBR2,#0x40
                           000049  1365 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1366 	XG$Sys_Init$0$0 ==.
      000138 22               [24] 1367 	ret
                                   1368 ;------------------------------------------------------------
                                   1369 ;Allocation info for local variables in function 'putchar'
                                   1370 ;------------------------------------------------------------
                                   1371 ;c                         Allocated to registers r7 
                                   1372 ;------------------------------------------------------------
                           00004A  1373 	G$putchar$0$0 ==.
                           00004A  1374 	C$c8051_SDCC.h$129$1$6 ==.
                                   1375 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1376 ;	-----------------------------------------
                                   1377 ;	 function putchar
                                   1378 ;	-----------------------------------------
      000139                       1379 _putchar:
      000139 AF 82            [24] 1380 	mov	r7,dpl
                           00004C  1381 	C$c8051_SDCC.h$132$1$8 ==.
                                   1382 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      00013B                       1383 00101$:
                           00004C  1384 	C$c8051_SDCC.h$133$1$8 ==.
                                   1385 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      00013B 10 99 02         [24] 1386 	jbc	_TI0,00112$
      00013E 80 FB            [24] 1387 	sjmp	00101$
      000140                       1388 00112$:
                           000051  1389 	C$c8051_SDCC.h$134$1$8 ==.
                                   1390 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      000140 8F 99            [24] 1391 	mov	_SBUF0,r7
                           000053  1392 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1393 	XG$putchar$0$0 ==.
      000142 22               [24] 1394 	ret
                                   1395 ;------------------------------------------------------------
                                   1396 ;Allocation info for local variables in function 'getchar'
                                   1397 ;------------------------------------------------------------
                                   1398 ;c                         Allocated to registers r7 
                                   1399 ;------------------------------------------------------------
                           000054  1400 	G$getchar$0$0 ==.
                           000054  1401 	C$c8051_SDCC.h$154$1$8 ==.
                                   1402 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function getchar
                                   1405 ;	-----------------------------------------
      000143                       1406 _getchar:
                           000054  1407 	C$c8051_SDCC.h$157$1$10 ==.
                                   1408 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000143                       1409 00101$:
                           000054  1410 	C$c8051_SDCC.h$158$1$10 ==.
                                   1411 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000143 10 98 02         [24] 1412 	jbc	_RI0,00112$
      000146 80 FB            [24] 1413 	sjmp	00101$
      000148                       1414 00112$:
                           000059  1415 	C$c8051_SDCC.h$159$1$10 ==.
                                   1416 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000148 AF 99            [24] 1417 	mov	r7,_SBUF0
                           00005B  1418 	C$c8051_SDCC.h$160$1$10 ==.
                                   1419 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      00014A 8F 82            [24] 1420 	mov	dpl,r7
      00014C C0 07            [24] 1421 	push	ar7
      00014E 12 01 39         [24] 1422 	lcall	_putchar
      000151 D0 07            [24] 1423 	pop	ar7
                           000064  1424 	C$c8051_SDCC.h$161$1$10 ==.
                                   1425 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000153 8F 82            [24] 1426 	mov	dpl,r7
                           000066  1427 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1428 	XG$getchar$0$0 ==.
      000155 22               [24] 1429 	ret
                                   1430 ;------------------------------------------------------------
                                   1431 ;Allocation info for local variables in function 'getchar_nw'
                                   1432 ;------------------------------------------------------------
                                   1433 ;c                         Allocated to registers 
                                   1434 ;------------------------------------------------------------
                           000067  1435 	G$getchar_nw$0$0 ==.
                           000067  1436 	C$c8051_SDCC.h$168$1$10 ==.
                                   1437 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1438 ;	-----------------------------------------
                                   1439 ;	 function getchar_nw
                                   1440 ;	-----------------------------------------
      000156                       1441 _getchar_nw:
                           000067  1442 	C$c8051_SDCC.h$171$1$12 ==.
                                   1443 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000156 20 98 05         [24] 1444 	jb	_RI0,00102$
      000159 75 82 FF         [24] 1445 	mov	dpl,#0xff
      00015C 80 0B            [24] 1446 	sjmp	00104$
      00015E                       1447 00102$:
                           00006F  1448 	C$c8051_SDCC.h$174$2$13 ==.
                                   1449 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00015E C2 98            [12] 1450 	clr	_RI0
                           000071  1451 	C$c8051_SDCC.h$175$2$13 ==.
                                   1452 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000160 85 99 82         [24] 1453 	mov	dpl,_SBUF0
                           000074  1454 	C$c8051_SDCC.h$176$2$13 ==.
                                   1455 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000163 12 01 39         [24] 1456 	lcall	_putchar
                           000077  1457 	C$c8051_SDCC.h$177$2$13 ==.
                                   1458 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000166 85 99 82         [24] 1459 	mov	dpl,_SBUF0
      000169                       1460 00104$:
                           00007A  1461 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1462 	XG$getchar_nw$0$0 ==.
      000169 22               [24] 1463 	ret
                                   1464 ;------------------------------------------------------------
                                   1465 ;Allocation info for local variables in function 'lcd_print'
                                   1466 ;------------------------------------------------------------
                                   1467 ;fmt                       Allocated to stack - _bp -5
                                   1468 ;len                       Allocated to registers r6 
                                   1469 ;i                         Allocated to registers 
                                   1470 ;ap                        Allocated to registers 
                                   1471 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1472 ;------------------------------------------------------------
                           00007B  1473 	G$lcd_print$0$0 ==.
                           00007B  1474 	C$i2c.h$84$1$12 ==.
                                   1475 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function lcd_print
                                   1478 ;	-----------------------------------------
      00016A                       1479 _lcd_print:
      00016A C0 0F            [24] 1480 	push	_bp
      00016C 85 81 0F         [24] 1481 	mov	_bp,sp
                           000080  1482 	C$i2c.h$90$1$81 ==.
                                   1483 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00016F E5 0F            [12] 1484 	mov	a,_bp
      000171 24 FB            [12] 1485 	add	a,#0xfb
      000173 F8               [12] 1486 	mov	r0,a
      000174 86 82            [24] 1487 	mov	dpl,@r0
      000176 08               [12] 1488 	inc	r0
      000177 86 83            [24] 1489 	mov	dph,@r0
      000179 08               [12] 1490 	inc	r0
      00017A 86 F0            [24] 1491 	mov	b,@r0
      00017C 12 14 93         [24] 1492 	lcall	_strlen
      00017F E5 82            [12] 1493 	mov	a,dpl
      000181 85 83 F0         [24] 1494 	mov	b,dph
      000184 45 F0            [12] 1495 	orl	a,b
      000186 70 02            [24] 1496 	jnz	00102$
      000188 80 62            [24] 1497 	sjmp	00109$
      00018A                       1498 00102$:
                           00009B  1499 	C$i2c.h$92$2$82 ==.
                                   1500 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      00018A E5 0F            [12] 1501 	mov	a,_bp
      00018C 24 FB            [12] 1502 	add	a,#0xfb
      00018E FF               [12] 1503 	mov	r7,a
      00018F 8F 0B            [24] 1504 	mov	_vsprintf_PARM_3,r7
                           0000A2  1505 	C$i2c.h$93$1$81 ==.
                                   1506 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      000191 E5 0F            [12] 1507 	mov	a,_bp
      000193 24 FB            [12] 1508 	add	a,#0xfb
      000195 F8               [12] 1509 	mov	r0,a
      000196 86 08            [24] 1510 	mov	_vsprintf_PARM_2,@r0
      000198 08               [12] 1511 	inc	r0
      000199 86 09            [24] 1512 	mov	(_vsprintf_PARM_2 + 1),@r0
      00019B 08               [12] 1513 	inc	r0
      00019C 86 0A            [24] 1514 	mov	(_vsprintf_PARM_2 + 2),@r0
      00019E 90 00 01         [24] 1515 	mov	dptr,#_lcd_print_text_1_81
      0001A1 75 F0 00         [24] 1516 	mov	b,#0x00
      0001A4 12 0D 93         [24] 1517 	lcall	_vsprintf
                           0000B8  1518 	C$i2c.h$96$1$81 ==.
                                   1519 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      0001A7 90 00 01         [24] 1520 	mov	dptr,#_lcd_print_text_1_81
      0001AA 75 F0 00         [24] 1521 	mov	b,#0x00
      0001AD 12 14 93         [24] 1522 	lcall	_strlen
      0001B0 AE 82            [24] 1523 	mov	r6,dpl
                           0000C3  1524 	C$i2c.h$97$1$81 ==.
                                   1525 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001B2 7F 00            [12] 1526 	mov	r7,#0x00
      0001B4                       1527 00107$:
      0001B4 C3               [12] 1528 	clr	c
      0001B5 EF               [12] 1529 	mov	a,r7
      0001B6 9E               [12] 1530 	subb	a,r6
      0001B7 50 1F            [24] 1531 	jnc	00105$
                           0000CA  1532 	C$i2c.h$99$2$84 ==.
                                   1533 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      0001B9 EF               [12] 1534 	mov	a,r7
      0001BA 24 01            [12] 1535 	add	a,#_lcd_print_text_1_81
      0001BC F5 82            [12] 1536 	mov	dpl,a
      0001BE E4               [12] 1537 	clr	a
      0001BF 34 00            [12] 1538 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001C1 F5 83            [12] 1539 	mov	dph,a
      0001C3 E0               [24] 1540 	movx	a,@dptr
      0001C4 FD               [12] 1541 	mov	r5,a
      0001C5 BD 0A 0D         [24] 1542 	cjne	r5,#0x0a,00108$
      0001C8 EF               [12] 1543 	mov	a,r7
      0001C9 24 01            [12] 1544 	add	a,#_lcd_print_text_1_81
      0001CB F5 82            [12] 1545 	mov	dpl,a
      0001CD E4               [12] 1546 	clr	a
      0001CE 34 00            [12] 1547 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001D0 F5 83            [12] 1548 	mov	dph,a
      0001D2 74 0D            [12] 1549 	mov	a,#0x0d
      0001D4 F0               [24] 1550 	movx	@dptr,a
      0001D5                       1551 00108$:
                           0000E6  1552 	C$i2c.h$97$1$81 ==.
                                   1553 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001D5 0F               [12] 1554 	inc	r7
      0001D6 80 DC            [24] 1555 	sjmp	00107$
      0001D8                       1556 00105$:
                           0000E9  1557 	C$i2c.h$102$1$81 ==.
                                   1558 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001D8 75 2D 01         [24] 1559 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001DB 75 2E 00         [24] 1560 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001DE 75 2F 00         [24] 1561 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001E1 75 2C 00         [24] 1562 	mov	_i2c_write_data_PARM_2,#0x00
      0001E4 8E 30            [24] 1563 	mov	_i2c_write_data_PARM_4,r6
      0001E6 75 82 C6         [24] 1564 	mov	dpl,#0xc6
      0001E9 12 04 7B         [24] 1565 	lcall	_i2c_write_data
      0001EC                       1566 00109$:
      0001EC D0 0F            [24] 1567 	pop	_bp
                           0000FF  1568 	C$i2c.h$103$1$81 ==.
                           0000FF  1569 	XG$lcd_print$0$0 ==.
      0001EE 22               [24] 1570 	ret
                                   1571 ;------------------------------------------------------------
                                   1572 ;Allocation info for local variables in function 'lcd_clear'
                                   1573 ;------------------------------------------------------------
                                   1574 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1575 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1576 ;------------------------------------------------------------
                           000100  1577 	G$lcd_clear$0$0 ==.
                           000100  1578 	C$i2c.h$106$1$81 ==.
                                   1579 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1580 ;	-----------------------------------------
                                   1581 ;	 function lcd_clear
                                   1582 ;	-----------------------------------------
      0001EF                       1583 _lcd_clear:
                           000100  1584 	C$i2c.h$108$1$81 ==.
                                   1585 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001EF 75 27 00         [24] 1586 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1587 	C$i2c.h$110$1$85 ==.
                                   1588 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001F2                       1589 00101$:
      0001F2 74 C0            [12] 1590 	mov	a,#0x100 - 0x40
      0001F4 25 27            [12] 1591 	add	a,_lcd_clear_NumBytes_1_85
      0001F6 40 17            [24] 1592 	jc	00103$
      0001F8 75 32 27         [24] 1593 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001FB 75 33 00         [24] 1594 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001FE 75 34 40         [24] 1595 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000201 75 31 00         [24] 1596 	mov	_i2c_read_data_PARM_2,#0x00
      000204 75 35 01         [24] 1597 	mov	_i2c_read_data_PARM_4,#0x01
      000207 75 82 C6         [24] 1598 	mov	dpl,#0xc6
      00020A 12 04 F5         [24] 1599 	lcall	_i2c_read_data
      00020D 80 E3            [24] 1600 	sjmp	00101$
      00020F                       1601 00103$:
                           000120  1602 	C$i2c.h$112$1$85 ==.
                                   1603 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      00020F 75 28 0C         [24] 1604 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1605 	C$i2c.h$113$1$85 ==.
                                   1606 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      000212 75 2D 28         [24] 1607 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      000215 75 2E 00         [24] 1608 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000218 75 2F 40         [24] 1609 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00021B 75 2C 00         [24] 1610 	mov	_i2c_write_data_PARM_2,#0x00
      00021E 75 30 01         [24] 1611 	mov	_i2c_write_data_PARM_4,#0x01
      000221 75 82 C6         [24] 1612 	mov	dpl,#0xc6
      000224 12 04 7B         [24] 1613 	lcall	_i2c_write_data
                           000138  1614 	C$i2c.h$114$1$85 ==.
                           000138  1615 	XG$lcd_clear$0$0 ==.
      000227 22               [24] 1616 	ret
                                   1617 ;------------------------------------------------------------
                                   1618 ;Allocation info for local variables in function 'read_keypad'
                                   1619 ;------------------------------------------------------------
                                   1620 ;i                         Allocated to registers r7 
                                   1621 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1622 ;------------------------------------------------------------
                           000139  1623 	G$read_keypad$0$0 ==.
                           000139  1624 	C$i2c.h$117$1$85 ==.
                                   1625 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1626 ;	-----------------------------------------
                                   1627 ;	 function read_keypad
                                   1628 ;	-----------------------------------------
      000228                       1629 _read_keypad:
                           000139  1630 	C$i2c.h$121$1$86 ==.
                                   1631 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000228 75 32 2A         [24] 1632 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      00022B 75 33 00         [24] 1633 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      00022E 75 34 40         [24] 1634 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000231 75 31 01         [24] 1635 	mov	_i2c_read_data_PARM_2,#0x01
      000234 75 35 02         [24] 1636 	mov	_i2c_read_data_PARM_4,#0x02
      000237 75 82 C6         [24] 1637 	mov	dpl,#0xc6
      00023A 12 04 F5         [24] 1638 	lcall	_i2c_read_data
                           00014E  1639 	C$i2c.h$122$1$86 ==.
                                   1640 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      00023D 74 FF            [12] 1641 	mov	a,#0xff
      00023F B5 2A 05         [24] 1642 	cjne	a,_read_keypad_Data_1_86,00102$
      000242 75 82 00         [24] 1643 	mov	dpl,#0x00
      000245 80 5F            [24] 1644 	sjmp	00116$
      000247                       1645 00102$:
                           000158  1646 	C$i2c.h$124$1$86 ==.
                                   1647 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000247 7F 00            [12] 1648 	mov	r7,#0x00
      000249 8F 06            [24] 1649 	mov	ar6,r7
      00024B                       1650 00114$:
                           00015C  1651 	C$i2c.h$126$2$87 ==.
                                   1652 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      00024B 8E F0            [24] 1653 	mov	b,r6
      00024D 05 F0            [12] 1654 	inc	b
      00024F 7C 01            [12] 1655 	mov	r4,#0x01
      000251 7D 00            [12] 1656 	mov	r5,#0x00
      000253 80 06            [24] 1657 	sjmp	00145$
      000255                       1658 00144$:
      000255 EC               [12] 1659 	mov	a,r4
      000256 2C               [12] 1660 	add	a,r4
      000257 FC               [12] 1661 	mov	r4,a
      000258 ED               [12] 1662 	mov	a,r5
      000259 33               [12] 1663 	rlc	a
      00025A FD               [12] 1664 	mov	r5,a
      00025B                       1665 00145$:
      00025B D5 F0 F7         [24] 1666 	djnz	b,00144$
      00025E AA 2A            [24] 1667 	mov	r2,_read_keypad_Data_1_86
      000260 7B 00            [12] 1668 	mov	r3,#0x00
      000262 EA               [12] 1669 	mov	a,r2
      000263 52 04            [12] 1670 	anl	ar4,a
      000265 EB               [12] 1671 	mov	a,r3
      000266 52 05            [12] 1672 	anl	ar5,a
      000268 EC               [12] 1673 	mov	a,r4
      000269 4D               [12] 1674 	orl	a,r5
      00026A 60 07            [24] 1675 	jz	00115$
                           00017D  1676 	C$i2c.h$127$2$87 ==.
                                   1677 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      00026C 74 31            [12] 1678 	mov	a,#0x31
      00026E 2F               [12] 1679 	add	a,r7
      00026F F5 82            [12] 1680 	mov	dpl,a
      000271 80 33            [24] 1681 	sjmp	00116$
      000273                       1682 00115$:
                           000184  1683 	C$i2c.h$124$1$86 ==.
                                   1684 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000273 0E               [12] 1685 	inc	r6
      000274 8E 07            [24] 1686 	mov	ar7,r6
      000276 BE 08 00         [24] 1687 	cjne	r6,#0x08,00147$
      000279                       1688 00147$:
      000279 40 D0            [24] 1689 	jc	00114$
                           00018C  1690 	C$i2c.h$130$1$86 ==.
                                   1691 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      00027B E5 2B            [12] 1692 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00027D 30 E0 05         [24] 1693 	jnb	acc.0,00107$
      000280 75 82 39         [24] 1694 	mov	dpl,#0x39
      000283 80 21            [24] 1695 	sjmp	00116$
      000285                       1696 00107$:
                           000196  1697 	C$i2c.h$132$1$86 ==.
                                   1698 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000285 E5 2B            [12] 1699 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000287 30 E1 05         [24] 1700 	jnb	acc.1,00109$
      00028A 75 82 2A         [24] 1701 	mov	dpl,#0x2a
      00028D 80 17            [24] 1702 	sjmp	00116$
      00028F                       1703 00109$:
                           0001A0  1704 	C$i2c.h$134$1$86 ==.
                                   1705 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00028F E5 2B            [12] 1706 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000291 30 E2 05         [24] 1707 	jnb	acc.2,00111$
      000294 75 82 30         [24] 1708 	mov	dpl,#0x30
      000297 80 0D            [24] 1709 	sjmp	00116$
      000299                       1710 00111$:
                           0001AA  1711 	C$i2c.h$136$1$86 ==.
                                   1712 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000299 E5 2B            [12] 1713 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00029B 30 E3 05         [24] 1714 	jnb	acc.3,00113$
      00029E 75 82 23         [24] 1715 	mov	dpl,#0x23
      0002A1 80 03            [24] 1716 	sjmp	00116$
      0002A3                       1717 00113$:
                           0001B4  1718 	C$i2c.h$138$1$86 ==.
                                   1719 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      0002A3 75 82 FF         [24] 1720 	mov	dpl,#0xff
      0002A6                       1721 00116$:
                           0001B7  1722 	C$i2c.h$139$1$86 ==.
                           0001B7  1723 	XG$read_keypad$0$0 ==.
      0002A6 22               [24] 1724 	ret
                                   1725 ;------------------------------------------------------------
                                   1726 ;Allocation info for local variables in function 'kpd_input'
                                   1727 ;------------------------------------------------------------
                                   1728 ;mode                      Allocated to registers r7 
                                   1729 ;sum                       Allocated to registers r5 r6 
                                   1730 ;key                       Allocated to registers r3 
                                   1731 ;i                         Allocated to registers 
                                   1732 ;------------------------------------------------------------
                           0001B8  1733 	G$kpd_input$0$0 ==.
                           0001B8  1734 	C$i2c.h$151$1$86 ==.
                                   1735 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1736 ;	-----------------------------------------
                                   1737 ;	 function kpd_input
                                   1738 ;	-----------------------------------------
      0002A7                       1739 _kpd_input:
      0002A7 AF 82            [24] 1740 	mov	r7,dpl
                           0001BA  1741 	C$i2c.h$156$1$89 ==.
                                   1742 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1743 	C$i2c.h$159$1$89 ==.
                                   1744 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      0002A9 E4               [12] 1745 	clr	a
      0002AA FD               [12] 1746 	mov	r5,a
      0002AB FE               [12] 1747 	mov	r6,a
      0002AC EF               [12] 1748 	mov	a,r7
      0002AD 70 1D            [24] 1749 	jnz	00102$
      0002AF C0 06            [24] 1750 	push	ar6
      0002B1 C0 05            [24] 1751 	push	ar5
      0002B3 74 CB            [12] 1752 	mov	a,#___str_0
      0002B5 C0 E0            [24] 1753 	push	acc
      0002B7 74 14            [12] 1754 	mov	a,#(___str_0 >> 8)
      0002B9 C0 E0            [24] 1755 	push	acc
      0002BB 74 80            [12] 1756 	mov	a,#0x80
      0002BD C0 E0            [24] 1757 	push	acc
      0002BF 12 01 6A         [24] 1758 	lcall	_lcd_print
      0002C2 15 81            [12] 1759 	dec	sp
      0002C4 15 81            [12] 1760 	dec	sp
      0002C6 15 81            [12] 1761 	dec	sp
      0002C8 D0 05            [24] 1762 	pop	ar5
      0002CA D0 06            [24] 1763 	pop	ar6
      0002CC                       1764 00102$:
                           0001DD  1765 	C$i2c.h$161$1$89 ==.
                                   1766 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002CC C0 06            [24] 1767 	push	ar6
      0002CE C0 05            [24] 1768 	push	ar5
      0002D0 74 08            [12] 1769 	mov	a,#0x08
      0002D2 C0 E0            [24] 1770 	push	acc
      0002D4 E4               [12] 1771 	clr	a
      0002D5 C0 E0            [24] 1772 	push	acc
      0002D7 74 08            [12] 1773 	mov	a,#0x08
      0002D9 C0 E0            [24] 1774 	push	acc
      0002DB E4               [12] 1775 	clr	a
      0002DC C0 E0            [24] 1776 	push	acc
      0002DE 74 08            [12] 1777 	mov	a,#0x08
      0002E0 C0 E0            [24] 1778 	push	acc
      0002E2 E4               [12] 1779 	clr	a
      0002E3 C0 E0            [24] 1780 	push	acc
      0002E5 74 08            [12] 1781 	mov	a,#0x08
      0002E7 C0 E0            [24] 1782 	push	acc
      0002E9 E4               [12] 1783 	clr	a
      0002EA C0 E0            [24] 1784 	push	acc
      0002EC 74 08            [12] 1785 	mov	a,#0x08
      0002EE C0 E0            [24] 1786 	push	acc
      0002F0 E4               [12] 1787 	clr	a
      0002F1 C0 E0            [24] 1788 	push	acc
      0002F3 74 E1            [12] 1789 	mov	a,#___str_1
      0002F5 C0 E0            [24] 1790 	push	acc
      0002F7 74 14            [12] 1791 	mov	a,#(___str_1 >> 8)
      0002F9 C0 E0            [24] 1792 	push	acc
      0002FB 74 80            [12] 1793 	mov	a,#0x80
      0002FD C0 E0            [24] 1794 	push	acc
      0002FF 12 01 6A         [24] 1795 	lcall	_lcd_print
      000302 E5 81            [12] 1796 	mov	a,sp
      000304 24 F3            [12] 1797 	add	a,#0xf3
      000306 F5 81            [12] 1798 	mov	sp,a
                           000219  1799 	C$i2c.h$163$1$89 ==.
                                   1800 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      000308 90 A1 20         [24] 1801 	mov	dptr,#0xa120
      00030B 75 F0 07         [24] 1802 	mov	b,#0x07
      00030E E4               [12] 1803 	clr	a
      00030F 12 04 16         [24] 1804 	lcall	_delay_time
      000312 D0 05            [24] 1805 	pop	ar5
      000314 D0 06            [24] 1806 	pop	ar6
                           000227  1807 	C$i2c.h$167$1$89 ==.
                                   1808 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000316 7F 00            [12] 1809 	mov	r7,#0x00
                           000229  1810 	C$i2c.h$169$3$92 ==.
                                   1811 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      000318                       1812 00104$:
      000318 C0 07            [24] 1813 	push	ar7
      00031A C0 06            [24] 1814 	push	ar6
      00031C C0 05            [24] 1815 	push	ar5
      00031E 12 02 28         [24] 1816 	lcall	_read_keypad
      000321 AC 82            [24] 1817 	mov	r4,dpl
      000323 D0 05            [24] 1818 	pop	ar5
      000325 D0 06            [24] 1819 	pop	ar6
      000327 D0 07            [24] 1820 	pop	ar7
      000329 8C 03            [24] 1821 	mov	ar3,r4
      00032B BC FF 02         [24] 1822 	cjne	r4,#0xff,00146$
      00032E 80 03            [24] 1823 	sjmp	00105$
      000330                       1824 00146$:
      000330 BB 2A 17         [24] 1825 	cjne	r3,#0x2a,00106$
      000333                       1826 00105$:
      000333 90 27 10         [24] 1827 	mov	dptr,#0x2710
      000336 E4               [12] 1828 	clr	a
      000337 F5 F0            [12] 1829 	mov	b,a
      000339 C0 07            [24] 1830 	push	ar7
      00033B C0 06            [24] 1831 	push	ar6
      00033D C0 05            [24] 1832 	push	ar5
      00033F 12 04 16         [24] 1833 	lcall	_delay_time
      000342 D0 05            [24] 1834 	pop	ar5
      000344 D0 06            [24] 1835 	pop	ar6
      000346 D0 07            [24] 1836 	pop	ar7
      000348 80 CE            [24] 1837 	sjmp	00104$
      00034A                       1838 00106$:
                           00025B  1839 	C$i2c.h$170$2$90 ==.
                                   1840 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      00034A BB 23 2A         [24] 1841 	cjne	r3,#0x23,00114$
                           00025E  1842 	C$i2c.h$172$3$91 ==.
                                   1843 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      00034D                       1844 00107$:
      00034D C0 06            [24] 1845 	push	ar6
      00034F C0 05            [24] 1846 	push	ar5
      000351 12 02 28         [24] 1847 	lcall	_read_keypad
      000354 AC 82            [24] 1848 	mov	r4,dpl
      000356 D0 05            [24] 1849 	pop	ar5
      000358 D0 06            [24] 1850 	pop	ar6
      00035A BC 23 13         [24] 1851 	cjne	r4,#0x23,00109$
      00035D 90 27 10         [24] 1852 	mov	dptr,#0x2710
      000360 E4               [12] 1853 	clr	a
      000361 F5 F0            [12] 1854 	mov	b,a
      000363 C0 06            [24] 1855 	push	ar6
      000365 C0 05            [24] 1856 	push	ar5
      000367 12 04 16         [24] 1857 	lcall	_delay_time
      00036A D0 05            [24] 1858 	pop	ar5
      00036C D0 06            [24] 1859 	pop	ar6
      00036E 80 DD            [24] 1860 	sjmp	00107$
      000370                       1861 00109$:
                           000281  1862 	C$i2c.h$173$3$91 ==.
                                   1863 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      000370 8D 82            [24] 1864 	mov	dpl,r5
      000372 8E 83            [24] 1865 	mov	dph,r6
      000374 02 04 15         [24] 1866 	ljmp	00119$
      000377                       1867 00114$:
                           000288  1868 	C$i2c.h$177$3$92 ==.
                                   1869 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000377 8B 02            [24] 1870 	mov	ar2,r3
      000379 7C 00            [12] 1871 	mov	r4,#0x00
      00037B C0 07            [24] 1872 	push	ar7
      00037D C0 06            [24] 1873 	push	ar6
      00037F C0 05            [24] 1874 	push	ar5
      000381 C0 04            [24] 1875 	push	ar4
      000383 C0 03            [24] 1876 	push	ar3
      000385 C0 02            [24] 1877 	push	ar2
      000387 C0 02            [24] 1878 	push	ar2
      000389 C0 04            [24] 1879 	push	ar4
      00038B 74 F1            [12] 1880 	mov	a,#___str_2
      00038D C0 E0            [24] 1881 	push	acc
      00038F 74 14            [12] 1882 	mov	a,#(___str_2 >> 8)
      000391 C0 E0            [24] 1883 	push	acc
      000393 74 80            [12] 1884 	mov	a,#0x80
      000395 C0 E0            [24] 1885 	push	acc
      000397 12 01 6A         [24] 1886 	lcall	_lcd_print
      00039A E5 81            [12] 1887 	mov	a,sp
      00039C 24 FB            [12] 1888 	add	a,#0xfb
      00039E F5 81            [12] 1889 	mov	sp,a
      0003A0 D0 02            [24] 1890 	pop	ar2
      0003A2 D0 03            [24] 1891 	pop	ar3
      0003A4 D0 04            [24] 1892 	pop	ar4
      0003A6 D0 05            [24] 1893 	pop	ar5
      0003A8 D0 06            [24] 1894 	pop	ar6
                           0002BB  1895 	C$i2c.h$178$1$89 ==.
                                   1896 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      0003AA 8D 11            [24] 1897 	mov	__mulint_PARM_2,r5
      0003AC 8E 12            [24] 1898 	mov	(__mulint_PARM_2 + 1),r6
      0003AE 90 00 0A         [24] 1899 	mov	dptr,#0x000a
      0003B1 C0 04            [24] 1900 	push	ar4
      0003B3 C0 03            [24] 1901 	push	ar3
      0003B5 C0 02            [24] 1902 	push	ar2
      0003B7 12 0D 06         [24] 1903 	lcall	__mulint
      0003BA A8 82            [24] 1904 	mov	r0,dpl
      0003BC A9 83            [24] 1905 	mov	r1,dph
      0003BE D0 02            [24] 1906 	pop	ar2
      0003C0 D0 03            [24] 1907 	pop	ar3
      0003C2 D0 04            [24] 1908 	pop	ar4
      0003C4 D0 07            [24] 1909 	pop	ar7
      0003C6 EA               [12] 1910 	mov	a,r2
      0003C7 28               [12] 1911 	add	a,r0
      0003C8 F8               [12] 1912 	mov	r0,a
      0003C9 EC               [12] 1913 	mov	a,r4
      0003CA 39               [12] 1914 	addc	a,r1
      0003CB F9               [12] 1915 	mov	r1,a
      0003CC E8               [12] 1916 	mov	a,r0
      0003CD 24 D0            [12] 1917 	add	a,#0xd0
      0003CF FD               [12] 1918 	mov	r5,a
      0003D0 E9               [12] 1919 	mov	a,r1
      0003D1 34 FF            [12] 1920 	addc	a,#0xff
      0003D3 FE               [12] 1921 	mov	r6,a
                           0002E5  1922 	C$i2c.h$179$3$92 ==.
                                   1923 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003D4                       1924 00110$:
      0003D4 C0 07            [24] 1925 	push	ar7
      0003D6 C0 06            [24] 1926 	push	ar6
      0003D8 C0 05            [24] 1927 	push	ar5
      0003DA C0 03            [24] 1928 	push	ar3
      0003DC 12 02 28         [24] 1929 	lcall	_read_keypad
      0003DF AC 82            [24] 1930 	mov	r4,dpl
      0003E1 D0 03            [24] 1931 	pop	ar3
      0003E3 D0 05            [24] 1932 	pop	ar5
      0003E5 D0 06            [24] 1933 	pop	ar6
      0003E7 D0 07            [24] 1934 	pop	ar7
      0003E9 EC               [12] 1935 	mov	a,r4
      0003EA B5 03 1B         [24] 1936 	cjne	a,ar3,00118$
      0003ED 90 27 10         [24] 1937 	mov	dptr,#0x2710
      0003F0 E4               [12] 1938 	clr	a
      0003F1 F5 F0            [12] 1939 	mov	b,a
      0003F3 C0 07            [24] 1940 	push	ar7
      0003F5 C0 06            [24] 1941 	push	ar6
      0003F7 C0 05            [24] 1942 	push	ar5
      0003F9 C0 03            [24] 1943 	push	ar3
      0003FB 12 04 16         [24] 1944 	lcall	_delay_time
      0003FE D0 03            [24] 1945 	pop	ar3
      000400 D0 05            [24] 1946 	pop	ar5
      000402 D0 06            [24] 1947 	pop	ar6
      000404 D0 07            [24] 1948 	pop	ar7
      000406 80 CC            [24] 1949 	sjmp	00110$
      000408                       1950 00118$:
                           000319  1951 	C$i2c.h$167$1$89 ==.
                                   1952 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000408 0F               [12] 1953 	inc	r7
      000409 BF 05 00         [24] 1954 	cjne	r7,#0x05,00155$
      00040C                       1955 00155$:
      00040C 50 03            [24] 1956 	jnc	00156$
      00040E 02 03 18         [24] 1957 	ljmp	00104$
      000411                       1958 00156$:
                           000322  1959 	C$i2c.h$182$1$89 ==.
                                   1960 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      000411 8D 82            [24] 1961 	mov	dpl,r5
      000413 8E 83            [24] 1962 	mov	dph,r6
      000415                       1963 00119$:
                           000326  1964 	C$i2c.h$183$1$89 ==.
                           000326  1965 	XG$kpd_input$0$0 ==.
      000415 22               [24] 1966 	ret
                                   1967 ;------------------------------------------------------------
                                   1968 ;Allocation info for local variables in function 'delay_time'
                                   1969 ;------------------------------------------------------------
                                   1970 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1971 ;index                     Allocated to registers 
                                   1972 ;------------------------------------------------------------
                           000327  1973 	G$delay_time$0$0 ==.
                           000327  1974 	C$i2c.h$192$1$89 ==.
                                   1975 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1976 ;	-----------------------------------------
                                   1977 ;	 function delay_time
                                   1978 ;	-----------------------------------------
      000416                       1979 _delay_time:
      000416 AC 82            [24] 1980 	mov	r4,dpl
      000418 AD 83            [24] 1981 	mov	r5,dph
      00041A AE F0            [24] 1982 	mov	r6,b
      00041C FF               [12] 1983 	mov	r7,a
                           00032E  1984 	C$i2c.h$196$1$94 ==.
                                   1985 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      00041D 78 00            [12] 1986 	mov	r0,#0x00
      00041F 79 00            [12] 1987 	mov	r1,#0x00
      000421 7A 00            [12] 1988 	mov	r2,#0x00
      000423 7B 00            [12] 1989 	mov	r3,#0x00
      000425                       1990 00103$:
      000425 C3               [12] 1991 	clr	c
      000426 E8               [12] 1992 	mov	a,r0
      000427 9C               [12] 1993 	subb	a,r4
      000428 E9               [12] 1994 	mov	a,r1
      000429 9D               [12] 1995 	subb	a,r5
      00042A EA               [12] 1996 	mov	a,r2
      00042B 9E               [12] 1997 	subb	a,r6
      00042C EB               [12] 1998 	mov	a,r3
      00042D 9F               [12] 1999 	subb	a,r7
      00042E 50 0F            [24] 2000 	jnc	00105$
      000430 08               [12] 2001 	inc	r0
      000431 B8 00 09         [24] 2002 	cjne	r0,#0x00,00115$
      000434 09               [12] 2003 	inc	r1
      000435 B9 00 05         [24] 2004 	cjne	r1,#0x00,00115$
      000438 0A               [12] 2005 	inc	r2
      000439 BA 00 E9         [24] 2006 	cjne	r2,#0x00,00103$
      00043C 0B               [12] 2007 	inc	r3
      00043D                       2008 00115$:
      00043D 80 E6            [24] 2009 	sjmp	00103$
      00043F                       2010 00105$:
                           000350  2011 	C$i2c.h$197$1$94 ==.
                           000350  2012 	XG$delay_time$0$0 ==.
      00043F 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'i2c_start'
                                   2016 ;------------------------------------------------------------
                           000351  2017 	G$i2c_start$0$0 ==.
                           000351  2018 	C$i2c.h$200$1$94 ==.
                                   2019 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   2020 ;	-----------------------------------------
                                   2021 ;	 function i2c_start
                                   2022 ;	-----------------------------------------
      000440                       2023 _i2c_start:
                           000351  2024 	C$i2c.h$202$1$96 ==.
                                   2025 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      000440                       2026 00101$:
      000440 20 C7 FD         [24] 2027 	jb	_BUSY,00101$
                           000354  2028 	C$i2c.h$203$1$96 ==.
                                   2029 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000443 D2 C5            [12] 2030 	setb	_STA
                           000356  2031 	C$i2c.h$204$1$96 ==.
                                   2032 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000445                       2033 00104$:
      000445 30 C3 FD         [24] 2034 	jnb	_SI,00104$
                           000359  2035 	C$i2c.h$205$1$96 ==.
                                   2036 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000448 C2 C5            [12] 2037 	clr	_STA
                           00035B  2038 	C$i2c.h$206$1$96 ==.
                                   2039 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      00044A C2 C3            [12] 2040 	clr	_SI
                           00035D  2041 	C$i2c.h$207$1$96 ==.
                           00035D  2042 	XG$i2c_start$0$0 ==.
      00044C 22               [24] 2043 	ret
                                   2044 ;------------------------------------------------------------
                                   2045 ;Allocation info for local variables in function 'i2c_write'
                                   2046 ;------------------------------------------------------------
                                   2047 ;output_data               Allocated to registers 
                                   2048 ;------------------------------------------------------------
                           00035E  2049 	G$i2c_write$0$0 ==.
                           00035E  2050 	C$i2c.h$210$1$96 ==.
                                   2051 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   2052 ;	-----------------------------------------
                                   2053 ;	 function i2c_write
                                   2054 ;	-----------------------------------------
      00044D                       2055 _i2c_write:
      00044D 85 82 C2         [24] 2056 	mov	_SMB0DAT,dpl
                           000361  2057 	C$i2c.h$213$1$98 ==.
                                   2058 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      000450                       2059 00101$:
                           000361  2060 	C$i2c.h$214$1$98 ==.
                                   2061 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      000450 10 C3 02         [24] 2062 	jbc	_SI,00112$
      000453 80 FB            [24] 2063 	sjmp	00101$
      000455                       2064 00112$:
                           000366  2065 	C$i2c.h$215$1$98 ==.
                           000366  2066 	XG$i2c_write$0$0 ==.
      000455 22               [24] 2067 	ret
                                   2068 ;------------------------------------------------------------
                                   2069 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   2070 ;------------------------------------------------------------
                                   2071 ;output_data               Allocated to registers 
                                   2072 ;------------------------------------------------------------
                           000367  2073 	G$i2c_write_and_stop$0$0 ==.
                           000367  2074 	C$i2c.h$218$1$98 ==.
                                   2075 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   2076 ;	-----------------------------------------
                                   2077 ;	 function i2c_write_and_stop
                                   2078 ;	-----------------------------------------
      000456                       2079 _i2c_write_and_stop:
      000456 85 82 C2         [24] 2080 	mov	_SMB0DAT,dpl
                           00036A  2081 	C$i2c.h$221$1$100 ==.
                                   2082 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000459 D2 C4            [12] 2083 	setb	_STO
                           00036C  2084 	C$i2c.h$222$1$100 ==.
                                   2085 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      00045B                       2086 00101$:
                           00036C  2087 	C$i2c.h$223$1$100 ==.
                                   2088 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      00045B 10 C3 02         [24] 2089 	jbc	_SI,00112$
      00045E 80 FB            [24] 2090 	sjmp	00101$
      000460                       2091 00112$:
                           000371  2092 	C$i2c.h$224$1$100 ==.
                           000371  2093 	XG$i2c_write_and_stop$0$0 ==.
      000460 22               [24] 2094 	ret
                                   2095 ;------------------------------------------------------------
                                   2096 ;Allocation info for local variables in function 'i2c_read'
                                   2097 ;------------------------------------------------------------
                                   2098 ;input_data                Allocated to registers 
                                   2099 ;------------------------------------------------------------
                           000372  2100 	G$i2c_read$0$0 ==.
                           000372  2101 	C$i2c.h$227$1$100 ==.
                                   2102 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   2103 ;	-----------------------------------------
                                   2104 ;	 function i2c_read
                                   2105 ;	-----------------------------------------
      000461                       2106 _i2c_read:
                           000372  2107 	C$i2c.h$231$1$102 ==.
                                   2108 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      000461                       2109 00101$:
      000461 30 C3 FD         [24] 2110 	jnb	_SI,00101$
                           000375  2111 	C$i2c.h$232$1$102 ==.
                                   2112 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000464 85 C2 82         [24] 2113 	mov	dpl,_SMB0DAT
                           000378  2114 	C$i2c.h$233$1$102 ==.
                                   2115 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000467 C2 C3            [12] 2116 	clr	_SI
                           00037A  2117 	C$i2c.h$234$1$102 ==.
                                   2118 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2119 	C$i2c.h$235$1$102 ==.
                           00037A  2120 	XG$i2c_read$0$0 ==.
      000469 22               [24] 2121 	ret
                                   2122 ;------------------------------------------------------------
                                   2123 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2124 ;------------------------------------------------------------
                                   2125 ;input_data                Allocated to registers r7 
                                   2126 ;------------------------------------------------------------
                           00037B  2127 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2128 	C$i2c.h$238$1$102 ==.
                                   2129 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2130 ;	-----------------------------------------
                                   2131 ;	 function i2c_read_and_stop
                                   2132 ;	-----------------------------------------
      00046A                       2133 _i2c_read_and_stop:
                           00037B  2134 	C$i2c.h$242$1$104 ==.
                                   2135 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      00046A                       2136 00101$:
      00046A 30 C3 FD         [24] 2137 	jnb	_SI,00101$
                           00037E  2138 	C$i2c.h$243$1$104 ==.
                                   2139 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      00046D AF C2            [24] 2140 	mov	r7,_SMB0DAT
                           000380  2141 	C$i2c.h$244$1$104 ==.
                                   2142 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00046F C2 C3            [12] 2143 	clr	_SI
                           000382  2144 	C$i2c.h$245$1$104 ==.
                                   2145 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      000471 D2 C4            [12] 2146 	setb	_STO
                           000384  2147 	C$i2c.h$246$1$104 ==.
                                   2148 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000473                       2149 00104$:
                           000384  2150 	C$i2c.h$247$1$104 ==.
                                   2151 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000473 10 C3 02         [24] 2152 	jbc	_SI,00122$
      000476 80 FB            [24] 2153 	sjmp	00104$
      000478                       2154 00122$:
                           000389  2155 	C$i2c.h$248$1$104 ==.
                                   2156 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000478 8F 82            [24] 2157 	mov	dpl,r7
                           00038B  2158 	C$i2c.h$249$1$104 ==.
                           00038B  2159 	XG$i2c_read_and_stop$0$0 ==.
      00047A 22               [24] 2160 	ret
                                   2161 ;------------------------------------------------------------
                                   2162 ;Allocation info for local variables in function 'i2c_write_data'
                                   2163 ;------------------------------------------------------------
                                   2164 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2165 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2166 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2167 ;addr                      Allocated to registers r7 
                                   2168 ;i                         Allocated to registers 
                                   2169 ;------------------------------------------------------------
                           00038C  2170 	G$i2c_write_data$0$0 ==.
                           00038C  2171 	C$i2c.h$252$1$104 ==.
                                   2172 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2173 ;	-----------------------------------------
                                   2174 ;	 function i2c_write_data
                                   2175 ;	-----------------------------------------
      00047B                       2176 _i2c_write_data:
      00047B AF 82            [24] 2177 	mov	r7,dpl
                           00038E  2178 	C$i2c.h$256$1$106 ==.
                                   2179 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      00047D C2 AF            [12] 2180 	clr	_EA
                           000390  2181 	C$i2c.h$257$1$106 ==.
                                   2182 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00047F C0 07            [24] 2183 	push	ar7
      000481 12 04 40         [24] 2184 	lcall	_i2c_start
      000484 D0 07            [24] 2185 	pop	ar7
                           000397  2186 	C$i2c.h$258$1$106 ==.
                                   2187 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000486 74 FE            [12] 2188 	mov	a,#0xfe
      000488 5F               [12] 2189 	anl	a,r7
      000489 F5 82            [12] 2190 	mov	dpl,a
      00048B 12 04 4D         [24] 2191 	lcall	_i2c_write
                           00039F  2192 	C$i2c.h$259$1$106 ==.
                                   2193 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00048E 85 2C 82         [24] 2194 	mov	dpl,_i2c_write_data_PARM_2
      000491 12 04 4D         [24] 2195 	lcall	_i2c_write
                           0003A5  2196 	C$i2c.h$260$1$106 ==.
                                   2197 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000494 7F 00            [12] 2198 	mov	r7,#0x00
      000496                       2199 00103$:
      000496 AD 30            [24] 2200 	mov	r5,_i2c_write_data_PARM_4
      000498 7E 00            [12] 2201 	mov	r6,#0x00
      00049A 1D               [12] 2202 	dec	r5
      00049B BD FF 01         [24] 2203 	cjne	r5,#0xff,00114$
      00049E 1E               [12] 2204 	dec	r6
      00049F                       2205 00114$:
      00049F 8F 03            [24] 2206 	mov	ar3,r7
      0004A1 7C 00            [12] 2207 	mov	r4,#0x00
      0004A3 C3               [12] 2208 	clr	c
      0004A4 EB               [12] 2209 	mov	a,r3
      0004A5 9D               [12] 2210 	subb	a,r5
      0004A6 EC               [12] 2211 	mov	a,r4
      0004A7 64 80            [12] 2212 	xrl	a,#0x80
      0004A9 8E F0            [24] 2213 	mov	b,r6
      0004AB 63 F0 80         [24] 2214 	xrl	b,#0x80
      0004AE 95 F0            [12] 2215 	subb	a,b
      0004B0 50 1F            [24] 2216 	jnc	00101$
                           0003C3  2217 	C$i2c.h$261$1$106 ==.
                                   2218 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      0004B2 EF               [12] 2219 	mov	a,r7
      0004B3 25 2D            [12] 2220 	add	a,_i2c_write_data_PARM_3
      0004B5 FC               [12] 2221 	mov	r4,a
      0004B6 E4               [12] 2222 	clr	a
      0004B7 35 2E            [12] 2223 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004B9 FD               [12] 2224 	mov	r5,a
      0004BA AE 2F            [24] 2225 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      0004BC 8C 82            [24] 2226 	mov	dpl,r4
      0004BE 8D 83            [24] 2227 	mov	dph,r5
      0004C0 8E F0            [24] 2228 	mov	b,r6
      0004C2 12 14 AB         [24] 2229 	lcall	__gptrget
      0004C5 F5 82            [12] 2230 	mov	dpl,a
      0004C7 C0 07            [24] 2231 	push	ar7
      0004C9 12 04 4D         [24] 2232 	lcall	_i2c_write
      0004CC D0 07            [24] 2233 	pop	ar7
                           0003DF  2234 	C$i2c.h$260$1$106 ==.
                                   2235 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004CE 0F               [12] 2236 	inc	r7
      0004CF 80 C5            [24] 2237 	sjmp	00103$
      0004D1                       2238 00101$:
                           0003E2  2239 	C$i2c.h$262$1$106 ==.
                                   2240 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004D1 AE 30            [24] 2241 	mov	r6,_i2c_write_data_PARM_4
      0004D3 7F 00            [12] 2242 	mov	r7,#0x00
      0004D5 1E               [12] 2243 	dec	r6
      0004D6 BE FF 01         [24] 2244 	cjne	r6,#0xff,00116$
      0004D9 1F               [12] 2245 	dec	r7
      0004DA                       2246 00116$:
      0004DA EE               [12] 2247 	mov	a,r6
      0004DB 25 2D            [12] 2248 	add	a,_i2c_write_data_PARM_3
      0004DD FE               [12] 2249 	mov	r6,a
      0004DE EF               [12] 2250 	mov	a,r7
      0004DF 35 2E            [12] 2251 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004E1 FF               [12] 2252 	mov	r7,a
      0004E2 AD 2F            [24] 2253 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004E4 8E 82            [24] 2254 	mov	dpl,r6
      0004E6 8F 83            [24] 2255 	mov	dph,r7
      0004E8 8D F0            [24] 2256 	mov	b,r5
      0004EA 12 14 AB         [24] 2257 	lcall	__gptrget
      0004ED F5 82            [12] 2258 	mov	dpl,a
      0004EF 12 04 56         [24] 2259 	lcall	_i2c_write_and_stop
                           000403  2260 	C$i2c.h$263$1$106 ==.
                                   2261 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004F2 D2 AF            [12] 2262 	setb	_EA
                           000405  2263 	C$i2c.h$264$1$106 ==.
                           000405  2264 	XG$i2c_write_data$0$0 ==.
      0004F4 22               [24] 2265 	ret
                                   2266 ;------------------------------------------------------------
                                   2267 ;Allocation info for local variables in function 'i2c_read_data'
                                   2268 ;------------------------------------------------------------
                                   2269 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2270 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2271 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2272 ;addr                      Allocated to registers r7 
                                   2273 ;j                         Allocated to registers 
                                   2274 ;------------------------------------------------------------
                           000406  2275 	G$i2c_read_data$0$0 ==.
                           000406  2276 	C$i2c.h$267$1$106 ==.
                                   2277 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2278 ;	-----------------------------------------
                                   2279 ;	 function i2c_read_data
                                   2280 ;	-----------------------------------------
      0004F5                       2281 _i2c_read_data:
      0004F5 AF 82            [24] 2282 	mov	r7,dpl
                           000408  2283 	C$i2c.h$271$1$108 ==.
                                   2284 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004F7 C2 AF            [12] 2285 	clr	_EA
                           00040A  2286 	C$i2c.h$272$1$108 ==.
                                   2287 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004F9 C0 07            [24] 2288 	push	ar7
      0004FB 12 04 40         [24] 2289 	lcall	_i2c_start
      0004FE D0 07            [24] 2290 	pop	ar7
                           000411  2291 	C$i2c.h$273$1$108 ==.
                                   2292 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      000500 74 FE            [12] 2293 	mov	a,#0xfe
      000502 5F               [12] 2294 	anl	a,r7
      000503 F5 82            [12] 2295 	mov	dpl,a
      000505 C0 07            [24] 2296 	push	ar7
      000507 12 04 4D         [24] 2297 	lcall	_i2c_write
                           00041B  2298 	C$i2c.h$274$1$108 ==.
                                   2299 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      00050A 85 31 82         [24] 2300 	mov	dpl,_i2c_read_data_PARM_2
      00050D 12 04 56         [24] 2301 	lcall	_i2c_write_and_stop
                           000421  2302 	C$i2c.h$275$1$108 ==.
                                   2303 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      000510 12 04 40         [24] 2304 	lcall	_i2c_start
      000513 D0 07            [24] 2305 	pop	ar7
                           000426  2306 	C$i2c.h$276$1$108 ==.
                                   2307 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      000515 74 01            [12] 2308 	mov	a,#0x01
      000517 4F               [12] 2309 	orl	a,r7
      000518 F5 82            [12] 2310 	mov	dpl,a
      00051A 12 04 4D         [24] 2311 	lcall	_i2c_write
                           00042E  2312 	C$i2c.h$277$1$108 ==.
                                   2313 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      00051D 7F 00            [12] 2314 	mov	r7,#0x00
      00051F                       2315 00103$:
      00051F AD 35            [24] 2316 	mov	r5,_i2c_read_data_PARM_4
      000521 7E 00            [12] 2317 	mov	r6,#0x00
      000523 1D               [12] 2318 	dec	r5
      000524 BD FF 01         [24] 2319 	cjne	r5,#0xff,00114$
      000527 1E               [12] 2320 	dec	r6
      000528                       2321 00114$:
      000528 8F 03            [24] 2322 	mov	ar3,r7
      00052A 7C 00            [12] 2323 	mov	r4,#0x00
      00052C C3               [12] 2324 	clr	c
      00052D EB               [12] 2325 	mov	a,r3
      00052E 9D               [12] 2326 	subb	a,r5
      00052F EC               [12] 2327 	mov	a,r4
      000530 64 80            [12] 2328 	xrl	a,#0x80
      000532 8E F0            [24] 2329 	mov	b,r6
      000534 63 F0 80         [24] 2330 	xrl	b,#0x80
      000537 95 F0            [12] 2331 	subb	a,b
      000539 50 2E            [24] 2332 	jnc	00101$
                           00044C  2333 	C$i2c.h$279$2$109 ==.
                                   2334 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      00053B D2 C2            [12] 2335 	setb	_AA
                           00044E  2336 	C$i2c.h$280$2$109 ==.
                                   2337 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      00053D EF               [12] 2338 	mov	a,r7
      00053E 25 32            [12] 2339 	add	a,_i2c_read_data_PARM_3
      000540 FC               [12] 2340 	mov	r4,a
      000541 E4               [12] 2341 	clr	a
      000542 35 33            [12] 2342 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000544 FD               [12] 2343 	mov	r5,a
      000545 AE 34            [24] 2344 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000547 C0 07            [24] 2345 	push	ar7
      000549 C0 06            [24] 2346 	push	ar6
      00054B C0 05            [24] 2347 	push	ar5
      00054D C0 04            [24] 2348 	push	ar4
      00054F 12 04 61         [24] 2349 	lcall	_i2c_read
      000552 AB 82            [24] 2350 	mov	r3,dpl
      000554 D0 04            [24] 2351 	pop	ar4
      000556 D0 05            [24] 2352 	pop	ar5
      000558 D0 06            [24] 2353 	pop	ar6
      00055A D0 07            [24] 2354 	pop	ar7
      00055C 8C 82            [24] 2355 	mov	dpl,r4
      00055E 8D 83            [24] 2356 	mov	dph,r5
      000560 8E F0            [24] 2357 	mov	b,r6
      000562 EB               [12] 2358 	mov	a,r3
      000563 12 0C DE         [24] 2359 	lcall	__gptrput
                           000477  2360 	C$i2c.h$277$1$108 ==.
                                   2361 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000566 0F               [12] 2362 	inc	r7
      000567 80 B6            [24] 2363 	sjmp	00103$
      000569                       2364 00101$:
                           00047A  2365 	C$i2c.h$282$1$108 ==.
                                   2366 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000569 C2 C2            [12] 2367 	clr	_AA
                           00047C  2368 	C$i2c.h$283$1$108 ==.
                                   2369 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      00056B AE 35            [24] 2370 	mov	r6,_i2c_read_data_PARM_4
      00056D 7F 00            [12] 2371 	mov	r7,#0x00
      00056F 1E               [12] 2372 	dec	r6
      000570 BE FF 01         [24] 2373 	cjne	r6,#0xff,00116$
      000573 1F               [12] 2374 	dec	r7
      000574                       2375 00116$:
      000574 EE               [12] 2376 	mov	a,r6
      000575 25 32            [12] 2377 	add	a,_i2c_read_data_PARM_3
      000577 FE               [12] 2378 	mov	r6,a
      000578 EF               [12] 2379 	mov	a,r7
      000579 35 33            [12] 2380 	addc	a,(_i2c_read_data_PARM_3 + 1)
      00057B FF               [12] 2381 	mov	r7,a
      00057C AD 34            [24] 2382 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00057E C0 07            [24] 2383 	push	ar7
      000580 C0 06            [24] 2384 	push	ar6
      000582 C0 05            [24] 2385 	push	ar5
      000584 12 04 6A         [24] 2386 	lcall	_i2c_read_and_stop
      000587 AC 82            [24] 2387 	mov	r4,dpl
      000589 D0 05            [24] 2388 	pop	ar5
      00058B D0 06            [24] 2389 	pop	ar6
      00058D D0 07            [24] 2390 	pop	ar7
      00058F 8E 82            [24] 2391 	mov	dpl,r6
      000591 8F 83            [24] 2392 	mov	dph,r7
      000593 8D F0            [24] 2393 	mov	b,r5
      000595 EC               [12] 2394 	mov	a,r4
      000596 12 0C DE         [24] 2395 	lcall	__gptrput
                           0004AA  2396 	C$i2c.h$284$1$108 ==.
                                   2397 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000599 D2 AF            [12] 2398 	setb	_EA
                           0004AC  2399 	C$i2c.h$285$1$108 ==.
                           0004AC  2400 	XG$i2c_read_data$0$0 ==.
      00059B 22               [24] 2401 	ret
                                   2402 ;------------------------------------------------------------
                                   2403 ;Allocation info for local variables in function 'Accel_Init'
                                   2404 ;------------------------------------------------------------
                           0004AD  2405 	G$Accel_Init$0$0 ==.
                           0004AD  2406 	C$i2c.h$294$1$108 ==.
                                   2407 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2408 ;	-----------------------------------------
                                   2409 ;	 function Accel_Init
                                   2410 ;	-----------------------------------------
      00059C                       2411 _Accel_Init:
                           0004AD  2412 	C$i2c.h$298$1$111 ==.
                                   2413 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      00059C 75 22 23         [24] 2414 	mov	_Data2,#0x23
                           0004B0  2415 	C$i2c.h$300$1$111 ==.
                                   2416 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00059F 75 23 00         [24] 2417 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2418 	C$i2c.h$301$1$111 ==.
                                   2419 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      0005A2 75 23 10         [24] 2420 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2421 	C$i2c.h$302$1$111 ==.
                                   2422 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      0005A5 75 24 00         [24] 2423 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2424 	C$i2c.h$304$1$111 ==.
                                   2425 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      0005A8 75 2D 22         [24] 2426 	mov	_i2c_write_data_PARM_3,#_Data2
      0005AB 75 2E 00         [24] 2427 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005AE 75 2F 40         [24] 2428 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005B1 75 2C 20         [24] 2429 	mov	_i2c_write_data_PARM_2,#0x20
      0005B4 75 30 01         [24] 2430 	mov	_i2c_write_data_PARM_4,#0x01
      0005B7 75 82 30         [24] 2431 	mov	dpl,#0x30
      0005BA 12 04 7B         [24] 2432 	lcall	_i2c_write_data
                           0004CE  2433 	C$i2c.h$310$1$111 ==.
                           0004CE  2434 	XG$Accel_Init$0$0 ==.
      0005BD 22               [24] 2435 	ret
                                   2436 ;------------------------------------------------------------
                                   2437 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2438 ;------------------------------------------------------------
                           0004CF  2439 	G$Accel_Init_C$0$0 ==.
                           0004CF  2440 	C$i2c.h$313$1$111 ==.
                                   2441 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2442 ;	-----------------------------------------
                                   2443 ;	 function Accel_Init_C
                                   2444 ;	-----------------------------------------
      0005BE                       2445 _Accel_Init_C:
                           0004CF  2446 	C$i2c.h$318$1$113 ==.
                                   2447 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      0005BE 75 22 04         [24] 2448 	mov	_Data2,#0x04
                           0004D2  2449 	C$i2c.h$319$1$113 ==.
                                   2450 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      0005C1 75 2D 22         [24] 2451 	mov	_i2c_write_data_PARM_3,#_Data2
      0005C4 75 2E 00         [24] 2452 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C7 75 2F 40         [24] 2453 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005CA 75 2C 23         [24] 2454 	mov	_i2c_write_data_PARM_2,#0x23
      0005CD 75 30 01         [24] 2455 	mov	_i2c_write_data_PARM_4,#0x01
      0005D0 75 82 3A         [24] 2456 	mov	dpl,#0x3a
      0005D3 12 04 7B         [24] 2457 	lcall	_i2c_write_data
                           0004E7  2458 	C$i2c.h$321$1$113 ==.
                                   2459 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005D6 75 22 6B         [24] 2460 	mov	_Data2,#0x6b
                           0004EA  2461 	C$i2c.h$323$1$113 ==.
                                   2462 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005D9 75 23 00         [24] 2463 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2464 	C$i2c.h$325$1$113 ==.
                                   2465 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005DC 75 24 00         [24] 2466 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2467 	C$i2c.h$326$1$113 ==.
                                   2468 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005DF 75 2D 22         [24] 2469 	mov	_i2c_write_data_PARM_3,#_Data2
      0005E2 75 2E 00         [24] 2470 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005E5 75 2F 40         [24] 2471 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005E8 75 2C 20         [24] 2472 	mov	_i2c_write_data_PARM_2,#0x20
      0005EB 75 30 01         [24] 2473 	mov	_i2c_write_data_PARM_4,#0x01
      0005EE 75 82 3A         [24] 2474 	mov	dpl,#0x3a
      0005F1 12 04 7B         [24] 2475 	lcall	_i2c_write_data
                           000505  2476 	C$i2c.h$328$1$113 ==.
                           000505  2477 	XG$Accel_Init_C$0$0 ==.
      0005F4 22               [24] 2478 	ret
                                   2479 ;------------------------------------------------------------
                                   2480 ;Allocation info for local variables in function 'main'
                                   2481 ;------------------------------------------------------------
                           000506  2482 	G$main$0$0 ==.
                           000506  2483 	C$LAB6.c$73$1$113 ==.
                                   2484 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:73: void main(void)
                                   2485 ;	-----------------------------------------
                                   2486 ;	 function main
                                   2487 ;	-----------------------------------------
      0005F5                       2488 _main:
                           000506  2489 	C$LAB6.c$75$1$131 ==.
                                   2490 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:75: Sys_Init(); // initialize board
      0005F5 12 01 26         [24] 2491 	lcall	_Sys_Init
                           000509  2492 	C$LAB6.c$76$1$131 ==.
                                   2493 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:76: Port_Init();
      0005F8 12 07 29         [24] 2494 	lcall	_Port_Init
                           00050C  2495 	C$LAB6.c$77$1$131 ==.
                                   2496 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:77: ADC_Init();
      0005FB 12 07 40         [24] 2497 	lcall	_ADC_Init
                           00050F  2498 	C$LAB6.c$78$1$131 ==.
                                   2499 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:78: XBR0_Init();
      0005FE 12 07 3C         [24] 2500 	lcall	_XBR0_Init
                           000512  2501 	C$LAB6.c$79$1$131 ==.
                                   2502 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:79: PCA_Init();
      000601 12 07 0B         [24] 2503 	lcall	_PCA_Init
                           000515  2504 	C$LAB6.c$80$1$131 ==.
                                   2505 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:80: SMB_Init();
      000604 12 07 23         [24] 2506 	lcall	_SMB_Init
                           000518  2507 	C$LAB6.c$81$1$131 ==.
                                   2508 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:81: putchar(' '); //gotta have that putchar folks
      000607 75 82 20         [24] 2509 	mov	dpl,#0x20
      00060A 12 01 39         [24] 2510 	lcall	_putchar
                           00051E  2511 	C$LAB6.c$82$1$131 ==.
                                   2512 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:82: h_count = 0;
      00060D 75 55 00         [24] 2513 	mov	_h_count,#0x00
                           000521  2514 	C$LAB6.c$84$1$131 ==.
                                   2515 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:84: printf("A brave gondola stands alone against the many horrors on the battlefield!");
      000610 74 F4            [12] 2516 	mov	a,#___str_3
      000612 C0 E0            [24] 2517 	push	acc
      000614 74 14            [12] 2518 	mov	a,#(___str_3 >> 8)
      000616 C0 E0            [24] 2519 	push	acc
      000618 74 80            [12] 2520 	mov	a,#0x80
      00061A C0 E0            [24] 2521 	push	acc
      00061C 12 0E B0         [24] 2522 	lcall	_printf
      00061F 15 81            [12] 2523 	dec	sp
      000621 15 81            [12] 2524 	dec	sp
      000623 15 81            [12] 2525 	dec	sp
                           000536  2526 	C$LAB6.c$85$1$131 ==.
                                   2527 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:85: wait(); //wait for everything to initialize
      000625 12 0C AB         [24] 2528 	lcall	_wait
                           000539  2529 	C$LAB6.c$86$1$131 ==.
                                   2530 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:86: lcd_clear();
      000628 12 01 EF         [24] 2531 	lcall	_lcd_clear
                           00053C  2532 	C$LAB6.c$87$1$131 ==.
                                   2533 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:87: lcd_print("Good luck!");
      00062B 74 3E            [12] 2534 	mov	a,#___str_4
      00062D C0 E0            [24] 2535 	push	acc
      00062F 74 15            [12] 2536 	mov	a,#(___str_4 >> 8)
      000631 C0 E0            [24] 2537 	push	acc
      000633 74 80            [12] 2538 	mov	a,#0x80
      000635 C0 E0            [24] 2539 	push	acc
      000637 12 01 6A         [24] 2540 	lcall	_lcd_print
      00063A 15 81            [12] 2541 	dec	sp
      00063C 15 81            [12] 2542 	dec	sp
      00063E 15 81            [12] 2543 	dec	sp
                           000551  2544 	C$LAB6.c$91$2$132 ==.
                                   2545 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:91: while (!RUN) // make RUN an sbit for the run/stop switch
      000640                       2546 00103$:
      000640 20 B7 2F         [24] 2547 	jb	_RUN,00105$
                           000554  2548 	C$LAB6.c$93$3$133 ==.
                                   2549 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:93: PCA0CP0 = 0xFFFF - MOTOR_STOP;
      000643 74 FF            [12] 2550 	mov	a,#0xff
      000645 C3               [12] 2551 	clr	c
      000646 95 36            [12] 2552 	subb	a,_MOTOR_STOP
      000648 FE               [12] 2553 	mov	r6,a
      000649 74 FF            [12] 2554 	mov	a,#0xff
      00064B 95 37            [12] 2555 	subb	a,(_MOTOR_STOP + 1)
      00064D FF               [12] 2556 	mov	r7,a
      00064E 8E EA            [24] 2557 	mov	((_PCA0CP0 >> 0) & 0xFF),r6
      000650 8F FA            [24] 2558 	mov	((_PCA0CP0 >> 8) & 0xFF),r7
                           000563  2559 	C$LAB6.c$94$3$133 ==.
                                   2560 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:94: PCA0CP2 = 0xFFFF - MOTOR_STOP;
      000652 8E EC            [24] 2561 	mov	((_PCA0CP2 >> 0) & 0xFF),r6
      000654 8F FC            [24] 2562 	mov	((_PCA0CP2 >> 8) & 0xFF),r7
                           000567  2563 	C$LAB6.c$95$3$133 ==.
                                   2564 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:95: PCA0CP3 = 0xFFFF - MOTOR_STOP;
      000656 8E ED            [24] 2565 	mov	((_PCA0CP3 >> 0) & 0xFF),r6
      000658 8F FD            [24] 2566 	mov	((_PCA0CP3 >> 8) & 0xFF),r7
                           00056B  2567 	C$LAB6.c$97$3$133 ==.
                                   2568 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:97: if (run_stop == 0)
      00065A E5 5E            [12] 2569 	mov	a,_run_stop
      00065C 70 E2            [24] 2570 	jnz	00103$
                           00056F  2571 	C$LAB6.c$99$4$134 ==.
                                   2572 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:99: set_gains();
      00065E 12 08 CC         [24] 2573 	lcall	_set_gains
                           000572  2574 	C$LAB6.c$100$4$134 ==.
                                   2575 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:100: desired_heading = 1350;
      000661 75 58 46         [24] 2576 	mov	_desired_heading,#0x46
      000664 75 59 05         [24] 2577 	mov	(_desired_heading + 1),#0x05
                           000578  2578 	C$LAB6.c$101$4$134 ==.
                                   2579 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:101: tilt_set();
      000667 12 0A 97         [24] 2580 	lcall	_tilt_set
                           00057B  2581 	C$LAB6.c$102$4$134 ==.
                                   2582 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:102: thrust_set();
      00066A 12 0B 72         [24] 2583 	lcall	_thrust_set
                           00057E  2584 	C$LAB6.c$103$4$134 ==.
                                   2585 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:103: run_stop = 1; // only try to update desired heading once
      00066D 75 5E 01         [24] 2586 	mov	_run_stop,#0x01
      000670 80 CE            [24] 2587 	sjmp	00103$
      000672                       2588 00105$:
                           000583  2589 	C$LAB6.c$107$2$132 ==.
                                   2590 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:107: PCA0CP2 = 0xFFFF - LEFT_PW;
      000672 74 FF            [12] 2591 	mov	a,#0xff
      000674 C3               [12] 2592 	clr	c
      000675 95 3E            [12] 2593 	subb	a,_LEFT_PW
      000677 FE               [12] 2594 	mov	r6,a
      000678 74 FF            [12] 2595 	mov	a,#0xff
      00067A 95 3F            [12] 2596 	subb	a,(_LEFT_PW + 1)
      00067C FF               [12] 2597 	mov	r7,a
      00067D 8E EC            [24] 2598 	mov	((_PCA0CP2 >> 0) & 0xFF),r6
      00067F 8F FC            [24] 2599 	mov	((_PCA0CP2 >> 8) & 0xFF),r7
                           000592  2600 	C$LAB6.c$108$2$132 ==.
                                   2601 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:108: PCA0CP3 = 0xFFFF - LEFT_PW;
      000681 8E ED            [24] 2602 	mov	((_PCA0CP3 >> 0) & 0xFF),r6
      000683 8F FD            [24] 2603 	mov	((_PCA0CP3 >> 8) & 0xFF),r7
                           000596  2604 	C$LAB6.c$110$2$132 ==.
                                   2605 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:110: if (xCounts > 150) {
      000685 E5 57            [12] 2606 	mov	a,_xCounts
      000687 24 69            [12] 2607 	add	a,#0xff - 0x96
      000689 50 25            [24] 2608 	jnc	00112$
                           00059C  2609 	C$LAB6.c$111$3$135 ==.
                                   2610 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:111: if (h_switch == 0){
      00068B E5 4C            [12] 2611 	mov	a,_h_switch
      00068D 70 08            [24] 2612 	jnz	00109$
                           0005A0  2613 	C$LAB6.c$112$4$136 ==.
                                   2614 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:112: desired_heading = 1350;
      00068F 75 58 46         [24] 2615 	mov	_desired_heading,#0x46
      000692 75 59 05         [24] 2616 	mov	(_desired_heading + 1),#0x05
      000695 80 0B            [24] 2617 	sjmp	00110$
      000697                       2618 00109$:
                           0005A8  2619 	C$LAB6.c$114$3$135 ==.
                                   2620 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:114: else if (h_switch == 1){
      000697 74 01            [12] 2621 	mov	a,#0x01
      000699 B5 4C 06         [24] 2622 	cjne	a,_h_switch,00110$
                           0005AD  2623 	C$LAB6.c$115$4$137 ==.
                                   2624 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:115: desired_heading = 2250;
      00069C 75 58 CA         [24] 2625 	mov	_desired_heading,#0xca
      00069F 75 59 08         [24] 2626 	mov	(_desired_heading + 1),#0x08
      0006A2                       2627 00110$:
                           0005B3  2628 	C$LAB6.c$117$3$135 ==.
                                   2629 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:117: h_switch = !h_switch;
      0006A2 E5 4C            [12] 2630 	mov	a,_h_switch
      0006A4 B4 01 00         [24] 2631 	cjne	a,#0x01,00152$
      0006A7                       2632 00152$:
      0006A7 92 00            [24] 2633 	mov  _main_sloc0_1_0,c
      0006A9 E4               [12] 2634 	clr	a
      0006AA 33               [12] 2635 	rlc	a
      0006AB F5 4C            [12] 2636 	mov	_h_switch,a
                           0005BE  2637 	C$LAB6.c$118$3$135 ==.
                                   2638 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:118: xCounts = 0;
      0006AD 75 57 00         [24] 2639 	mov	_xCounts,#0x00
      0006B0                       2640 00112$:
                           0005C1  2641 	C$LAB6.c$121$2$132 ==.
                                   2642 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:121: if (new_heading) { // enough overflows for a new heading 
      0006B0 E5 4E            [12] 2643 	mov	a,_new_heading
      0006B2 60 0F            [24] 2644 	jz	00114$
                           0005C5  2645 	C$LAB6.c$122$3$138 ==.
                                   2646 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:122: heading = read_compass();
      0006B4 12 07 4A         [24] 2647 	lcall	_read_compass
      0006B7 85 82 51         [24] 2648 	mov	_heading,dpl
      0006BA 85 83 52         [24] 2649 	mov	(_heading + 1),dph
                           0005CE  2650 	C$LAB6.c$123$3$138 ==.
                                   2651 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:123: set_tail_PWM(); // if new data, adjust motor PWM for tail fan
      0006BD 12 07 AF         [24] 2652 	lcall	_set_tail_PWM
                           0005D1  2653 	C$LAB6.c$124$3$138 ==.
                                   2654 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:124: new_heading = 0;
      0006C0 75 4E 00         [24] 2655 	mov	_new_heading,#0x00
      0006C3                       2656 00114$:
                           0005D4  2657 	C$LAB6.c$128$2$132 ==.
                                   2658 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:128: if (range) { //using range as a print indicator to save memory once we don't need it
      0006C3 E5 4F            [12] 2659 	mov	a,_range
      0006C5 45 50            [12] 2660 	orl	a,(_range + 1)
      0006C7 70 03            [24] 2661 	jnz	00154$
      0006C9 02 06 40         [24] 2662 	ljmp	00103$
      0006CC                       2663 00154$:
                           0005DD  2664 	C$LAB6.c$129$3$139 ==.
                                   2665 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:129: battery = read_AD_input(3);
      0006CC 75 82 03         [24] 2666 	mov	dpl,#0x03
      0006CF 12 0C 8F         [24] 2667 	lcall	_read_AD_input
      0006D2 85 82 4D         [24] 2668 	mov	_battery,dpl
                           0005E6  2669 	C$LAB6.c$130$3$139 ==.
                                   2670 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:130: printf("%i\t%i\t%i\t%i\t%i\r\n", desired_heading, heading, error, TAIL_PW, battery);
      0006D5 AE 4D            [24] 2671 	mov	r6,_battery
      0006D7 7F 00            [12] 2672 	mov	r7,#0x00
      0006D9 C0 06            [24] 2673 	push	ar6
      0006DB C0 07            [24] 2674 	push	ar7
      0006DD C0 3C            [24] 2675 	push	_TAIL_PW
      0006DF C0 3D            [24] 2676 	push	(_TAIL_PW + 1)
      0006E1 C0 5A            [24] 2677 	push	_error
      0006E3 C0 5B            [24] 2678 	push	(_error + 1)
      0006E5 C0 51            [24] 2679 	push	_heading
      0006E7 C0 52            [24] 2680 	push	(_heading + 1)
      0006E9 C0 58            [24] 2681 	push	_desired_heading
      0006EB C0 59            [24] 2682 	push	(_desired_heading + 1)
      0006ED 74 49            [12] 2683 	mov	a,#___str_5
      0006EF C0 E0            [24] 2684 	push	acc
      0006F1 74 15            [12] 2685 	mov	a,#(___str_5 >> 8)
      0006F3 C0 E0            [24] 2686 	push	acc
      0006F5 74 80            [12] 2687 	mov	a,#0x80
      0006F7 C0 E0            [24] 2688 	push	acc
      0006F9 12 0E B0         [24] 2689 	lcall	_printf
      0006FC E5 81            [12] 2690 	mov	a,sp
      0006FE 24 F3            [12] 2691 	add	a,#0xf3
      000700 F5 81            [12] 2692 	mov	sp,a
                           000613  2693 	C$LAB6.c$131$3$139 ==.
                                   2694 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:131: range = 0;
      000702 E4               [12] 2695 	clr	a
      000703 F5 4F            [12] 2696 	mov	_range,a
      000705 F5 50            [12] 2697 	mov	(_range + 1),a
      000707 02 06 40         [24] 2698 	ljmp	00103$
                           00061B  2699 	C$LAB6.c$135$1$131 ==.
                           00061B  2700 	XG$main$0$0 ==.
      00070A 22               [24] 2701 	ret
                                   2702 ;------------------------------------------------------------
                                   2703 ;Allocation info for local variables in function 'PCA_Init'
                                   2704 ;------------------------------------------------------------
                           00061C  2705 	G$PCA_Init$0$0 ==.
                           00061C  2706 	C$LAB6.c$137$1$131 ==.
                                   2707 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:137: void PCA_Init(void)
                                   2708 ;	-----------------------------------------
                                   2709 ;	 function PCA_Init
                                   2710 ;	-----------------------------------------
      00070B                       2711 _PCA_Init:
                           00061C  2712 	C$LAB6.c$139$1$141 ==.
                                   2713 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:139: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      00070B 75 D9 81         [24] 2714 	mov	_PCA0MD,#0x81
                           00061F  2715 	C$LAB6.c$140$1$141 ==.
                                   2716 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:140: PCA0CPM2 = PCA0CPM3 = PCA0CPM0 = PCA0CPM1 = 0xC2; //CCM0,1,2,3 in 16 bit compare mode
      00070E 75 DB C2         [24] 2717 	mov	_PCA0CPM1,#0xc2
      000711 75 DA C2         [24] 2718 	mov	_PCA0CPM0,#0xc2
      000714 75 DD C2         [24] 2719 	mov	_PCA0CPM3,#0xc2
      000717 75 DC C2         [24] 2720 	mov	_PCA0CPM2,#0xc2
                           00062B  2721 	C$LAB6.c$141$1$141 ==.
                                   2722 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:141: PCA0CN = 0x40; //enable PCA counter
      00071A 75 D8 40         [24] 2723 	mov	_PCA0CN,#0x40
                           00062E  2724 	C$LAB6.c$142$1$141 ==.
                                   2725 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:142: EIE1 |= 0x08;
      00071D 43 E6 08         [24] 2726 	orl	_EIE1,#0x08
                           000631  2727 	C$LAB6.c$143$1$141 ==.
                                   2728 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:143: EA = 1;
      000720 D2 AF            [12] 2729 	setb	_EA
                           000633  2730 	C$LAB6.c$145$1$141 ==.
                           000633  2731 	XG$PCA_Init$0$0 ==.
      000722 22               [24] 2732 	ret
                                   2733 ;------------------------------------------------------------
                                   2734 ;Allocation info for local variables in function 'SMB_Init'
                                   2735 ;------------------------------------------------------------
                           000634  2736 	G$SMB_Init$0$0 ==.
                           000634  2737 	C$LAB6.c$147$1$141 ==.
                                   2738 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:147: void SMB_Init(void)
                                   2739 ;	-----------------------------------------
                                   2740 ;	 function SMB_Init
                                   2741 ;	-----------------------------------------
      000723                       2742 _SMB_Init:
                           000634  2743 	C$LAB6.c$149$1$143 ==.
                                   2744 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:149: SMB0CR = 0x93; // set SCL to 100KHz
      000723 75 CF 93         [24] 2745 	mov	_SMB0CR,#0x93
                           000637  2746 	C$LAB6.c$150$1$143 ==.
                                   2747 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:150: ENSMB = TRUE; // enable SMBUS0
      000726 D2 C6            [12] 2748 	setb	_ENSMB
                           000639  2749 	C$LAB6.c$151$1$143 ==.
                           000639  2750 	XG$SMB_Init$0$0 ==.
      000728 22               [24] 2751 	ret
                                   2752 ;------------------------------------------------------------
                                   2753 ;Allocation info for local variables in function 'Port_Init'
                                   2754 ;------------------------------------------------------------
                           00063A  2755 	G$Port_Init$0$0 ==.
                           00063A  2756 	C$LAB6.c$153$1$143 ==.
                                   2757 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:153: void Port_Init(void)
                                   2758 ;	-----------------------------------------
                                   2759 ;	 function Port_Init
                                   2760 ;	-----------------------------------------
      000729                       2761 _Port_Init:
                           00063A  2762 	C$LAB6.c$155$1$145 ==.
                                   2763 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:155: P0MDOUT |= 0xF0;	//CEX Pins
      000729 43 A4 F0         [24] 2764 	orl	_P0MDOUT,#0xf0
                           00063D  2765 	C$LAB6.c$157$1$145 ==.
                                   2766 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:157: P1MDIN &= ~0x08;
      00072C 53 BD F7         [24] 2767 	anl	_P1MDIN,#0xf7
                           000640  2768 	C$LAB6.c$158$1$145 ==.
                                   2769 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:158: P1MDOUT &= ~0x08;	//ADC on P1.3
      00072F 53 A5 F7         [24] 2770 	anl	_P1MDOUT,#0xf7
                           000643  2771 	C$LAB6.c$159$1$145 ==.
                                   2772 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:159: P1 |= 0x08;
      000732 43 90 08         [24] 2773 	orl	_P1,#0x08
                           000646  2774 	C$LAB6.c$161$1$145 ==.
                                   2775 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:161: P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance for SS
      000735 53 A7 80         [24] 2776 	anl	_P3MDOUT,#0x80
                           000649  2777 	C$LAB6.c$162$1$145 ==.
                                   2778 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:162: P3 |= ~0x80;
      000738 43 B0 7F         [24] 2779 	orl	_P3,#0x7f
                           00064C  2780 	C$LAB6.c$163$1$145 ==.
                           00064C  2781 	XG$Port_Init$0$0 ==.
      00073B 22               [24] 2782 	ret
                                   2783 ;------------------------------------------------------------
                                   2784 ;Allocation info for local variables in function 'XBR0_Init'
                                   2785 ;------------------------------------------------------------
                           00064D  2786 	G$XBR0_Init$0$0 ==.
                           00064D  2787 	C$LAB6.c$165$1$145 ==.
                                   2788 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:165: void XBR0_Init(void)
                                   2789 ;	-----------------------------------------
                                   2790 ;	 function XBR0_Init
                                   2791 ;	-----------------------------------------
      00073C                       2792 _XBR0_Init:
                           00064D  2793 	C$LAB6.c$167$1$147 ==.
                                   2794 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:167: XBR0 = 0x25;  //configure crossbar as directed in the laboratory
      00073C 75 E1 25         [24] 2795 	mov	_XBR0,#0x25
                           000650  2796 	C$LAB6.c$169$1$147 ==.
                           000650  2797 	XG$XBR0_Init$0$0 ==.
      00073F 22               [24] 2798 	ret
                                   2799 ;------------------------------------------------------------
                                   2800 ;Allocation info for local variables in function 'ADC_Init'
                                   2801 ;------------------------------------------------------------
                           000651  2802 	G$ADC_Init$0$0 ==.
                           000651  2803 	C$LAB6.c$171$1$147 ==.
                                   2804 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:171: void ADC_Init(void)
                                   2805 ;	-----------------------------------------
                                   2806 ;	 function ADC_Init
                                   2807 ;	-----------------------------------------
      000740                       2808 _ADC_Init:
                           000651  2809 	C$LAB6.c$173$1$149 ==.
                                   2810 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:173: REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
      000740 75 D1 03         [24] 2811 	mov	_REF0CN,#0x03
                           000654  2812 	C$LAB6.c$174$1$149 ==.
                                   2813 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:174: ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
      000743 75 AA 80         [24] 2814 	mov	_ADC1CN,#0x80
                           000657  2815 	C$LAB6.c$175$1$149 ==.
                                   2816 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:175: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
      000746 43 AB 01         [24] 2817 	orl	_ADC1CF,#0x01
                           00065A  2818 	C$LAB6.c$176$1$149 ==.
                           00065A  2819 	XG$ADC_Init$0$0 ==.
      000749 22               [24] 2820 	ret
                                   2821 ;------------------------------------------------------------
                                   2822 ;Allocation info for local variables in function 'read_compass'
                                   2823 ;------------------------------------------------------------
                                   2824 ;addr                      Allocated to registers 
                                   2825 ;compheading               Allocated to registers 
                                   2826 ;------------------------------------------------------------
                           00065B  2827 	G$read_compass$0$0 ==.
                           00065B  2828 	C$LAB6.c$179$1$149 ==.
                                   2829 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:179: int read_compass(void)
                                   2830 ;	-----------------------------------------
                                   2831 ;	 function read_compass
                                   2832 ;	-----------------------------------------
      00074A                       2833 _read_compass:
                           00065B  2834 	C$LAB6.c$183$1$151 ==.
                                   2835 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:183: i2c_read_data(addr, 2, Data, 2); // read two byte, starting at reg 2
      00074A 75 32 5C         [24] 2836 	mov	_i2c_read_data_PARM_3,#_Data
      00074D 75 33 00         [24] 2837 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000750 75 34 40         [24] 2838 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000753 75 31 02         [24] 2839 	mov	_i2c_read_data_PARM_2,#0x02
      000756 75 35 02         [24] 2840 	mov	_i2c_read_data_PARM_4,#0x02
      000759 75 82 C0         [24] 2841 	mov	dpl,#0xc0
      00075C 12 04 F5         [24] 2842 	lcall	_i2c_read_data
                           000670  2843 	C$LAB6.c$184$1$151 ==.
                                   2844 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:184: compheading =(((unsigned int)Data[0] << 8) | Data[1]); //combine the two values
      00075F AF 5C            [24] 2845 	mov	r7,_Data
      000761 7E 00            [12] 2846 	mov	r6,#0x00
      000763 AC 5D            [24] 2847 	mov	r4,(_Data + 0x0001)
      000765 7D 00            [12] 2848 	mov	r5,#0x00
      000767 EC               [12] 2849 	mov	a,r4
      000768 4E               [12] 2850 	orl	a,r6
      000769 F5 82            [12] 2851 	mov	dpl,a
      00076B ED               [12] 2852 	mov	a,r5
      00076C 4F               [12] 2853 	orl	a,r7
      00076D F5 83            [12] 2854 	mov	dph,a
                           000680  2855 	C$LAB6.c$186$1$151 ==.
                                   2856 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:186: return compheading; // the heading returned in degrees between 0 and 3599
                           000680  2857 	C$LAB6.c$187$1$151 ==.
                           000680  2858 	XG$read_compass$0$0 ==.
      00076F 22               [24] 2859 	ret
                                   2860 ;------------------------------------------------------------
                                   2861 ;Allocation info for local variables in function 'read_ranger'
                                   2862 ;------------------------------------------------------------
                                   2863 ;addr                      Allocated to registers 
                                   2864 ;------------------------------------------------------------
                           000681  2865 	G$read_ranger$0$0 ==.
                           000681  2866 	C$LAB6.c$189$1$151 ==.
                                   2867 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:189: char read_ranger(void)
                                   2868 ;	-----------------------------------------
                                   2869 ;	 function read_ranger
                                   2870 ;	-----------------------------------------
      000770                       2871 _read_ranger:
                           000681  2872 	C$LAB6.c$192$1$153 ==.
                                   2873 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:192: i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
      000770 75 32 5C         [24] 2874 	mov	_i2c_read_data_PARM_3,#_Data
      000773 75 33 00         [24] 2875 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000776 75 34 40         [24] 2876 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000779 75 31 02         [24] 2877 	mov	_i2c_read_data_PARM_2,#0x02
      00077C 75 35 02         [24] 2878 	mov	_i2c_read_data_PARM_4,#0x02
      00077F 75 82 E0         [24] 2879 	mov	dpl,#0xe0
      000782 12 04 F5         [24] 2880 	lcall	_i2c_read_data
                           000696  2881 	C$LAB6.c$193$1$153 ==.
                                   2882 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:193: range = (((unsigned int)Data[0] << 8) | Data[1]);
      000785 AF 5C            [24] 2883 	mov	r7,_Data
      000787 7E 00            [12] 2884 	mov	r6,#0x00
      000789 AC 5D            [24] 2885 	mov	r4,(_Data + 0x0001)
      00078B 7D 00            [12] 2886 	mov	r5,#0x00
      00078D EC               [12] 2887 	mov	a,r4
      00078E 4E               [12] 2888 	orl	a,r6
      00078F F5 4F            [12] 2889 	mov	_range,a
      000791 ED               [12] 2890 	mov	a,r5
      000792 4F               [12] 2891 	orl	a,r7
      000793 F5 50            [12] 2892 	mov	(_range + 1),a
                           0006A6  2893 	C$LAB6.c$194$1$153 ==.
                                   2894 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:194: Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
      000795 75 5C 51         [24] 2895 	mov	_Data,#0x51
                           0006A9  2896 	C$LAB6.c$195$1$153 ==.
                                   2897 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:195: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      000798 75 2D 5C         [24] 2898 	mov	_i2c_write_data_PARM_3,#_Data
                                   2899 ;	1-genFromRTrack replaced	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00079B 8E 2E            [24] 2900 	mov	(_i2c_write_data_PARM_3 + 1),r6
      00079D 75 2F 40         [24] 2901 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
                                   2902 ;	1-genFromRTrack replaced	mov	_i2c_write_data_PARM_2,#0x00
      0007A0 8E 2C            [24] 2903 	mov	_i2c_write_data_PARM_2,r6
      0007A2 75 30 01         [24] 2904 	mov	_i2c_write_data_PARM_4,#0x01
      0007A5 75 82 E0         [24] 2905 	mov	dpl,#0xe0
      0007A8 12 04 7B         [24] 2906 	lcall	_i2c_write_data
                           0006BC  2907 	C$LAB6.c$196$1$153 ==.
                                   2908 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:196: return range;
      0007AB 85 4F 82         [24] 2909 	mov	dpl,_range
                           0006BF  2910 	C$LAB6.c$197$1$153 ==.
                           0006BF  2911 	XG$read_ranger$0$0 ==.
      0007AE 22               [24] 2912 	ret
                                   2913 ;------------------------------------------------------------
                                   2914 ;Allocation info for local variables in function 'set_tail_PWM'
                                   2915 ;------------------------------------------------------------
                                   2916 ;sloc0                     Allocated with name '_set_tail_PWM_sloc0_1_0'
                                   2917 ;------------------------------------------------------------
                           0006C0  2918 	G$set_tail_PWM$0$0 ==.
                           0006C0  2919 	C$LAB6.c$199$1$153 ==.
                                   2920 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:199: void set_tail_PWM(void)
                                   2921 ;	-----------------------------------------
                                   2922 ;	 function set_tail_PWM
                                   2923 ;	-----------------------------------------
      0007AF                       2924 _set_tail_PWM:
                           0006C0  2925 	C$LAB6.c$201$1$155 ==.
                                   2926 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:201: error = desired_heading - heading;
      0007AF E5 58            [12] 2927 	mov	a,_desired_heading
      0007B1 C3               [12] 2928 	clr	c
      0007B2 95 51            [12] 2929 	subb	a,_heading
      0007B4 F5 5A            [12] 2930 	mov	_error,a
      0007B6 E5 59            [12] 2931 	mov	a,(_desired_heading + 1)
      0007B8 95 52            [12] 2932 	subb	a,(_heading + 1)
      0007BA F5 5B            [12] 2933 	mov	(_error + 1),a
                           0006CD  2934 	C$LAB6.c$202$1$155 ==.
                                   2935 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:202: if (error > 1800) {
      0007BC C3               [12] 2936 	clr	c
      0007BD 74 08            [12] 2937 	mov	a,#0x08
      0007BF 95 5A            [12] 2938 	subb	a,_error
      0007C1 74 87            [12] 2939 	mov	a,#(0x07 ^ 0x80)
      0007C3 85 5B F0         [24] 2940 	mov	b,(_error + 1)
      0007C6 63 F0 80         [24] 2941 	xrl	b,#0x80
      0007C9 95 F0            [12] 2942 	subb	a,b
      0007CB 50 0E            [24] 2943 	jnc	00104$
                           0006DE  2944 	C$LAB6.c$203$2$156 ==.
                                   2945 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:203: error = error - 3600;
      0007CD E5 5A            [12] 2946 	mov	a,_error
      0007CF 24 F0            [12] 2947 	add	a,#0xf0
      0007D1 F5 5A            [12] 2948 	mov	_error,a
      0007D3 E5 5B            [12] 2949 	mov	a,(_error + 1)
      0007D5 34 F1            [12] 2950 	addc	a,#0xf1
      0007D7 F5 5B            [12] 2951 	mov	(_error + 1),a
      0007D9 80 1A            [24] 2952 	sjmp	00105$
      0007DB                       2953 00104$:
                           0006EC  2954 	C$LAB6.c$205$1$155 ==.
                                   2955 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:205: else if (error < -1800) {
      0007DB C3               [12] 2956 	clr	c
      0007DC E5 5A            [12] 2957 	mov	a,_error
      0007DE 94 F8            [12] 2958 	subb	a,#0xf8
      0007E0 E5 5B            [12] 2959 	mov	a,(_error + 1)
      0007E2 64 80            [12] 2960 	xrl	a,#0x80
      0007E4 94 78            [12] 2961 	subb	a,#0x78
      0007E6 50 0D            [24] 2962 	jnc	00105$
                           0006F9  2963 	C$LAB6.c$206$2$157 ==.
                                   2964 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:206: error = 3600 - error;
      0007E8 74 10            [12] 2965 	mov	a,#0x10
      0007EA C3               [12] 2966 	clr	c
      0007EB 95 5A            [12] 2967 	subb	a,_error
      0007ED F5 5A            [12] 2968 	mov	_error,a
      0007EF 74 0E            [12] 2969 	mov	a,#0x0e
      0007F1 95 5B            [12] 2970 	subb	a,(_error + 1)
      0007F3 F5 5B            [12] 2971 	mov	(_error + 1),a
      0007F5                       2972 00105$:
                           000706  2973 	C$LAB6.c$209$1$155 ==.
                                   2974 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:209: TAIL_PW = (signed long)MOTOR_STOP+(signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-prev_error);
      0007F5 AC 36            [24] 2975 	mov	r4,_MOTOR_STOP
      0007F7 AD 37            [24] 2976 	mov	r5,(_MOTOR_STOP + 1)
      0007F9 7E 00            [12] 2977 	mov	r6,#0x00
      0007FB 7F 00            [12] 2978 	mov	r7,#0x00
      0007FD A8 48            [24] 2979 	mov	r0,_kp
      0007FF 79 00            [12] 2980 	mov	r1,#0x00
      000801 7A 00            [12] 2981 	mov	r2,#0x00
      000803 7B 00            [12] 2982 	mov	r3,#0x00
      000805 85 5A 11         [24] 2983 	mov	__mullong_PARM_2,_error
      000808 E5 5B            [12] 2984 	mov	a,(_error + 1)
      00080A F5 12            [12] 2985 	mov	(__mullong_PARM_2 + 1),a
      00080C 33               [12] 2986 	rlc	a
      00080D 95 E0            [12] 2987 	subb	a,acc
      00080F F5 13            [12] 2988 	mov	(__mullong_PARM_2 + 2),a
      000811 F5 14            [12] 2989 	mov	(__mullong_PARM_2 + 3),a
      000813 88 82            [24] 2990 	mov	dpl,r0
      000815 89 83            [24] 2991 	mov	dph,r1
      000817 8A F0            [24] 2992 	mov	b,r2
      000819 EB               [12] 2993 	mov	a,r3
      00081A C0 07            [24] 2994 	push	ar7
      00081C C0 06            [24] 2995 	push	ar6
      00081E C0 05            [24] 2996 	push	ar5
      000820 C0 04            [24] 2997 	push	ar4
      000822 12 0E 1E         [24] 2998 	lcall	__mullong
      000825 A8 82            [24] 2999 	mov	r0,dpl
      000827 A9 83            [24] 3000 	mov	r1,dph
      000829 AA F0            [24] 3001 	mov	r2,b
      00082B FB               [12] 3002 	mov	r3,a
      00082C D0 04            [24] 3003 	pop	ar4
      00082E D0 05            [24] 3004 	pop	ar5
      000830 D0 06            [24] 3005 	pop	ar6
      000832 D0 07            [24] 3006 	pop	ar7
      000834 E8               [12] 3007 	mov	a,r0
      000835 2C               [12] 3008 	add	a,r4
      000836 FC               [12] 3009 	mov	r4,a
      000837 E9               [12] 3010 	mov	a,r1
      000838 3D               [12] 3011 	addc	a,r5
      000839 FD               [12] 3012 	mov	r5,a
      00083A EA               [12] 3013 	mov	a,r2
      00083B 3E               [12] 3014 	addc	a,r6
      00083C FE               [12] 3015 	mov	r6,a
      00083D EB               [12] 3016 	mov	a,r3
      00083E 3F               [12] 3017 	addc	a,r7
      00083F FF               [12] 3018 	mov	r7,a
      000840 85 49 61         [24] 3019 	mov	_set_tail_PWM_sloc0_1_0,_kd
      000843 E4               [12] 3020 	clr	a
      000844 F5 62            [12] 3021 	mov	(_set_tail_PWM_sloc0_1_0 + 1),a
      000846 F5 63            [12] 3022 	mov	(_set_tail_PWM_sloc0_1_0 + 2),a
      000848 F5 64            [12] 3023 	mov	(_set_tail_PWM_sloc0_1_0 + 3),a
      00084A E5 5A            [12] 3024 	mov	a,_error
      00084C C3               [12] 3025 	clr	c
      00084D 95 4A            [12] 3026 	subb	a,_prev_error
      00084F FA               [12] 3027 	mov	r2,a
      000850 E5 5B            [12] 3028 	mov	a,(_error + 1)
      000852 95 4B            [12] 3029 	subb	a,(_prev_error + 1)
      000854 8A 11            [24] 3030 	mov	__mullong_PARM_2,r2
      000856 F5 12            [12] 3031 	mov	(__mullong_PARM_2 + 1),a
      000858 33               [12] 3032 	rlc	a
      000859 95 E0            [12] 3033 	subb	a,acc
      00085B F5 13            [12] 3034 	mov	(__mullong_PARM_2 + 2),a
      00085D F5 14            [12] 3035 	mov	(__mullong_PARM_2 + 3),a
      00085F 85 61 82         [24] 3036 	mov	dpl,_set_tail_PWM_sloc0_1_0
      000862 85 62 83         [24] 3037 	mov	dph,(_set_tail_PWM_sloc0_1_0 + 1)
      000865 85 63 F0         [24] 3038 	mov	b,(_set_tail_PWM_sloc0_1_0 + 2)
      000868 E5 64            [12] 3039 	mov	a,(_set_tail_PWM_sloc0_1_0 + 3)
      00086A C0 07            [24] 3040 	push	ar7
      00086C C0 06            [24] 3041 	push	ar6
      00086E C0 05            [24] 3042 	push	ar5
      000870 C0 04            [24] 3043 	push	ar4
      000872 12 0E 1E         [24] 3044 	lcall	__mullong
      000875 A8 82            [24] 3045 	mov	r0,dpl
      000877 A9 83            [24] 3046 	mov	r1,dph
      000879 AA F0            [24] 3047 	mov	r2,b
      00087B FB               [12] 3048 	mov	r3,a
      00087C D0 04            [24] 3049 	pop	ar4
      00087E D0 05            [24] 3050 	pop	ar5
      000880 D0 06            [24] 3051 	pop	ar6
      000882 D0 07            [24] 3052 	pop	ar7
      000884 E8               [12] 3053 	mov	a,r0
      000885 2C               [12] 3054 	add	a,r4
      000886 FC               [12] 3055 	mov	r4,a
      000887 E9               [12] 3056 	mov	a,r1
      000888 3D               [12] 3057 	addc	a,r5
      000889 FD               [12] 3058 	mov	r5,a
      00088A EA               [12] 3059 	mov	a,r2
      00088B 3E               [12] 3060 	addc	a,r6
      00088C FE               [12] 3061 	mov	r6,a
      00088D EB               [12] 3062 	mov	a,r3
      00088E 3F               [12] 3063 	addc	a,r7
      00088F FF               [12] 3064 	mov	r7,a
      000890 8C 3C            [24] 3065 	mov	_TAIL_PW,r4
      000892 8D 3D            [24] 3066 	mov	(_TAIL_PW + 1),r5
                           0007A5  3067 	C$LAB6.c$211$1$155 ==.
                                   3068 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:211: if (TAIL_PW > MOTOR_MAX) {
      000894 C3               [12] 3069 	clr	c
      000895 E5 38            [12] 3070 	mov	a,_MOTOR_MAX
      000897 95 3C            [12] 3071 	subb	a,_TAIL_PW
      000899 E5 39            [12] 3072 	mov	a,(_MOTOR_MAX + 1)
      00089B 95 3D            [12] 3073 	subb	a,(_TAIL_PW + 1)
      00089D 50 08            [24] 3074 	jnc	00109$
                           0007B0  3075 	C$LAB6.c$212$2$158 ==.
                                   3076 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:212: TAIL_PW = MOTOR_MAX;
      00089F 85 38 3C         [24] 3077 	mov	_TAIL_PW,_MOTOR_MAX
      0008A2 85 39 3D         [24] 3078 	mov	(_TAIL_PW + 1),(_MOTOR_MAX + 1)
      0008A5 80 11            [24] 3079 	sjmp	00110$
      0008A7                       3080 00109$:
                           0007B8  3081 	C$LAB6.c$214$1$155 ==.
                                   3082 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:214: else if (TAIL_PW < MOTOR_MIN) {
      0008A7 C3               [12] 3083 	clr	c
      0008A8 E5 3C            [12] 3084 	mov	a,_TAIL_PW
      0008AA 95 3A            [12] 3085 	subb	a,_MOTOR_MIN
      0008AC E5 3D            [12] 3086 	mov	a,(_TAIL_PW + 1)
      0008AE 95 3B            [12] 3087 	subb	a,(_MOTOR_MIN + 1)
      0008B0 50 06            [24] 3088 	jnc	00110$
                           0007C3  3089 	C$LAB6.c$215$2$159 ==.
                                   3090 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:215: TAIL_PW = MOTOR_MIN;
      0008B2 85 3A 3C         [24] 3091 	mov	_TAIL_PW,_MOTOR_MIN
      0008B5 85 3B 3D         [24] 3092 	mov	(_TAIL_PW + 1),(_MOTOR_MIN + 1)
      0008B8                       3093 00110$:
                           0007C9  3094 	C$LAB6.c$217$1$155 ==.
                                   3095 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:217: PCA0CP0 = 0xFFFF - TAIL_PW;
      0008B8 74 FF            [12] 3096 	mov	a,#0xff
      0008BA C3               [12] 3097 	clr	c
      0008BB 95 3C            [12] 3098 	subb	a,_TAIL_PW
      0008BD F5 EA            [12] 3099 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      0008BF 74 FF            [12] 3100 	mov	a,#0xff
      0008C1 95 3D            [12] 3101 	subb	a,(_TAIL_PW + 1)
      0008C3 F5 FA            [12] 3102 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           0007D6  3103 	C$LAB6.c$218$1$155 ==.
                                   3104 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:218: prev_error = error;
      0008C5 85 5A 4A         [24] 3105 	mov	_prev_error,_error
      0008C8 85 5B 4B         [24] 3106 	mov	(_prev_error + 1),(_error + 1)
                           0007DC  3107 	C$LAB6.c$220$1$155 ==.
                           0007DC  3108 	XG$set_tail_PWM$0$0 ==.
      0008CB 22               [24] 3109 	ret
                                   3110 ;------------------------------------------------------------
                                   3111 ;Allocation info for local variables in function 'set_gains'
                                   3112 ;------------------------------------------------------------
                                   3113 ;keypad                    Allocated to registers r7 
                                   3114 ;var                       Allocated to registers r6 
                                   3115 ;------------------------------------------------------------
                           0007DD  3116 	G$set_gains$0$0 ==.
                           0007DD  3117 	C$LAB6.c$222$1$155 ==.
                                   3118 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:222: void set_gains(void) {
                                   3119 ;	-----------------------------------------
                                   3120 ;	 function set_gains
                                   3121 ;	-----------------------------------------
      0008CC                       3122 _set_gains:
                           0007DD  3123 	C$LAB6.c$225$1$161 ==.
                                   3124 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:225: lcd_clear();
      0008CC 12 01 EF         [24] 3125 	lcall	_lcd_clear
                           0007E0  3126 	C$LAB6.c$226$1$161 ==.
                                   3127 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:226: lcd_print("Pick a kP\nPress two Numbers\n\nenter with 0 first");
      0008CF 74 5A            [12] 3128 	mov	a,#___str_6
      0008D1 C0 E0            [24] 3129 	push	acc
      0008D3 74 15            [12] 3130 	mov	a,#(___str_6 >> 8)
      0008D5 C0 E0            [24] 3131 	push	acc
      0008D7 74 80            [12] 3132 	mov	a,#0x80
      0008D9 C0 E0            [24] 3133 	push	acc
      0008DB 12 01 6A         [24] 3134 	lcall	_lcd_print
      0008DE 15 81            [12] 3135 	dec	sp
      0008E0 15 81            [12] 3136 	dec	sp
      0008E2 15 81            [12] 3137 	dec	sp
                           0007F5  3138 	C$LAB6.c$227$1$161 ==.
                                   3139 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:227: while (1) {
      0008E4                       3140 00107$:
                           0007F5  3141 	C$LAB6.c$228$2$162 ==.
                                   3142 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:228: keypad = read_keypad();
      0008E4 12 02 28         [24] 3143 	lcall	_read_keypad
      0008E7 AF 82            [24] 3144 	mov	r7,dpl
                           0007FA  3145 	C$LAB6.c$229$2$162 ==.
                                   3146 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:229: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      0008E9 C0 07            [24] 3147 	push	ar7
      0008EB 12 0C A1         [24] 3148 	lcall	_pause
      0008EE D0 07            [24] 3149 	pop	ar7
                           000801  3150 	C$LAB6.c$232$2$162 ==.
                                   3151 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:232: if (keypad != 0xFF) {
      0008F0 BF FF 02         [24] 3152 	cjne	r7,#0xff,00171$
      0008F3 80 EF            [24] 3153 	sjmp	00107$
      0008F5                       3154 00171$:
                           000806  3155 	C$LAB6.c$233$3$163 ==.
                                   3156 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:233: while (read_keypad() != 0xFF);
      0008F5                       3157 00101$:
      0008F5 C0 07            [24] 3158 	push	ar7
      0008F7 12 02 28         [24] 3159 	lcall	_read_keypad
      0008FA AE 82            [24] 3160 	mov	r6,dpl
      0008FC D0 07            [24] 3161 	pop	ar7
      0008FE BE FF F4         [24] 3162 	cjne	r6,#0xff,00101$
                           000812  3163 	C$LAB6.c$234$3$163 ==.
                                   3164 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:234: lcd_clear();
      000901 C0 07            [24] 3165 	push	ar7
      000903 12 01 EF         [24] 3166 	lcall	_lcd_clear
      000906 D0 07            [24] 3167 	pop	ar7
                           000819  3168 	C$LAB6.c$235$3$163 ==.
                                   3169 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:235: var = (keypad - 0x30) * 10;
      000908 EF               [12] 3170 	mov	a,r7
      000909 24 D0            [12] 3171 	add	a,#0xd0
      00090B 75 F0 0A         [24] 3172 	mov	b,#0x0a
      00090E A4               [48] 3173 	mul	ab
                           000820  3174 	C$LAB6.c$236$3$163 ==.
                                   3175 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:236: lcd_print("%i", var);
      00090F FE               [12] 3176 	mov	r6,a
      000910 FC               [12] 3177 	mov	r4,a
      000911 7D 00            [12] 3178 	mov	r5,#0x00
      000913 C0 06            [24] 3179 	push	ar6
      000915 C0 04            [24] 3180 	push	ar4
      000917 C0 05            [24] 3181 	push	ar5
      000919 74 8A            [12] 3182 	mov	a,#___str_7
      00091B C0 E0            [24] 3183 	push	acc
      00091D 74 15            [12] 3184 	mov	a,#(___str_7 >> 8)
      00091F C0 E0            [24] 3185 	push	acc
      000921 74 80            [12] 3186 	mov	a,#0x80
      000923 C0 E0            [24] 3187 	push	acc
      000925 12 01 6A         [24] 3188 	lcall	_lcd_print
      000928 E5 81            [12] 3189 	mov	a,sp
      00092A 24 FB            [12] 3190 	add	a,#0xfb
      00092C F5 81            [12] 3191 	mov	sp,a
      00092E D0 06            [24] 3192 	pop	ar6
                           000841  3193 	C$LAB6.c$240$1$161 ==.
                                   3194 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:240: while (1) {
      000930                       3195 00115$:
                           000841  3196 	C$LAB6.c$241$2$164 ==.
                                   3197 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:241: keypad = read_keypad();
      000930 C0 06            [24] 3198 	push	ar6
      000932 12 02 28         [24] 3199 	lcall	_read_keypad
      000935 AF 82            [24] 3200 	mov	r7,dpl
      000937 D0 06            [24] 3201 	pop	ar6
                           00084A  3202 	C$LAB6.c$242$2$164 ==.
                                   3203 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:242: pause();
      000939 C0 07            [24] 3204 	push	ar7
      00093B C0 06            [24] 3205 	push	ar6
      00093D 12 0C A1         [24] 3206 	lcall	_pause
      000940 D0 06            [24] 3207 	pop	ar6
      000942 D0 07            [24] 3208 	pop	ar7
                           000855  3209 	C$LAB6.c$243$2$164 ==.
                                   3210 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:243: if (keypad != 0xFF) {
      000944 BF FF 02         [24] 3211 	cjne	r7,#0xff,00174$
      000947 80 E7            [24] 3212 	sjmp	00115$
      000949                       3213 00174$:
                           00085A  3214 	C$LAB6.c$244$3$165 ==.
                                   3215 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:244: while (read_keypad() != 0xFF);
      000949                       3216 00109$:
      000949 C0 07            [24] 3217 	push	ar7
      00094B C0 06            [24] 3218 	push	ar6
      00094D 12 02 28         [24] 3219 	lcall	_read_keypad
      000950 AD 82            [24] 3220 	mov	r5,dpl
      000952 D0 06            [24] 3221 	pop	ar6
      000954 D0 07            [24] 3222 	pop	ar7
      000956 BD FF F0         [24] 3223 	cjne	r5,#0xff,00109$
                           00086A  3224 	C$LAB6.c$245$3$165 ==.
                                   3225 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:245: lcd_clear();
      000959 C0 07            [24] 3226 	push	ar7
      00095B C0 06            [24] 3227 	push	ar6
      00095D 12 01 EF         [24] 3228 	lcall	_lcd_clear
      000960 D0 06            [24] 3229 	pop	ar6
      000962 D0 07            [24] 3230 	pop	ar7
                           000875  3231 	C$LAB6.c$246$3$165 ==.
                                   3232 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:246: var = var + (keypad - 0x30); 
      000964 EF               [12] 3233 	mov	a,r7
      000965 24 D0            [12] 3234 	add	a,#0xd0
      000967 2E               [12] 3235 	add	a,r6
                           000879  3236 	C$LAB6.c$247$3$165 ==.
                                   3237 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:247: lcd_print("%i", var);		
      000968 FE               [12] 3238 	mov	r6,a
      000969 FC               [12] 3239 	mov	r4,a
      00096A 7D 00            [12] 3240 	mov	r5,#0x00
      00096C C0 06            [24] 3241 	push	ar6
      00096E C0 05            [24] 3242 	push	ar5
      000970 C0 04            [24] 3243 	push	ar4
      000972 C0 04            [24] 3244 	push	ar4
      000974 C0 05            [24] 3245 	push	ar5
      000976 74 8A            [12] 3246 	mov	a,#___str_7
      000978 C0 E0            [24] 3247 	push	acc
      00097A 74 15            [12] 3248 	mov	a,#(___str_7 >> 8)
      00097C C0 E0            [24] 3249 	push	acc
      00097E 74 80            [12] 3250 	mov	a,#0x80
      000980 C0 E0            [24] 3251 	push	acc
      000982 12 01 6A         [24] 3252 	lcall	_lcd_print
      000985 E5 81            [12] 3253 	mov	a,sp
      000987 24 FB            [12] 3254 	add	a,#0xfb
      000989 F5 81            [12] 3255 	mov	sp,a
      00098B D0 04            [24] 3256 	pop	ar4
      00098D D0 05            [24] 3257 	pop	ar5
                           0008A0  3258 	C$LAB6.c$251$1$161 ==.
                                   3259 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:251: lcd_print("Desired kP: %i", var);
      00098F C0 04            [24] 3260 	push	ar4
      000991 C0 05            [24] 3261 	push	ar5
      000993 74 8D            [12] 3262 	mov	a,#___str_8
      000995 C0 E0            [24] 3263 	push	acc
      000997 74 15            [12] 3264 	mov	a,#(___str_8 >> 8)
      000999 C0 E0            [24] 3265 	push	acc
      00099B 74 80            [12] 3266 	mov	a,#0x80
      00099D C0 E0            [24] 3267 	push	acc
      00099F 12 01 6A         [24] 3268 	lcall	_lcd_print
      0009A2 E5 81            [12] 3269 	mov	a,sp
      0009A4 24 FB            [12] 3270 	add	a,#0xfb
      0009A6 F5 81            [12] 3271 	mov	sp,a
                           0008B9  3272 	C$LAB6.c$252$1$161 ==.
                                   3273 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:252: wait();
      0009A8 12 0C AB         [24] 3274 	lcall	_wait
      0009AB D0 06            [24] 3275 	pop	ar6
                           0008BE  3276 	C$LAB6.c$253$1$161 ==.
                                   3277 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:253: kp = var;
      0009AD 8E 48            [24] 3278 	mov	_kp,r6
                           0008C0  3279 	C$LAB6.c$256$1$161 ==.
                                   3280 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:256: lcd_clear();
      0009AF 12 01 EF         [24] 3281 	lcall	_lcd_clear
                           0008C3  3282 	C$LAB6.c$257$1$161 ==.
                                   3283 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:257: lcd_print("Pick a kD\nPress two Numbers\n\nenter with 0 first");
      0009B2 74 9C            [12] 3284 	mov	a,#___str_9
      0009B4 C0 E0            [24] 3285 	push	acc
      0009B6 74 15            [12] 3286 	mov	a,#(___str_9 >> 8)
      0009B8 C0 E0            [24] 3287 	push	acc
      0009BA 74 80            [12] 3288 	mov	a,#0x80
      0009BC C0 E0            [24] 3289 	push	acc
      0009BE 12 01 6A         [24] 3290 	lcall	_lcd_print
      0009C1 15 81            [12] 3291 	dec	sp
      0009C3 15 81            [12] 3292 	dec	sp
      0009C5 15 81            [12] 3293 	dec	sp
                           0008D8  3294 	C$LAB6.c$258$1$161 ==.
                                   3295 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:258: while (1) {
      0009C7                       3296 00123$:
                           0008D8  3297 	C$LAB6.c$259$2$166 ==.
                                   3298 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:259: keypad = read_keypad();
      0009C7 12 02 28         [24] 3299 	lcall	_read_keypad
      0009CA AF 82            [24] 3300 	mov	r7,dpl
                           0008DD  3301 	C$LAB6.c$260$2$166 ==.
                                   3302 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:260: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      0009CC C0 07            [24] 3303 	push	ar7
      0009CE 12 0C A1         [24] 3304 	lcall	_pause
      0009D1 D0 07            [24] 3305 	pop	ar7
                           0008E4  3306 	C$LAB6.c$263$2$166 ==.
                                   3307 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:263: if (keypad != 0xFF) {
      0009D3 BF FF 02         [24] 3308 	cjne	r7,#0xff,00177$
      0009D6 80 EF            [24] 3309 	sjmp	00123$
      0009D8                       3310 00177$:
                           0008E9  3311 	C$LAB6.c$264$3$167 ==.
                                   3312 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:264: while (read_keypad() != 0xFF);
      0009D8                       3313 00117$:
      0009D8 C0 07            [24] 3314 	push	ar7
      0009DA 12 02 28         [24] 3315 	lcall	_read_keypad
      0009DD AD 82            [24] 3316 	mov	r5,dpl
      0009DF D0 07            [24] 3317 	pop	ar7
      0009E1 BD FF F4         [24] 3318 	cjne	r5,#0xff,00117$
                           0008F5  3319 	C$LAB6.c$265$3$167 ==.
                                   3320 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:265: lcd_clear();
      0009E4 C0 07            [24] 3321 	push	ar7
      0009E6 12 01 EF         [24] 3322 	lcall	_lcd_clear
      0009E9 D0 07            [24] 3323 	pop	ar7
                           0008FC  3324 	C$LAB6.c$266$3$167 ==.
                                   3325 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:266: var = (keypad - 0x30) * 10;
      0009EB EF               [12] 3326 	mov	a,r7
      0009EC 24 D0            [12] 3327 	add	a,#0xd0
      0009EE 75 F0 0A         [24] 3328 	mov	b,#0x0a
      0009F1 A4               [48] 3329 	mul	ab
                           000903  3330 	C$LAB6.c$267$3$167 ==.
                                   3331 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:267: lcd_print("%i", var);
      0009F2 FE               [12] 3332 	mov	r6,a
      0009F3 FC               [12] 3333 	mov	r4,a
      0009F4 7D 00            [12] 3334 	mov	r5,#0x00
      0009F6 C0 06            [24] 3335 	push	ar6
      0009F8 C0 04            [24] 3336 	push	ar4
      0009FA C0 05            [24] 3337 	push	ar5
      0009FC 74 8A            [12] 3338 	mov	a,#___str_7
      0009FE C0 E0            [24] 3339 	push	acc
      000A00 74 15            [12] 3340 	mov	a,#(___str_7 >> 8)
      000A02 C0 E0            [24] 3341 	push	acc
      000A04 74 80            [12] 3342 	mov	a,#0x80
      000A06 C0 E0            [24] 3343 	push	acc
      000A08 12 01 6A         [24] 3344 	lcall	_lcd_print
      000A0B E5 81            [12] 3345 	mov	a,sp
      000A0D 24 FB            [12] 3346 	add	a,#0xfb
      000A0F F5 81            [12] 3347 	mov	sp,a
      000A11 D0 06            [24] 3348 	pop	ar6
                           000924  3349 	C$LAB6.c$271$1$161 ==.
                                   3350 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:271: while (1) {
      000A13                       3351 00131$:
                           000924  3352 	C$LAB6.c$272$2$168 ==.
                                   3353 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:272: keypad = read_keypad();
      000A13 C0 06            [24] 3354 	push	ar6
      000A15 12 02 28         [24] 3355 	lcall	_read_keypad
      000A18 AF 82            [24] 3356 	mov	r7,dpl
      000A1A D0 06            [24] 3357 	pop	ar6
                           00092D  3358 	C$LAB6.c$273$2$168 ==.
                                   3359 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:273: pause();
      000A1C C0 07            [24] 3360 	push	ar7
      000A1E C0 06            [24] 3361 	push	ar6
      000A20 12 0C A1         [24] 3362 	lcall	_pause
      000A23 D0 06            [24] 3363 	pop	ar6
      000A25 D0 07            [24] 3364 	pop	ar7
                           000938  3365 	C$LAB6.c$274$2$168 ==.
                                   3366 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:274: if (keypad != 0xFF) {
      000A27 BF FF 02         [24] 3367 	cjne	r7,#0xff,00180$
      000A2A 80 E7            [24] 3368 	sjmp	00131$
      000A2C                       3369 00180$:
                           00093D  3370 	C$LAB6.c$275$3$169 ==.
                                   3371 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:275: while (read_keypad() != 0xFF);
      000A2C                       3372 00125$:
      000A2C C0 07            [24] 3373 	push	ar7
      000A2E C0 06            [24] 3374 	push	ar6
      000A30 12 02 28         [24] 3375 	lcall	_read_keypad
      000A33 AD 82            [24] 3376 	mov	r5,dpl
      000A35 D0 06            [24] 3377 	pop	ar6
      000A37 D0 07            [24] 3378 	pop	ar7
      000A39 BD FF F0         [24] 3379 	cjne	r5,#0xff,00125$
                           00094D  3380 	C$LAB6.c$276$3$169 ==.
                                   3381 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:276: lcd_clear();
      000A3C C0 07            [24] 3382 	push	ar7
      000A3E C0 06            [24] 3383 	push	ar6
      000A40 12 01 EF         [24] 3384 	lcall	_lcd_clear
      000A43 D0 06            [24] 3385 	pop	ar6
      000A45 D0 07            [24] 3386 	pop	ar7
                           000958  3387 	C$LAB6.c$277$3$169 ==.
                                   3388 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:277: var = var + (keypad - 0x30); 
      000A47 EF               [12] 3389 	mov	a,r7
      000A48 24 D0            [12] 3390 	add	a,#0xd0
      000A4A 2E               [12] 3391 	add	a,r6
                           00095C  3392 	C$LAB6.c$278$3$169 ==.
                                   3393 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:278: lcd_print("%i", var);		
      000A4B FE               [12] 3394 	mov	r6,a
      000A4C FD               [12] 3395 	mov	r5,a
      000A4D 7F 00            [12] 3396 	mov	r7,#0x00
      000A4F C0 07            [24] 3397 	push	ar7
      000A51 C0 06            [24] 3398 	push	ar6
      000A53 C0 05            [24] 3399 	push	ar5
      000A55 C0 05            [24] 3400 	push	ar5
      000A57 C0 07            [24] 3401 	push	ar7
      000A59 74 8A            [12] 3402 	mov	a,#___str_7
      000A5B C0 E0            [24] 3403 	push	acc
      000A5D 74 15            [12] 3404 	mov	a,#(___str_7 >> 8)
      000A5F C0 E0            [24] 3405 	push	acc
      000A61 74 80            [12] 3406 	mov	a,#0x80
      000A63 C0 E0            [24] 3407 	push	acc
      000A65 12 01 6A         [24] 3408 	lcall	_lcd_print
      000A68 E5 81            [12] 3409 	mov	a,sp
      000A6A 24 FB            [12] 3410 	add	a,#0xfb
      000A6C F5 81            [12] 3411 	mov	sp,a
      000A6E D0 05            [24] 3412 	pop	ar5
      000A70 D0 06            [24] 3413 	pop	ar6
      000A72 D0 07            [24] 3414 	pop	ar7
                           000985  3415 	C$LAB6.c$282$1$161 ==.
                                   3416 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:282: lcd_print("Desired kD: %i", var);
      000A74 C0 06            [24] 3417 	push	ar6
      000A76 C0 05            [24] 3418 	push	ar5
      000A78 C0 07            [24] 3419 	push	ar7
      000A7A 74 CC            [12] 3420 	mov	a,#___str_10
      000A7C C0 E0            [24] 3421 	push	acc
      000A7E 74 15            [12] 3422 	mov	a,#(___str_10 >> 8)
      000A80 C0 E0            [24] 3423 	push	acc
      000A82 74 80            [12] 3424 	mov	a,#0x80
      000A84 C0 E0            [24] 3425 	push	acc
      000A86 12 01 6A         [24] 3426 	lcall	_lcd_print
      000A89 E5 81            [12] 3427 	mov	a,sp
      000A8B 24 FB            [12] 3428 	add	a,#0xfb
      000A8D F5 81            [12] 3429 	mov	sp,a
                           0009A0  3430 	C$LAB6.c$283$1$161 ==.
                                   3431 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:283: wait();
      000A8F 12 0C AB         [24] 3432 	lcall	_wait
      000A92 D0 06            [24] 3433 	pop	ar6
                           0009A5  3434 	C$LAB6.c$284$1$161 ==.
                                   3435 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:284: kd = var;
      000A94 8E 49            [24] 3436 	mov	_kd,r6
                           0009A7  3437 	C$LAB6.c$285$1$161 ==.
                           0009A7  3438 	XG$set_gains$0$0 ==.
      000A96 22               [24] 3439 	ret
                                   3440 ;------------------------------------------------------------
                                   3441 ;Allocation info for local variables in function 'tilt_set'
                                   3442 ;------------------------------------------------------------
                           0009A8  3443 	G$tilt_set$0$0 ==.
                           0009A8  3444 	C$LAB6.c$287$1$161 ==.
                                   3445 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:287: void tilt_set(void)
                                   3446 ;	-----------------------------------------
                                   3447 ;	 function tilt_set
                                   3448 ;	-----------------------------------------
      000A97                       3449 _tilt_set:
                           0009A8  3450 	C$LAB6.c$289$1$171 ==.
                                   3451 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:289: range = 10;
      000A97 75 4F 0A         [24] 3452 	mov	_range,#0x0a
      000A9A 75 50 00         [24] 3453 	mov	(_range + 1),#0x00
                           0009AE  3454 	C$LAB6.c$290$1$171 ==.
                                   3455 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:290: prev_range = range;
      000A9D 75 53 0A         [24] 3456 	mov	_prev_range,#0x0a
      000AA0 75 54 00         [24] 3457 	mov	(_prev_range + 1),#0x00
                           0009B4  3458 	C$LAB6.c$291$1$171 ==.
                                   3459 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:291: xCounts = 0;
      000AA3 75 57 00         [24] 3460 	mov	_xCounts,#0x00
                           0009B7  3461 	C$LAB6.c$292$2$172 ==.
                                   3462 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:292: while (xCounts < 250){
      000AA6                       3463 00108$:
      000AA6 74 06            [12] 3464 	mov	a,#0x100 - 0xfa
      000AA8 25 57            [12] 3465 	add	a,_xCounts
      000AAA 50 03            [24] 3466 	jnc	00128$
      000AAC 02 0B 71         [24] 3467 	ljmp	00111$
      000AAF                       3468 00128$:
                           0009C0  3469 	C$LAB6.c$293$2$172 ==.
                                   3470 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:293: range = read_ranger();
      000AAF 12 07 70         [24] 3471 	lcall	_read_ranger
      000AB2 AF 82            [24] 3472 	mov	r7,dpl
      000AB4 8F 4F            [24] 3473 	mov	_range,r7
      000AB6 75 50 00         [24] 3474 	mov	(_range + 1),#0x00
                           0009CA  3475 	C$LAB6.c$294$2$172 ==.
                                   3476 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:294: pause();
      000AB9 12 0C A1         [24] 3477 	lcall	_pause
                           0009CD  3478 	C$LAB6.c$295$2$172 ==.
                                   3479 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:295: SERVO_PW = SERVO_MIN + (((SERVO_MAX - SERVO_MIN)/40)*range);
      000ABC E5 42            [12] 3480 	mov	a,_SERVO_MAX
      000ABE C3               [12] 3481 	clr	c
      000ABF 95 44            [12] 3482 	subb	a,_SERVO_MIN
      000AC1 F5 82            [12] 3483 	mov	dpl,a
      000AC3 E5 43            [12] 3484 	mov	a,(_SERVO_MAX + 1)
      000AC5 95 45            [12] 3485 	subb	a,(_SERVO_MIN + 1)
      000AC7 F5 83            [12] 3486 	mov	dph,a
      000AC9 75 11 28         [24] 3487 	mov	__divuint_PARM_2,#0x28
      000ACC 75 12 00         [24] 3488 	mov	(__divuint_PARM_2 + 1),#0x00
      000ACF 12 0C B5         [24] 3489 	lcall	__divuint
      000AD2 85 4F 11         [24] 3490 	mov	__mulint_PARM_2,_range
      000AD5 85 50 12         [24] 3491 	mov	(__mulint_PARM_2 + 1),(_range + 1)
      000AD8 12 0D 06         [24] 3492 	lcall	__mulint
      000ADB AE 82            [24] 3493 	mov	r6,dpl
      000ADD AF 83            [24] 3494 	mov	r7,dph
      000ADF EE               [12] 3495 	mov	a,r6
      000AE0 25 44            [12] 3496 	add	a,_SERVO_MIN
      000AE2 F5 46            [12] 3497 	mov	_SERVO_PW,a
      000AE4 EF               [12] 3498 	mov	a,r7
      000AE5 35 45            [12] 3499 	addc	a,(_SERVO_MIN + 1)
      000AE7 F5 47            [12] 3500 	mov	(_SERVO_PW + 1),a
                           0009FA  3501 	C$LAB6.c$296$2$172 ==.
                                   3502 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:296: if (SERVO_PW > SERVO_MAX) {
      000AE9 C3               [12] 3503 	clr	c
      000AEA E5 42            [12] 3504 	mov	a,_SERVO_MAX
      000AEC 95 46            [12] 3505 	subb	a,_SERVO_PW
      000AEE E5 43            [12] 3506 	mov	a,(_SERVO_MAX + 1)
      000AF0 95 47            [12] 3507 	subb	a,(_SERVO_PW + 1)
      000AF2 50 08            [24] 3508 	jnc	00104$
                           000A05  3509 	C$LAB6.c$297$3$173 ==.
                                   3510 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:297: SERVO_PW = SERVO_MAX;
      000AF4 85 42 46         [24] 3511 	mov	_SERVO_PW,_SERVO_MAX
      000AF7 85 43 47         [24] 3512 	mov	(_SERVO_PW + 1),(_SERVO_MAX + 1)
      000AFA 80 11            [24] 3513 	sjmp	00105$
      000AFC                       3514 00104$:
                           000A0D  3515 	C$LAB6.c$299$2$172 ==.
                                   3516 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:299: else if (SERVO_PW < SERVO_MIN) {
      000AFC C3               [12] 3517 	clr	c
      000AFD E5 46            [12] 3518 	mov	a,_SERVO_PW
      000AFF 95 44            [12] 3519 	subb	a,_SERVO_MIN
      000B01 E5 47            [12] 3520 	mov	a,(_SERVO_PW + 1)
      000B03 95 45            [12] 3521 	subb	a,(_SERVO_MIN + 1)
      000B05 50 06            [24] 3522 	jnc	00105$
                           000A18  3523 	C$LAB6.c$300$3$174 ==.
                                   3524 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:300: SERVO_PW = SERVO_MIN;
      000B07 85 44 46         [24] 3525 	mov	_SERVO_PW,_SERVO_MIN
      000B0A 85 45 47         [24] 3526 	mov	(_SERVO_PW + 1),(_SERVO_MIN + 1)
      000B0D                       3527 00105$:
                           000A1E  3528 	C$LAB6.c$302$2$172 ==.
                                   3529 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:302: lcd_clear();
      000B0D 12 01 EF         [24] 3530 	lcall	_lcd_clear
                           000A21  3531 	C$LAB6.c$303$2$172 ==.
                                   3532 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:303: lcd_print("%i\n%i\n%i", SERVO_PW, xCounts, range);
      000B10 AE 57            [24] 3533 	mov	r6,_xCounts
      000B12 7F 00            [12] 3534 	mov	r7,#0x00
      000B14 C0 4F            [24] 3535 	push	_range
      000B16 C0 50            [24] 3536 	push	(_range + 1)
      000B18 C0 06            [24] 3537 	push	ar6
      000B1A C0 07            [24] 3538 	push	ar7
      000B1C C0 46            [24] 3539 	push	_SERVO_PW
      000B1E C0 47            [24] 3540 	push	(_SERVO_PW + 1)
      000B20 74 DB            [12] 3541 	mov	a,#___str_11
      000B22 C0 E0            [24] 3542 	push	acc
      000B24 74 15            [12] 3543 	mov	a,#(___str_11 >> 8)
      000B26 C0 E0            [24] 3544 	push	acc
      000B28 74 80            [12] 3545 	mov	a,#0x80
      000B2A C0 E0            [24] 3546 	push	acc
      000B2C 12 01 6A         [24] 3547 	lcall	_lcd_print
      000B2F E5 81            [12] 3548 	mov	a,sp
      000B31 24 F7            [12] 3549 	add	a,#0xf7
      000B33 F5 81            [12] 3550 	mov	sp,a
                           000A46  3551 	C$LAB6.c$304$2$172 ==.
                                   3552 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:304: PCA0CP1 = 0xFFFF - SERVO_PW;
      000B35 74 FF            [12] 3553 	mov	a,#0xff
      000B37 C3               [12] 3554 	clr	c
      000B38 95 46            [12] 3555 	subb	a,_SERVO_PW
      000B3A F5 EB            [12] 3556 	mov	((_PCA0CP1 >> 0) & 0xFF),a
      000B3C 74 FF            [12] 3557 	mov	a,#0xff
      000B3E 95 47            [12] 3558 	subb	a,(_SERVO_PW + 1)
      000B40 F5 FB            [12] 3559 	mov	((_PCA0CP1 >> 8) & 0xFF),a
                           000A53  3560 	C$LAB6.c$305$2$172 ==.
                                   3561 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:305: if (abs(range - prev_range) > 10)
      000B42 E5 4F            [12] 3562 	mov	a,_range
      000B44 C3               [12] 3563 	clr	c
      000B45 95 53            [12] 3564 	subb	a,_prev_range
      000B47 F5 82            [12] 3565 	mov	dpl,a
      000B49 E5 50            [12] 3566 	mov	a,(_range + 1)
      000B4B 95 54            [12] 3567 	subb	a,(_prev_range + 1)
      000B4D F5 83            [12] 3568 	mov	dph,a
      000B4F 12 0C F9         [24] 3569 	lcall	_abs
      000B52 AE 82            [24] 3570 	mov	r6,dpl
      000B54 AF 83            [24] 3571 	mov	r7,dph
      000B56 C3               [12] 3572 	clr	c
      000B57 74 0A            [12] 3573 	mov	a,#0x0a
      000B59 9E               [12] 3574 	subb	a,r6
      000B5A 74 80            [12] 3575 	mov	a,#(0x00 ^ 0x80)
      000B5C 8F F0            [24] 3576 	mov	b,r7
      000B5E 63 F0 80         [24] 3577 	xrl	b,#0x80
      000B61 95 F0            [12] 3578 	subb	a,b
      000B63 50 03            [24] 3579 	jnc	00107$
                           000A76  3580 	C$LAB6.c$307$3$175 ==.
                                   3581 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:307: xCounts = 0;
      000B65 75 57 00         [24] 3582 	mov	_xCounts,#0x00
      000B68                       3583 00107$:
                           000A79  3584 	C$LAB6.c$309$2$172 ==.
                                   3585 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:309: prev_range = range;
      000B68 85 4F 53         [24] 3586 	mov	_prev_range,_range
      000B6B 85 50 54         [24] 3587 	mov	(_prev_range + 1),(_range + 1)
      000B6E 02 0A A6         [24] 3588 	ljmp	00108$
      000B71                       3589 00111$:
                           000A82  3590 	C$LAB6.c$313$1$171 ==.
                           000A82  3591 	XG$tilt_set$0$0 ==.
      000B71 22               [24] 3592 	ret
                                   3593 ;------------------------------------------------------------
                                   3594 ;Allocation info for local variables in function 'thrust_set'
                                   3595 ;------------------------------------------------------------
                           000A83  3596 	G$thrust_set$0$0 ==.
                           000A83  3597 	C$LAB6.c$316$1$171 ==.
                                   3598 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:316: void thrust_set(void)
                                   3599 ;	-----------------------------------------
                                   3600 ;	 function thrust_set
                                   3601 ;	-----------------------------------------
      000B72                       3602 _thrust_set:
                           000A83  3603 	C$LAB6.c$318$1$177 ==.
                                   3604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:318: range = 10;
      000B72 75 4F 0A         [24] 3605 	mov	_range,#0x0a
      000B75 75 50 00         [24] 3606 	mov	(_range + 1),#0x00
                           000A89  3607 	C$LAB6.c$319$1$177 ==.
                                   3608 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:319: prev_range = range;
      000B78 75 53 0A         [24] 3609 	mov	_prev_range,#0x0a
      000B7B 75 54 00         [24] 3610 	mov	(_prev_range + 1),#0x00
                           000A8F  3611 	C$LAB6.c$320$1$177 ==.
                                   3612 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:320: xCounts = 0;
      000B7E 75 57 00         [24] 3613 	mov	_xCounts,#0x00
                           000A92  3614 	C$LAB6.c$321$2$178 ==.
                                   3615 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:321: while (xCounts < 250){
      000B81                       3616 00108$:
      000B81 74 06            [12] 3617 	mov	a,#0x100 - 0xfa
      000B83 25 57            [12] 3618 	add	a,_xCounts
      000B85 50 03            [24] 3619 	jnc	00128$
      000B87 02 0C 52         [24] 3620 	ljmp	00111$
      000B8A                       3621 00128$:
                           000A9B  3622 	C$LAB6.c$322$2$178 ==.
                                   3623 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:322: range = read_ranger();
      000B8A 12 07 70         [24] 3624 	lcall	_read_ranger
      000B8D AF 82            [24] 3625 	mov	r7,dpl
      000B8F 8F 4F            [24] 3626 	mov	_range,r7
      000B91 75 50 00         [24] 3627 	mov	(_range + 1),#0x00
                           000AA5  3628 	C$LAB6.c$323$2$178 ==.
                                   3629 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:323: pause();
      000B94 12 0C A1         [24] 3630 	lcall	_pause
                           000AA8  3631 	C$LAB6.c$324$2$178 ==.
                                   3632 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:324: LEFT_PW = MOTOR_MIN + (((MOTOR_MAX - MOTOR_MIN)/40)*range);
      000B97 E5 38            [12] 3633 	mov	a,_MOTOR_MAX
      000B99 C3               [12] 3634 	clr	c
      000B9A 95 3A            [12] 3635 	subb	a,_MOTOR_MIN
      000B9C F5 82            [12] 3636 	mov	dpl,a
      000B9E E5 39            [12] 3637 	mov	a,(_MOTOR_MAX + 1)
      000BA0 95 3B            [12] 3638 	subb	a,(_MOTOR_MIN + 1)
      000BA2 F5 83            [12] 3639 	mov	dph,a
      000BA4 75 11 28         [24] 3640 	mov	__divuint_PARM_2,#0x28
      000BA7 75 12 00         [24] 3641 	mov	(__divuint_PARM_2 + 1),#0x00
      000BAA 12 0C B5         [24] 3642 	lcall	__divuint
      000BAD 85 4F 11         [24] 3643 	mov	__mulint_PARM_2,_range
      000BB0 85 50 12         [24] 3644 	mov	(__mulint_PARM_2 + 1),(_range + 1)
      000BB3 12 0D 06         [24] 3645 	lcall	__mulint
      000BB6 AE 82            [24] 3646 	mov	r6,dpl
      000BB8 AF 83            [24] 3647 	mov	r7,dph
      000BBA EE               [12] 3648 	mov	a,r6
      000BBB 25 3A            [12] 3649 	add	a,_MOTOR_MIN
      000BBD F5 3E            [12] 3650 	mov	_LEFT_PW,a
      000BBF EF               [12] 3651 	mov	a,r7
      000BC0 35 3B            [12] 3652 	addc	a,(_MOTOR_MIN + 1)
      000BC2 F5 3F            [12] 3653 	mov	(_LEFT_PW + 1),a
                           000AD5  3654 	C$LAB6.c$325$2$178 ==.
                                   3655 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:325: if (LEFT_PW > MOTOR_MAX) {
      000BC4 C3               [12] 3656 	clr	c
      000BC5 E5 38            [12] 3657 	mov	a,_MOTOR_MAX
      000BC7 95 3E            [12] 3658 	subb	a,_LEFT_PW
      000BC9 E5 39            [12] 3659 	mov	a,(_MOTOR_MAX + 1)
      000BCB 95 3F            [12] 3660 	subb	a,(_LEFT_PW + 1)
      000BCD 50 08            [24] 3661 	jnc	00104$
                           000AE0  3662 	C$LAB6.c$326$3$179 ==.
                                   3663 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:326: LEFT_PW = MOTOR_MAX;
      000BCF 85 38 3E         [24] 3664 	mov	_LEFT_PW,_MOTOR_MAX
      000BD2 85 39 3F         [24] 3665 	mov	(_LEFT_PW + 1),(_MOTOR_MAX + 1)
      000BD5 80 11            [24] 3666 	sjmp	00105$
      000BD7                       3667 00104$:
                           000AE8  3668 	C$LAB6.c$328$2$178 ==.
                                   3669 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:328: else if (LEFT_PW < MOTOR_MIN) {
      000BD7 C3               [12] 3670 	clr	c
      000BD8 E5 3E            [12] 3671 	mov	a,_LEFT_PW
      000BDA 95 3A            [12] 3672 	subb	a,_MOTOR_MIN
      000BDC E5 3F            [12] 3673 	mov	a,(_LEFT_PW + 1)
      000BDE 95 3B            [12] 3674 	subb	a,(_MOTOR_MIN + 1)
      000BE0 50 06            [24] 3675 	jnc	00105$
                           000AF3  3676 	C$LAB6.c$329$3$180 ==.
                                   3677 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:329: LEFT_PW = MOTOR_MIN;
      000BE2 85 3A 3E         [24] 3678 	mov	_LEFT_PW,_MOTOR_MIN
      000BE5 85 3B 3F         [24] 3679 	mov	(_LEFT_PW + 1),(_MOTOR_MIN + 1)
      000BE8                       3680 00105$:
                           000AF9  3681 	C$LAB6.c$331$2$178 ==.
                                   3682 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:331: lcd_clear();
      000BE8 12 01 EF         [24] 3683 	lcall	_lcd_clear
                           000AFC  3684 	C$LAB6.c$332$2$178 ==.
                                   3685 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:332: lcd_print("%i\n%i\n%i", LEFT_PW, xCounts, range);
      000BEB AE 57            [24] 3686 	mov	r6,_xCounts
      000BED 7F 00            [12] 3687 	mov	r7,#0x00
      000BEF C0 4F            [24] 3688 	push	_range
      000BF1 C0 50            [24] 3689 	push	(_range + 1)
      000BF3 C0 06            [24] 3690 	push	ar6
      000BF5 C0 07            [24] 3691 	push	ar7
      000BF7 C0 3E            [24] 3692 	push	_LEFT_PW
      000BF9 C0 3F            [24] 3693 	push	(_LEFT_PW + 1)
      000BFB 74 DB            [12] 3694 	mov	a,#___str_11
      000BFD C0 E0            [24] 3695 	push	acc
      000BFF 74 15            [12] 3696 	mov	a,#(___str_11 >> 8)
      000C01 C0 E0            [24] 3697 	push	acc
      000C03 74 80            [12] 3698 	mov	a,#0x80
      000C05 C0 E0            [24] 3699 	push	acc
      000C07 12 01 6A         [24] 3700 	lcall	_lcd_print
      000C0A E5 81            [12] 3701 	mov	a,sp
      000C0C 24 F7            [12] 3702 	add	a,#0xf7
      000C0E F5 81            [12] 3703 	mov	sp,a
                           000B21  3704 	C$LAB6.c$333$2$178 ==.
                                   3705 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:333: PCA0CP2 = 0xFFFF - LEFT_PW;
      000C10 74 FF            [12] 3706 	mov	a,#0xff
      000C12 C3               [12] 3707 	clr	c
      000C13 95 3E            [12] 3708 	subb	a,_LEFT_PW
      000C15 FE               [12] 3709 	mov	r6,a
      000C16 74 FF            [12] 3710 	mov	a,#0xff
      000C18 95 3F            [12] 3711 	subb	a,(_LEFT_PW + 1)
      000C1A FF               [12] 3712 	mov	r7,a
      000C1B 8E EC            [24] 3713 	mov	((_PCA0CP2 >> 0) & 0xFF),r6
      000C1D 8F FC            [24] 3714 	mov	((_PCA0CP2 >> 8) & 0xFF),r7
                           000B30  3715 	C$LAB6.c$334$2$178 ==.
                                   3716 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:334: PCA0CP3 = 0xFFFF - LEFT_PW;
      000C1F 8E ED            [24] 3717 	mov	((_PCA0CP3 >> 0) & 0xFF),r6
      000C21 8F FD            [24] 3718 	mov	((_PCA0CP3 >> 8) & 0xFF),r7
                           000B34  3719 	C$LAB6.c$335$2$178 ==.
                                   3720 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:335: if (abs(range - prev_range) > 10)
      000C23 E5 4F            [12] 3721 	mov	a,_range
      000C25 C3               [12] 3722 	clr	c
      000C26 95 53            [12] 3723 	subb	a,_prev_range
      000C28 F5 82            [12] 3724 	mov	dpl,a
      000C2A E5 50            [12] 3725 	mov	a,(_range + 1)
      000C2C 95 54            [12] 3726 	subb	a,(_prev_range + 1)
      000C2E F5 83            [12] 3727 	mov	dph,a
      000C30 12 0C F9         [24] 3728 	lcall	_abs
      000C33 AE 82            [24] 3729 	mov	r6,dpl
      000C35 AF 83            [24] 3730 	mov	r7,dph
      000C37 C3               [12] 3731 	clr	c
      000C38 74 0A            [12] 3732 	mov	a,#0x0a
      000C3A 9E               [12] 3733 	subb	a,r6
      000C3B 74 80            [12] 3734 	mov	a,#(0x00 ^ 0x80)
      000C3D 8F F0            [24] 3735 	mov	b,r7
      000C3F 63 F0 80         [24] 3736 	xrl	b,#0x80
      000C42 95 F0            [12] 3737 	subb	a,b
      000C44 50 03            [24] 3738 	jnc	00107$
                           000B57  3739 	C$LAB6.c$337$3$181 ==.
                                   3740 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:337: xCounts = 0;
      000C46 75 57 00         [24] 3741 	mov	_xCounts,#0x00
      000C49                       3742 00107$:
                           000B5A  3743 	C$LAB6.c$339$2$178 ==.
                                   3744 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:339: prev_range = range;
      000C49 85 4F 53         [24] 3745 	mov	_prev_range,_range
      000C4C 85 50 54         [24] 3746 	mov	(_prev_range + 1),(_range + 1)
      000C4F 02 0B 81         [24] 3747 	ljmp	00108$
      000C52                       3748 00111$:
                           000B63  3749 	C$LAB6.c$342$1$177 ==.
                           000B63  3750 	XG$thrust_set$0$0 ==.
      000C52 22               [24] 3751 	ret
                                   3752 ;------------------------------------------------------------
                                   3753 ;Allocation info for local variables in function 'PCA_ISR'
                                   3754 ;------------------------------------------------------------
                           000B64  3755 	G$PCA_ISR$0$0 ==.
                           000B64  3756 	C$LAB6.c$350$1$177 ==.
                                   3757 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:350: void PCA_ISR(void) __interrupt 9
                                   3758 ;	-----------------------------------------
                                   3759 ;	 function PCA_ISR
                                   3760 ;	-----------------------------------------
      000C53                       3761 _PCA_ISR:
      000C53 C0 E0            [24] 3762 	push	acc
      000C55 C0 D0            [24] 3763 	push	psw
                           000B68  3764 	C$LAB6.c$352$1$183 ==.
                                   3765 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:352: if (CF)
                           000B68  3766 	C$LAB6.c$354$2$184 ==.
                                   3767 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:354: CF = 0; // clear overflow indicator
      000C57 10 DF 02         [24] 3768 	jbc	_CF,00122$
      000C5A 80 2B            [24] 3769 	sjmp	00107$
      000C5C                       3770 00122$:
                           000B6D  3771 	C$LAB6.c$355$2$184 ==.
                                   3772 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:355: PCA0 = 28671; 	//start count for 20 ms period
      000C5C 75 E9 FF         [24] 3773 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      000C5F 75 F9 6F         [24] 3774 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           000B73  3775 	C$LAB6.c$356$2$184 ==.
                                   3776 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:356: nCounts ++; //for LCD/keypad operation
      000C62 05 56            [12] 3777 	inc	_nCounts
                           000B75  3778 	C$LAB6.c$357$2$184 ==.
                                   3779 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:357: xCounts ++;	//for heading switch
      000C64 05 57            [12] 3780 	inc	_xCounts
                           000B77  3781 	C$LAB6.c$358$2$184 ==.
                                   3782 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:358: h_count++;
      000C66 05 55            [12] 3783 	inc	_h_count
                           000B79  3784 	C$LAB6.c$359$2$184 ==.
                                   3785 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:359: if (h_count>=2)
      000C68 74 FE            [12] 3786 	mov	a,#0x100 - 0x02
      000C6A 25 55            [12] 3787 	add	a,_h_count
      000C6C 50 06            [24] 3788 	jnc	00102$
                           000B7F  3789 	C$LAB6.c$361$3$185 ==.
                                   3790 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:361: new_heading=1;
      000C6E 75 4E 01         [24] 3791 	mov	_new_heading,#0x01
                           000B82  3792 	C$LAB6.c$362$3$185 ==.
                                   3793 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:362: h_count = 0;
      000C71 75 55 00         [24] 3794 	mov	_h_count,#0x00
      000C74                       3795 00102$:
                           000B85  3796 	C$LAB6.c$364$2$184 ==.
                                   3797 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:364: if ((run_stop == 1) && (nCounts == 10))
      000C74 74 01            [12] 3798 	mov	a,#0x01
      000C76 B5 5E 0E         [24] 3799 	cjne	a,_run_stop,00107$
      000C79 74 0A            [12] 3800 	mov	a,#0x0a
      000C7B B5 56 09         [24] 3801 	cjne	a,_nCounts,00107$
                           000B8F  3802 	C$LAB6.c$366$3$186 ==.
                                   3803 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:366: range = 1;
      000C7E 75 4F 01         [24] 3804 	mov	_range,#0x01
      000C81 75 50 00         [24] 3805 	mov	(_range + 1),#0x00
                           000B95  3806 	C$LAB6.c$367$3$186 ==.
                                   3807 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:367: nCounts = 0;
      000C84 75 56 00         [24] 3808 	mov	_nCounts,#0x00
      000C87                       3809 00107$:
                           000B98  3810 	C$LAB6.c$371$1$183 ==.
                                   3811 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:371: PCA0CN &= 0xC0;
      000C87 53 D8 C0         [24] 3812 	anl	_PCA0CN,#0xc0
      000C8A D0 D0            [24] 3813 	pop	psw
      000C8C D0 E0            [24] 3814 	pop	acc
                           000B9F  3815 	C$LAB6.c$372$1$183 ==.
                           000B9F  3816 	XG$PCA_ISR$0$0 ==.
      000C8E 32               [24] 3817 	reti
                                   3818 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   3819 ;	eliminated unneeded push/pop dpl
                                   3820 ;	eliminated unneeded push/pop dph
                                   3821 ;	eliminated unneeded push/pop b
                                   3822 ;------------------------------------------------------------
                                   3823 ;Allocation info for local variables in function 'read_AD_input'
                                   3824 ;------------------------------------------------------------
                                   3825 ;n                         Allocated to registers 
                                   3826 ;------------------------------------------------------------
                           000BA0  3827 	G$read_AD_input$0$0 ==.
                           000BA0  3828 	C$LAB6.c$375$1$183 ==.
                                   3829 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:375: unsigned char read_AD_input(unsigned char n)
                                   3830 ;	-----------------------------------------
                                   3831 ;	 function read_AD_input
                                   3832 ;	-----------------------------------------
      000C8F                       3833 _read_AD_input:
      000C8F 85 82 AC         [24] 3834 	mov	_AMX1SL,dpl
                           000BA3  3835 	C$LAB6.c$378$1$188 ==.
                                   3836 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:378: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
      000C92 53 AA DF         [24] 3837 	anl	_ADC1CN,#0xdf
                           000BA6  3838 	C$LAB6.c$379$1$188 ==.
                                   3839 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:379: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
      000C95 43 AA 10         [24] 3840 	orl	_ADC1CN,#0x10
                           000BA9  3841 	C$LAB6.c$380$1$188 ==.
                                   3842 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:380: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      000C98                       3843 00101$:
      000C98 E5 AA            [12] 3844 	mov	a,_ADC1CN
      000C9A 30 E5 FB         [24] 3845 	jnb	acc.5,00101$
                           000BAE  3846 	C$LAB6.c$381$1$188 ==.
                                   3847 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:381: return (ADC1); /* Return digital value in ADC1 register */
      000C9D 85 9C 82         [24] 3848 	mov	dpl,_ADC1
                           000BB1  3849 	C$LAB6.c$382$1$188 ==.
                           000BB1  3850 	XG$read_AD_input$0$0 ==.
      000CA0 22               [24] 3851 	ret
                                   3852 ;------------------------------------------------------------
                                   3853 ;Allocation info for local variables in function 'pause'
                                   3854 ;------------------------------------------------------------
                           000BB2  3855 	G$pause$0$0 ==.
                           000BB2  3856 	C$LAB6.c$384$1$188 ==.
                                   3857 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:384: void pause(void) //used for reading from the keypad
                                   3858 ;	-----------------------------------------
                                   3859 ;	 function pause
                                   3860 ;	-----------------------------------------
      000CA1                       3861 _pause:
                           000BB2  3862 	C$LAB6.c$386$1$190 ==.
                                   3863 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:386: nCounts = 0;
      000CA1 75 56 00         [24] 3864 	mov	_nCounts,#0x00
                           000BB5  3865 	C$LAB6.c$387$1$190 ==.
                                   3866 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:387: while (nCounts < 6);// 1 count -> (65536-PCA_START) x 12/22118400 = 20ms
      000CA4                       3867 00101$:
      000CA4 74 FA            [12] 3868 	mov	a,#0x100 - 0x06
      000CA6 25 56            [12] 3869 	add	a,_nCounts
      000CA8 50 FA            [24] 3870 	jnc	00101$
                           000BBB  3871 	C$LAB6.c$388$1$190 ==.
                           000BBB  3872 	XG$pause$0$0 ==.
      000CAA 22               [24] 3873 	ret
                                   3874 ;------------------------------------------------------------
                                   3875 ;Allocation info for local variables in function 'wait'
                                   3876 ;------------------------------------------------------------
                           000BBC  3877 	G$wait$0$0 ==.
                           000BBC  3878 	C$LAB6.c$390$1$190 ==.
                                   3879 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:390: void wait(void) //used for reading from the keypad
                                   3880 ;	-----------------------------------------
                                   3881 ;	 function wait
                                   3882 ;	-----------------------------------------
      000CAB                       3883 _wait:
                           000BBC  3884 	C$LAB6.c$392$1$192 ==.
                                   3885 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:392: nCounts = 0;
      000CAB 75 56 00         [24] 3886 	mov	_nCounts,#0x00
                           000BBF  3887 	C$LAB6.c$393$1$192 ==.
                                   3888 ;	C:\Users\gerlig\Documents\School\LITEC\LAB6\LAB6.c:393: while (nCounts < 50);    // 50 counts -> 50 x 20ms = 1000ms
      000CAE                       3889 00101$:
      000CAE 74 CE            [12] 3890 	mov	a,#0x100 - 0x32
      000CB0 25 56            [12] 3891 	add	a,_nCounts
      000CB2 50 FA            [24] 3892 	jnc	00101$
                           000BC5  3893 	C$LAB6.c$394$1$192 ==.
                           000BC5  3894 	XG$wait$0$0 ==.
      000CB4 22               [24] 3895 	ret
                                   3896 	.area CSEG    (CODE)
                                   3897 	.area CONST   (CODE)
                           000000  3898 FLAB6$__str_0$0$0 == .
      0014CB                       3899 ___str_0:
      0014CB 0A                    3900 	.db 0x0a
      0014CC 54 79 70 65 20 64 69  3901 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      0014E0 00                    3902 	.db 0x00
                           000016  3903 FLAB6$__str_1$0$0 == .
      0014E1                       3904 ___str_1:
      0014E1 20 20 20 20 20 25 63  3905 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      0014F0 00                    3906 	.db 0x00
                           000026  3907 FLAB6$__str_2$0$0 == .
      0014F1                       3908 ___str_2:
      0014F1 25 63                 3909 	.ascii "%c"
      0014F3 00                    3910 	.db 0x00
                           000029  3911 FLAB6$__str_3$0$0 == .
      0014F4                       3912 ___str_3:
      0014F4 41 20 62 72 61 76 65  3913 	.ascii "A brave gondola stands alone against the many horrors on the"
             20 67 6F 6E 64 6F 6C
             61 20 73 74 61 6E 64
             73 20 61 6C 6F 6E 65
             20 61 67 61 69 6E 73
             74 20 74 68 65 20 6D
             61 6E 79 20 68 6F 72
             72 6F 72 73 20 6F 6E
             20 74 68 65
      001530 20 62 61 74 74 6C 65  3914 	.ascii " battlefield!"
             66 69 65 6C 64 21
      00153D 00                    3915 	.db 0x00
                           000073  3916 FLAB6$__str_4$0$0 == .
      00153E                       3917 ___str_4:
      00153E 47 6F 6F 64 20 6C 75  3918 	.ascii "Good luck!"
             63 6B 21
      001548 00                    3919 	.db 0x00
                           00007E  3920 FLAB6$__str_5$0$0 == .
      001549                       3921 ___str_5:
      001549 25 69                 3922 	.ascii "%i"
      00154B 09                    3923 	.db 0x09
      00154C 25 69                 3924 	.ascii "%i"
      00154E 09                    3925 	.db 0x09
      00154F 25 69                 3926 	.ascii "%i"
      001551 09                    3927 	.db 0x09
      001552 25 69                 3928 	.ascii "%i"
      001554 09                    3929 	.db 0x09
      001555 25 69                 3930 	.ascii "%i"
      001557 0D                    3931 	.db 0x0d
      001558 0A                    3932 	.db 0x0a
      001559 00                    3933 	.db 0x00
                           00008F  3934 FLAB6$__str_6$0$0 == .
      00155A                       3935 ___str_6:
      00155A 50 69 63 6B 20 61 20  3936 	.ascii "Pick a kP"
             6B 50
      001563 0A                    3937 	.db 0x0a
      001564 50 72 65 73 73 20 74  3938 	.ascii "Press two Numbers"
             77 6F 20 4E 75 6D 62
             65 72 73
      001575 0A                    3939 	.db 0x0a
      001576 0A                    3940 	.db 0x0a
      001577 65 6E 74 65 72 20 77  3941 	.ascii "enter with 0 first"
             69 74 68 20 30 20 66
             69 72 73 74
      001589 00                    3942 	.db 0x00
                           0000BF  3943 FLAB6$__str_7$0$0 == .
      00158A                       3944 ___str_7:
      00158A 25 69                 3945 	.ascii "%i"
      00158C 00                    3946 	.db 0x00
                           0000C2  3947 FLAB6$__str_8$0$0 == .
      00158D                       3948 ___str_8:
      00158D 44 65 73 69 72 65 64  3949 	.ascii "Desired kP: %i"
             20 6B 50 3A 20 25 69
      00159B 00                    3950 	.db 0x00
                           0000D1  3951 FLAB6$__str_9$0$0 == .
      00159C                       3952 ___str_9:
      00159C 50 69 63 6B 20 61 20  3953 	.ascii "Pick a kD"
             6B 44
      0015A5 0A                    3954 	.db 0x0a
      0015A6 50 72 65 73 73 20 74  3955 	.ascii "Press two Numbers"
             77 6F 20 4E 75 6D 62
             65 72 73
      0015B7 0A                    3956 	.db 0x0a
      0015B8 0A                    3957 	.db 0x0a
      0015B9 65 6E 74 65 72 20 77  3958 	.ascii "enter with 0 first"
             69 74 68 20 30 20 66
             69 72 73 74
      0015CB 00                    3959 	.db 0x00
                           000101  3960 FLAB6$__str_10$0$0 == .
      0015CC                       3961 ___str_10:
      0015CC 44 65 73 69 72 65 64  3962 	.ascii "Desired kD: %i"
             20 6B 44 3A 20 25 69
      0015DA 00                    3963 	.db 0x00
                           000110  3964 FLAB6$__str_11$0$0 == .
      0015DB                       3965 ___str_11:
      0015DB 25 69                 3966 	.ascii "%i"
      0015DD 0A                    3967 	.db 0x0a
      0015DE 25 69                 3968 	.ascii "%i"
      0015E0 0A                    3969 	.db 0x0a
      0015E1 25 69                 3970 	.ascii "%i"
      0015E3 00                    3971 	.db 0x00
                                   3972 	.area XINIT   (CODE)
                                   3973 	.area CABS    (ABS,CODE)
