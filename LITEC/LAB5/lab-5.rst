                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab_5
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
                                     22 	.globl _BILED1
                                     23 	.globl _BILED0
                                     24 	.globl _run
                                     25 	.globl _BUS_SCL
                                     26 	.globl _BUS_TOE
                                     27 	.globl _BUS_FTE
                                     28 	.globl _BUS_AA
                                     29 	.globl _BUS_INT
                                     30 	.globl _BUS_STOP
                                     31 	.globl _BUS_START
                                     32 	.globl _BUS_EN
                                     33 	.globl _BUS_BUSY
                                     34 	.globl _SPIF
                                     35 	.globl _WCOL
                                     36 	.globl _MODF
                                     37 	.globl _RXOVRN
                                     38 	.globl _TXBSY
                                     39 	.globl _SLVSEL
                                     40 	.globl _MSTEN
                                     41 	.globl _SPIEN
                                     42 	.globl _AD0EN
                                     43 	.globl _ADCEN
                                     44 	.globl _AD0TM
                                     45 	.globl _ADCTM
                                     46 	.globl _AD0INT
                                     47 	.globl _ADCINT
                                     48 	.globl _AD0BUSY
                                     49 	.globl _ADBUSY
                                     50 	.globl _AD0CM1
                                     51 	.globl _ADSTM1
                                     52 	.globl _AD0CM0
                                     53 	.globl _ADSTM0
                                     54 	.globl _AD0WINT
                                     55 	.globl _ADWINT
                                     56 	.globl _AD0LJST
                                     57 	.globl _ADLJST
                                     58 	.globl _CF
                                     59 	.globl _CR
                                     60 	.globl _CCF4
                                     61 	.globl _CCF3
                                     62 	.globl _CCF2
                                     63 	.globl _CCF1
                                     64 	.globl _CCF0
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _TF2
                                     74 	.globl _EXF2
                                     75 	.globl _RCLK
                                     76 	.globl _TCLK
                                     77 	.globl _EXEN2
                                     78 	.globl _TR2
                                     79 	.globl _CT2
                                     80 	.globl _CPRL2
                                     81 	.globl _BUSY
                                     82 	.globl _ENSMB
                                     83 	.globl _STA
                                     84 	.globl _STO
                                     85 	.globl _SI
                                     86 	.globl _AA
                                     87 	.globl _SMBFTE
                                     88 	.globl _SMBTOE
                                     89 	.globl _PT2
                                     90 	.globl _PS
                                     91 	.globl _PS0
                                     92 	.globl _PT1
                                     93 	.globl _PX1
                                     94 	.globl _PT0
                                     95 	.globl _PX0
                                     96 	.globl _P3_7
                                     97 	.globl _P3_6
                                     98 	.globl _P3_5
                                     99 	.globl _P3_4
                                    100 	.globl _P3_3
                                    101 	.globl _P3_2
                                    102 	.globl _P3_1
                                    103 	.globl _P3_0
                                    104 	.globl _EA
                                    105 	.globl _ET2
                                    106 	.globl _ES
                                    107 	.globl _ES0
                                    108 	.globl _ET1
                                    109 	.globl _EX1
                                    110 	.globl _ET0
                                    111 	.globl _EX0
                                    112 	.globl _P2_7
                                    113 	.globl _P2_6
                                    114 	.globl _P2_5
                                    115 	.globl _P2_4
                                    116 	.globl _P2_3
                                    117 	.globl _P2_2
                                    118 	.globl _P2_1
                                    119 	.globl _P2_0
                                    120 	.globl _S0MODE
                                    121 	.globl _SM00
                                    122 	.globl _SM0
                                    123 	.globl _SM10
                                    124 	.globl _SM1
                                    125 	.globl _MCE0
                                    126 	.globl _SM20
                                    127 	.globl _SM2
                                    128 	.globl _REN0
                                    129 	.globl _REN
                                    130 	.globl _TB80
                                    131 	.globl _TB8
                                    132 	.globl _RB80
                                    133 	.globl _RB8
                                    134 	.globl _TI0
                                    135 	.globl _TI
                                    136 	.globl _RI0
                                    137 	.globl _RI
                                    138 	.globl _P1_7
                                    139 	.globl _P1_6
                                    140 	.globl _P1_5
                                    141 	.globl _P1_4
                                    142 	.globl _P1_3
                                    143 	.globl _P1_2
                                    144 	.globl _P1_1
                                    145 	.globl _P1_0
                                    146 	.globl _TF1
                                    147 	.globl _TR1
                                    148 	.globl _TF0
                                    149 	.globl _TR0
                                    150 	.globl _IE1
                                    151 	.globl _IT1
                                    152 	.globl _IE0
                                    153 	.globl _IT0
                                    154 	.globl _P0_7
                                    155 	.globl _P0_6
                                    156 	.globl _P0_5
                                    157 	.globl _P0_4
                                    158 	.globl _P0_3
                                    159 	.globl _P0_2
                                    160 	.globl _P0_1
                                    161 	.globl _P0_0
                                    162 	.globl _PCA0CP4
                                    163 	.globl _PCA0CP3
                                    164 	.globl _PCA0CP2
                                    165 	.globl _PCA0CP1
                                    166 	.globl _PCA0CP0
                                    167 	.globl _PCA0
                                    168 	.globl _DAC1
                                    169 	.globl _DAC0
                                    170 	.globl _ADC0LT
                                    171 	.globl _ADC0GT
                                    172 	.globl _ADC0
                                    173 	.globl _RCAP4
                                    174 	.globl _TMR4
                                    175 	.globl _TMR3RL
                                    176 	.globl _TMR3
                                    177 	.globl _RCAP2
                                    178 	.globl _TMR2
                                    179 	.globl _TMR1
                                    180 	.globl _TMR0
                                    181 	.globl _WDTCN
                                    182 	.globl _PCA0CPH4
                                    183 	.globl _PCA0CPH3
                                    184 	.globl _PCA0CPH2
                                    185 	.globl _PCA0CPH1
                                    186 	.globl _PCA0CPH0
                                    187 	.globl _PCA0H
                                    188 	.globl _SPI0CN
                                    189 	.globl _EIP2
                                    190 	.globl _EIP1
                                    191 	.globl _TH4
                                    192 	.globl _TL4
                                    193 	.globl _SADDR1
                                    194 	.globl _SBUF1
                                    195 	.globl _SCON1
                                    196 	.globl _B
                                    197 	.globl _RSTSRC
                                    198 	.globl _PCA0CPL4
                                    199 	.globl _PCA0CPL3
                                    200 	.globl _PCA0CPL2
                                    201 	.globl _PCA0CPL1
                                    202 	.globl _PCA0CPL0
                                    203 	.globl _PCA0L
                                    204 	.globl _ADC0CN
                                    205 	.globl _EIE2
                                    206 	.globl _EIE1
                                    207 	.globl _RCAP4H
                                    208 	.globl _RCAP4L
                                    209 	.globl _XBR2
                                    210 	.globl _XBR1
                                    211 	.globl _XBR0
                                    212 	.globl _ACC
                                    213 	.globl _PCA0CPM4
                                    214 	.globl _PCA0CPM3
                                    215 	.globl _PCA0CPM2
                                    216 	.globl _PCA0CPM1
                                    217 	.globl _PCA0CPM0
                                    218 	.globl _PCA0MD
                                    219 	.globl _PCA0CN
                                    220 	.globl _DAC1CN
                                    221 	.globl _DAC1H
                                    222 	.globl _DAC1L
                                    223 	.globl _DAC0CN
                                    224 	.globl _DAC0H
                                    225 	.globl _DAC0L
                                    226 	.globl _REF0CN
                                    227 	.globl _PSW
                                    228 	.globl _SMB0CR
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _RCAP2H
                                    232 	.globl _RCAP2L
                                    233 	.globl _T4CON
                                    234 	.globl _T2CON
                                    235 	.globl _ADC0LTH
                                    236 	.globl _ADC0LTL
                                    237 	.globl _ADC0GTH
                                    238 	.globl _ADC0GTL
                                    239 	.globl _SMB0ADR
                                    240 	.globl _SMB0DAT
                                    241 	.globl _SMB0STA
                                    242 	.globl _SMB0CN
                                    243 	.globl _ADC0H
                                    244 	.globl _ADC0L
                                    245 	.globl _P1MDIN
                                    246 	.globl _ADC0CF
                                    247 	.globl _AMX0SL
                                    248 	.globl _AMX0CF
                                    249 	.globl _SADEN0
                                    250 	.globl _IP
                                    251 	.globl _FLACL
                                    252 	.globl _FLSCL
                                    253 	.globl _P74OUT
                                    254 	.globl _OSCICN
                                    255 	.globl _OSCXCN
                                    256 	.globl _P3
                                    257 	.globl __XPAGE
                                    258 	.globl _EMI0CN
                                    259 	.globl _SADEN1
                                    260 	.globl _P3IF
                                    261 	.globl _AMX1SL
                                    262 	.globl _ADC1CF
                                    263 	.globl _ADC1CN
                                    264 	.globl _SADDR0
                                    265 	.globl _IE
                                    266 	.globl _P3MDOUT
                                    267 	.globl _PRT3CF
                                    268 	.globl _P2MDOUT
                                    269 	.globl _PRT2CF
                                    270 	.globl _P1MDOUT
                                    271 	.globl _PRT1CF
                                    272 	.globl _P0MDOUT
                                    273 	.globl _PRT0CF
                                    274 	.globl _EMI0CF
                                    275 	.globl _EMI0TC
                                    276 	.globl _P2
                                    277 	.globl _CPT1CN
                                    278 	.globl _CPT0CN
                                    279 	.globl _SPI0CKR
                                    280 	.globl _ADC1
                                    281 	.globl _SPI0DAT
                                    282 	.globl _SPI0CFG
                                    283 	.globl _SBUF0
                                    284 	.globl _SBUF
                                    285 	.globl _SCON0
                                    286 	.globl _SCON
                                    287 	.globl _P7
                                    288 	.globl _TMR3H
                                    289 	.globl _TMR3L
                                    290 	.globl _TMR3RLH
                                    291 	.globl _TMR3RLL
                                    292 	.globl _TMR3CN
                                    293 	.globl _P1
                                    294 	.globl _PSCTL
                                    295 	.globl _CKCON
                                    296 	.globl _TH1
                                    297 	.globl _TH0
                                    298 	.globl _TL1
                                    299 	.globl _TL0
                                    300 	.globl _TMOD
                                    301 	.globl _TCON
                                    302 	.globl _PCON
                                    303 	.globl _P6
                                    304 	.globl _P5
                                    305 	.globl _P4
                                    306 	.globl _DPH
                                    307 	.globl _DPL
                                    308 	.globl _SP
                                    309 	.globl _P0
                                    310 	.globl _read_AD_input_PARM_2
                                    311 	.globl _avg_gy
                                    312 	.globl _avg_gx
                                    313 	.globl _Constant
                                    314 	.globl _direction
                                    315 	.globl _nCounts
                                    316 	.globl _levelflag
                                    317 	.globl _kdy
                                    318 	.globl _kdx
                                    319 	.globl _ks
                                    320 	.globl _y0
                                    321 	.globl _x0
                                    322 	.globl _gy
                                    323 	.globl _gx
                                    324 	.globl _Data
                                    325 	.globl _lcd_count
                                    326 	.globl _a_count
                                    327 	.globl _range
                                    328 	.globl _new_lcd
                                    329 	.globl _new_accel
                                    330 	.globl _SERVO_PW
                                    331 	.globl _SERVO_LEFT
                                    332 	.globl _SERVO_RIGHT
                                    333 	.globl _SERVO_CENTER
                                    334 	.globl _MOTOR_PW
                                    335 	.globl _MOTOR_MIN
                                    336 	.globl _MOTOR_MAX
                                    337 	.globl _MOTOR_STOP
                                    338 	.globl _i2c_read_data_PARM_4
                                    339 	.globl _i2c_read_data_PARM_3
                                    340 	.globl _i2c_read_data_PARM_2
                                    341 	.globl _i2c_write_data_PARM_4
                                    342 	.globl _i2c_write_data_PARM_3
                                    343 	.globl _i2c_write_data_PARM_2
                                    344 	.globl _aligned_alloc_PARM_2
                                    345 	.globl _Data2
                                    346 	.globl _lcd_print
                                    347 	.globl _lcd_clear
                                    348 	.globl _kpd_input
                                    349 	.globl _delay_time
                                    350 	.globl _i2c_start
                                    351 	.globl _i2c_write
                                    352 	.globl _i2c_write_and_stop
                                    353 	.globl _i2c_read
                                    354 	.globl _i2c_read_and_stop
                                    355 	.globl _i2c_write_data
                                    356 	.globl _i2c_read_data
                                    357 	.globl _Accel_Init
                                    358 	.globl _Accel_Init_C
                                    359 	.globl _PCA_ISR
                                    360 	.globl _pause
                                    361 	.globl _wait
                                    362 	.globl _read_AD_input
                                    363 	.globl _PCA_Init
                                    364 	.globl _ADC_Init
                                    365 	.globl _SMB_Init
                                    366 	.globl _Port_Init
                                    367 	.globl _XBR0_Init
                                    368 	.globl _calibration
                                    369 	.globl _read_accels
                                    370 	.globl _set_servo_PWM
                                    371 	.globl _set_drive_PWM
                                    372 	.globl _set_gains
                                    373 ;--------------------------------------------------------
                                    374 ; special function registers
                                    375 ;--------------------------------------------------------
                                    376 	.area RSEG    (ABS,DATA)
      000000                        377 	.org 0x0000
                           000080   378 G$P0$0$0 == 0x0080
                           000080   379 _P0	=	0x0080
                           000081   380 G$SP$0$0 == 0x0081
                           000081   381 _SP	=	0x0081
                           000082   382 G$DPL$0$0 == 0x0082
                           000082   383 _DPL	=	0x0082
                           000083   384 G$DPH$0$0 == 0x0083
                           000083   385 _DPH	=	0x0083
                           000084   386 G$P4$0$0 == 0x0084
                           000084   387 _P4	=	0x0084
                           000085   388 G$P5$0$0 == 0x0085
                           000085   389 _P5	=	0x0085
                           000086   390 G$P6$0$0 == 0x0086
                           000086   391 _P6	=	0x0086
                           000087   392 G$PCON$0$0 == 0x0087
                           000087   393 _PCON	=	0x0087
                           000088   394 G$TCON$0$0 == 0x0088
                           000088   395 _TCON	=	0x0088
                           000089   396 G$TMOD$0$0 == 0x0089
                           000089   397 _TMOD	=	0x0089
                           00008A   398 G$TL0$0$0 == 0x008a
                           00008A   399 _TL0	=	0x008a
                           00008B   400 G$TL1$0$0 == 0x008b
                           00008B   401 _TL1	=	0x008b
                           00008C   402 G$TH0$0$0 == 0x008c
                           00008C   403 _TH0	=	0x008c
                           00008D   404 G$TH1$0$0 == 0x008d
                           00008D   405 _TH1	=	0x008d
                           00008E   406 G$CKCON$0$0 == 0x008e
                           00008E   407 _CKCON	=	0x008e
                           00008F   408 G$PSCTL$0$0 == 0x008f
                           00008F   409 _PSCTL	=	0x008f
                           000090   410 G$P1$0$0 == 0x0090
                           000090   411 _P1	=	0x0090
                           000091   412 G$TMR3CN$0$0 == 0x0091
                           000091   413 _TMR3CN	=	0x0091
                           000092   414 G$TMR3RLL$0$0 == 0x0092
                           000092   415 _TMR3RLL	=	0x0092
                           000093   416 G$TMR3RLH$0$0 == 0x0093
                           000093   417 _TMR3RLH	=	0x0093
                           000094   418 G$TMR3L$0$0 == 0x0094
                           000094   419 _TMR3L	=	0x0094
                           000095   420 G$TMR3H$0$0 == 0x0095
                           000095   421 _TMR3H	=	0x0095
                           000096   422 G$P7$0$0 == 0x0096
                           000096   423 _P7	=	0x0096
                           000098   424 G$SCON$0$0 == 0x0098
                           000098   425 _SCON	=	0x0098
                           000098   426 G$SCON0$0$0 == 0x0098
                           000098   427 _SCON0	=	0x0098
                           000099   428 G$SBUF$0$0 == 0x0099
                           000099   429 _SBUF	=	0x0099
                           000099   430 G$SBUF0$0$0 == 0x0099
                           000099   431 _SBUF0	=	0x0099
                           00009A   432 G$SPI0CFG$0$0 == 0x009a
                           00009A   433 _SPI0CFG	=	0x009a
                           00009B   434 G$SPI0DAT$0$0 == 0x009b
                           00009B   435 _SPI0DAT	=	0x009b
                           00009C   436 G$ADC1$0$0 == 0x009c
                           00009C   437 _ADC1	=	0x009c
                           00009D   438 G$SPI0CKR$0$0 == 0x009d
                           00009D   439 _SPI0CKR	=	0x009d
                           00009E   440 G$CPT0CN$0$0 == 0x009e
                           00009E   441 _CPT0CN	=	0x009e
                           00009F   442 G$CPT1CN$0$0 == 0x009f
                           00009F   443 _CPT1CN	=	0x009f
                           0000A0   444 G$P2$0$0 == 0x00a0
                           0000A0   445 _P2	=	0x00a0
                           0000A1   446 G$EMI0TC$0$0 == 0x00a1
                           0000A1   447 _EMI0TC	=	0x00a1
                           0000A3   448 G$EMI0CF$0$0 == 0x00a3
                           0000A3   449 _EMI0CF	=	0x00a3
                           0000A4   450 G$PRT0CF$0$0 == 0x00a4
                           0000A4   451 _PRT0CF	=	0x00a4
                           0000A4   452 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   453 _P0MDOUT	=	0x00a4
                           0000A5   454 G$PRT1CF$0$0 == 0x00a5
                           0000A5   455 _PRT1CF	=	0x00a5
                           0000A5   456 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   457 _P1MDOUT	=	0x00a5
                           0000A6   458 G$PRT2CF$0$0 == 0x00a6
                           0000A6   459 _PRT2CF	=	0x00a6
                           0000A6   460 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   461 _P2MDOUT	=	0x00a6
                           0000A7   462 G$PRT3CF$0$0 == 0x00a7
                           0000A7   463 _PRT3CF	=	0x00a7
                           0000A7   464 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   465 _P3MDOUT	=	0x00a7
                           0000A8   466 G$IE$0$0 == 0x00a8
                           0000A8   467 _IE	=	0x00a8
                           0000A9   468 G$SADDR0$0$0 == 0x00a9
                           0000A9   469 _SADDR0	=	0x00a9
                           0000AA   470 G$ADC1CN$0$0 == 0x00aa
                           0000AA   471 _ADC1CN	=	0x00aa
                           0000AB   472 G$ADC1CF$0$0 == 0x00ab
                           0000AB   473 _ADC1CF	=	0x00ab
                           0000AC   474 G$AMX1SL$0$0 == 0x00ac
                           0000AC   475 _AMX1SL	=	0x00ac
                           0000AD   476 G$P3IF$0$0 == 0x00ad
                           0000AD   477 _P3IF	=	0x00ad
                           0000AE   478 G$SADEN1$0$0 == 0x00ae
                           0000AE   479 _SADEN1	=	0x00ae
                           0000AF   480 G$EMI0CN$0$0 == 0x00af
                           0000AF   481 _EMI0CN	=	0x00af
                           0000AF   482 G$_XPAGE$0$0 == 0x00af
                           0000AF   483 __XPAGE	=	0x00af
                           0000B0   484 G$P3$0$0 == 0x00b0
                           0000B0   485 _P3	=	0x00b0
                           0000B1   486 G$OSCXCN$0$0 == 0x00b1
                           0000B1   487 _OSCXCN	=	0x00b1
                           0000B2   488 G$OSCICN$0$0 == 0x00b2
                           0000B2   489 _OSCICN	=	0x00b2
                           0000B5   490 G$P74OUT$0$0 == 0x00b5
                           0000B5   491 _P74OUT	=	0x00b5
                           0000B6   492 G$FLSCL$0$0 == 0x00b6
                           0000B6   493 _FLSCL	=	0x00b6
                           0000B7   494 G$FLACL$0$0 == 0x00b7
                           0000B7   495 _FLACL	=	0x00b7
                           0000B8   496 G$IP$0$0 == 0x00b8
                           0000B8   497 _IP	=	0x00b8
                           0000B9   498 G$SADEN0$0$0 == 0x00b9
                           0000B9   499 _SADEN0	=	0x00b9
                           0000BA   500 G$AMX0CF$0$0 == 0x00ba
                           0000BA   501 _AMX0CF	=	0x00ba
                           0000BB   502 G$AMX0SL$0$0 == 0x00bb
                           0000BB   503 _AMX0SL	=	0x00bb
                           0000BC   504 G$ADC0CF$0$0 == 0x00bc
                           0000BC   505 _ADC0CF	=	0x00bc
                           0000BD   506 G$P1MDIN$0$0 == 0x00bd
                           0000BD   507 _P1MDIN	=	0x00bd
                           0000BE   508 G$ADC0L$0$0 == 0x00be
                           0000BE   509 _ADC0L	=	0x00be
                           0000BF   510 G$ADC0H$0$0 == 0x00bf
                           0000BF   511 _ADC0H	=	0x00bf
                           0000C0   512 G$SMB0CN$0$0 == 0x00c0
                           0000C0   513 _SMB0CN	=	0x00c0
                           0000C1   514 G$SMB0STA$0$0 == 0x00c1
                           0000C1   515 _SMB0STA	=	0x00c1
                           0000C2   516 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   517 _SMB0DAT	=	0x00c2
                           0000C3   518 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   519 _SMB0ADR	=	0x00c3
                           0000C4   520 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   521 _ADC0GTL	=	0x00c4
                           0000C5   522 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   523 _ADC0GTH	=	0x00c5
                           0000C6   524 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   525 _ADC0LTL	=	0x00c6
                           0000C7   526 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   527 _ADC0LTH	=	0x00c7
                           0000C8   528 G$T2CON$0$0 == 0x00c8
                           0000C8   529 _T2CON	=	0x00c8
                           0000C9   530 G$T4CON$0$0 == 0x00c9
                           0000C9   531 _T4CON	=	0x00c9
                           0000CA   532 G$RCAP2L$0$0 == 0x00ca
                           0000CA   533 _RCAP2L	=	0x00ca
                           0000CB   534 G$RCAP2H$0$0 == 0x00cb
                           0000CB   535 _RCAP2H	=	0x00cb
                           0000CC   536 G$TL2$0$0 == 0x00cc
                           0000CC   537 _TL2	=	0x00cc
                           0000CD   538 G$TH2$0$0 == 0x00cd
                           0000CD   539 _TH2	=	0x00cd
                           0000CF   540 G$SMB0CR$0$0 == 0x00cf
                           0000CF   541 _SMB0CR	=	0x00cf
                           0000D0   542 G$PSW$0$0 == 0x00d0
                           0000D0   543 _PSW	=	0x00d0
                           0000D1   544 G$REF0CN$0$0 == 0x00d1
                           0000D1   545 _REF0CN	=	0x00d1
                           0000D2   546 G$DAC0L$0$0 == 0x00d2
                           0000D2   547 _DAC0L	=	0x00d2
                           0000D3   548 G$DAC0H$0$0 == 0x00d3
                           0000D3   549 _DAC0H	=	0x00d3
                           0000D4   550 G$DAC0CN$0$0 == 0x00d4
                           0000D4   551 _DAC0CN	=	0x00d4
                           0000D5   552 G$DAC1L$0$0 == 0x00d5
                           0000D5   553 _DAC1L	=	0x00d5
                           0000D6   554 G$DAC1H$0$0 == 0x00d6
                           0000D6   555 _DAC1H	=	0x00d6
                           0000D7   556 G$DAC1CN$0$0 == 0x00d7
                           0000D7   557 _DAC1CN	=	0x00d7
                           0000D8   558 G$PCA0CN$0$0 == 0x00d8
                           0000D8   559 _PCA0CN	=	0x00d8
                           0000D9   560 G$PCA0MD$0$0 == 0x00d9
                           0000D9   561 _PCA0MD	=	0x00d9
                           0000DA   562 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   563 _PCA0CPM0	=	0x00da
                           0000DB   564 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   565 _PCA0CPM1	=	0x00db
                           0000DC   566 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   567 _PCA0CPM2	=	0x00dc
                           0000DD   568 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   569 _PCA0CPM3	=	0x00dd
                           0000DE   570 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   571 _PCA0CPM4	=	0x00de
                           0000E0   572 G$ACC$0$0 == 0x00e0
                           0000E0   573 _ACC	=	0x00e0
                           0000E1   574 G$XBR0$0$0 == 0x00e1
                           0000E1   575 _XBR0	=	0x00e1
                           0000E2   576 G$XBR1$0$0 == 0x00e2
                           0000E2   577 _XBR1	=	0x00e2
                           0000E3   578 G$XBR2$0$0 == 0x00e3
                           0000E3   579 _XBR2	=	0x00e3
                           0000E4   580 G$RCAP4L$0$0 == 0x00e4
                           0000E4   581 _RCAP4L	=	0x00e4
                           0000E5   582 G$RCAP4H$0$0 == 0x00e5
                           0000E5   583 _RCAP4H	=	0x00e5
                           0000E6   584 G$EIE1$0$0 == 0x00e6
                           0000E6   585 _EIE1	=	0x00e6
                           0000E7   586 G$EIE2$0$0 == 0x00e7
                           0000E7   587 _EIE2	=	0x00e7
                           0000E8   588 G$ADC0CN$0$0 == 0x00e8
                           0000E8   589 _ADC0CN	=	0x00e8
                           0000E9   590 G$PCA0L$0$0 == 0x00e9
                           0000E9   591 _PCA0L	=	0x00e9
                           0000EA   592 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   593 _PCA0CPL0	=	0x00ea
                           0000EB   594 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   595 _PCA0CPL1	=	0x00eb
                           0000EC   596 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   597 _PCA0CPL2	=	0x00ec
                           0000ED   598 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   599 _PCA0CPL3	=	0x00ed
                           0000EE   600 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   601 _PCA0CPL4	=	0x00ee
                           0000EF   602 G$RSTSRC$0$0 == 0x00ef
                           0000EF   603 _RSTSRC	=	0x00ef
                           0000F0   604 G$B$0$0 == 0x00f0
                           0000F0   605 _B	=	0x00f0
                           0000F1   606 G$SCON1$0$0 == 0x00f1
                           0000F1   607 _SCON1	=	0x00f1
                           0000F2   608 G$SBUF1$0$0 == 0x00f2
                           0000F2   609 _SBUF1	=	0x00f2
                           0000F3   610 G$SADDR1$0$0 == 0x00f3
                           0000F3   611 _SADDR1	=	0x00f3
                           0000F4   612 G$TL4$0$0 == 0x00f4
                           0000F4   613 _TL4	=	0x00f4
                           0000F5   614 G$TH4$0$0 == 0x00f5
                           0000F5   615 _TH4	=	0x00f5
                           0000F6   616 G$EIP1$0$0 == 0x00f6
                           0000F6   617 _EIP1	=	0x00f6
                           0000F7   618 G$EIP2$0$0 == 0x00f7
                           0000F7   619 _EIP2	=	0x00f7
                           0000F8   620 G$SPI0CN$0$0 == 0x00f8
                           0000F8   621 _SPI0CN	=	0x00f8
                           0000F9   622 G$PCA0H$0$0 == 0x00f9
                           0000F9   623 _PCA0H	=	0x00f9
                           0000FA   624 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   625 _PCA0CPH0	=	0x00fa
                           0000FB   626 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   627 _PCA0CPH1	=	0x00fb
                           0000FC   628 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   629 _PCA0CPH2	=	0x00fc
                           0000FD   630 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   631 _PCA0CPH3	=	0x00fd
                           0000FE   632 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   633 _PCA0CPH4	=	0x00fe
                           0000FF   634 G$WDTCN$0$0 == 0x00ff
                           0000FF   635 _WDTCN	=	0x00ff
                           008C8A   636 G$TMR0$0$0 == 0x8c8a
                           008C8A   637 _TMR0	=	0x8c8a
                           008D8B   638 G$TMR1$0$0 == 0x8d8b
                           008D8B   639 _TMR1	=	0x8d8b
                           00CDCC   640 G$TMR2$0$0 == 0xcdcc
                           00CDCC   641 _TMR2	=	0xcdcc
                           00CBCA   642 G$RCAP2$0$0 == 0xcbca
                           00CBCA   643 _RCAP2	=	0xcbca
                           009594   644 G$TMR3$0$0 == 0x9594
                           009594   645 _TMR3	=	0x9594
                           009392   646 G$TMR3RL$0$0 == 0x9392
                           009392   647 _TMR3RL	=	0x9392
                           00F5F4   648 G$TMR4$0$0 == 0xf5f4
                           00F5F4   649 _TMR4	=	0xf5f4
                           00E5E4   650 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   651 _RCAP4	=	0xe5e4
                           00BFBE   652 G$ADC0$0$0 == 0xbfbe
                           00BFBE   653 _ADC0	=	0xbfbe
                           00C5C4   654 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   655 _ADC0GT	=	0xc5c4
                           00C7C6   656 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   657 _ADC0LT	=	0xc7c6
                           00D3D2   658 G$DAC0$0$0 == 0xd3d2
                           00D3D2   659 _DAC0	=	0xd3d2
                           00D6D5   660 G$DAC1$0$0 == 0xd6d5
                           00D6D5   661 _DAC1	=	0xd6d5
                           00F9E9   662 G$PCA0$0$0 == 0xf9e9
                           00F9E9   663 _PCA0	=	0xf9e9
                           00FAEA   664 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   665 _PCA0CP0	=	0xfaea
                           00FBEB   666 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   667 _PCA0CP1	=	0xfbeb
                           00FCEC   668 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   669 _PCA0CP2	=	0xfcec
                           00FDED   670 G$PCA0CP3$0$0 == 0xfded
                           00FDED   671 _PCA0CP3	=	0xfded
                           00FEEE   672 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   673 _PCA0CP4	=	0xfeee
                                    674 ;--------------------------------------------------------
                                    675 ; special function bits
                                    676 ;--------------------------------------------------------
                                    677 	.area RSEG    (ABS,DATA)
      000000                        678 	.org 0x0000
                           000080   679 G$P0_0$0$0 == 0x0080
                           000080   680 _P0_0	=	0x0080
                           000081   681 G$P0_1$0$0 == 0x0081
                           000081   682 _P0_1	=	0x0081
                           000082   683 G$P0_2$0$0 == 0x0082
                           000082   684 _P0_2	=	0x0082
                           000083   685 G$P0_3$0$0 == 0x0083
                           000083   686 _P0_3	=	0x0083
                           000084   687 G$P0_4$0$0 == 0x0084
                           000084   688 _P0_4	=	0x0084
                           000085   689 G$P0_5$0$0 == 0x0085
                           000085   690 _P0_5	=	0x0085
                           000086   691 G$P0_6$0$0 == 0x0086
                           000086   692 _P0_6	=	0x0086
                           000087   693 G$P0_7$0$0 == 0x0087
                           000087   694 _P0_7	=	0x0087
                           000088   695 G$IT0$0$0 == 0x0088
                           000088   696 _IT0	=	0x0088
                           000089   697 G$IE0$0$0 == 0x0089
                           000089   698 _IE0	=	0x0089
                           00008A   699 G$IT1$0$0 == 0x008a
                           00008A   700 _IT1	=	0x008a
                           00008B   701 G$IE1$0$0 == 0x008b
                           00008B   702 _IE1	=	0x008b
                           00008C   703 G$TR0$0$0 == 0x008c
                           00008C   704 _TR0	=	0x008c
                           00008D   705 G$TF0$0$0 == 0x008d
                           00008D   706 _TF0	=	0x008d
                           00008E   707 G$TR1$0$0 == 0x008e
                           00008E   708 _TR1	=	0x008e
                           00008F   709 G$TF1$0$0 == 0x008f
                           00008F   710 _TF1	=	0x008f
                           000090   711 G$P1_0$0$0 == 0x0090
                           000090   712 _P1_0	=	0x0090
                           000091   713 G$P1_1$0$0 == 0x0091
                           000091   714 _P1_1	=	0x0091
                           000092   715 G$P1_2$0$0 == 0x0092
                           000092   716 _P1_2	=	0x0092
                           000093   717 G$P1_3$0$0 == 0x0093
                           000093   718 _P1_3	=	0x0093
                           000094   719 G$P1_4$0$0 == 0x0094
                           000094   720 _P1_4	=	0x0094
                           000095   721 G$P1_5$0$0 == 0x0095
                           000095   722 _P1_5	=	0x0095
                           000096   723 G$P1_6$0$0 == 0x0096
                           000096   724 _P1_6	=	0x0096
                           000097   725 G$P1_7$0$0 == 0x0097
                           000097   726 _P1_7	=	0x0097
                           000098   727 G$RI$0$0 == 0x0098
                           000098   728 _RI	=	0x0098
                           000098   729 G$RI0$0$0 == 0x0098
                           000098   730 _RI0	=	0x0098
                           000099   731 G$TI$0$0 == 0x0099
                           000099   732 _TI	=	0x0099
                           000099   733 G$TI0$0$0 == 0x0099
                           000099   734 _TI0	=	0x0099
                           00009A   735 G$RB8$0$0 == 0x009a
                           00009A   736 _RB8	=	0x009a
                           00009A   737 G$RB80$0$0 == 0x009a
                           00009A   738 _RB80	=	0x009a
                           00009B   739 G$TB8$0$0 == 0x009b
                           00009B   740 _TB8	=	0x009b
                           00009B   741 G$TB80$0$0 == 0x009b
                           00009B   742 _TB80	=	0x009b
                           00009C   743 G$REN$0$0 == 0x009c
                           00009C   744 _REN	=	0x009c
                           00009C   745 G$REN0$0$0 == 0x009c
                           00009C   746 _REN0	=	0x009c
                           00009D   747 G$SM2$0$0 == 0x009d
                           00009D   748 _SM2	=	0x009d
                           00009D   749 G$SM20$0$0 == 0x009d
                           00009D   750 _SM20	=	0x009d
                           00009D   751 G$MCE0$0$0 == 0x009d
                           00009D   752 _MCE0	=	0x009d
                           00009E   753 G$SM1$0$0 == 0x009e
                           00009E   754 _SM1	=	0x009e
                           00009E   755 G$SM10$0$0 == 0x009e
                           00009E   756 _SM10	=	0x009e
                           00009F   757 G$SM0$0$0 == 0x009f
                           00009F   758 _SM0	=	0x009f
                           00009F   759 G$SM00$0$0 == 0x009f
                           00009F   760 _SM00	=	0x009f
                           00009F   761 G$S0MODE$0$0 == 0x009f
                           00009F   762 _S0MODE	=	0x009f
                           0000A0   763 G$P2_0$0$0 == 0x00a0
                           0000A0   764 _P2_0	=	0x00a0
                           0000A1   765 G$P2_1$0$0 == 0x00a1
                           0000A1   766 _P2_1	=	0x00a1
                           0000A2   767 G$P2_2$0$0 == 0x00a2
                           0000A2   768 _P2_2	=	0x00a2
                           0000A3   769 G$P2_3$0$0 == 0x00a3
                           0000A3   770 _P2_3	=	0x00a3
                           0000A4   771 G$P2_4$0$0 == 0x00a4
                           0000A4   772 _P2_4	=	0x00a4
                           0000A5   773 G$P2_5$0$0 == 0x00a5
                           0000A5   774 _P2_5	=	0x00a5
                           0000A6   775 G$P2_6$0$0 == 0x00a6
                           0000A6   776 _P2_6	=	0x00a6
                           0000A7   777 G$P2_7$0$0 == 0x00a7
                           0000A7   778 _P2_7	=	0x00a7
                           0000A8   779 G$EX0$0$0 == 0x00a8
                           0000A8   780 _EX0	=	0x00a8
                           0000A9   781 G$ET0$0$0 == 0x00a9
                           0000A9   782 _ET0	=	0x00a9
                           0000AA   783 G$EX1$0$0 == 0x00aa
                           0000AA   784 _EX1	=	0x00aa
                           0000AB   785 G$ET1$0$0 == 0x00ab
                           0000AB   786 _ET1	=	0x00ab
                           0000AC   787 G$ES0$0$0 == 0x00ac
                           0000AC   788 _ES0	=	0x00ac
                           0000AC   789 G$ES$0$0 == 0x00ac
                           0000AC   790 _ES	=	0x00ac
                           0000AD   791 G$ET2$0$0 == 0x00ad
                           0000AD   792 _ET2	=	0x00ad
                           0000AF   793 G$EA$0$0 == 0x00af
                           0000AF   794 _EA	=	0x00af
                           0000B0   795 G$P3_0$0$0 == 0x00b0
                           0000B0   796 _P3_0	=	0x00b0
                           0000B1   797 G$P3_1$0$0 == 0x00b1
                           0000B1   798 _P3_1	=	0x00b1
                           0000B2   799 G$P3_2$0$0 == 0x00b2
                           0000B2   800 _P3_2	=	0x00b2
                           0000B3   801 G$P3_3$0$0 == 0x00b3
                           0000B3   802 _P3_3	=	0x00b3
                           0000B4   803 G$P3_4$0$0 == 0x00b4
                           0000B4   804 _P3_4	=	0x00b4
                           0000B5   805 G$P3_5$0$0 == 0x00b5
                           0000B5   806 _P3_5	=	0x00b5
                           0000B6   807 G$P3_6$0$0 == 0x00b6
                           0000B6   808 _P3_6	=	0x00b6
                           0000B7   809 G$P3_7$0$0 == 0x00b7
                           0000B7   810 _P3_7	=	0x00b7
                           0000B8   811 G$PX0$0$0 == 0x00b8
                           0000B8   812 _PX0	=	0x00b8
                           0000B9   813 G$PT0$0$0 == 0x00b9
                           0000B9   814 _PT0	=	0x00b9
                           0000BA   815 G$PX1$0$0 == 0x00ba
                           0000BA   816 _PX1	=	0x00ba
                           0000BB   817 G$PT1$0$0 == 0x00bb
                           0000BB   818 _PT1	=	0x00bb
                           0000BC   819 G$PS0$0$0 == 0x00bc
                           0000BC   820 _PS0	=	0x00bc
                           0000BC   821 G$PS$0$0 == 0x00bc
                           0000BC   822 _PS	=	0x00bc
                           0000BD   823 G$PT2$0$0 == 0x00bd
                           0000BD   824 _PT2	=	0x00bd
                           0000C0   825 G$SMBTOE$0$0 == 0x00c0
                           0000C0   826 _SMBTOE	=	0x00c0
                           0000C1   827 G$SMBFTE$0$0 == 0x00c1
                           0000C1   828 _SMBFTE	=	0x00c1
                           0000C2   829 G$AA$0$0 == 0x00c2
                           0000C2   830 _AA	=	0x00c2
                           0000C3   831 G$SI$0$0 == 0x00c3
                           0000C3   832 _SI	=	0x00c3
                           0000C4   833 G$STO$0$0 == 0x00c4
                           0000C4   834 _STO	=	0x00c4
                           0000C5   835 G$STA$0$0 == 0x00c5
                           0000C5   836 _STA	=	0x00c5
                           0000C6   837 G$ENSMB$0$0 == 0x00c6
                           0000C6   838 _ENSMB	=	0x00c6
                           0000C7   839 G$BUSY$0$0 == 0x00c7
                           0000C7   840 _BUSY	=	0x00c7
                           0000C8   841 G$CPRL2$0$0 == 0x00c8
                           0000C8   842 _CPRL2	=	0x00c8
                           0000C9   843 G$CT2$0$0 == 0x00c9
                           0000C9   844 _CT2	=	0x00c9
                           0000CA   845 G$TR2$0$0 == 0x00ca
                           0000CA   846 _TR2	=	0x00ca
                           0000CB   847 G$EXEN2$0$0 == 0x00cb
                           0000CB   848 _EXEN2	=	0x00cb
                           0000CC   849 G$TCLK$0$0 == 0x00cc
                           0000CC   850 _TCLK	=	0x00cc
                           0000CD   851 G$RCLK$0$0 == 0x00cd
                           0000CD   852 _RCLK	=	0x00cd
                           0000CE   853 G$EXF2$0$0 == 0x00ce
                           0000CE   854 _EXF2	=	0x00ce
                           0000CF   855 G$TF2$0$0 == 0x00cf
                           0000CF   856 _TF2	=	0x00cf
                           0000D0   857 G$P$0$0 == 0x00d0
                           0000D0   858 _P	=	0x00d0
                           0000D1   859 G$F1$0$0 == 0x00d1
                           0000D1   860 _F1	=	0x00d1
                           0000D2   861 G$OV$0$0 == 0x00d2
                           0000D2   862 _OV	=	0x00d2
                           0000D3   863 G$RS0$0$0 == 0x00d3
                           0000D3   864 _RS0	=	0x00d3
                           0000D4   865 G$RS1$0$0 == 0x00d4
                           0000D4   866 _RS1	=	0x00d4
                           0000D5   867 G$F0$0$0 == 0x00d5
                           0000D5   868 _F0	=	0x00d5
                           0000D6   869 G$AC$0$0 == 0x00d6
                           0000D6   870 _AC	=	0x00d6
                           0000D7   871 G$CY$0$0 == 0x00d7
                           0000D7   872 _CY	=	0x00d7
                           0000D8   873 G$CCF0$0$0 == 0x00d8
                           0000D8   874 _CCF0	=	0x00d8
                           0000D9   875 G$CCF1$0$0 == 0x00d9
                           0000D9   876 _CCF1	=	0x00d9
                           0000DA   877 G$CCF2$0$0 == 0x00da
                           0000DA   878 _CCF2	=	0x00da
                           0000DB   879 G$CCF3$0$0 == 0x00db
                           0000DB   880 _CCF3	=	0x00db
                           0000DC   881 G$CCF4$0$0 == 0x00dc
                           0000DC   882 _CCF4	=	0x00dc
                           0000DE   883 G$CR$0$0 == 0x00de
                           0000DE   884 _CR	=	0x00de
                           0000DF   885 G$CF$0$0 == 0x00df
                           0000DF   886 _CF	=	0x00df
                           0000E8   887 G$ADLJST$0$0 == 0x00e8
                           0000E8   888 _ADLJST	=	0x00e8
                           0000E8   889 G$AD0LJST$0$0 == 0x00e8
                           0000E8   890 _AD0LJST	=	0x00e8
                           0000E9   891 G$ADWINT$0$0 == 0x00e9
                           0000E9   892 _ADWINT	=	0x00e9
                           0000E9   893 G$AD0WINT$0$0 == 0x00e9
                           0000E9   894 _AD0WINT	=	0x00e9
                           0000EA   895 G$ADSTM0$0$0 == 0x00ea
                           0000EA   896 _ADSTM0	=	0x00ea
                           0000EA   897 G$AD0CM0$0$0 == 0x00ea
                           0000EA   898 _AD0CM0	=	0x00ea
                           0000EB   899 G$ADSTM1$0$0 == 0x00eb
                           0000EB   900 _ADSTM1	=	0x00eb
                           0000EB   901 G$AD0CM1$0$0 == 0x00eb
                           0000EB   902 _AD0CM1	=	0x00eb
                           0000EC   903 G$ADBUSY$0$0 == 0x00ec
                           0000EC   904 _ADBUSY	=	0x00ec
                           0000EC   905 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   906 _AD0BUSY	=	0x00ec
                           0000ED   907 G$ADCINT$0$0 == 0x00ed
                           0000ED   908 _ADCINT	=	0x00ed
                           0000ED   909 G$AD0INT$0$0 == 0x00ed
                           0000ED   910 _AD0INT	=	0x00ed
                           0000EE   911 G$ADCTM$0$0 == 0x00ee
                           0000EE   912 _ADCTM	=	0x00ee
                           0000EE   913 G$AD0TM$0$0 == 0x00ee
                           0000EE   914 _AD0TM	=	0x00ee
                           0000EF   915 G$ADCEN$0$0 == 0x00ef
                           0000EF   916 _ADCEN	=	0x00ef
                           0000EF   917 G$AD0EN$0$0 == 0x00ef
                           0000EF   918 _AD0EN	=	0x00ef
                           0000F8   919 G$SPIEN$0$0 == 0x00f8
                           0000F8   920 _SPIEN	=	0x00f8
                           0000F9   921 G$MSTEN$0$0 == 0x00f9
                           0000F9   922 _MSTEN	=	0x00f9
                           0000FA   923 G$SLVSEL$0$0 == 0x00fa
                           0000FA   924 _SLVSEL	=	0x00fa
                           0000FB   925 G$TXBSY$0$0 == 0x00fb
                           0000FB   926 _TXBSY	=	0x00fb
                           0000FC   927 G$RXOVRN$0$0 == 0x00fc
                           0000FC   928 _RXOVRN	=	0x00fc
                           0000FD   929 G$MODF$0$0 == 0x00fd
                           0000FD   930 _MODF	=	0x00fd
                           0000FE   931 G$WCOL$0$0 == 0x00fe
                           0000FE   932 _WCOL	=	0x00fe
                           0000FF   933 G$SPIF$0$0 == 0x00ff
                           0000FF   934 _SPIF	=	0x00ff
                           0000C7   935 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   936 _BUS_BUSY	=	0x00c7
                           0000C6   937 G$BUS_EN$0$0 == 0x00c6
                           0000C6   938 _BUS_EN	=	0x00c6
                           0000C5   939 G$BUS_START$0$0 == 0x00c5
                           0000C5   940 _BUS_START	=	0x00c5
                           0000C4   941 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   942 _BUS_STOP	=	0x00c4
                           0000C3   943 G$BUS_INT$0$0 == 0x00c3
                           0000C3   944 _BUS_INT	=	0x00c3
                           0000C2   945 G$BUS_AA$0$0 == 0x00c2
                           0000C2   946 _BUS_AA	=	0x00c2
                           0000C1   947 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   948 _BUS_FTE	=	0x00c1
                           0000C0   949 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   950 _BUS_TOE	=	0x00c0
                           000083   951 G$BUS_SCL$0$0 == 0x0083
                           000083   952 _BUS_SCL	=	0x0083
                           0000B7   953 G$run$0$0 == 0x00b7
                           0000B7   954 _run	=	0x00b7
                           0000A5   955 G$BILED0$0$0 == 0x00a5
                           0000A5   956 _BILED0	=	0x00a5
                           0000A3   957 G$BILED1$0$0 == 0x00a3
                           0000A3   958 _BILED1	=	0x00a3
                                    959 ;--------------------------------------------------------
                                    960 ; overlayable register banks
                                    961 ;--------------------------------------------------------
                                    962 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        963 	.ds 8
                                    964 ;--------------------------------------------------------
                                    965 ; internal ram data
                                    966 ;--------------------------------------------------------
                                    967 	.area DSEG    (DATA)
                           000000   968 G$Data2$0$0==.
      000022                        969 _Data2::
      000022                        970 	.ds 3
                           000003   971 Llab_5.aligned_alloc$size$1$26==.
      000025                        972 _aligned_alloc_PARM_2:
      000025                        973 	.ds 2
                           000005   974 Llab_5.lcd_clear$NumBytes$1$85==.
      000027                        975 _lcd_clear_NumBytes_1_85:
      000027                        976 	.ds 1
                           000006   977 Llab_5.lcd_clear$Cmd$1$85==.
      000028                        978 _lcd_clear_Cmd_1_85:
      000028                        979 	.ds 2
                           000008   980 Llab_5.read_keypad$Data$1$86==.
      00002A                        981 _read_keypad_Data_1_86:
      00002A                        982 	.ds 2
                           00000A   983 Llab_5.i2c_write_data$start_reg$1$105==.
      00002C                        984 _i2c_write_data_PARM_2:
      00002C                        985 	.ds 1
                           00000B   986 Llab_5.i2c_write_data$buffer$1$105==.
      00002D                        987 _i2c_write_data_PARM_3:
      00002D                        988 	.ds 3
                           00000E   989 Llab_5.i2c_write_data$num_bytes$1$105==.
      000030                        990 _i2c_write_data_PARM_4:
      000030                        991 	.ds 1
                           00000F   992 Llab_5.i2c_read_data$start_reg$1$107==.
      000031                        993 _i2c_read_data_PARM_2:
      000031                        994 	.ds 1
                           000010   995 Llab_5.i2c_read_data$buffer$1$107==.
      000032                        996 _i2c_read_data_PARM_3:
      000032                        997 	.ds 3
                           000013   998 Llab_5.i2c_read_data$num_bytes$1$107==.
      000035                        999 _i2c_read_data_PARM_4:
      000035                       1000 	.ds 1
                           000014  1001 G$MOTOR_STOP$0$0==.
      000036                       1002 _MOTOR_STOP::
      000036                       1003 	.ds 2
                           000016  1004 G$MOTOR_MAX$0$0==.
      000038                       1005 _MOTOR_MAX::
      000038                       1006 	.ds 2
                           000018  1007 G$MOTOR_MIN$0$0==.
      00003A                       1008 _MOTOR_MIN::
      00003A                       1009 	.ds 2
                           00001A  1010 G$MOTOR_PW$0$0==.
      00003C                       1011 _MOTOR_PW::
      00003C                       1012 	.ds 2
                           00001C  1013 G$SERVO_CENTER$0$0==.
      00003E                       1014 _SERVO_CENTER::
      00003E                       1015 	.ds 2
                           00001E  1016 G$SERVO_RIGHT$0$0==.
      000040                       1017 _SERVO_RIGHT::
      000040                       1018 	.ds 2
                           000020  1019 G$SERVO_LEFT$0$0==.
      000042                       1020 _SERVO_LEFT::
      000042                       1021 	.ds 2
                           000022  1022 G$SERVO_PW$0$0==.
      000044                       1023 _SERVO_PW::
      000044                       1024 	.ds 2
                           000024  1025 G$new_accel$0$0==.
      000046                       1026 _new_accel::
      000046                       1027 	.ds 1
                           000025  1028 G$new_lcd$0$0==.
      000047                       1029 _new_lcd::
      000047                       1030 	.ds 1
                           000026  1031 G$range$0$0==.
      000048                       1032 _range::
      000048                       1033 	.ds 2
                           000028  1034 G$a_count$0$0==.
      00004A                       1035 _a_count::
      00004A                       1036 	.ds 1
                           000029  1037 G$lcd_count$0$0==.
      00004B                       1038 _lcd_count::
      00004B                       1039 	.ds 1
                           00002A  1040 G$Data$0$0==.
      00004C                       1041 _Data::
      00004C                       1042 	.ds 4
                           00002E  1043 G$gx$0$0==.
      000050                       1044 _gx::
      000050                       1045 	.ds 2
                           000030  1046 G$gy$0$0==.
      000052                       1047 _gy::
      000052                       1048 	.ds 2
                           000032  1049 G$x0$0$0==.
      000054                       1050 _x0::
      000054                       1051 	.ds 2
                           000034  1052 G$y0$0$0==.
      000056                       1053 _y0::
      000056                       1054 	.ds 2
                           000036  1055 G$ks$0$0==.
      000058                       1056 _ks::
      000058                       1057 	.ds 1
                           000037  1058 G$kdx$0$0==.
      000059                       1059 _kdx::
      000059                       1060 	.ds 1
                           000038  1061 G$kdy$0$0==.
      00005A                       1062 _kdy::
      00005A                       1063 	.ds 1
                           000039  1064 G$levelflag$0$0==.
      00005B                       1065 _levelflag::
      00005B                       1066 	.ds 1
                           00003A  1067 G$nCounts$0$0==.
      00005C                       1068 _nCounts::
      00005C                       1069 	.ds 2
                           00003C  1070 G$direction$0$0==.
      00005E                       1071 _direction::
      00005E                       1072 	.ds 1
                           00003D  1073 G$Constant$0$0==.
      00005F                       1074 _Constant::
      00005F                       1075 	.ds 2
                           00003F  1076 G$avg_gx$0$0==.
      000061                       1077 _avg_gx::
      000061                       1078 	.ds 2
                           000041  1079 G$avg_gy$0$0==.
      000063                       1080 _avg_gy::
      000063                       1081 	.ds 2
                           000043  1082 Llab_5.read_AD_input$cast$1$166==.
      000065                       1083 _read_AD_input_PARM_2:
      000065                       1084 	.ds 1
                                   1085 ;--------------------------------------------------------
                                   1086 ; overlayable items in internal ram 
                                   1087 ;--------------------------------------------------------
                                   1088 	.area	OSEG    (OVR,DATA)
                                   1089 	.area	OSEG    (OVR,DATA)
                                   1090 	.area	OSEG    (OVR,DATA)
                                   1091 	.area	OSEG    (OVR,DATA)
                                   1092 	.area	OSEG    (OVR,DATA)
                                   1093 	.area	OSEG    (OVR,DATA)
                                   1094 	.area	OSEG    (OVR,DATA)
                                   1095 ;--------------------------------------------------------
                                   1096 ; Stack segment in internal ram 
                                   1097 ;--------------------------------------------------------
                                   1098 	.area	SSEG
      000080                       1099 __start__stack:
      000080                       1100 	.ds	1
                                   1101 
                                   1102 ;--------------------------------------------------------
                                   1103 ; indirectly addressable internal ram data
                                   1104 ;--------------------------------------------------------
                                   1105 	.area ISEG    (DATA)
                                   1106 ;--------------------------------------------------------
                                   1107 ; absolute internal ram data
                                   1108 ;--------------------------------------------------------
                                   1109 	.area IABS    (ABS,DATA)
                                   1110 	.area IABS    (ABS,DATA)
                                   1111 ;--------------------------------------------------------
                                   1112 ; bit data
                                   1113 ;--------------------------------------------------------
                                   1114 	.area BSEG    (BIT)
                                   1115 ;--------------------------------------------------------
                                   1116 ; paged external ram data
                                   1117 ;--------------------------------------------------------
                                   1118 	.area PSEG    (PAG,XDATA)
                                   1119 ;--------------------------------------------------------
                                   1120 ; external ram data
                                   1121 ;--------------------------------------------------------
                                   1122 	.area XSEG    (XDATA)
                           000000  1123 Llab_5.lcd_print$text$1$81==.
      000001                       1124 _lcd_print_text_1_81:
      000001                       1125 	.ds 80
                                   1126 ;--------------------------------------------------------
                                   1127 ; absolute external ram data
                                   1128 ;--------------------------------------------------------
                                   1129 	.area XABS    (ABS,XDATA)
                                   1130 ;--------------------------------------------------------
                                   1131 ; external initialized ram data
                                   1132 ;--------------------------------------------------------
                                   1133 	.area XISEG   (XDATA)
                                   1134 	.area HOME    (CODE)
                                   1135 	.area GSINIT0 (CODE)
                                   1136 	.area GSINIT1 (CODE)
                                   1137 	.area GSINIT2 (CODE)
                                   1138 	.area GSINIT3 (CODE)
                                   1139 	.area GSINIT4 (CODE)
                                   1140 	.area GSINIT5 (CODE)
                                   1141 	.area GSINIT  (CODE)
                                   1142 	.area GSFINAL (CODE)
                                   1143 	.area CSEG    (CODE)
                                   1144 ;--------------------------------------------------------
                                   1145 ; interrupt vector 
                                   1146 ;--------------------------------------------------------
                                   1147 	.area HOME    (CODE)
      000000                       1148 __interrupt_vect:
      000000 02 00 51         [24] 1149 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1150 	reti
      000004                       1151 	.ds	7
      00000B 32               [24] 1152 	reti
      00000C                       1153 	.ds	7
      000013 32               [24] 1154 	reti
      000014                       1155 	.ds	7
      00001B 32               [24] 1156 	reti
      00001C                       1157 	.ds	7
      000023 32               [24] 1158 	reti
      000024                       1159 	.ds	7
      00002B 32               [24] 1160 	reti
      00002C                       1161 	.ds	7
      000033 32               [24] 1162 	reti
      000034                       1163 	.ds	7
      00003B 32               [24] 1164 	reti
      00003C                       1165 	.ds	7
      000043 32               [24] 1166 	reti
      000044                       1167 	.ds	7
      00004B 02 09 1D         [24] 1168 	ljmp	_PCA_ISR
                                   1169 ;--------------------------------------------------------
                                   1170 ; global & static initialisations
                                   1171 ;--------------------------------------------------------
                                   1172 	.area HOME    (CODE)
                                   1173 	.area GSINIT  (CODE)
                                   1174 	.area GSFINAL (CODE)
                                   1175 	.area GSINIT  (CODE)
                                   1176 	.globl __sdcc_gsinit_startup
                                   1177 	.globl __sdcc_program_startup
                                   1178 	.globl __start__stack
                                   1179 	.globl __mcs51_genXINIT
                                   1180 	.globl __mcs51_genXRAMCLEAR
                                   1181 	.globl __mcs51_genRAMCLEAR
                           000000  1182 	C$lab_5.c$29$1$197 ==.
                                   1183 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:29: unsigned int MOTOR_STOP = 2760;
      0000AA 75 36 C8         [24] 1184 	mov	_MOTOR_STOP,#0xc8
      0000AD 75 37 0A         [24] 1185 	mov	(_MOTOR_STOP + 1),#0x0a
                           000006  1186 	C$lab_5.c$30$1$197 ==.
                                   1187 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:30: unsigned int MOTOR_MAX = 3500;
      0000B0 75 38 AC         [24] 1188 	mov	_MOTOR_MAX,#0xac
      0000B3 75 39 0D         [24] 1189 	mov	(_MOTOR_MAX + 1),#0x0d
                           00000C  1190 	C$lab_5.c$31$1$197 ==.
                                   1191 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:31: unsigned int MOTOR_MIN = 2030;
      0000B6 75 3A EE         [24] 1192 	mov	_MOTOR_MIN,#0xee
      0000B9 75 3B 07         [24] 1193 	mov	(_MOTOR_MIN + 1),#0x07
                           000012  1194 	C$lab_5.c$32$1$197 ==.
                                   1195 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:32: unsigned int MOTOR_PW = 0;
      0000BC E4               [12] 1196 	clr	a
      0000BD F5 3C            [12] 1197 	mov	_MOTOR_PW,a
      0000BF F5 3D            [12] 1198 	mov	(_MOTOR_PW + 1),a
                           000017  1199 	C$lab_5.c$33$1$197 ==.
                                   1200 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:33: unsigned int SERVO_CENTER = 2834;
      0000C1 75 3E 12         [24] 1201 	mov	_SERVO_CENTER,#0x12
      0000C4 75 3F 0B         [24] 1202 	mov	(_SERVO_CENTER + 1),#0x0b
                           00001D  1203 	C$lab_5.c$34$1$197 ==.
                                   1204 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:34: unsigned int SERVO_RIGHT = 3374;
      0000C7 75 40 2E         [24] 1205 	mov	_SERVO_RIGHT,#0x2e
      0000CA 75 41 0D         [24] 1206 	mov	(_SERVO_RIGHT + 1),#0x0d
                           000023  1207 	C$lab_5.c$35$1$197 ==.
                                   1208 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:35: unsigned int SERVO_LEFT = 2294;
      0000CD 75 42 F6         [24] 1209 	mov	_SERVO_LEFT,#0xf6
      0000D0 75 43 08         [24] 1210 	mov	(_SERVO_LEFT + 1),#0x08
                           000029  1211 	C$lab_5.c$36$1$197 ==.
                                   1212 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:36: unsigned int SERVO_PW = 0;
      0000D3 F5 44            [12] 1213 	mov	_SERVO_PW,a
      0000D5 F5 45            [12] 1214 	mov	(_SERVO_PW + 1),a
                           00002D  1215 	C$lab_5.c$38$1$197 ==.
                                   1216 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:38: unsigned char new_accel = 0; // flag for count of accel timing
                                   1217 ;	1-genFromRTrack replaced	mov	_new_accel,#0x00
      0000D7 F5 46            [12] 1218 	mov	_new_accel,a
                           00002F  1219 	C$lab_5.c$39$1$197 ==.
                                   1220 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:39: unsigned char new_lcd = 0; // flag for count of LCD timing
                                   1221 ;	1-genFromRTrack replaced	mov	_new_lcd,#0x00
      0000D9 F5 47            [12] 1222 	mov	_new_lcd,a
                           000031  1223 	C$lab_5.c$44$1$197 ==.
                                   1224 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:44: signed int gx = 0;
      0000DB F5 50            [12] 1225 	mov	_gx,a
      0000DD F5 51            [12] 1226 	mov	(_gx + 1),a
                           000035  1227 	C$lab_5.c$45$1$197 ==.
                                   1228 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:45: signed int gy = 0;
      0000DF F5 52            [12] 1229 	mov	_gy,a
      0000E1 F5 53            [12] 1230 	mov	(_gy + 1),a
                           000039  1231 	C$lab_5.c$46$1$197 ==.
                                   1232 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:46: signed int x0 = 0;
      0000E3 F5 54            [12] 1233 	mov	_x0,a
      0000E5 F5 55            [12] 1234 	mov	(_x0 + 1),a
                           00003D  1235 	C$lab_5.c$47$1$197 ==.
                                   1236 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:47: signed int y0 = 0;
      0000E7 F5 56            [12] 1237 	mov	_y0,a
      0000E9 F5 57            [12] 1238 	mov	(_y0 + 1),a
                           000041  1239 	C$lab_5.c$51$1$197 ==.
                                   1240 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:51: unsigned char levelflag = 1;
      0000EB 75 5B 01         [24] 1241 	mov	_levelflag,#0x01
                           000044  1242 	C$lab_5.c$52$1$197 ==.
                                   1243 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:52: unsigned int nCounts = 0;
      0000EE F5 5C            [12] 1244 	mov	_nCounts,a
      0000F0 F5 5D            [12] 1245 	mov	(_nCounts + 1),a
                           000048  1246 	C$lab_5.c$54$1$197 ==.
                                   1247 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:54: int Constant = 1;
      0000F2 75 5F 01         [24] 1248 	mov	_Constant,#0x01
                                   1249 ;	1-genFromRTrack replaced	mov	(_Constant + 1),#0x00
      0000F5 F5 60            [12] 1250 	mov	(_Constant + 1),a
                                   1251 	.area GSFINAL (CODE)
      0000F7 02 00 4E         [24] 1252 	ljmp	__sdcc_program_startup
                                   1253 ;--------------------------------------------------------
                                   1254 ; Home
                                   1255 ;--------------------------------------------------------
                                   1256 	.area HOME    (CODE)
                                   1257 	.area HOME    (CODE)
      00004E                       1258 __sdcc_program_startup:
      00004E 02 06 00         [24] 1259 	ljmp	_main
                                   1260 ;	return from main will return to caller
                                   1261 ;--------------------------------------------------------
                                   1262 ; code
                                   1263 ;--------------------------------------------------------
                                   1264 	.area CSEG    (CODE)
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1267 ;------------------------------------------------------------
                                   1268 ;i                         Allocated to registers r6 r7 
                                   1269 ;------------------------------------------------------------
                           000000  1270 	G$SYSCLK_Init$0$0 ==.
                           000000  1271 	C$c8051_SDCC.h$62$0$0 ==.
                                   1272 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function SYSCLK_Init
                                   1275 ;	-----------------------------------------
      0000FA                       1276 _SYSCLK_Init:
                           000007  1277 	ar7 = 0x07
                           000006  1278 	ar6 = 0x06
                           000005  1279 	ar5 = 0x05
                           000004  1280 	ar4 = 0x04
                           000003  1281 	ar3 = 0x03
                           000002  1282 	ar2 = 0x02
                           000001  1283 	ar1 = 0x01
                           000000  1284 	ar0 = 0x00
                           000000  1285 	C$c8051_SDCC.h$66$1$2 ==.
                                   1286 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000FA 75 B1 67         [24] 1287 	mov	_OSCXCN,#0x67
                           000003  1288 	C$c8051_SDCC.h$69$1$2 ==.
                                   1289 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000FD 7E 00            [12] 1290 	mov	r6,#0x00
      0000FF 7F 01            [12] 1291 	mov	r7,#0x01
      000101                       1292 00107$:
      000101 EE               [12] 1293 	mov	a,r6
      000102 24 FF            [12] 1294 	add	a,#0xff
      000104 FC               [12] 1295 	mov	r4,a
      000105 EF               [12] 1296 	mov	a,r7
      000106 34 FF            [12] 1297 	addc	a,#0xff
      000108 FD               [12] 1298 	mov	r5,a
      000109 8C 06            [24] 1299 	mov	ar6,r4
      00010B 8D 07            [24] 1300 	mov	ar7,r5
      00010D EC               [12] 1301 	mov	a,r4
      00010E 4D               [12] 1302 	orl	a,r5
      00010F 70 F0            [24] 1303 	jnz	00107$
                           000017  1304 	C$c8051_SDCC.h$71$1$2 ==.
                                   1305 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000111                       1306 00102$:
      000111 E5 B1            [12] 1307 	mov	a,_OSCXCN
      000113 30 E7 FB         [24] 1308 	jnb	acc.7,00102$
                           00001C  1309 	C$c8051_SDCC.h$73$1$2 ==.
                                   1310 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      000116 75 B2 88         [24] 1311 	mov	_OSCICN,#0x88
                           00001F  1312 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1313 	XG$SYSCLK_Init$0$0 ==.
      000119 22               [24] 1314 	ret
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'UART0_Init'
                                   1317 ;------------------------------------------------------------
                           000020  1318 	G$UART0_Init$0$0 ==.
                           000020  1319 	C$c8051_SDCC.h$84$1$2 ==.
                                   1320 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function UART0_Init
                                   1323 ;	-----------------------------------------
      00011A                       1324 _UART0_Init:
                           000020  1325 	C$c8051_SDCC.h$86$1$4 ==.
                                   1326 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      00011A 75 98 50         [24] 1327 	mov	_SCON0,#0x50
                           000023  1328 	C$c8051_SDCC.h$87$1$4 ==.
                                   1329 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      00011D 75 89 20         [24] 1330 	mov	_TMOD,#0x20
                           000026  1331 	C$c8051_SDCC.h$88$1$4 ==.
                                   1332 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000120 75 8D DC         [24] 1333 	mov	_TH1,#0xdc
                           000029  1334 	C$c8051_SDCC.h$89$1$4 ==.
                                   1335 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      000123 D2 8E            [12] 1336 	setb	_TR1
                           00002B  1337 	C$c8051_SDCC.h$90$1$4 ==.
                                   1338 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      000125 43 8E 10         [24] 1339 	orl	_CKCON,#0x10
                           00002E  1340 	C$c8051_SDCC.h$91$1$4 ==.
                                   1341 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000128 43 87 80         [24] 1342 	orl	_PCON,#0x80
                           000031  1343 	C$c8051_SDCC.h$93$1$4 ==.
                                   1344 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      00012B D2 99            [12] 1345 	setb	_TI0
                           000033  1346 	C$c8051_SDCC.h$94$1$4 ==.
                                   1347 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      00012D 43 A4 01         [24] 1348 	orl	_P0MDOUT,#0x01
                           000036  1349 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1350 	XG$UART0_Init$0$0 ==.
      000130 22               [24] 1351 	ret
                                   1352 ;------------------------------------------------------------
                                   1353 ;Allocation info for local variables in function 'Sys_Init'
                                   1354 ;------------------------------------------------------------
                           000037  1355 	G$Sys_Init$0$0 ==.
                           000037  1356 	C$c8051_SDCC.h$103$1$4 ==.
                                   1357 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1358 ;	-----------------------------------------
                                   1359 ;	 function Sys_Init
                                   1360 ;	-----------------------------------------
      000131                       1361 _Sys_Init:
                           000037  1362 	C$c8051_SDCC.h$105$1$6 ==.
                                   1363 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000131 75 FF DE         [24] 1364 	mov	_WDTCN,#0xde
                           00003A  1365 	C$c8051_SDCC.h$106$1$6 ==.
                                   1366 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000134 75 FF AD         [24] 1367 	mov	_WDTCN,#0xad
                           00003D  1368 	C$c8051_SDCC.h$108$1$6 ==.
                                   1369 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000137 12 00 FA         [24] 1370 	lcall	_SYSCLK_Init
                           000040  1371 	C$c8051_SDCC.h$109$1$6 ==.
                                   1372 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00013A 12 01 1A         [24] 1373 	lcall	_UART0_Init
                           000043  1374 	C$c8051_SDCC.h$111$1$6 ==.
                                   1375 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      00013D 43 E1 04         [24] 1376 	orl	_XBR0,#0x04
                           000046  1377 	C$c8051_SDCC.h$112$1$6 ==.
                                   1378 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000140 43 E3 40         [24] 1379 	orl	_XBR2,#0x40
                           000049  1380 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1381 	XG$Sys_Init$0$0 ==.
      000143 22               [24] 1382 	ret
                                   1383 ;------------------------------------------------------------
                                   1384 ;Allocation info for local variables in function 'putchar'
                                   1385 ;------------------------------------------------------------
                                   1386 ;c                         Allocated to registers r7 
                                   1387 ;------------------------------------------------------------
                           00004A  1388 	G$putchar$0$0 ==.
                           00004A  1389 	C$c8051_SDCC.h$129$1$6 ==.
                                   1390 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function putchar
                                   1393 ;	-----------------------------------------
      000144                       1394 _putchar:
      000144 AF 82            [24] 1395 	mov	r7,dpl
                           00004C  1396 	C$c8051_SDCC.h$132$1$8 ==.
                                   1397 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000146                       1398 00101$:
                           00004C  1399 	C$c8051_SDCC.h$133$1$8 ==.
                                   1400 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000146 10 99 02         [24] 1401 	jbc	_TI0,00112$
      000149 80 FB            [24] 1402 	sjmp	00101$
      00014B                       1403 00112$:
                           000051  1404 	C$c8051_SDCC.h$134$1$8 ==.
                                   1405 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      00014B 8F 99            [24] 1406 	mov	_SBUF0,r7
                           000053  1407 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1408 	XG$putchar$0$0 ==.
      00014D 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'getchar'
                                   1412 ;------------------------------------------------------------
                                   1413 ;c                         Allocated to registers r7 
                                   1414 ;------------------------------------------------------------
                           000054  1415 	G$getchar$0$0 ==.
                           000054  1416 	C$c8051_SDCC.h$154$1$8 ==.
                                   1417 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function getchar
                                   1420 ;	-----------------------------------------
      00014E                       1421 _getchar:
                           000054  1422 	C$c8051_SDCC.h$157$1$10 ==.
                                   1423 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      00014E                       1424 00101$:
                           000054  1425 	C$c8051_SDCC.h$158$1$10 ==.
                                   1426 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      00014E 10 98 02         [24] 1427 	jbc	_RI0,00112$
      000151 80 FB            [24] 1428 	sjmp	00101$
      000153                       1429 00112$:
                           000059  1430 	C$c8051_SDCC.h$159$1$10 ==.
                                   1431 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000153 AF 99            [24] 1432 	mov	r7,_SBUF0
                           00005B  1433 	C$c8051_SDCC.h$160$1$10 ==.
                                   1434 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000155 8F 82            [24] 1435 	mov	dpl,r7
      000157 C0 07            [24] 1436 	push	ar7
      000159 12 01 44         [24] 1437 	lcall	_putchar
      00015C D0 07            [24] 1438 	pop	ar7
                           000064  1439 	C$c8051_SDCC.h$161$1$10 ==.
                                   1440 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      00015E 8F 82            [24] 1441 	mov	dpl,r7
                           000066  1442 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1443 	XG$getchar$0$0 ==.
      000160 22               [24] 1444 	ret
                                   1445 ;------------------------------------------------------------
                                   1446 ;Allocation info for local variables in function 'getchar_nw'
                                   1447 ;------------------------------------------------------------
                                   1448 ;c                         Allocated to registers 
                                   1449 ;------------------------------------------------------------
                           000067  1450 	G$getchar_nw$0$0 ==.
                           000067  1451 	C$c8051_SDCC.h$168$1$10 ==.
                                   1452 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1453 ;	-----------------------------------------
                                   1454 ;	 function getchar_nw
                                   1455 ;	-----------------------------------------
      000161                       1456 _getchar_nw:
                           000067  1457 	C$c8051_SDCC.h$171$1$12 ==.
                                   1458 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000161 20 98 05         [24] 1459 	jb	_RI0,00102$
      000164 75 82 FF         [24] 1460 	mov	dpl,#0xff
      000167 80 0B            [24] 1461 	sjmp	00104$
      000169                       1462 00102$:
                           00006F  1463 	C$c8051_SDCC.h$174$2$13 ==.
                                   1464 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      000169 C2 98            [12] 1465 	clr	_RI0
                           000071  1466 	C$c8051_SDCC.h$175$2$13 ==.
                                   1467 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00016B 85 99 82         [24] 1468 	mov	dpl,_SBUF0
                           000074  1469 	C$c8051_SDCC.h$176$2$13 ==.
                                   1470 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      00016E 12 01 44         [24] 1471 	lcall	_putchar
                           000077  1472 	C$c8051_SDCC.h$177$2$13 ==.
                                   1473 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000171 85 99 82         [24] 1474 	mov	dpl,_SBUF0
      000174                       1475 00104$:
                           00007A  1476 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1477 	XG$getchar_nw$0$0 ==.
      000174 22               [24] 1478 	ret
                                   1479 ;------------------------------------------------------------
                                   1480 ;Allocation info for local variables in function 'lcd_print'
                                   1481 ;------------------------------------------------------------
                                   1482 ;fmt                       Allocated to stack - _bp -5
                                   1483 ;len                       Allocated to registers r6 
                                   1484 ;i                         Allocated to registers 
                                   1485 ;ap                        Allocated to registers 
                                   1486 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1487 ;------------------------------------------------------------
                           00007B  1488 	G$lcd_print$0$0 ==.
                           00007B  1489 	C$i2c.h$84$1$12 ==.
                                   1490 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1491 ;	-----------------------------------------
                                   1492 ;	 function lcd_print
                                   1493 ;	-----------------------------------------
      000175                       1494 _lcd_print:
      000175 C0 0F            [24] 1495 	push	_bp
      000177 85 81 0F         [24] 1496 	mov	_bp,sp
                           000080  1497 	C$i2c.h$90$1$81 ==.
                                   1498 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00017A E5 0F            [12] 1499 	mov	a,_bp
      00017C 24 FB            [12] 1500 	add	a,#0xfb
      00017E F8               [12] 1501 	mov	r0,a
      00017F 86 82            [24] 1502 	mov	dpl,@r0
      000181 08               [12] 1503 	inc	r0
      000182 86 83            [24] 1504 	mov	dph,@r0
      000184 08               [12] 1505 	inc	r0
      000185 86 F0            [24] 1506 	mov	b,@r0
      000187 12 19 02         [24] 1507 	lcall	_strlen
      00018A E5 82            [12] 1508 	mov	a,dpl
      00018C 85 83 F0         [24] 1509 	mov	b,dph
      00018F 45 F0            [12] 1510 	orl	a,b
      000191 70 02            [24] 1511 	jnz	00102$
      000193 80 62            [24] 1512 	sjmp	00109$
      000195                       1513 00102$:
                           00009B  1514 	C$i2c.h$92$2$82 ==.
                                   1515 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000195 E5 0F            [12] 1516 	mov	a,_bp
      000197 24 FB            [12] 1517 	add	a,#0xfb
      000199 FF               [12] 1518 	mov	r7,a
      00019A 8F 0B            [24] 1519 	mov	_vsprintf_PARM_3,r7
                           0000A2  1520 	C$i2c.h$93$1$81 ==.
                                   1521 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00019C E5 0F            [12] 1522 	mov	a,_bp
      00019E 24 FB            [12] 1523 	add	a,#0xfb
      0001A0 F8               [12] 1524 	mov	r0,a
      0001A1 86 08            [24] 1525 	mov	_vsprintf_PARM_2,@r0
      0001A3 08               [12] 1526 	inc	r0
      0001A4 86 09            [24] 1527 	mov	(_vsprintf_PARM_2 + 1),@r0
      0001A6 08               [12] 1528 	inc	r0
      0001A7 86 0A            [24] 1529 	mov	(_vsprintf_PARM_2 + 2),@r0
      0001A9 90 00 01         [24] 1530 	mov	dptr,#_lcd_print_text_1_81
      0001AC 75 F0 00         [24] 1531 	mov	b,#0x00
      0001AF 12 12 47         [24] 1532 	lcall	_vsprintf
                           0000B8  1533 	C$i2c.h$96$1$81 ==.
                                   1534 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      0001B2 90 00 01         [24] 1535 	mov	dptr,#_lcd_print_text_1_81
      0001B5 75 F0 00         [24] 1536 	mov	b,#0x00
      0001B8 12 19 02         [24] 1537 	lcall	_strlen
      0001BB AE 82            [24] 1538 	mov	r6,dpl
                           0000C3  1539 	C$i2c.h$97$1$81 ==.
                                   1540 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001BD 7F 00            [12] 1541 	mov	r7,#0x00
      0001BF                       1542 00107$:
      0001BF C3               [12] 1543 	clr	c
      0001C0 EF               [12] 1544 	mov	a,r7
      0001C1 9E               [12] 1545 	subb	a,r6
      0001C2 50 1F            [24] 1546 	jnc	00105$
                           0000CA  1547 	C$i2c.h$99$2$84 ==.
                                   1548 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      0001C4 EF               [12] 1549 	mov	a,r7
      0001C5 24 01            [12] 1550 	add	a,#_lcd_print_text_1_81
      0001C7 F5 82            [12] 1551 	mov	dpl,a
      0001C9 E4               [12] 1552 	clr	a
      0001CA 34 00            [12] 1553 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001CC F5 83            [12] 1554 	mov	dph,a
      0001CE E0               [24] 1555 	movx	a,@dptr
      0001CF FD               [12] 1556 	mov	r5,a
      0001D0 BD 0A 0D         [24] 1557 	cjne	r5,#0x0a,00108$
      0001D3 EF               [12] 1558 	mov	a,r7
      0001D4 24 01            [12] 1559 	add	a,#_lcd_print_text_1_81
      0001D6 F5 82            [12] 1560 	mov	dpl,a
      0001D8 E4               [12] 1561 	clr	a
      0001D9 34 00            [12] 1562 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001DB F5 83            [12] 1563 	mov	dph,a
      0001DD 74 0D            [12] 1564 	mov	a,#0x0d
      0001DF F0               [24] 1565 	movx	@dptr,a
      0001E0                       1566 00108$:
                           0000E6  1567 	C$i2c.h$97$1$81 ==.
                                   1568 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001E0 0F               [12] 1569 	inc	r7
      0001E1 80 DC            [24] 1570 	sjmp	00107$
      0001E3                       1571 00105$:
                           0000E9  1572 	C$i2c.h$102$1$81 ==.
                                   1573 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001E3 75 2D 01         [24] 1574 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001E6 75 2E 00         [24] 1575 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001E9 75 2F 00         [24] 1576 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001EC 75 2C 00         [24] 1577 	mov	_i2c_write_data_PARM_2,#0x00
      0001EF 8E 30            [24] 1578 	mov	_i2c_write_data_PARM_4,r6
      0001F1 75 82 C6         [24] 1579 	mov	dpl,#0xc6
      0001F4 12 04 86         [24] 1580 	lcall	_i2c_write_data
      0001F7                       1581 00109$:
      0001F7 D0 0F            [24] 1582 	pop	_bp
                           0000FF  1583 	C$i2c.h$103$1$81 ==.
                           0000FF  1584 	XG$lcd_print$0$0 ==.
      0001F9 22               [24] 1585 	ret
                                   1586 ;------------------------------------------------------------
                                   1587 ;Allocation info for local variables in function 'lcd_clear'
                                   1588 ;------------------------------------------------------------
                                   1589 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1590 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1591 ;------------------------------------------------------------
                           000100  1592 	G$lcd_clear$0$0 ==.
                           000100  1593 	C$i2c.h$106$1$81 ==.
                                   1594 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1595 ;	-----------------------------------------
                                   1596 ;	 function lcd_clear
                                   1597 ;	-----------------------------------------
      0001FA                       1598 _lcd_clear:
                           000100  1599 	C$i2c.h$108$1$81 ==.
                                   1600 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001FA 75 27 00         [24] 1601 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1602 	C$i2c.h$110$1$85 ==.
                                   1603 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001FD                       1604 00101$:
      0001FD 74 C0            [12] 1605 	mov	a,#0x100 - 0x40
      0001FF 25 27            [12] 1606 	add	a,_lcd_clear_NumBytes_1_85
      000201 40 17            [24] 1607 	jc	00103$
      000203 75 32 27         [24] 1608 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      000206 75 33 00         [24] 1609 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000209 75 34 40         [24] 1610 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00020C 75 31 00         [24] 1611 	mov	_i2c_read_data_PARM_2,#0x00
      00020F 75 35 01         [24] 1612 	mov	_i2c_read_data_PARM_4,#0x01
      000212 75 82 C6         [24] 1613 	mov	dpl,#0xc6
      000215 12 05 00         [24] 1614 	lcall	_i2c_read_data
      000218 80 E3            [24] 1615 	sjmp	00101$
      00021A                       1616 00103$:
                           000120  1617 	C$i2c.h$112$1$85 ==.
                                   1618 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      00021A 75 28 0C         [24] 1619 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1620 	C$i2c.h$113$1$85 ==.
                                   1621 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      00021D 75 2D 28         [24] 1622 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      000220 75 2E 00         [24] 1623 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000223 75 2F 40         [24] 1624 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000226 75 2C 00         [24] 1625 	mov	_i2c_write_data_PARM_2,#0x00
      000229 75 30 01         [24] 1626 	mov	_i2c_write_data_PARM_4,#0x01
      00022C 75 82 C6         [24] 1627 	mov	dpl,#0xc6
      00022F 12 04 86         [24] 1628 	lcall	_i2c_write_data
                           000138  1629 	C$i2c.h$114$1$85 ==.
                           000138  1630 	XG$lcd_clear$0$0 ==.
      000232 22               [24] 1631 	ret
                                   1632 ;------------------------------------------------------------
                                   1633 ;Allocation info for local variables in function 'read_keypad'
                                   1634 ;------------------------------------------------------------
                                   1635 ;i                         Allocated to registers r7 
                                   1636 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1637 ;------------------------------------------------------------
                           000139  1638 	G$read_keypad$0$0 ==.
                           000139  1639 	C$i2c.h$117$1$85 ==.
                                   1640 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function read_keypad
                                   1643 ;	-----------------------------------------
      000233                       1644 _read_keypad:
                           000139  1645 	C$i2c.h$121$1$86 ==.
                                   1646 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000233 75 32 2A         [24] 1647 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000236 75 33 00         [24] 1648 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000239 75 34 40         [24] 1649 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00023C 75 31 01         [24] 1650 	mov	_i2c_read_data_PARM_2,#0x01
      00023F 75 35 02         [24] 1651 	mov	_i2c_read_data_PARM_4,#0x02
      000242 75 82 C6         [24] 1652 	mov	dpl,#0xc6
      000245 12 05 00         [24] 1653 	lcall	_i2c_read_data
                           00014E  1654 	C$i2c.h$122$1$86 ==.
                                   1655 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      000248 74 FF            [12] 1656 	mov	a,#0xff
      00024A B5 2A 05         [24] 1657 	cjne	a,_read_keypad_Data_1_86,00102$
      00024D 75 82 00         [24] 1658 	mov	dpl,#0x00
      000250 80 5F            [24] 1659 	sjmp	00116$
      000252                       1660 00102$:
                           000158  1661 	C$i2c.h$124$1$86 ==.
                                   1662 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000252 7F 00            [12] 1663 	mov	r7,#0x00
      000254 8F 06            [24] 1664 	mov	ar6,r7
      000256                       1665 00114$:
                           00015C  1666 	C$i2c.h$126$2$87 ==.
                                   1667 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000256 8E F0            [24] 1668 	mov	b,r6
      000258 05 F0            [12] 1669 	inc	b
      00025A 7C 01            [12] 1670 	mov	r4,#0x01
      00025C 7D 00            [12] 1671 	mov	r5,#0x00
      00025E 80 06            [24] 1672 	sjmp	00145$
      000260                       1673 00144$:
      000260 EC               [12] 1674 	mov	a,r4
      000261 2C               [12] 1675 	add	a,r4
      000262 FC               [12] 1676 	mov	r4,a
      000263 ED               [12] 1677 	mov	a,r5
      000264 33               [12] 1678 	rlc	a
      000265 FD               [12] 1679 	mov	r5,a
      000266                       1680 00145$:
      000266 D5 F0 F7         [24] 1681 	djnz	b,00144$
      000269 AA 2A            [24] 1682 	mov	r2,_read_keypad_Data_1_86
      00026B 7B 00            [12] 1683 	mov	r3,#0x00
      00026D EA               [12] 1684 	mov	a,r2
      00026E 52 04            [12] 1685 	anl	ar4,a
      000270 EB               [12] 1686 	mov	a,r3
      000271 52 05            [12] 1687 	anl	ar5,a
      000273 EC               [12] 1688 	mov	a,r4
      000274 4D               [12] 1689 	orl	a,r5
      000275 60 07            [24] 1690 	jz	00115$
                           00017D  1691 	C$i2c.h$127$2$87 ==.
                                   1692 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      000277 74 31            [12] 1693 	mov	a,#0x31
      000279 2F               [12] 1694 	add	a,r7
      00027A F5 82            [12] 1695 	mov	dpl,a
      00027C 80 33            [24] 1696 	sjmp	00116$
      00027E                       1697 00115$:
                           000184  1698 	C$i2c.h$124$1$86 ==.
                                   1699 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      00027E 0E               [12] 1700 	inc	r6
      00027F 8E 07            [24] 1701 	mov	ar7,r6
      000281 BE 08 00         [24] 1702 	cjne	r6,#0x08,00147$
      000284                       1703 00147$:
      000284 40 D0            [24] 1704 	jc	00114$
                           00018C  1705 	C$i2c.h$130$1$86 ==.
                                   1706 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000286 E5 2B            [12] 1707 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000288 30 E0 05         [24] 1708 	jnb	acc.0,00107$
      00028B 75 82 39         [24] 1709 	mov	dpl,#0x39
      00028E 80 21            [24] 1710 	sjmp	00116$
      000290                       1711 00107$:
                           000196  1712 	C$i2c.h$132$1$86 ==.
                                   1713 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000290 E5 2B            [12] 1714 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000292 30 E1 05         [24] 1715 	jnb	acc.1,00109$
      000295 75 82 2A         [24] 1716 	mov	dpl,#0x2a
      000298 80 17            [24] 1717 	sjmp	00116$
      00029A                       1718 00109$:
                           0001A0  1719 	C$i2c.h$134$1$86 ==.
                                   1720 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00029A E5 2B            [12] 1721 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00029C 30 E2 05         [24] 1722 	jnb	acc.2,00111$
      00029F 75 82 30         [24] 1723 	mov	dpl,#0x30
      0002A2 80 0D            [24] 1724 	sjmp	00116$
      0002A4                       1725 00111$:
                           0001AA  1726 	C$i2c.h$136$1$86 ==.
                                   1727 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      0002A4 E5 2B            [12] 1728 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      0002A6 30 E3 05         [24] 1729 	jnb	acc.3,00113$
      0002A9 75 82 23         [24] 1730 	mov	dpl,#0x23
      0002AC 80 03            [24] 1731 	sjmp	00116$
      0002AE                       1732 00113$:
                           0001B4  1733 	C$i2c.h$138$1$86 ==.
                                   1734 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      0002AE 75 82 FF         [24] 1735 	mov	dpl,#0xff
      0002B1                       1736 00116$:
                           0001B7  1737 	C$i2c.h$139$1$86 ==.
                           0001B7  1738 	XG$read_keypad$0$0 ==.
      0002B1 22               [24] 1739 	ret
                                   1740 ;------------------------------------------------------------
                                   1741 ;Allocation info for local variables in function 'kpd_input'
                                   1742 ;------------------------------------------------------------
                                   1743 ;mode                      Allocated to registers r7 
                                   1744 ;sum                       Allocated to registers r5 r6 
                                   1745 ;key                       Allocated to registers r3 
                                   1746 ;i                         Allocated to registers 
                                   1747 ;------------------------------------------------------------
                           0001B8  1748 	G$kpd_input$0$0 ==.
                           0001B8  1749 	C$i2c.h$151$1$86 ==.
                                   1750 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1751 ;	-----------------------------------------
                                   1752 ;	 function kpd_input
                                   1753 ;	-----------------------------------------
      0002B2                       1754 _kpd_input:
      0002B2 AF 82            [24] 1755 	mov	r7,dpl
                           0001BA  1756 	C$i2c.h$156$1$89 ==.
                                   1757 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1758 	C$i2c.h$159$1$89 ==.
                                   1759 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      0002B4 E4               [12] 1760 	clr	a
      0002B5 FD               [12] 1761 	mov	r5,a
      0002B6 FE               [12] 1762 	mov	r6,a
      0002B7 EF               [12] 1763 	mov	a,r7
      0002B8 70 1D            [24] 1764 	jnz	00102$
      0002BA C0 06            [24] 1765 	push	ar6
      0002BC C0 05            [24] 1766 	push	ar5
      0002BE 74 72            [12] 1767 	mov	a,#___str_0
      0002C0 C0 E0            [24] 1768 	push	acc
      0002C2 74 19            [12] 1769 	mov	a,#(___str_0 >> 8)
      0002C4 C0 E0            [24] 1770 	push	acc
      0002C6 74 80            [12] 1771 	mov	a,#0x80
      0002C8 C0 E0            [24] 1772 	push	acc
      0002CA 12 01 75         [24] 1773 	lcall	_lcd_print
      0002CD 15 81            [12] 1774 	dec	sp
      0002CF 15 81            [12] 1775 	dec	sp
      0002D1 15 81            [12] 1776 	dec	sp
      0002D3 D0 05            [24] 1777 	pop	ar5
      0002D5 D0 06            [24] 1778 	pop	ar6
      0002D7                       1779 00102$:
                           0001DD  1780 	C$i2c.h$161$1$89 ==.
                                   1781 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002D7 C0 06            [24] 1782 	push	ar6
      0002D9 C0 05            [24] 1783 	push	ar5
      0002DB 74 08            [12] 1784 	mov	a,#0x08
      0002DD C0 E0            [24] 1785 	push	acc
      0002DF E4               [12] 1786 	clr	a
      0002E0 C0 E0            [24] 1787 	push	acc
      0002E2 74 08            [12] 1788 	mov	a,#0x08
      0002E4 C0 E0            [24] 1789 	push	acc
      0002E6 E4               [12] 1790 	clr	a
      0002E7 C0 E0            [24] 1791 	push	acc
      0002E9 74 08            [12] 1792 	mov	a,#0x08
      0002EB C0 E0            [24] 1793 	push	acc
      0002ED E4               [12] 1794 	clr	a
      0002EE C0 E0            [24] 1795 	push	acc
      0002F0 74 08            [12] 1796 	mov	a,#0x08
      0002F2 C0 E0            [24] 1797 	push	acc
      0002F4 E4               [12] 1798 	clr	a
      0002F5 C0 E0            [24] 1799 	push	acc
      0002F7 74 08            [12] 1800 	mov	a,#0x08
      0002F9 C0 E0            [24] 1801 	push	acc
      0002FB E4               [12] 1802 	clr	a
      0002FC C0 E0            [24] 1803 	push	acc
      0002FE 74 88            [12] 1804 	mov	a,#___str_1
      000300 C0 E0            [24] 1805 	push	acc
      000302 74 19            [12] 1806 	mov	a,#(___str_1 >> 8)
      000304 C0 E0            [24] 1807 	push	acc
      000306 74 80            [12] 1808 	mov	a,#0x80
      000308 C0 E0            [24] 1809 	push	acc
      00030A 12 01 75         [24] 1810 	lcall	_lcd_print
      00030D E5 81            [12] 1811 	mov	a,sp
      00030F 24 F3            [12] 1812 	add	a,#0xf3
      000311 F5 81            [12] 1813 	mov	sp,a
                           000219  1814 	C$i2c.h$163$1$89 ==.
                                   1815 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      000313 90 A1 20         [24] 1816 	mov	dptr,#0xa120
      000316 75 F0 07         [24] 1817 	mov	b,#0x07
      000319 E4               [12] 1818 	clr	a
      00031A 12 04 21         [24] 1819 	lcall	_delay_time
      00031D D0 05            [24] 1820 	pop	ar5
      00031F D0 06            [24] 1821 	pop	ar6
                           000227  1822 	C$i2c.h$167$1$89 ==.
                                   1823 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000321 7F 00            [12] 1824 	mov	r7,#0x00
                           000229  1825 	C$i2c.h$169$3$92 ==.
                                   1826 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      000323                       1827 00104$:
      000323 C0 07            [24] 1828 	push	ar7
      000325 C0 06            [24] 1829 	push	ar6
      000327 C0 05            [24] 1830 	push	ar5
      000329 12 02 33         [24] 1831 	lcall	_read_keypad
      00032C AC 82            [24] 1832 	mov	r4,dpl
      00032E D0 05            [24] 1833 	pop	ar5
      000330 D0 06            [24] 1834 	pop	ar6
      000332 D0 07            [24] 1835 	pop	ar7
      000334 8C 03            [24] 1836 	mov	ar3,r4
      000336 BC FF 02         [24] 1837 	cjne	r4,#0xff,00146$
      000339 80 03            [24] 1838 	sjmp	00105$
      00033B                       1839 00146$:
      00033B BB 2A 17         [24] 1840 	cjne	r3,#0x2a,00106$
      00033E                       1841 00105$:
      00033E 90 27 10         [24] 1842 	mov	dptr,#0x2710
      000341 E4               [12] 1843 	clr	a
      000342 F5 F0            [12] 1844 	mov	b,a
      000344 C0 07            [24] 1845 	push	ar7
      000346 C0 06            [24] 1846 	push	ar6
      000348 C0 05            [24] 1847 	push	ar5
      00034A 12 04 21         [24] 1848 	lcall	_delay_time
      00034D D0 05            [24] 1849 	pop	ar5
      00034F D0 06            [24] 1850 	pop	ar6
      000351 D0 07            [24] 1851 	pop	ar7
      000353 80 CE            [24] 1852 	sjmp	00104$
      000355                       1853 00106$:
                           00025B  1854 	C$i2c.h$170$2$90 ==.
                                   1855 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000355 BB 23 2A         [24] 1856 	cjne	r3,#0x23,00114$
                           00025E  1857 	C$i2c.h$172$3$91 ==.
                                   1858 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      000358                       1859 00107$:
      000358 C0 06            [24] 1860 	push	ar6
      00035A C0 05            [24] 1861 	push	ar5
      00035C 12 02 33         [24] 1862 	lcall	_read_keypad
      00035F AC 82            [24] 1863 	mov	r4,dpl
      000361 D0 05            [24] 1864 	pop	ar5
      000363 D0 06            [24] 1865 	pop	ar6
      000365 BC 23 13         [24] 1866 	cjne	r4,#0x23,00109$
      000368 90 27 10         [24] 1867 	mov	dptr,#0x2710
      00036B E4               [12] 1868 	clr	a
      00036C F5 F0            [12] 1869 	mov	b,a
      00036E C0 06            [24] 1870 	push	ar6
      000370 C0 05            [24] 1871 	push	ar5
      000372 12 04 21         [24] 1872 	lcall	_delay_time
      000375 D0 05            [24] 1873 	pop	ar5
      000377 D0 06            [24] 1874 	pop	ar6
      000379 80 DD            [24] 1875 	sjmp	00107$
      00037B                       1876 00109$:
                           000281  1877 	C$i2c.h$173$3$91 ==.
                                   1878 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00037B 8D 82            [24] 1879 	mov	dpl,r5
      00037D 8E 83            [24] 1880 	mov	dph,r6
      00037F 02 04 20         [24] 1881 	ljmp	00119$
      000382                       1882 00114$:
                           000288  1883 	C$i2c.h$177$3$92 ==.
                                   1884 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000382 8B 02            [24] 1885 	mov	ar2,r3
      000384 7C 00            [12] 1886 	mov	r4,#0x00
      000386 C0 07            [24] 1887 	push	ar7
      000388 C0 06            [24] 1888 	push	ar6
      00038A C0 05            [24] 1889 	push	ar5
      00038C C0 04            [24] 1890 	push	ar4
      00038E C0 03            [24] 1891 	push	ar3
      000390 C0 02            [24] 1892 	push	ar2
      000392 C0 02            [24] 1893 	push	ar2
      000394 C0 04            [24] 1894 	push	ar4
      000396 74 98            [12] 1895 	mov	a,#___str_2
      000398 C0 E0            [24] 1896 	push	acc
      00039A 74 19            [12] 1897 	mov	a,#(___str_2 >> 8)
      00039C C0 E0            [24] 1898 	push	acc
      00039E 74 80            [12] 1899 	mov	a,#0x80
      0003A0 C0 E0            [24] 1900 	push	acc
      0003A2 12 01 75         [24] 1901 	lcall	_lcd_print
      0003A5 E5 81            [12] 1902 	mov	a,sp
      0003A7 24 FB            [12] 1903 	add	a,#0xfb
      0003A9 F5 81            [12] 1904 	mov	sp,a
      0003AB D0 02            [24] 1905 	pop	ar2
      0003AD D0 03            [24] 1906 	pop	ar3
      0003AF D0 04            [24] 1907 	pop	ar4
      0003B1 D0 05            [24] 1908 	pop	ar5
      0003B3 D0 06            [24] 1909 	pop	ar6
                           0002BB  1910 	C$i2c.h$178$1$89 ==.
                                   1911 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      0003B5 8D 11            [24] 1912 	mov	__mulint_PARM_2,r5
      0003B7 8E 12            [24] 1913 	mov	(__mulint_PARM_2 + 1),r6
      0003B9 90 00 0A         [24] 1914 	mov	dptr,#0x000a
      0003BC C0 04            [24] 1915 	push	ar4
      0003BE C0 03            [24] 1916 	push	ar3
      0003C0 C0 02            [24] 1917 	push	ar2
      0003C2 12 11 BA         [24] 1918 	lcall	__mulint
      0003C5 A8 82            [24] 1919 	mov	r0,dpl
      0003C7 A9 83            [24] 1920 	mov	r1,dph
      0003C9 D0 02            [24] 1921 	pop	ar2
      0003CB D0 03            [24] 1922 	pop	ar3
      0003CD D0 04            [24] 1923 	pop	ar4
      0003CF D0 07            [24] 1924 	pop	ar7
      0003D1 EA               [12] 1925 	mov	a,r2
      0003D2 28               [12] 1926 	add	a,r0
      0003D3 F8               [12] 1927 	mov	r0,a
      0003D4 EC               [12] 1928 	mov	a,r4
      0003D5 39               [12] 1929 	addc	a,r1
      0003D6 F9               [12] 1930 	mov	r1,a
      0003D7 E8               [12] 1931 	mov	a,r0
      0003D8 24 D0            [12] 1932 	add	a,#0xd0
      0003DA FD               [12] 1933 	mov	r5,a
      0003DB E9               [12] 1934 	mov	a,r1
      0003DC 34 FF            [12] 1935 	addc	a,#0xff
      0003DE FE               [12] 1936 	mov	r6,a
                           0002E5  1937 	C$i2c.h$179$3$92 ==.
                                   1938 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003DF                       1939 00110$:
      0003DF C0 07            [24] 1940 	push	ar7
      0003E1 C0 06            [24] 1941 	push	ar6
      0003E3 C0 05            [24] 1942 	push	ar5
      0003E5 C0 03            [24] 1943 	push	ar3
      0003E7 12 02 33         [24] 1944 	lcall	_read_keypad
      0003EA AC 82            [24] 1945 	mov	r4,dpl
      0003EC D0 03            [24] 1946 	pop	ar3
      0003EE D0 05            [24] 1947 	pop	ar5
      0003F0 D0 06            [24] 1948 	pop	ar6
      0003F2 D0 07            [24] 1949 	pop	ar7
      0003F4 EC               [12] 1950 	mov	a,r4
      0003F5 B5 03 1B         [24] 1951 	cjne	a,ar3,00118$
      0003F8 90 27 10         [24] 1952 	mov	dptr,#0x2710
      0003FB E4               [12] 1953 	clr	a
      0003FC F5 F0            [12] 1954 	mov	b,a
      0003FE C0 07            [24] 1955 	push	ar7
      000400 C0 06            [24] 1956 	push	ar6
      000402 C0 05            [24] 1957 	push	ar5
      000404 C0 03            [24] 1958 	push	ar3
      000406 12 04 21         [24] 1959 	lcall	_delay_time
      000409 D0 03            [24] 1960 	pop	ar3
      00040B D0 05            [24] 1961 	pop	ar5
      00040D D0 06            [24] 1962 	pop	ar6
      00040F D0 07            [24] 1963 	pop	ar7
      000411 80 CC            [24] 1964 	sjmp	00110$
      000413                       1965 00118$:
                           000319  1966 	C$i2c.h$167$1$89 ==.
                                   1967 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000413 0F               [12] 1968 	inc	r7
      000414 BF 05 00         [24] 1969 	cjne	r7,#0x05,00155$
      000417                       1970 00155$:
      000417 50 03            [24] 1971 	jnc	00156$
      000419 02 03 23         [24] 1972 	ljmp	00104$
      00041C                       1973 00156$:
                           000322  1974 	C$i2c.h$182$1$89 ==.
                                   1975 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      00041C 8D 82            [24] 1976 	mov	dpl,r5
      00041E 8E 83            [24] 1977 	mov	dph,r6
      000420                       1978 00119$:
                           000326  1979 	C$i2c.h$183$1$89 ==.
                           000326  1980 	XG$kpd_input$0$0 ==.
      000420 22               [24] 1981 	ret
                                   1982 ;------------------------------------------------------------
                                   1983 ;Allocation info for local variables in function 'delay_time'
                                   1984 ;------------------------------------------------------------
                                   1985 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1986 ;index                     Allocated to registers 
                                   1987 ;------------------------------------------------------------
                           000327  1988 	G$delay_time$0$0 ==.
                           000327  1989 	C$i2c.h$192$1$89 ==.
                                   1990 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1991 ;	-----------------------------------------
                                   1992 ;	 function delay_time
                                   1993 ;	-----------------------------------------
      000421                       1994 _delay_time:
      000421 AC 82            [24] 1995 	mov	r4,dpl
      000423 AD 83            [24] 1996 	mov	r5,dph
      000425 AE F0            [24] 1997 	mov	r6,b
      000427 FF               [12] 1998 	mov	r7,a
                           00032E  1999 	C$i2c.h$196$1$94 ==.
                                   2000 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      000428 78 00            [12] 2001 	mov	r0,#0x00
      00042A 79 00            [12] 2002 	mov	r1,#0x00
      00042C 7A 00            [12] 2003 	mov	r2,#0x00
      00042E 7B 00            [12] 2004 	mov	r3,#0x00
      000430                       2005 00103$:
      000430 C3               [12] 2006 	clr	c
      000431 E8               [12] 2007 	mov	a,r0
      000432 9C               [12] 2008 	subb	a,r4
      000433 E9               [12] 2009 	mov	a,r1
      000434 9D               [12] 2010 	subb	a,r5
      000435 EA               [12] 2011 	mov	a,r2
      000436 9E               [12] 2012 	subb	a,r6
      000437 EB               [12] 2013 	mov	a,r3
      000438 9F               [12] 2014 	subb	a,r7
      000439 50 0F            [24] 2015 	jnc	00105$
      00043B 08               [12] 2016 	inc	r0
      00043C B8 00 09         [24] 2017 	cjne	r0,#0x00,00115$
      00043F 09               [12] 2018 	inc	r1
      000440 B9 00 05         [24] 2019 	cjne	r1,#0x00,00115$
      000443 0A               [12] 2020 	inc	r2
      000444 BA 00 E9         [24] 2021 	cjne	r2,#0x00,00103$
      000447 0B               [12] 2022 	inc	r3
      000448                       2023 00115$:
      000448 80 E6            [24] 2024 	sjmp	00103$
      00044A                       2025 00105$:
                           000350  2026 	C$i2c.h$197$1$94 ==.
                           000350  2027 	XG$delay_time$0$0 ==.
      00044A 22               [24] 2028 	ret
                                   2029 ;------------------------------------------------------------
                                   2030 ;Allocation info for local variables in function 'i2c_start'
                                   2031 ;------------------------------------------------------------
                           000351  2032 	G$i2c_start$0$0 ==.
                           000351  2033 	C$i2c.h$200$1$94 ==.
                                   2034 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   2035 ;	-----------------------------------------
                                   2036 ;	 function i2c_start
                                   2037 ;	-----------------------------------------
      00044B                       2038 _i2c_start:
                           000351  2039 	C$i2c.h$202$1$96 ==.
                                   2040 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      00044B                       2041 00101$:
      00044B 20 C7 FD         [24] 2042 	jb	_BUSY,00101$
                           000354  2043 	C$i2c.h$203$1$96 ==.
                                   2044 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      00044E D2 C5            [12] 2045 	setb	_STA
                           000356  2046 	C$i2c.h$204$1$96 ==.
                                   2047 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000450                       2048 00104$:
      000450 30 C3 FD         [24] 2049 	jnb	_SI,00104$
                           000359  2050 	C$i2c.h$205$1$96 ==.
                                   2051 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000453 C2 C5            [12] 2052 	clr	_STA
                           00035B  2053 	C$i2c.h$206$1$96 ==.
                                   2054 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000455 C2 C3            [12] 2055 	clr	_SI
                           00035D  2056 	C$i2c.h$207$1$96 ==.
                           00035D  2057 	XG$i2c_start$0$0 ==.
      000457 22               [24] 2058 	ret
                                   2059 ;------------------------------------------------------------
                                   2060 ;Allocation info for local variables in function 'i2c_write'
                                   2061 ;------------------------------------------------------------
                                   2062 ;output_data               Allocated to registers 
                                   2063 ;------------------------------------------------------------
                           00035E  2064 	G$i2c_write$0$0 ==.
                           00035E  2065 	C$i2c.h$210$1$96 ==.
                                   2066 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   2067 ;	-----------------------------------------
                                   2068 ;	 function i2c_write
                                   2069 ;	-----------------------------------------
      000458                       2070 _i2c_write:
      000458 85 82 C2         [24] 2071 	mov	_SMB0DAT,dpl
                           000361  2072 	C$i2c.h$213$1$98 ==.
                                   2073 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00045B                       2074 00101$:
                           000361  2075 	C$i2c.h$214$1$98 ==.
                                   2076 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00045B 10 C3 02         [24] 2077 	jbc	_SI,00112$
      00045E 80 FB            [24] 2078 	sjmp	00101$
      000460                       2079 00112$:
                           000366  2080 	C$i2c.h$215$1$98 ==.
                           000366  2081 	XG$i2c_write$0$0 ==.
      000460 22               [24] 2082 	ret
                                   2083 ;------------------------------------------------------------
                                   2084 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   2085 ;------------------------------------------------------------
                                   2086 ;output_data               Allocated to registers 
                                   2087 ;------------------------------------------------------------
                           000367  2088 	G$i2c_write_and_stop$0$0 ==.
                           000367  2089 	C$i2c.h$218$1$98 ==.
                                   2090 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   2091 ;	-----------------------------------------
                                   2092 ;	 function i2c_write_and_stop
                                   2093 ;	-----------------------------------------
      000461                       2094 _i2c_write_and_stop:
      000461 85 82 C2         [24] 2095 	mov	_SMB0DAT,dpl
                           00036A  2096 	C$i2c.h$221$1$100 ==.
                                   2097 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000464 D2 C4            [12] 2098 	setb	_STO
                           00036C  2099 	C$i2c.h$222$1$100 ==.
                                   2100 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000466                       2101 00101$:
                           00036C  2102 	C$i2c.h$223$1$100 ==.
                                   2103 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000466 10 C3 02         [24] 2104 	jbc	_SI,00112$
      000469 80 FB            [24] 2105 	sjmp	00101$
      00046B                       2106 00112$:
                           000371  2107 	C$i2c.h$224$1$100 ==.
                           000371  2108 	XG$i2c_write_and_stop$0$0 ==.
      00046B 22               [24] 2109 	ret
                                   2110 ;------------------------------------------------------------
                                   2111 ;Allocation info for local variables in function 'i2c_read'
                                   2112 ;------------------------------------------------------------
                                   2113 ;input_data                Allocated to registers 
                                   2114 ;------------------------------------------------------------
                           000372  2115 	G$i2c_read$0$0 ==.
                           000372  2116 	C$i2c.h$227$1$100 ==.
                                   2117 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   2118 ;	-----------------------------------------
                                   2119 ;	 function i2c_read
                                   2120 ;	-----------------------------------------
      00046C                       2121 _i2c_read:
                           000372  2122 	C$i2c.h$231$1$102 ==.
                                   2123 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00046C                       2124 00101$:
      00046C 30 C3 FD         [24] 2125 	jnb	_SI,00101$
                           000375  2126 	C$i2c.h$232$1$102 ==.
                                   2127 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      00046F 85 C2 82         [24] 2128 	mov	dpl,_SMB0DAT
                           000378  2129 	C$i2c.h$233$1$102 ==.
                                   2130 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000472 C2 C3            [12] 2131 	clr	_SI
                           00037A  2132 	C$i2c.h$234$1$102 ==.
                                   2133 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2134 	C$i2c.h$235$1$102 ==.
                           00037A  2135 	XG$i2c_read$0$0 ==.
      000474 22               [24] 2136 	ret
                                   2137 ;------------------------------------------------------------
                                   2138 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2139 ;------------------------------------------------------------
                                   2140 ;input_data                Allocated to registers r7 
                                   2141 ;------------------------------------------------------------
                           00037B  2142 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2143 	C$i2c.h$238$1$102 ==.
                                   2144 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2145 ;	-----------------------------------------
                                   2146 ;	 function i2c_read_and_stop
                                   2147 ;	-----------------------------------------
      000475                       2148 _i2c_read_and_stop:
                           00037B  2149 	C$i2c.h$242$1$104 ==.
                                   2150 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000475                       2151 00101$:
      000475 30 C3 FD         [24] 2152 	jnb	_SI,00101$
                           00037E  2153 	C$i2c.h$243$1$104 ==.
                                   2154 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      000478 AF C2            [24] 2155 	mov	r7,_SMB0DAT
                           000380  2156 	C$i2c.h$244$1$104 ==.
                                   2157 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00047A C2 C3            [12] 2158 	clr	_SI
                           000382  2159 	C$i2c.h$245$1$104 ==.
                                   2160 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00047C D2 C4            [12] 2161 	setb	_STO
                           000384  2162 	C$i2c.h$246$1$104 ==.
                                   2163 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      00047E                       2164 00104$:
                           000384  2165 	C$i2c.h$247$1$104 ==.
                                   2166 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      00047E 10 C3 02         [24] 2167 	jbc	_SI,00122$
      000481 80 FB            [24] 2168 	sjmp	00104$
      000483                       2169 00122$:
                           000389  2170 	C$i2c.h$248$1$104 ==.
                                   2171 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000483 8F 82            [24] 2172 	mov	dpl,r7
                           00038B  2173 	C$i2c.h$249$1$104 ==.
                           00038B  2174 	XG$i2c_read_and_stop$0$0 ==.
      000485 22               [24] 2175 	ret
                                   2176 ;------------------------------------------------------------
                                   2177 ;Allocation info for local variables in function 'i2c_write_data'
                                   2178 ;------------------------------------------------------------
                                   2179 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2180 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2181 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2182 ;addr                      Allocated to registers r7 
                                   2183 ;i                         Allocated to registers 
                                   2184 ;------------------------------------------------------------
                           00038C  2185 	G$i2c_write_data$0$0 ==.
                           00038C  2186 	C$i2c.h$252$1$104 ==.
                                   2187 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2188 ;	-----------------------------------------
                                   2189 ;	 function i2c_write_data
                                   2190 ;	-----------------------------------------
      000486                       2191 _i2c_write_data:
      000486 AF 82            [24] 2192 	mov	r7,dpl
                           00038E  2193 	C$i2c.h$256$1$106 ==.
                                   2194 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      000488 C2 AF            [12] 2195 	clr	_EA
                           000390  2196 	C$i2c.h$257$1$106 ==.
                                   2197 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00048A C0 07            [24] 2198 	push	ar7
      00048C 12 04 4B         [24] 2199 	lcall	_i2c_start
      00048F D0 07            [24] 2200 	pop	ar7
                           000397  2201 	C$i2c.h$258$1$106 ==.
                                   2202 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000491 74 FE            [12] 2203 	mov	a,#0xfe
      000493 5F               [12] 2204 	anl	a,r7
      000494 F5 82            [12] 2205 	mov	dpl,a
      000496 12 04 58         [24] 2206 	lcall	_i2c_write
                           00039F  2207 	C$i2c.h$259$1$106 ==.
                                   2208 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      000499 85 2C 82         [24] 2209 	mov	dpl,_i2c_write_data_PARM_2
      00049C 12 04 58         [24] 2210 	lcall	_i2c_write
                           0003A5  2211 	C$i2c.h$260$1$106 ==.
                                   2212 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      00049F 7F 00            [12] 2213 	mov	r7,#0x00
      0004A1                       2214 00103$:
      0004A1 AD 30            [24] 2215 	mov	r5,_i2c_write_data_PARM_4
      0004A3 7E 00            [12] 2216 	mov	r6,#0x00
      0004A5 1D               [12] 2217 	dec	r5
      0004A6 BD FF 01         [24] 2218 	cjne	r5,#0xff,00114$
      0004A9 1E               [12] 2219 	dec	r6
      0004AA                       2220 00114$:
      0004AA 8F 03            [24] 2221 	mov	ar3,r7
      0004AC 7C 00            [12] 2222 	mov	r4,#0x00
      0004AE C3               [12] 2223 	clr	c
      0004AF EB               [12] 2224 	mov	a,r3
      0004B0 9D               [12] 2225 	subb	a,r5
      0004B1 EC               [12] 2226 	mov	a,r4
      0004B2 64 80            [12] 2227 	xrl	a,#0x80
      0004B4 8E F0            [24] 2228 	mov	b,r6
      0004B6 63 F0 80         [24] 2229 	xrl	b,#0x80
      0004B9 95 F0            [12] 2230 	subb	a,b
      0004BB 50 1F            [24] 2231 	jnc	00101$
                           0003C3  2232 	C$i2c.h$261$1$106 ==.
                                   2233 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      0004BD EF               [12] 2234 	mov	a,r7
      0004BE 25 2D            [12] 2235 	add	a,_i2c_write_data_PARM_3
      0004C0 FC               [12] 2236 	mov	r4,a
      0004C1 E4               [12] 2237 	clr	a
      0004C2 35 2E            [12] 2238 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004C4 FD               [12] 2239 	mov	r5,a
      0004C5 AE 2F            [24] 2240 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      0004C7 8C 82            [24] 2241 	mov	dpl,r4
      0004C9 8D 83            [24] 2242 	mov	dph,r5
      0004CB 8E F0            [24] 2243 	mov	b,r6
      0004CD 12 19 1A         [24] 2244 	lcall	__gptrget
      0004D0 F5 82            [12] 2245 	mov	dpl,a
      0004D2 C0 07            [24] 2246 	push	ar7
      0004D4 12 04 58         [24] 2247 	lcall	_i2c_write
      0004D7 D0 07            [24] 2248 	pop	ar7
                           0003DF  2249 	C$i2c.h$260$1$106 ==.
                                   2250 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004D9 0F               [12] 2251 	inc	r7
      0004DA 80 C5            [24] 2252 	sjmp	00103$
      0004DC                       2253 00101$:
                           0003E2  2254 	C$i2c.h$262$1$106 ==.
                                   2255 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004DC AE 30            [24] 2256 	mov	r6,_i2c_write_data_PARM_4
      0004DE 7F 00            [12] 2257 	mov	r7,#0x00
      0004E0 1E               [12] 2258 	dec	r6
      0004E1 BE FF 01         [24] 2259 	cjne	r6,#0xff,00116$
      0004E4 1F               [12] 2260 	dec	r7
      0004E5                       2261 00116$:
      0004E5 EE               [12] 2262 	mov	a,r6
      0004E6 25 2D            [12] 2263 	add	a,_i2c_write_data_PARM_3
      0004E8 FE               [12] 2264 	mov	r6,a
      0004E9 EF               [12] 2265 	mov	a,r7
      0004EA 35 2E            [12] 2266 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004EC FF               [12] 2267 	mov	r7,a
      0004ED AD 2F            [24] 2268 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004EF 8E 82            [24] 2269 	mov	dpl,r6
      0004F1 8F 83            [24] 2270 	mov	dph,r7
      0004F3 8D F0            [24] 2271 	mov	b,r5
      0004F5 12 19 1A         [24] 2272 	lcall	__gptrget
      0004F8 F5 82            [12] 2273 	mov	dpl,a
      0004FA 12 04 61         [24] 2274 	lcall	_i2c_write_and_stop
                           000403  2275 	C$i2c.h$263$1$106 ==.
                                   2276 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004FD D2 AF            [12] 2277 	setb	_EA
                           000405  2278 	C$i2c.h$264$1$106 ==.
                           000405  2279 	XG$i2c_write_data$0$0 ==.
      0004FF 22               [24] 2280 	ret
                                   2281 ;------------------------------------------------------------
                                   2282 ;Allocation info for local variables in function 'i2c_read_data'
                                   2283 ;------------------------------------------------------------
                                   2284 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2285 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2286 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2287 ;addr                      Allocated to registers r7 
                                   2288 ;j                         Allocated to registers 
                                   2289 ;------------------------------------------------------------
                           000406  2290 	G$i2c_read_data$0$0 ==.
                           000406  2291 	C$i2c.h$267$1$106 ==.
                                   2292 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2293 ;	-----------------------------------------
                                   2294 ;	 function i2c_read_data
                                   2295 ;	-----------------------------------------
      000500                       2296 _i2c_read_data:
      000500 AF 82            [24] 2297 	mov	r7,dpl
                           000408  2298 	C$i2c.h$271$1$108 ==.
                                   2299 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      000502 C2 AF            [12] 2300 	clr	_EA
                           00040A  2301 	C$i2c.h$272$1$108 ==.
                                   2302 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      000504 C0 07            [24] 2303 	push	ar7
      000506 12 04 4B         [24] 2304 	lcall	_i2c_start
      000509 D0 07            [24] 2305 	pop	ar7
                           000411  2306 	C$i2c.h$273$1$108 ==.
                                   2307 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      00050B 74 FE            [12] 2308 	mov	a,#0xfe
      00050D 5F               [12] 2309 	anl	a,r7
      00050E F5 82            [12] 2310 	mov	dpl,a
      000510 C0 07            [24] 2311 	push	ar7
      000512 12 04 58         [24] 2312 	lcall	_i2c_write
                           00041B  2313 	C$i2c.h$274$1$108 ==.
                                   2314 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      000515 85 31 82         [24] 2315 	mov	dpl,_i2c_read_data_PARM_2
      000518 12 04 61         [24] 2316 	lcall	_i2c_write_and_stop
                           000421  2317 	C$i2c.h$275$1$108 ==.
                                   2318 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      00051B 12 04 4B         [24] 2319 	lcall	_i2c_start
      00051E D0 07            [24] 2320 	pop	ar7
                           000426  2321 	C$i2c.h$276$1$108 ==.
                                   2322 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      000520 74 01            [12] 2323 	mov	a,#0x01
      000522 4F               [12] 2324 	orl	a,r7
      000523 F5 82            [12] 2325 	mov	dpl,a
      000525 12 04 58         [24] 2326 	lcall	_i2c_write
                           00042E  2327 	C$i2c.h$277$1$108 ==.
                                   2328 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000528 7F 00            [12] 2329 	mov	r7,#0x00
      00052A                       2330 00103$:
      00052A AD 35            [24] 2331 	mov	r5,_i2c_read_data_PARM_4
      00052C 7E 00            [12] 2332 	mov	r6,#0x00
      00052E 1D               [12] 2333 	dec	r5
      00052F BD FF 01         [24] 2334 	cjne	r5,#0xff,00114$
      000532 1E               [12] 2335 	dec	r6
      000533                       2336 00114$:
      000533 8F 03            [24] 2337 	mov	ar3,r7
      000535 7C 00            [12] 2338 	mov	r4,#0x00
      000537 C3               [12] 2339 	clr	c
      000538 EB               [12] 2340 	mov	a,r3
      000539 9D               [12] 2341 	subb	a,r5
      00053A EC               [12] 2342 	mov	a,r4
      00053B 64 80            [12] 2343 	xrl	a,#0x80
      00053D 8E F0            [24] 2344 	mov	b,r6
      00053F 63 F0 80         [24] 2345 	xrl	b,#0x80
      000542 95 F0            [12] 2346 	subb	a,b
      000544 50 2E            [24] 2347 	jnc	00101$
                           00044C  2348 	C$i2c.h$279$2$109 ==.
                                   2349 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000546 D2 C2            [12] 2350 	setb	_AA
                           00044E  2351 	C$i2c.h$280$2$109 ==.
                                   2352 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      000548 EF               [12] 2353 	mov	a,r7
      000549 25 32            [12] 2354 	add	a,_i2c_read_data_PARM_3
      00054B FC               [12] 2355 	mov	r4,a
      00054C E4               [12] 2356 	clr	a
      00054D 35 33            [12] 2357 	addc	a,(_i2c_read_data_PARM_3 + 1)
      00054F FD               [12] 2358 	mov	r5,a
      000550 AE 34            [24] 2359 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000552 C0 07            [24] 2360 	push	ar7
      000554 C0 06            [24] 2361 	push	ar6
      000556 C0 05            [24] 2362 	push	ar5
      000558 C0 04            [24] 2363 	push	ar4
      00055A 12 04 6C         [24] 2364 	lcall	_i2c_read
      00055D AB 82            [24] 2365 	mov	r3,dpl
      00055F D0 04            [24] 2366 	pop	ar4
      000561 D0 05            [24] 2367 	pop	ar5
      000563 D0 06            [24] 2368 	pop	ar6
      000565 D0 07            [24] 2369 	pop	ar7
      000567 8C 82            [24] 2370 	mov	dpl,r4
      000569 8D 83            [24] 2371 	mov	dph,r5
      00056B 8E F0            [24] 2372 	mov	b,r6
      00056D EB               [12] 2373 	mov	a,r3
      00056E 12 11 92         [24] 2374 	lcall	__gptrput
                           000477  2375 	C$i2c.h$277$1$108 ==.
                                   2376 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000571 0F               [12] 2377 	inc	r7
      000572 80 B6            [24] 2378 	sjmp	00103$
      000574                       2379 00101$:
                           00047A  2380 	C$i2c.h$282$1$108 ==.
                                   2381 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000574 C2 C2            [12] 2382 	clr	_AA
                           00047C  2383 	C$i2c.h$283$1$108 ==.
                                   2384 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000576 AE 35            [24] 2385 	mov	r6,_i2c_read_data_PARM_4
      000578 7F 00            [12] 2386 	mov	r7,#0x00
      00057A 1E               [12] 2387 	dec	r6
      00057B BE FF 01         [24] 2388 	cjne	r6,#0xff,00116$
      00057E 1F               [12] 2389 	dec	r7
      00057F                       2390 00116$:
      00057F EE               [12] 2391 	mov	a,r6
      000580 25 32            [12] 2392 	add	a,_i2c_read_data_PARM_3
      000582 FE               [12] 2393 	mov	r6,a
      000583 EF               [12] 2394 	mov	a,r7
      000584 35 33            [12] 2395 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000586 FF               [12] 2396 	mov	r7,a
      000587 AD 34            [24] 2397 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      000589 C0 07            [24] 2398 	push	ar7
      00058B C0 06            [24] 2399 	push	ar6
      00058D C0 05            [24] 2400 	push	ar5
      00058F 12 04 75         [24] 2401 	lcall	_i2c_read_and_stop
      000592 AC 82            [24] 2402 	mov	r4,dpl
      000594 D0 05            [24] 2403 	pop	ar5
      000596 D0 06            [24] 2404 	pop	ar6
      000598 D0 07            [24] 2405 	pop	ar7
      00059A 8E 82            [24] 2406 	mov	dpl,r6
      00059C 8F 83            [24] 2407 	mov	dph,r7
      00059E 8D F0            [24] 2408 	mov	b,r5
      0005A0 EC               [12] 2409 	mov	a,r4
      0005A1 12 11 92         [24] 2410 	lcall	__gptrput
                           0004AA  2411 	C$i2c.h$284$1$108 ==.
                                   2412 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      0005A4 D2 AF            [12] 2413 	setb	_EA
                           0004AC  2414 	C$i2c.h$285$1$108 ==.
                           0004AC  2415 	XG$i2c_read_data$0$0 ==.
      0005A6 22               [24] 2416 	ret
                                   2417 ;------------------------------------------------------------
                                   2418 ;Allocation info for local variables in function 'Accel_Init'
                                   2419 ;------------------------------------------------------------
                           0004AD  2420 	G$Accel_Init$0$0 ==.
                           0004AD  2421 	C$i2c.h$294$1$108 ==.
                                   2422 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2423 ;	-----------------------------------------
                                   2424 ;	 function Accel_Init
                                   2425 ;	-----------------------------------------
      0005A7                       2426 _Accel_Init:
                           0004AD  2427 	C$i2c.h$298$1$111 ==.
                                   2428 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      0005A7 75 22 23         [24] 2429 	mov	_Data2,#0x23
                           0004B0  2430 	C$i2c.h$300$1$111 ==.
                                   2431 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      0005AA 75 23 00         [24] 2432 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2433 	C$i2c.h$301$1$111 ==.
                                   2434 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      0005AD 75 23 10         [24] 2435 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2436 	C$i2c.h$302$1$111 ==.
                                   2437 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      0005B0 75 24 00         [24] 2438 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2439 	C$i2c.h$304$1$111 ==.
                                   2440 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      0005B3 75 2D 22         [24] 2441 	mov	_i2c_write_data_PARM_3,#_Data2
      0005B6 75 2E 00         [24] 2442 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005B9 75 2F 40         [24] 2443 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005BC 75 2C 20         [24] 2444 	mov	_i2c_write_data_PARM_2,#0x20
      0005BF 75 30 01         [24] 2445 	mov	_i2c_write_data_PARM_4,#0x01
      0005C2 75 82 30         [24] 2446 	mov	dpl,#0x30
      0005C5 12 04 86         [24] 2447 	lcall	_i2c_write_data
                           0004CE  2448 	C$i2c.h$310$1$111 ==.
                           0004CE  2449 	XG$Accel_Init$0$0 ==.
      0005C8 22               [24] 2450 	ret
                                   2451 ;------------------------------------------------------------
                                   2452 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2453 ;------------------------------------------------------------
                           0004CF  2454 	G$Accel_Init_C$0$0 ==.
                           0004CF  2455 	C$i2c.h$313$1$111 ==.
                                   2456 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2457 ;	-----------------------------------------
                                   2458 ;	 function Accel_Init_C
                                   2459 ;	-----------------------------------------
      0005C9                       2460 _Accel_Init_C:
                           0004CF  2461 	C$i2c.h$318$1$113 ==.
                                   2462 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      0005C9 75 22 04         [24] 2463 	mov	_Data2,#0x04
                           0004D2  2464 	C$i2c.h$319$1$113 ==.
                                   2465 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      0005CC 75 2D 22         [24] 2466 	mov	_i2c_write_data_PARM_3,#_Data2
      0005CF 75 2E 00         [24] 2467 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005D2 75 2F 40         [24] 2468 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005D5 75 2C 23         [24] 2469 	mov	_i2c_write_data_PARM_2,#0x23
      0005D8 75 30 01         [24] 2470 	mov	_i2c_write_data_PARM_4,#0x01
      0005DB 75 82 3A         [24] 2471 	mov	dpl,#0x3a
      0005DE 12 04 86         [24] 2472 	lcall	_i2c_write_data
                           0004E7  2473 	C$i2c.h$321$1$113 ==.
                                   2474 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005E1 75 22 6B         [24] 2475 	mov	_Data2,#0x6b
                           0004EA  2476 	C$i2c.h$323$1$113 ==.
                                   2477 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005E4 75 23 00         [24] 2478 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2479 	C$i2c.h$325$1$113 ==.
                                   2480 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005E7 75 24 00         [24] 2481 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2482 	C$i2c.h$326$1$113 ==.
                                   2483 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005EA 75 2D 22         [24] 2484 	mov	_i2c_write_data_PARM_3,#_Data2
      0005ED 75 2E 00         [24] 2485 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005F0 75 2F 40         [24] 2486 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005F3 75 2C 20         [24] 2487 	mov	_i2c_write_data_PARM_2,#0x20
      0005F6 75 30 01         [24] 2488 	mov	_i2c_write_data_PARM_4,#0x01
      0005F9 75 82 3A         [24] 2489 	mov	dpl,#0x3a
      0005FC 12 04 86         [24] 2490 	lcall	_i2c_write_data
                           000505  2491 	C$i2c.h$328$1$113 ==.
                           000505  2492 	XG$Accel_Init_C$0$0 ==.
      0005FF 22               [24] 2493 	ret
                                   2494 ;------------------------------------------------------------
                                   2495 ;Allocation info for local variables in function 'main'
                                   2496 ;------------------------------------------------------------
                                   2497 ;run_stop                  Allocated to registers r7 
                                   2498 ;keypad                    Allocated to registers r6 
                                   2499 ;------------------------------------------------------------
                           000506  2500 	G$main$0$0 ==.
                           000506  2501 	C$lab_5.c$65$1$113 ==.
                                   2502 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:65: void main(void)
                                   2503 ;	-----------------------------------------
                                   2504 ;	 function main
                                   2505 ;	-----------------------------------------
      000600                       2506 _main:
                           000506  2507 	C$lab_5.c$68$1$132 ==.
                                   2508 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:68: Sys_Init(); // initialize board
      000600 12 01 31         [24] 2509 	lcall	_Sys_Init
                           000509  2510 	C$lab_5.c$69$1$132 ==.
                                   2511 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:69: putchar(' ');
      000603 75 82 20         [24] 2512 	mov	dpl,#0x20
      000606 12 01 44         [24] 2513 	lcall	_putchar
                           00050F  2514 	C$lab_5.c$70$1$132 ==.
                                   2515 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:70: Port_Init();
      000609 12 09 D0         [24] 2516 	lcall	_Port_Init
                           000512  2517 	C$lab_5.c$71$1$132 ==.
                                   2518 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:71: PCA_Init();
      00060C 12 09 AB         [24] 2519 	lcall	_PCA_Init
                           000515  2520 	C$lab_5.c$72$1$132 ==.
                                   2521 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:72: SMB_Init();
      00060F 12 09 CA         [24] 2522 	lcall	_SMB_Init
                           000518  2523 	C$lab_5.c$73$1$132 ==.
                                   2524 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:73: XBR0_Init();
      000612 12 09 E8         [24] 2525 	lcall	_XBR0_Init
                           00051B  2526 	C$lab_5.c$74$1$132 ==.
                                   2527 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:74: ADC_Init();
      000615 12 09 C0         [24] 2528 	lcall	_ADC_Init
                           00051E  2529 	C$lab_5.c$75$1$132 ==.
                                   2530 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:75: Accel_Init_C();
      000618 12 05 C9         [24] 2531 	lcall	_Accel_Init_C
                           000521  2532 	C$lab_5.c$76$1$132 ==.
                                   2533 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:76: a_count = 0;
      00061B 75 4A 00         [24] 2534 	mov	_a_count,#0x00
                           000524  2535 	C$lab_5.c$77$1$132 ==.
                                   2536 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:77: lcd_count = 0;
      00061E 75 4B 00         [24] 2537 	mov	_lcd_count,#0x00
                           000527  2538 	C$lab_5.c$79$1$132 ==.
                                   2539 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:79: run_stop = 0;
      000621 7F 00            [12] 2540 	mov	r7,#0x00
                           000529  2541 	C$lab_5.c$85$2$133 ==.
                                   2542 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:85: while (!run) // make run an sbit for the run/stop switch
      000623                       2543 00125$:
      000623 30 B7 03         [24] 2544 	jnb	_run,00244$
      000626 02 07 7E         [24] 2545 	ljmp	00127$
      000629                       2546 00244$:
                           00052F  2547 	C$lab_5.c$87$3$134 ==.
                                   2548 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:87: MOTOR_PW = MOTOR_STOP; //put motor in neutral
      000629 85 36 3C         [24] 2549 	mov	_MOTOR_PW,_MOTOR_STOP
      00062C 85 37 3D         [24] 2550 	mov	(_MOTOR_PW + 1),(_MOTOR_STOP + 1)
                           000535  2551 	C$lab_5.c$88$3$134 ==.
                                   2552 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:88: SERVO_PW = SERVO_CENTER;
      00062F 85 3E 44         [24] 2553 	mov	_SERVO_PW,_SERVO_CENTER
      000632 85 3F 45         [24] 2554 	mov	(_SERVO_PW + 1),(_SERVO_CENTER + 1)
                           00053B  2555 	C$lab_5.c$90$3$134 ==.
                                   2556 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:90: PCA0CP0 = 0xFFFF - SERVO_PW;  //set servos to center while not running
      000635 74 FF            [12] 2557 	mov	a,#0xff
      000637 C3               [12] 2558 	clr	c
      000638 95 44            [12] 2559 	subb	a,_SERVO_PW
      00063A F5 EA            [12] 2560 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      00063C 74 FF            [12] 2561 	mov	a,#0xff
      00063E 95 45            [12] 2562 	subb	a,(_SERVO_PW + 1)
      000640 F5 FA            [12] 2563 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000548  2564 	C$lab_5.c$91$3$134 ==.
                                   2565 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:91: PCA0CP2 = 0xFFFF - MOTOR_PW;  //set motors to center while not running
      000642 74 FF            [12] 2566 	mov	a,#0xff
      000644 C3               [12] 2567 	clr	c
      000645 95 3C            [12] 2568 	subb	a,_MOTOR_PW
      000647 F5 EC            [12] 2569 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000649 74 FF            [12] 2570 	mov	a,#0xff
      00064B 95 3D            [12] 2571 	subb	a,(_MOTOR_PW + 1)
      00064D F5 FC            [12] 2572 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000555  2573 	C$lab_5.c$93$3$134 ==.
                                   2574 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:93: BILED0 = 1;
      00064F D2 A5            [12] 2575 	setb	_BILED0
                           000557  2576 	C$lab_5.c$94$3$134 ==.
                                   2577 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:94: BILED1 = 1;
      000651 D2 A3            [12] 2578 	setb	_BILED1
                           000559  2579 	C$lab_5.c$95$3$134 ==.
                                   2580 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:95: if (run_stop == 0)
      000653 EF               [12] 2581 	mov	a,r7
      000654 70 CD            [24] 2582 	jnz	00125$
                           00055C  2583 	C$lab_5.c$98$4$135 ==.
                                   2584 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:98: lcd_clear();
      000656 12 01 FA         [24] 2585 	lcall	_lcd_clear
                           00055F  2586 	C$lab_5.c$99$4$135 ==.
                                   2587 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:99: lcd_print("Please put me\non a flat\nsurface! Then\npress 1");
      000659 74 9B            [12] 2588 	mov	a,#___str_3
      00065B C0 E0            [24] 2589 	push	acc
      00065D 74 19            [12] 2590 	mov	a,#(___str_3 >> 8)
      00065F C0 E0            [24] 2591 	push	acc
      000661 74 80            [12] 2592 	mov	a,#0x80
      000663 C0 E0            [24] 2593 	push	acc
      000665 12 01 75         [24] 2594 	lcall	_lcd_print
      000668 15 81            [12] 2595 	dec	sp
      00066A 15 81            [12] 2596 	dec	sp
      00066C 15 81            [12] 2597 	dec	sp
                           000574  2598 	C$lab_5.c$101$4$135 ==.
                                   2599 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:101: while (1) {
      00066E                       2600 00109$:
                           000574  2601 	C$lab_5.c$102$5$136 ==.
                                   2602 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:102: keypad = read_keypad();
      00066E 12 02 33         [24] 2603 	lcall	_read_keypad
      000671 AE 82            [24] 2604 	mov	r6,dpl
                           000579  2605 	C$lab_5.c$103$5$136 ==.
                                   2606 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:103: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms)
      000673 C0 06            [24] 2607 	push	ar6
      000675 12 09 58         [24] 2608 	lcall	_pause
      000678 D0 06            [24] 2609 	pop	ar6
                           000580  2610 	C$lab_5.c$106$5$136 ==.
                                   2611 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:106: if (keypad != 0xFF) {
      00067A BE FF 02         [24] 2612 	cjne	r6,#0xff,00246$
      00067D 80 EF            [24] 2613 	sjmp	00109$
      00067F                       2614 00246$:
                           000585  2615 	C$lab_5.c$107$6$137 ==.
                                   2616 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:107: while (read_keypad() != 0xFF);
      00067F                       2617 00101$:
      00067F C0 06            [24] 2618 	push	ar6
      000681 12 02 33         [24] 2619 	lcall	_read_keypad
      000684 AD 82            [24] 2620 	mov	r5,dpl
      000686 D0 06            [24] 2621 	pop	ar6
      000688 BD FF F4         [24] 2622 	cjne	r5,#0xff,00101$
                           000591  2623 	C$lab_5.c$108$6$137 ==.
                                   2624 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:108: lcd_clear();
      00068B C0 06            [24] 2625 	push	ar6
      00068D 12 01 FA         [24] 2626 	lcall	_lcd_clear
      000690 D0 06            [24] 2627 	pop	ar6
                           000598  2628 	C$lab_5.c$109$6$137 ==.
                                   2629 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:109: if (keypad == 0x31) { //if they enter a 1
      000692 BE 31 D9         [24] 2630 	cjne	r6,#0x31,00109$
                           00059B  2631 	C$lab_5.c$110$7$138 ==.
                                   2632 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:110: lcd_clear();
      000695 12 01 FA         [24] 2633 	lcall	_lcd_clear
                           00059E  2634 	C$lab_5.c$111$7$138 ==.
                                   2635 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:111: lcd_print("Calibrated!");
      000698 74 C9            [12] 2636 	mov	a,#___str_4
      00069A C0 E0            [24] 2637 	push	acc
      00069C 74 19            [12] 2638 	mov	a,#(___str_4 >> 8)
      00069E C0 E0            [24] 2639 	push	acc
      0006A0 74 80            [12] 2640 	mov	a,#0x80
      0006A2 C0 E0            [24] 2641 	push	acc
      0006A4 12 01 75         [24] 2642 	lcall	_lcd_print
      0006A7 15 81            [12] 2643 	dec	sp
      0006A9 15 81            [12] 2644 	dec	sp
      0006AB 15 81            [12] 2645 	dec	sp
                           0005B3  2646 	C$lab_5.c$112$7$138 ==.
                                   2647 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:112: wait();
      0006AD 12 09 69         [24] 2648 	lcall	_wait
                           0005B6  2649 	C$lab_5.c$117$4$135 ==.
                                   2650 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:117: calibration();
      0006B0 12 09 EC         [24] 2651 	lcall	_calibration
                           0005B9  2652 	C$lab_5.c$118$4$135 ==.
                                   2653 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:118: printf("X0: %i, Y0: %i", x0, y0);
      0006B3 C0 56            [24] 2654 	push	_y0
      0006B5 C0 57            [24] 2655 	push	(_y0 + 1)
      0006B7 C0 54            [24] 2656 	push	_x0
      0006B9 C0 55            [24] 2657 	push	(_x0 + 1)
      0006BB 74 D5            [12] 2658 	mov	a,#___str_5
      0006BD C0 E0            [24] 2659 	push	acc
      0006BF 74 19            [12] 2660 	mov	a,#(___str_5 >> 8)
      0006C1 C0 E0            [24] 2661 	push	acc
      0006C3 74 80            [12] 2662 	mov	a,#0x80
      0006C5 C0 E0            [24] 2663 	push	acc
      0006C7 12 13 1F         [24] 2664 	lcall	_printf
      0006CA E5 81            [12] 2665 	mov	a,sp
      0006CC 24 F9            [12] 2666 	add	a,#0xf9
      0006CE F5 81            [12] 2667 	mov	sp,a
                           0005D6  2668 	C$lab_5.c$119$4$135 ==.
                                   2669 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:119: set_gains(); // function adjusting feedback gains
      0006D0 12 0C BD         [24] 2670 	lcall	_set_gains
                           0005D9  2671 	C$lab_5.c$120$4$135 ==.
                                   2672 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:120: lcd_clear();
      0006D3 12 01 FA         [24] 2673 	lcall	_lcd_clear
                           0005DC  2674 	C$lab_5.c$121$4$135 ==.
                                   2675 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:121: lcd_print("1: Right\n2: Left");
      0006D6 74 E4            [12] 2676 	mov	a,#___str_6
      0006D8 C0 E0            [24] 2677 	push	acc
      0006DA 74 19            [12] 2678 	mov	a,#(___str_6 >> 8)
      0006DC C0 E0            [24] 2679 	push	acc
      0006DE 74 80            [12] 2680 	mov	a,#0x80
      0006E0 C0 E0            [24] 2681 	push	acc
      0006E2 12 01 75         [24] 2682 	lcall	_lcd_print
      0006E5 15 81            [12] 2683 	dec	sp
      0006E7 15 81            [12] 2684 	dec	sp
      0006E9 15 81            [12] 2685 	dec	sp
                           0005F1  2686 	C$lab_5.c$122$4$135 ==.
                                   2687 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:122: while (1) {
      0006EB                       2688 00121$:
                           0005F1  2689 	C$lab_5.c$123$5$139 ==.
                                   2690 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:123: keypad = read_keypad();
      0006EB 12 02 33         [24] 2691 	lcall	_read_keypad
      0006EE AE 82            [24] 2692 	mov	r6,dpl
                           0005F6  2693 	C$lab_5.c$124$5$139 ==.
                                   2694 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:124: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms)
      0006F0 C0 06            [24] 2695 	push	ar6
      0006F2 12 09 58         [24] 2696 	lcall	_pause
      0006F5 D0 06            [24] 2697 	pop	ar6
                           0005FD  2698 	C$lab_5.c$127$5$139 ==.
                                   2699 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:127: if (keypad != 0xFF) {
      0006F7 BE FF 02         [24] 2700 	cjne	r6,#0xff,00251$
      0006FA 80 EF            [24] 2701 	sjmp	00121$
      0006FC                       2702 00251$:
                           000602  2703 	C$lab_5.c$128$6$140 ==.
                                   2704 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:128: while (read_keypad() != 0xFF);
      0006FC                       2705 00111$:
      0006FC C0 06            [24] 2706 	push	ar6
      0006FE 12 02 33         [24] 2707 	lcall	_read_keypad
      000701 AD 82            [24] 2708 	mov	r5,dpl
      000703 D0 06            [24] 2709 	pop	ar6
      000705 BD FF F4         [24] 2710 	cjne	r5,#0xff,00111$
                           00060E  2711 	C$lab_5.c$129$6$140 ==.
                                   2712 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:129: lcd_clear();
      000708 C0 06            [24] 2713 	push	ar6
      00070A 12 01 FA         [24] 2714 	lcall	_lcd_clear
      00070D D0 06            [24] 2715 	pop	ar6
                           000615  2716 	C$lab_5.c$130$6$140 ==.
                                   2717 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:130: if (keypad == 0x31) { //if they enter a 1
      00070F BE 31 33         [24] 2718 	cjne	r6,#0x31,00115$
                           000618  2719 	C$lab_5.c$131$7$141 ==.
                                   2720 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:131: lcd_clear();
      000712 12 01 FA         [24] 2721 	lcall	_lcd_clear
                           00061B  2722 	C$lab_5.c$132$7$141 ==.
                                   2723 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:132: lcd_print("Right");
      000715 74 F5            [12] 2724 	mov	a,#___str_7
      000717 C0 E0            [24] 2725 	push	acc
      000719 74 19            [12] 2726 	mov	a,#(___str_7 >> 8)
      00071B C0 E0            [24] 2727 	push	acc
      00071D 74 80            [12] 2728 	mov	a,#0x80
      00071F C0 E0            [24] 2729 	push	acc
      000721 12 01 75         [24] 2730 	lcall	_lcd_print
      000724 15 81            [12] 2731 	dec	sp
      000726 15 81            [12] 2732 	dec	sp
      000728 15 81            [12] 2733 	dec	sp
                           000630  2734 	C$lab_5.c$133$7$141 ==.
                                   2735 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:133: direction = 1;
      00072A 75 5E 01         [24] 2736 	mov	_direction,#0x01
                           000633  2737 	C$lab_5.c$134$7$141 ==.
                                   2738 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:134: SERVO_PW = SERVO_LEFT;
      00072D 85 42 44         [24] 2739 	mov	_SERVO_PW,_SERVO_LEFT
      000730 85 43 45         [24] 2740 	mov	(_SERVO_PW + 1),(_SERVO_LEFT + 1)
                           000639  2741 	C$lab_5.c$135$7$141 ==.
                                   2742 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:135: PCA0CP0 = 0xFFFF - SERVO_PW;
      000733 74 FF            [12] 2743 	mov	a,#0xff
      000735 C3               [12] 2744 	clr	c
      000736 95 44            [12] 2745 	subb	a,_SERVO_PW
      000738 F5 EA            [12] 2746 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      00073A 74 FF            [12] 2747 	mov	a,#0xff
      00073C 95 45            [12] 2748 	subb	a,(_SERVO_PW + 1)
      00073E F5 FA            [12] 2749 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000646  2750 	C$lab_5.c$136$7$141 ==.
                                   2751 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:136: wait();
      000740 12 09 69         [24] 2752 	lcall	_wait
                           000649  2753 	C$lab_5.c$137$7$141 ==.
                                   2754 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:137: break;
      000743 80 34            [24] 2755 	sjmp	00122$
      000745                       2756 00115$:
                           00064B  2757 	C$lab_5.c$139$6$140 ==.
                                   2758 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:139: if (keypad == 0x32) { //if they enter a 2
      000745 BE 32 A3         [24] 2759 	cjne	r6,#0x32,00121$
                           00064E  2760 	C$lab_5.c$140$7$142 ==.
                                   2761 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:140: lcd_clear();
      000748 12 01 FA         [24] 2762 	lcall	_lcd_clear
                           000651  2763 	C$lab_5.c$141$7$142 ==.
                                   2764 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:141: lcd_print("Left");
      00074B 74 FB            [12] 2765 	mov	a,#___str_8
      00074D C0 E0            [24] 2766 	push	acc
      00074F 74 19            [12] 2767 	mov	a,#(___str_8 >> 8)
      000751 C0 E0            [24] 2768 	push	acc
      000753 74 80            [12] 2769 	mov	a,#0x80
      000755 C0 E0            [24] 2770 	push	acc
      000757 12 01 75         [24] 2771 	lcall	_lcd_print
      00075A 15 81            [12] 2772 	dec	sp
      00075C 15 81            [12] 2773 	dec	sp
      00075E 15 81            [12] 2774 	dec	sp
                           000666  2775 	C$lab_5.c$142$7$142 ==.
                                   2776 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:142: SERVO_PW = SERVO_RIGHT; //just prep the motors so they turn in place now
      000760 85 40 44         [24] 2777 	mov	_SERVO_PW,_SERVO_RIGHT
      000763 85 41 45         [24] 2778 	mov	(_SERVO_PW + 1),(_SERVO_RIGHT + 1)
                           00066C  2779 	C$lab_5.c$143$7$142 ==.
                                   2780 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:143: PCA0CP0 = 0xFFFF - SERVO_PW;
      000766 74 FF            [12] 2781 	mov	a,#0xff
      000768 C3               [12] 2782 	clr	c
      000769 95 44            [12] 2783 	subb	a,_SERVO_PW
      00076B F5 EA            [12] 2784 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      00076D 74 FF            [12] 2785 	mov	a,#0xff
      00076F 95 45            [12] 2786 	subb	a,(_SERVO_PW + 1)
      000771 F5 FA            [12] 2787 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000679  2788 	C$lab_5.c$144$7$142 ==.
                                   2789 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:144: direction = 2;
      000773 75 5E 02         [24] 2790 	mov	_direction,#0x02
                           00067C  2791 	C$lab_5.c$145$7$142 ==.
                                   2792 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:145: wait();
      000776 12 09 69         [24] 2793 	lcall	_wait
                           00067F  2794 	C$lab_5.c$146$4$135 ==.
                                   2795 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:146: break;
      000779                       2796 00122$:
                           00067F  2797 	C$lab_5.c$150$4$135 ==.
                                   2798 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:150: run_stop = 1; // only try to update once
      000779 7F 01            [12] 2799 	mov	r7,#0x01
      00077B 02 06 23         [24] 2800 	ljmp	00125$
      00077E                       2801 00127$:
                           000684  2802 	C$lab_5.c$154$2$133 ==.
                                   2803 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:154: if (MOTOR_PW > MOTOR_STOP) {
      00077E C3               [12] 2804 	clr	c
      00077F E5 36            [12] 2805 	mov	a,_MOTOR_STOP
      000781 95 3C            [12] 2806 	subb	a,_MOTOR_PW
      000783 E5 37            [12] 2807 	mov	a,(_MOTOR_STOP + 1)
      000785 95 3D            [12] 2808 	subb	a,(_MOTOR_PW + 1)
      000787 50 04            [24] 2809 	jnc	00129$
                           00068F  2810 	C$lab_5.c$155$3$143 ==.
                                   2811 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:155: BILED1 = 0;
      000789 C2 A3            [12] 2812 	clr	_BILED1
                           000691  2813 	C$lab_5.c$156$3$143 ==.
                                   2814 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:156: BILED0 = 1;
      00078B D2 A5            [12] 2815 	setb	_BILED0
      00078D                       2816 00129$:
                           000693  2817 	C$lab_5.c$158$2$133 ==.
                                   2818 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:158: if (MOTOR_PW < MOTOR_STOP) {
      00078D C3               [12] 2819 	clr	c
      00078E E5 3C            [12] 2820 	mov	a,_MOTOR_PW
      000790 95 36            [12] 2821 	subb	a,_MOTOR_STOP
      000792 E5 3D            [12] 2822 	mov	a,(_MOTOR_PW + 1)
      000794 95 37            [12] 2823 	subb	a,(_MOTOR_STOP + 1)
      000796 50 04            [24] 2824 	jnc	00131$
                           00069E  2825 	C$lab_5.c$159$3$144 ==.
                                   2826 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:159: BILED1 = 1;
      000798 D2 A3            [12] 2827 	setb	_BILED1
                           0006A0  2828 	C$lab_5.c$160$3$144 ==.
                                   2829 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:160: BILED0 = 0;
      00079A C2 A5            [12] 2830 	clr	_BILED0
      00079C                       2831 00131$:
                           0006A2  2832 	C$lab_5.c$162$2$133 ==.
                                   2833 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:162: if (MOTOR_PW == MOTOR_STOP) {
      00079C E5 36            [12] 2834 	mov	a,_MOTOR_STOP
      00079E B5 3C 09         [24] 2835 	cjne	a,_MOTOR_PW,00133$
      0007A1 E5 37            [12] 2836 	mov	a,(_MOTOR_STOP + 1)
      0007A3 B5 3D 04         [24] 2837 	cjne	a,(_MOTOR_PW + 1),00133$
                           0006AC  2838 	C$lab_5.c$163$3$145 ==.
                                   2839 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:163: BILED1 = 0;
      0007A6 C2 A3            [12] 2840 	clr	_BILED1
                           0006AE  2841 	C$lab_5.c$164$3$145 ==.
                                   2842 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:164: BILED0 = 0;
      0007A8 C2 A5            [12] 2843 	clr	_BILED0
      0007AA                       2844 00133$:
                           0006B0  2845 	C$lab_5.c$167$2$133 ==.
                                   2846 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:167: if (new_accel) // enough overflows for a new reading
      0007AA E5 46            [12] 2847 	mov	a,_new_accel
      0007AC 70 03            [24] 2848 	jnz	00262$
      0007AE 02 08 BB         [24] 2849 	ljmp	00155$
      0007B1                       2850 00262$:
                           0006B7  2851 	C$lab_5.c$169$3$146 ==.
                                   2852 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:169: read_accels();
      0007B1 C0 07            [24] 2853 	push	ar7
      0007B3 12 0A E3         [24] 2854 	lcall	_read_accels
      0007B6 D0 07            [24] 2855 	pop	ar7
                           0006BE  2856 	C$lab_5.c$170$3$146 ==.
                                   2857 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:170: if(((gy < 10) && (gy > -10)) && (levelflag)) { //checking for level ground
      0007B8 C3               [12] 2858 	clr	c
      0007B9 E5 52            [12] 2859 	mov	a,_gy
      0007BB 94 0A            [12] 2860 	subb	a,#0x0a
      0007BD E5 53            [12] 2861 	mov	a,(_gy + 1)
      0007BF 64 80            [12] 2862 	xrl	a,#0x80
      0007C1 94 80            [12] 2863 	subb	a,#0x80
      0007C3 50 19            [24] 2864 	jnc	00137$
      0007C5 C3               [12] 2865 	clr	c
      0007C6 74 F6            [12] 2866 	mov	a,#0xf6
      0007C8 95 52            [12] 2867 	subb	a,_gy
      0007CA 74 7F            [12] 2868 	mov	a,#(0xff ^ 0x80)
      0007CC 85 53 F0         [24] 2869 	mov	b,(_gy + 1)
      0007CF 63 F0 80         [24] 2870 	xrl	b,#0x80
      0007D2 95 F0            [12] 2871 	subb	a,b
      0007D4 50 08            [24] 2872 	jnc	00137$
      0007D6 E5 5B            [12] 2873 	mov	a,_levelflag
      0007D8 60 04            [24] 2874 	jz	00137$
                           0006E0  2875 	C$lab_5.c$171$4$147 ==.
                                   2876 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:171: levelflag ++;
      0007DA 05 5B            [12] 2877 	inc	_levelflag
      0007DC 80 07            [24] 2878 	sjmp	00138$
      0007DE                       2879 00137$:
                           0006E4  2880 	C$lab_5.c$173$3$146 ==.
                                   2881 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:173: else if (levelflag) {
      0007DE E5 5B            [12] 2882 	mov	a,_levelflag
      0007E0 60 03            [24] 2883 	jz	00138$
                           0006E8  2884 	C$lab_5.c$174$4$148 ==.
                                   2885 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:174: levelflag = 1;
      0007E2 75 5B 01         [24] 2886 	mov	_levelflag,#0x01
      0007E5                       2887 00138$:
                           0006EB  2888 	C$lab_5.c$177$3$146 ==.
                                   2889 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:177: if (levelflag > 5) {
      0007E5 E5 5B            [12] 2890 	mov	a,_levelflag
      0007E7 24 FA            [12] 2891 	add	a,#0xff - 0x05
      0007E9 50 03            [24] 2892 	jnc	00142$
                           0006F1  2893 	C$lab_5.c$178$4$149 ==.
                                   2894 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:178: levelflag = 0;
      0007EB 75 5B 00         [24] 2895 	mov	_levelflag,#0x00
      0007EE                       2896 00142$:
                           0006F4  2897 	C$lab_5.c$181$3$146 ==.
                                   2898 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:181: if (levelflag) { //manual reverse
      0007EE E5 5B            [12] 2899 	mov	a,_levelflag
      0007F0 70 03            [24] 2900 	jnz	00268$
      0007F2 02 08 AB         [24] 2901 	ljmp	00152$
      0007F5                       2902 00268$:
                           0006FB  2903 	C$lab_5.c$182$4$150 ==.
                                   2904 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:182: if (direction == 1) { //this is right
      0007F5 74 01            [12] 2905 	mov	a,#0x01
      0007F7 B5 5E 55         [24] 2906 	cjne	a,_direction,00146$
                           000700  2907 	C$lab_5.c$183$5$151 ==.
                                   2908 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:183: SERVO_PW = SERVO_LEFT; //reversed because of control setup
      0007FA 85 42 44         [24] 2909 	mov	_SERVO_PW,_SERVO_LEFT
      0007FD 85 43 45         [24] 2910 	mov	(_SERVO_PW + 1),(_SERVO_LEFT + 1)
                           000706  2911 	C$lab_5.c$184$5$151 ==.
                                   2912 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:184: PCA0CP0 = 0xFFFF - SERVO_PW;
      000800 74 FF            [12] 2913 	mov	a,#0xff
      000802 C3               [12] 2914 	clr	c
      000803 95 44            [12] 2915 	subb	a,_SERVO_PW
      000805 F5 EA            [12] 2916 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000807 74 FF            [12] 2917 	mov	a,#0xff
      000809 95 45            [12] 2918 	subb	a,(_SERVO_PW + 1)
      00080B F5 FA            [12] 2919 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000713  2920 	C$lab_5.c$185$5$151 ==.
                                   2921 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:185: kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
      00080D 75 65 32         [24] 2922 	mov	_read_AD_input_PARM_2,#0x32
      000810 75 82 04         [24] 2923 	mov	dpl,#0x04
      000813 C0 07            [24] 2924 	push	ar7
      000815 12 09 7A         [24] 2925 	lcall	_read_AD_input
      000818 85 82 5A         [24] 2926 	mov	_kdy,dpl
      00081B D0 07            [24] 2927 	pop	ar7
                           000723  2928 	C$lab_5.c$186$5$151 ==.
                                   2929 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:186: MOTOR_PW = MOTOR_STOP - (kdy * 18);
      00081D E5 5A            [12] 2930 	mov	a,_kdy
      00081F 75 F0 12         [24] 2931 	mov	b,#0x12
      000822 A4               [48] 2932 	mul	ab
      000823 FD               [12] 2933 	mov	r5,a
      000824 AE F0            [24] 2934 	mov	r6,b
      000826 E5 36            [12] 2935 	mov	a,_MOTOR_STOP
      000828 C3               [12] 2936 	clr	c
      000829 9D               [12] 2937 	subb	a,r5
      00082A F5 3C            [12] 2938 	mov	_MOTOR_PW,a
      00082C E5 37            [12] 2939 	mov	a,(_MOTOR_STOP + 1)
      00082E 9E               [12] 2940 	subb	a,r6
      00082F F5 3D            [12] 2941 	mov	(_MOTOR_PW + 1),a
                           000737  2942 	C$lab_5.c$187$5$151 ==.
                                   2943 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:187: if (MOTOR_PW < MOTOR_MIN) {
      000831 C3               [12] 2944 	clr	c
      000832 E5 3C            [12] 2945 	mov	a,_MOTOR_PW
      000834 95 3A            [12] 2946 	subb	a,_MOTOR_MIN
      000836 E5 3D            [12] 2947 	mov	a,(_MOTOR_PW + 1)
      000838 95 3B            [12] 2948 	subb	a,(_MOTOR_MIN + 1)
      00083A 50 06            [24] 2949 	jnc	00144$
                           000742  2950 	C$lab_5.c$188$6$152 ==.
                                   2951 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:188: MOTOR_PW = MOTOR_MIN;
      00083C 85 3A 3C         [24] 2952 	mov	_MOTOR_PW,_MOTOR_MIN
      00083F 85 3B 3D         [24] 2953 	mov	(_MOTOR_PW + 1),(_MOTOR_MIN + 1)
      000842                       2954 00144$:
                           000748  2955 	C$lab_5.c$190$5$151 ==.
                                   2956 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:190: PCA0CP2 = 0xFFFF - MOTOR_PW;
      000842 74 FF            [12] 2957 	mov	a,#0xff
      000844 C3               [12] 2958 	clr	c
      000845 95 3C            [12] 2959 	subb	a,_MOTOR_PW
      000847 F5 EC            [12] 2960 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000849 74 FF            [12] 2961 	mov	a,#0xff
      00084B 95 3D            [12] 2962 	subb	a,(_MOTOR_PW + 1)
      00084D F5 FC            [12] 2963 	mov	((_PCA0CP2 >> 8) & 0xFF),a
      00084F                       2964 00146$:
                           000755  2965 	C$lab_5.c$193$4$150 ==.
                                   2966 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:193: if (direction == 2) { //this is left
      00084F 74 02            [12] 2967 	mov	a,#0x02
      000851 B5 5E 67         [24] 2968 	cjne	a,_direction,00155$
                           00075A  2969 	C$lab_5.c$194$5$153 ==.
                                   2970 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:194: SERVO_PW = SERVO_RIGHT; //reversed because of control setup
      000854 85 40 44         [24] 2971 	mov	_SERVO_PW,_SERVO_RIGHT
      000857 85 41 45         [24] 2972 	mov	(_SERVO_PW + 1),(_SERVO_RIGHT + 1)
                           000760  2973 	C$lab_5.c$195$5$153 ==.
                                   2974 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:195: PCA0CP0 = 0xFFFF - SERVO_PW;
      00085A 74 FF            [12] 2975 	mov	a,#0xff
      00085C C3               [12] 2976 	clr	c
      00085D 95 44            [12] 2977 	subb	a,_SERVO_PW
      00085F F5 EA            [12] 2978 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000861 74 FF            [12] 2979 	mov	a,#0xff
      000863 95 45            [12] 2980 	subb	a,(_SERVO_PW + 1)
      000865 F5 FA            [12] 2981 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           00076D  2982 	C$lab_5.c$196$5$153 ==.
                                   2983 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:196: kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
      000867 75 65 32         [24] 2984 	mov	_read_AD_input_PARM_2,#0x32
      00086A 75 82 04         [24] 2985 	mov	dpl,#0x04
      00086D C0 07            [24] 2986 	push	ar7
      00086F 12 09 7A         [24] 2987 	lcall	_read_AD_input
      000872 85 82 5A         [24] 2988 	mov	_kdy,dpl
      000875 D0 07            [24] 2989 	pop	ar7
                           00077D  2990 	C$lab_5.c$197$5$153 ==.
                                   2991 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:197: MOTOR_PW = MOTOR_STOP - (kdy * 18);
      000877 E5 5A            [12] 2992 	mov	a,_kdy
      000879 75 F0 12         [24] 2993 	mov	b,#0x12
      00087C A4               [48] 2994 	mul	ab
      00087D FD               [12] 2995 	mov	r5,a
      00087E AE F0            [24] 2996 	mov	r6,b
      000880 E5 36            [12] 2997 	mov	a,_MOTOR_STOP
      000882 C3               [12] 2998 	clr	c
      000883 9D               [12] 2999 	subb	a,r5
      000884 F5 3C            [12] 3000 	mov	_MOTOR_PW,a
      000886 E5 37            [12] 3001 	mov	a,(_MOTOR_STOP + 1)
      000888 9E               [12] 3002 	subb	a,r6
      000889 F5 3D            [12] 3003 	mov	(_MOTOR_PW + 1),a
                           000791  3004 	C$lab_5.c$198$5$153 ==.
                                   3005 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:198: if (MOTOR_PW < MOTOR_MIN) {
      00088B C3               [12] 3006 	clr	c
      00088C E5 3C            [12] 3007 	mov	a,_MOTOR_PW
      00088E 95 3A            [12] 3008 	subb	a,_MOTOR_MIN
      000890 E5 3D            [12] 3009 	mov	a,(_MOTOR_PW + 1)
      000892 95 3B            [12] 3010 	subb	a,(_MOTOR_MIN + 1)
      000894 50 06            [24] 3011 	jnc	00148$
                           00079C  3012 	C$lab_5.c$199$6$154 ==.
                                   3013 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:199: MOTOR_PW = MOTOR_MIN;
      000896 85 3A 3C         [24] 3014 	mov	_MOTOR_PW,_MOTOR_MIN
      000899 85 3B 3D         [24] 3015 	mov	(_MOTOR_PW + 1),(_MOTOR_MIN + 1)
      00089C                       3016 00148$:
                           0007A2  3017 	C$lab_5.c$201$5$153 ==.
                                   3018 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:201: PCA0CP2 = 0xFFFF - MOTOR_PW;					
      00089C 74 FF            [12] 3019 	mov	a,#0xff
      00089E C3               [12] 3020 	clr	c
      00089F 95 3C            [12] 3021 	subb	a,_MOTOR_PW
      0008A1 F5 EC            [12] 3022 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      0008A3 74 FF            [12] 3023 	mov	a,#0xff
      0008A5 95 3D            [12] 3024 	subb	a,(_MOTOR_PW + 1)
      0008A7 F5 FC            [12] 3025 	mov	((_PCA0CP2 >> 8) & 0xFF),a
      0008A9 80 10            [24] 3026 	sjmp	00155$
      0008AB                       3027 00152$:
                           0007B1  3028 	C$lab_5.c$206$4$155 ==.
                                   3029 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:206: set_servo_PWM(); // set the servo PWM
      0008AB C0 07            [24] 3030 	push	ar7
      0008AD 12 0C 04         [24] 3031 	lcall	_set_servo_PWM
                           0007B6  3032 	C$lab_5.c$207$4$155 ==.
                                   3033 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:207: set_drive_PWM(); // set drive PWM
      0008B0 12 0C 53         [24] 3034 	lcall	_set_drive_PWM
      0008B3 D0 07            [24] 3035 	pop	ar7
                           0007BB  3036 	C$lab_5.c$208$4$155 ==.
                                   3037 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:208: new_accel = 0;
      0008B5 75 46 00         [24] 3038 	mov	_new_accel,#0x00
                           0007BE  3039 	C$lab_5.c$209$4$155 ==.
                                   3040 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:209: a_count = 0;
      0008B8 75 4A 00         [24] 3041 	mov	_a_count,#0x00
      0008BB                       3042 00155$:
                           0007C1  3043 	C$lab_5.c$213$2$133 ==.
                                   3044 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:213: if (new_lcd) // enough overflow to write to LCD
      0008BB E5 47            [12] 3045 	mov	a,_new_lcd
      0008BD 70 03            [24] 3046 	jnz	00275$
      0008BF 02 06 23         [24] 3047 	ljmp	00125$
      0008C2                       3048 00275$:
                           0007C8  3049 	C$lab_5.c$215$3$156 ==.
                                   3050 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:215: lcd_clear();
      0008C2 C0 07            [24] 3051 	push	ar7
      0008C4 12 01 FA         [24] 3052 	lcall	_lcd_clear
                           0007CD  3053 	C$lab_5.c$216$3$156 ==.
                                   3054 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:216: lcd_print("x: %i y: %i\nDrive: %i Steering: %i", gx, gy, MOTOR_PW, SERVO_PW);
      0008C7 C0 44            [24] 3055 	push	_SERVO_PW
      0008C9 C0 45            [24] 3056 	push	(_SERVO_PW + 1)
      0008CB C0 3C            [24] 3057 	push	_MOTOR_PW
      0008CD C0 3D            [24] 3058 	push	(_MOTOR_PW + 1)
      0008CF C0 52            [24] 3059 	push	_gy
      0008D1 C0 53            [24] 3060 	push	(_gy + 1)
      0008D3 C0 50            [24] 3061 	push	_gx
      0008D5 C0 51            [24] 3062 	push	(_gx + 1)
      0008D7 74 00            [12] 3063 	mov	a,#___str_9
      0008D9 C0 E0            [24] 3064 	push	acc
      0008DB 74 1A            [12] 3065 	mov	a,#(___str_9 >> 8)
      0008DD C0 E0            [24] 3066 	push	acc
      0008DF 74 80            [12] 3067 	mov	a,#0x80
      0008E1 C0 E0            [24] 3068 	push	acc
      0008E3 12 01 75         [24] 3069 	lcall	_lcd_print
      0008E6 E5 81            [12] 3070 	mov	a,sp
      0008E8 24 F5            [12] 3071 	add	a,#0xf5
      0008EA F5 81            [12] 3072 	mov	sp,a
                           0007F2  3073 	C$lab_5.c$217$3$156 ==.
                                   3074 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:217: printf("%i\t%i\t%i\t%i\r\n", gx, gy, MOTOR_PW, SERVO_PW);
      0008EC C0 44            [24] 3075 	push	_SERVO_PW
      0008EE C0 45            [24] 3076 	push	(_SERVO_PW + 1)
      0008F0 C0 3C            [24] 3077 	push	_MOTOR_PW
      0008F2 C0 3D            [24] 3078 	push	(_MOTOR_PW + 1)
      0008F4 C0 52            [24] 3079 	push	_gy
      0008F6 C0 53            [24] 3080 	push	(_gy + 1)
      0008F8 C0 50            [24] 3081 	push	_gx
      0008FA C0 51            [24] 3082 	push	(_gx + 1)
      0008FC 74 23            [12] 3083 	mov	a,#___str_10
      0008FE C0 E0            [24] 3084 	push	acc
      000900 74 1A            [12] 3085 	mov	a,#(___str_10 >> 8)
      000902 C0 E0            [24] 3086 	push	acc
      000904 74 80            [12] 3087 	mov	a,#0x80
      000906 C0 E0            [24] 3088 	push	acc
      000908 12 13 1F         [24] 3089 	lcall	_printf
      00090B E5 81            [12] 3090 	mov	a,sp
      00090D 24 F5            [12] 3091 	add	a,#0xf5
      00090F F5 81            [12] 3092 	mov	sp,a
      000911 D0 07            [24] 3093 	pop	ar7
                           000819  3094 	C$lab_5.c$218$3$156 ==.
                                   3095 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:218: new_lcd = 0;
      000913 75 47 00         [24] 3096 	mov	_new_lcd,#0x00
                           00081C  3097 	C$lab_5.c$219$3$156 ==.
                                   3098 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:219: lcd_count = 0;
      000916 75 4B 00         [24] 3099 	mov	_lcd_count,#0x00
      000919 02 06 23         [24] 3100 	ljmp	00125$
                           000822  3101 	C$lab_5.c$223$1$132 ==.
                           000822  3102 	XG$main$0$0 ==.
      00091C 22               [24] 3103 	ret
                                   3104 ;------------------------------------------------------------
                                   3105 ;Allocation info for local variables in function 'PCA_ISR'
                                   3106 ;------------------------------------------------------------
                           000823  3107 	G$PCA_ISR$0$0 ==.
                           000823  3108 	C$lab_5.c$231$1$132 ==.
                                   3109 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:231: void PCA_ISR ( void ) __interrupt 9
                                   3110 ;	-----------------------------------------
                                   3111 ;	 function PCA_ISR
                                   3112 ;	-----------------------------------------
      00091D                       3113 _PCA_ISR:
      00091D C0 E0            [24] 3114 	push	acc
      00091F C0 D0            [24] 3115 	push	psw
                           000827  3116 	C$lab_5.c$233$1$158 ==.
                                   3117 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:233: if (CF)
                           000827  3118 	C$lab_5.c$235$2$159 ==.
                                   3119 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:235: CF = 0; // clear overflow indicator
      000921 10 DF 02         [24] 3120 	jbc	_CF,00118$
      000924 80 2A            [24] 3121 	sjmp	00106$
      000926                       3122 00118$:
                           00082C  3123 	C$lab_5.c$236$2$159 ==.
                                   3124 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:236: a_count++;
      000926 05 4A            [12] 3125 	inc	_a_count
                           00082E  3126 	C$lab_5.c$237$2$159 ==.
                                   3127 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:237: nCounts++;
      000928 05 5C            [12] 3128 	inc	_nCounts
      00092A E4               [12] 3129 	clr	a
      00092B B5 5C 02         [24] 3130 	cjne	a,_nCounts,00119$
      00092E 05 5D            [12] 3131 	inc	(_nCounts + 1)
      000930                       3132 00119$:
                           000836  3133 	C$lab_5.c$238$2$159 ==.
                                   3134 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:238: if(a_count>=4)
      000930 74 FC            [12] 3135 	mov	a,#0x100 - 0x04
      000932 25 4A            [12] 3136 	add	a,_a_count
      000934 50 06            [24] 3137 	jnc	00102$
                           00083C  3138 	C$lab_5.c$240$3$160 ==.
                                   3139 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:240: new_accel=1;
      000936 75 46 01         [24] 3140 	mov	_new_accel,#0x01
                           00083F  3141 	C$lab_5.c$241$3$160 ==.
                                   3142 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:241: a_count = 0;
      000939 75 4A 00         [24] 3143 	mov	_a_count,#0x00
      00093C                       3144 00102$:
                           000842  3145 	C$lab_5.c$243$2$159 ==.
                                   3146 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:243: lcd_count++;
      00093C 05 4B            [12] 3147 	inc	_lcd_count
                           000844  3148 	C$lab_5.c$244$2$159 ==.
                                   3149 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:244: if (lcd_count>=10)
      00093E 74 F6            [12] 3150 	mov	a,#0x100 - 0x0a
      000940 25 4B            [12] 3151 	add	a,_lcd_count
      000942 50 06            [24] 3152 	jnc	00104$
                           00084A  3153 	C$lab_5.c$246$3$161 ==.
                                   3154 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:246: new_lcd = 1;
      000944 75 47 01         [24] 3155 	mov	_new_lcd,#0x01
                           00084D  3156 	C$lab_5.c$247$3$161 ==.
                                   3157 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:247: lcd_count = 0;
      000947 75 4B 00         [24] 3158 	mov	_lcd_count,#0x00
      00094A                       3159 00104$:
                           000850  3160 	C$lab_5.c$249$2$159 ==.
                                   3161 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:249: PCA0 = 28671;
      00094A 75 E9 FF         [24] 3162 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      00094D 75 F9 6F         [24] 3163 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
      000950                       3164 00106$:
                           000856  3165 	C$lab_5.c$252$1$158 ==.
                                   3166 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:252: PCA0CN &= 0xC0;
      000950 53 D8 C0         [24] 3167 	anl	_PCA0CN,#0xc0
      000953 D0 D0            [24] 3168 	pop	psw
      000955 D0 E0            [24] 3169 	pop	acc
                           00085D  3170 	C$lab_5.c$253$1$158 ==.
                           00085D  3171 	XG$PCA_ISR$0$0 ==.
      000957 32               [24] 3172 	reti
                                   3173 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   3174 ;	eliminated unneeded push/pop dpl
                                   3175 ;	eliminated unneeded push/pop dph
                                   3176 ;	eliminated unneeded push/pop b
                                   3177 ;------------------------------------------------------------
                                   3178 ;Allocation info for local variables in function 'pause'
                                   3179 ;------------------------------------------------------------
                           00085E  3180 	G$pause$0$0 ==.
                           00085E  3181 	C$lab_5.c$285$1$158 ==.
                                   3182 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:285: void pause(void) //used for reading from the keypad
                                   3183 ;	-----------------------------------------
                                   3184 ;	 function pause
                                   3185 ;	-----------------------------------------
      000958                       3186 _pause:
                           00085E  3187 	C$lab_5.c$287$1$163 ==.
                                   3188 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:287: nCounts = 0;
      000958 E4               [12] 3189 	clr	a
      000959 F5 5C            [12] 3190 	mov	_nCounts,a
      00095B F5 5D            [12] 3191 	mov	(_nCounts + 1),a
                           000863  3192 	C$lab_5.c$288$1$163 ==.
                                   3193 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:288: while (nCounts < 6);// 1 count -> (65536-PCA_START) x 12/22118400 = 20ms
      00095D                       3194 00101$:
      00095D C3               [12] 3195 	clr	c
      00095E E5 5C            [12] 3196 	mov	a,_nCounts
      000960 94 06            [12] 3197 	subb	a,#0x06
      000962 E5 5D            [12] 3198 	mov	a,(_nCounts + 1)
      000964 94 00            [12] 3199 	subb	a,#0x00
      000966 40 F5            [24] 3200 	jc	00101$
                           00086E  3201 	C$lab_5.c$289$1$163 ==.
                           00086E  3202 	XG$pause$0$0 ==.
      000968 22               [24] 3203 	ret
                                   3204 ;------------------------------------------------------------
                                   3205 ;Allocation info for local variables in function 'wait'
                                   3206 ;------------------------------------------------------------
                           00086F  3207 	G$wait$0$0 ==.
                           00086F  3208 	C$lab_5.c$292$1$163 ==.
                                   3209 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:292: void wait(void) //used for reading from the keypad
                                   3210 ;	-----------------------------------------
                                   3211 ;	 function wait
                                   3212 ;	-----------------------------------------
      000969                       3213 _wait:
                           00086F  3214 	C$lab_5.c$294$1$165 ==.
                                   3215 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:294: nCounts = 0;
      000969 E4               [12] 3216 	clr	a
      00096A F5 5C            [12] 3217 	mov	_nCounts,a
      00096C F5 5D            [12] 3218 	mov	(_nCounts + 1),a
                           000874  3219 	C$lab_5.c$295$1$165 ==.
                                   3220 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:295: while (nCounts < 50);    // 50 counts -> 50 x 20ms = 1000ms
      00096E                       3221 00101$:
      00096E C3               [12] 3222 	clr	c
      00096F E5 5C            [12] 3223 	mov	a,_nCounts
      000971 94 32            [12] 3224 	subb	a,#0x32
      000973 E5 5D            [12] 3225 	mov	a,(_nCounts + 1)
      000975 94 00            [12] 3226 	subb	a,#0x00
      000977 40 F5            [24] 3227 	jc	00101$
                           00087F  3228 	C$lab_5.c$296$1$165 ==.
                           00087F  3229 	XG$wait$0$0 ==.
      000979 22               [24] 3230 	ret
                                   3231 ;------------------------------------------------------------
                                   3232 ;Allocation info for local variables in function 'read_AD_input'
                                   3233 ;------------------------------------------------------------
                                   3234 ;cast                      Allocated with name '_read_AD_input_PARM_2'
                                   3235 ;n                         Allocated to registers 
                                   3236 ;adcast                    Allocated to registers 
                                   3237 ;------------------------------------------------------------
                           000880  3238 	G$read_AD_input$0$0 ==.
                           000880  3239 	C$lab_5.c$299$1$165 ==.
                                   3240 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:299: unsigned char read_AD_input(unsigned char n, unsigned char cast)
                                   3241 ;	-----------------------------------------
                                   3242 ;	 function read_AD_input
                                   3243 ;	-----------------------------------------
      00097A                       3244 _read_AD_input:
      00097A 85 82 AC         [24] 3245 	mov	_AMX1SL,dpl
                           000883  3246 	C$lab_5.c$303$1$167 ==.
                                   3247 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:303: ADC1CN = ADC1CN & ~0x20; /* Clear the �Conversion Completed� flag */
      00097D 53 AA DF         [24] 3248 	anl	_ADC1CN,#0xdf
                           000886  3249 	C$lab_5.c$304$1$167 ==.
                                   3250 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:304: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
      000980 43 AA 10         [24] 3251 	orl	_ADC1CN,#0x10
                           000889  3252 	C$lab_5.c$305$1$167 ==.
                                   3253 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:305: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      000983                       3254 00101$:
      000983 E5 AA            [12] 3255 	mov	a,_ADC1CN
      000985 30 E5 FB         [24] 3256 	jnb	acc.5,00101$
                           00088E  3257 	C$lab_5.c$306$1$167 ==.
                                   3258 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:306: if (cast == 0) { //check for unmodified case
      000988 E5 65            [12] 3259 	mov	a,_read_AD_input_PARM_2
      00098A 70 05            [24] 3260 	jnz	00105$
                           000892  3261 	C$lab_5.c$307$2$168 ==.
                                   3262 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:307: return (ADC1); /* Return digital value in ADC1 register */
      00098C 85 9C 82         [24] 3263 	mov	dpl,_ADC1
      00098F 80 19            [24] 3264 	sjmp	00107$
      000991                       3265 00105$:
                           000897  3266 	C$lab_5.c$310$2$169 ==.
                                   3267 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:310: adcast = (265 / cast) + 1; //create the casting gradient
      000991 85 65 11         [24] 3268 	mov	__divsint_PARM_2,_read_AD_input_PARM_2
      000994 75 12 00         [24] 3269 	mov	(__divsint_PARM_2 + 1),#0x00
      000997 90 01 09         [24] 3270 	mov	dptr,#0x0109
      00099A 12 19 36         [24] 3271 	lcall	__divsint
      00099D AE 82            [24] 3272 	mov	r6,dpl
      00099F AF 83            [24] 3273 	mov	r7,dph
      0009A1 EE               [12] 3274 	mov	a,r6
      0009A2 04               [12] 3275 	inc	a
                           0008A9  3276 	C$lab_5.c$311$2$169 ==.
                                   3277 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:311: return (ADC1/adcast); /* Return digital value in ADC1 register */
      0009A3 F5 F0            [12] 3278 	mov	b,a
      0009A5 E5 9C            [12] 3279 	mov	a,_ADC1
      0009A7 84               [48] 3280 	div	ab
      0009A8 F5 82            [12] 3281 	mov	dpl,a
      0009AA                       3282 00107$:
                           0008B0  3283 	C$lab_5.c$313$1$167 ==.
                           0008B0  3284 	XG$read_AD_input$0$0 ==.
      0009AA 22               [24] 3285 	ret
                                   3286 ;------------------------------------------------------------
                                   3287 ;Allocation info for local variables in function 'PCA_Init'
                                   3288 ;------------------------------------------------------------
                           0008B1  3289 	G$PCA_Init$0$0 ==.
                           0008B1  3290 	C$lab_5.c$315$1$167 ==.
                                   3291 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:315: void PCA_Init(void)
                                   3292 ;	-----------------------------------------
                                   3293 ;	 function PCA_Init
                                   3294 ;	-----------------------------------------
      0009AB                       3295 _PCA_Init:
                           0008B1  3296 	C$lab_5.c$317$1$171 ==.
                                   3297 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:317: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      0009AB 75 D9 81         [24] 3298 	mov	_PCA0MD,#0x81
                           0008B4  3299 	C$lab_5.c$318$1$171 ==.
                                   3300 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:318: PCA0CPM2 = PCA0CPM3 = PCA0CPM0 = 0xC2; //CCM0,2,3 in 16 bit compare mode
      0009AE 75 DA C2         [24] 3301 	mov	_PCA0CPM0,#0xc2
      0009B1 75 DD C2         [24] 3302 	mov	_PCA0CPM3,#0xc2
      0009B4 75 DC C2         [24] 3303 	mov	_PCA0CPM2,#0xc2
                           0008BD  3304 	C$lab_5.c$319$1$171 ==.
                                   3305 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:319: PCA0CN = 0x40; //enable PCA counter
      0009B7 75 D8 40         [24] 3306 	mov	_PCA0CN,#0x40
                           0008C0  3307 	C$lab_5.c$320$1$171 ==.
                                   3308 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:320: EIE1 |= 0x08;
      0009BA 43 E6 08         [24] 3309 	orl	_EIE1,#0x08
                           0008C3  3310 	C$lab_5.c$321$1$171 ==.
                                   3311 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:321: EA = 1;
      0009BD D2 AF            [12] 3312 	setb	_EA
                           0008C5  3313 	C$lab_5.c$322$1$171 ==.
                           0008C5  3314 	XG$PCA_Init$0$0 ==.
      0009BF 22               [24] 3315 	ret
                                   3316 ;------------------------------------------------------------
                                   3317 ;Allocation info for local variables in function 'ADC_Init'
                                   3318 ;------------------------------------------------------------
                           0008C6  3319 	G$ADC_Init$0$0 ==.
                           0008C6  3320 	C$lab_5.c$325$1$171 ==.
                                   3321 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:325: void ADC_Init(void)
                                   3322 ;	-----------------------------------------
                                   3323 ;	 function ADC_Init
                                   3324 ;	-----------------------------------------
      0009C0                       3325 _ADC_Init:
                           0008C6  3326 	C$lab_5.c$327$1$173 ==.
                                   3327 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:327: REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
      0009C0 75 D1 03         [24] 3328 	mov	_REF0CN,#0x03
                           0008C9  3329 	C$lab_5.c$328$1$173 ==.
                                   3330 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:328: ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
      0009C3 75 AA 80         [24] 3331 	mov	_ADC1CN,#0x80
                           0008CC  3332 	C$lab_5.c$329$1$173 ==.
                                   3333 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:329: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
      0009C6 43 AB 01         [24] 3334 	orl	_ADC1CF,#0x01
                           0008CF  3335 	C$lab_5.c$330$1$173 ==.
                           0008CF  3336 	XG$ADC_Init$0$0 ==.
      0009C9 22               [24] 3337 	ret
                                   3338 ;------------------------------------------------------------
                                   3339 ;Allocation info for local variables in function 'SMB_Init'
                                   3340 ;------------------------------------------------------------
                           0008D0  3341 	G$SMB_Init$0$0 ==.
                           0008D0  3342 	C$lab_5.c$333$1$173 ==.
                                   3343 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:333: void SMB_Init(void)
                                   3344 ;	-----------------------------------------
                                   3345 ;	 function SMB_Init
                                   3346 ;	-----------------------------------------
      0009CA                       3347 _SMB_Init:
                           0008D0  3348 	C$lab_5.c$335$1$175 ==.
                                   3349 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:335: SMB0CR = 0x93; // set SCL to 100KHz
      0009CA 75 CF 93         [24] 3350 	mov	_SMB0CR,#0x93
                           0008D3  3351 	C$lab_5.c$336$1$175 ==.
                                   3352 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:336: ENSMB = TRUE; // enable SMBUS0
      0009CD D2 C6            [12] 3353 	setb	_ENSMB
                           0008D5  3354 	C$lab_5.c$337$1$175 ==.
                           0008D5  3355 	XG$SMB_Init$0$0 ==.
      0009CF 22               [24] 3356 	ret
                                   3357 ;------------------------------------------------------------
                                   3358 ;Allocation info for local variables in function 'Port_Init'
                                   3359 ;------------------------------------------------------------
                           0008D6  3360 	G$Port_Init$0$0 ==.
                           0008D6  3361 	C$lab_5.c$340$1$175 ==.
                                   3362 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:340: void Port_Init(void)
                                   3363 ;	-----------------------------------------
                                   3364 ;	 function Port_Init
                                   3365 ;	-----------------------------------------
      0009D0                       3366 _Port_Init:
                           0008D6  3367 	C$lab_5.c$342$1$177 ==.
                                   3368 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:342: P1MDIN &= ~0x10; 	//potentiometer
      0009D0 53 BD EF         [24] 3369 	anl	_P1MDIN,#0xef
                           0008D9  3370 	C$lab_5.c$343$1$177 ==.
                                   3371 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:343: P1MDOUT &= ~0x10;
      0009D3 53 A5 EF         [24] 3372 	anl	_P1MDOUT,#0xef
                           0008DC  3373 	C$lab_5.c$344$1$177 ==.
                                   3374 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:344: P1MDOUT |= 0x0D;	//CEX pins
      0009D6 43 A5 0D         [24] 3375 	orl	_P1MDOUT,#0x0d
                           0008DF  3376 	C$lab_5.c$345$1$177 ==.
                                   3377 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:345: P1 |= 0x10;
      0009D9 43 90 10         [24] 3378 	orl	_P1,#0x10
                           0008E2  3379 	C$lab_5.c$347$1$177 ==.
                                   3380 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:347: P2MDOUT |= 0xFF; // set Port 2 output pins to push-pull mode
      0009DC E5 A6            [12] 3381 	mov	a,_P2MDOUT
      0009DE 75 A6 FF         [24] 3382 	mov	_P2MDOUT,#0xff
                           0008E7  3383 	C$lab_5.c$349$1$177 ==.
                                   3384 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:349: P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
      0009E1 53 A7 80         [24] 3385 	anl	_P3MDOUT,#0x80
                           0008EA  3386 	C$lab_5.c$350$1$177 ==.
                                   3387 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:350: P3 |= ~0x80;
      0009E4 43 B0 7F         [24] 3388 	orl	_P3,#0x7f
                           0008ED  3389 	C$lab_5.c$351$1$177 ==.
                           0008ED  3390 	XG$Port_Init$0$0 ==.
      0009E7 22               [24] 3391 	ret
                                   3392 ;------------------------------------------------------------
                                   3393 ;Allocation info for local variables in function 'XBR0_Init'
                                   3394 ;------------------------------------------------------------
                           0008EE  3395 	G$XBR0_Init$0$0 ==.
                           0008EE  3396 	C$lab_5.c$354$1$177 ==.
                                   3397 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:354: void XBR0_Init(void)
                                   3398 ;	-----------------------------------------
                                   3399 ;	 function XBR0_Init
                                   3400 ;	-----------------------------------------
      0009E8                       3401 _XBR0_Init:
                           0008EE  3402 	C$lab_5.c$356$1$179 ==.
                                   3403 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:356: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      0009E8 75 E1 27         [24] 3404 	mov	_XBR0,#0x27
                           0008F1  3405 	C$lab_5.c$358$1$179 ==.
                           0008F1  3406 	XG$XBR0_Init$0$0 ==.
      0009EB 22               [24] 3407 	ret
                                   3408 ;------------------------------------------------------------
                                   3409 ;Allocation info for local variables in function 'calibration'
                                   3410 ;------------------------------------------------------------
                                   3411 ;addr                      Allocated to registers r7 
                                   3412 ;i                         Allocated to registers 
                                   3413 ;------------------------------------------------------------
                           0008F2  3414 	G$calibration$0$0 ==.
                           0008F2  3415 	C$lab_5.c$360$1$179 ==.
                                   3416 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:360: void calibration(void) {
                                   3417 ;	-----------------------------------------
                                   3418 ;	 function calibration
                                   3419 ;	-----------------------------------------
      0009EC                       3420 _calibration:
                           0008F2  3421 	C$lab_5.c$361$1$179 ==.
                                   3422 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:361: unsigned char addr = 0x3A; // the address of the accel
      0009EC 7F 3A            [12] 3423 	mov	r7,#0x3a
                           0008F4  3424 	C$lab_5.c$364$1$181 ==.
                                   3425 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:364: avg_gx = 0;
      0009EE E4               [12] 3426 	clr	a
      0009EF F5 61            [12] 3427 	mov	_avg_gx,a
      0009F1 F5 62            [12] 3428 	mov	(_avg_gx + 1),a
                           0008F9  3429 	C$lab_5.c$365$1$181 ==.
                                   3430 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:365: avg_gy = 0;
      0009F3 F5 63            [12] 3431 	mov	_avg_gy,a
      0009F5 F5 64            [12] 3432 	mov	(_avg_gy + 1),a
                           0008FD  3433 	C$lab_5.c$367$1$181 ==.
                                   3434 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:367: for (i = 0; i < 64; i++) { //average of 64 trials for calibration data
      0009F7 7E 00            [12] 3435 	mov	r6,#0x00
      0009F9                       3436 00105$:
                           0008FF  3437 	C$lab_5.c$369$2$182 ==.
                                   3438 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:369: i2c_read_data(addr, 0x27, Data, 2);
      0009F9 75 32 4C         [24] 3439 	mov	_i2c_read_data_PARM_3,#_Data
      0009FC 75 33 00         [24] 3440 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0009FF 75 34 40         [24] 3441 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000A02 75 31 27         [24] 3442 	mov	_i2c_read_data_PARM_2,#0x27
      000A05 75 35 02         [24] 3443 	mov	_i2c_read_data_PARM_4,#0x02
      000A08 8F 82            [24] 3444 	mov	dpl,r7
      000A0A C0 07            [24] 3445 	push	ar7
      000A0C C0 06            [24] 3446 	push	ar6
      000A0E 12 05 00         [24] 3447 	lcall	_i2c_read_data
      000A11 D0 06            [24] 3448 	pop	ar6
      000A13 D0 07            [24] 3449 	pop	ar7
                           00091B  3450 	C$lab_5.c$371$2$182 ==.
                                   3451 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:371: while ((Data[0] & 0x03) != 0x03) {
      000A15                       3452 00101$:
      000A15 74 03            [12] 3453 	mov	a,#0x03
      000A17 55 4C            [12] 3454 	anl	a,_Data
      000A19 FD               [12] 3455 	mov	r5,a
      000A1A BD 03 02         [24] 3456 	cjne	r5,#0x03,00122$
      000A1D 80 1E            [24] 3457 	sjmp	00103$
      000A1F                       3458 00122$:
                           000925  3459 	C$lab_5.c$372$3$183 ==.
                                   3460 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:372: i2c_read_data(addr, 0x27, Data, 2);
      000A1F 75 32 4C         [24] 3461 	mov	_i2c_read_data_PARM_3,#_Data
      000A22 75 33 00         [24] 3462 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000A25 75 34 40         [24] 3463 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000A28 75 31 27         [24] 3464 	mov	_i2c_read_data_PARM_2,#0x27
      000A2B 75 35 02         [24] 3465 	mov	_i2c_read_data_PARM_4,#0x02
      000A2E 8F 82            [24] 3466 	mov	dpl,r7
      000A30 C0 07            [24] 3467 	push	ar7
      000A32 C0 06            [24] 3468 	push	ar6
      000A34 12 05 00         [24] 3469 	lcall	_i2c_read_data
      000A37 D0 06            [24] 3470 	pop	ar6
      000A39 D0 07            [24] 3471 	pop	ar7
      000A3B 80 D8            [24] 3472 	sjmp	00101$
      000A3D                       3473 00103$:
                           000943  3474 	C$lab_5.c$376$2$182 ==.
                                   3475 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:376: i2c_read_data(addr, 0x28|0x80, Data, 4);
      000A3D 75 32 4C         [24] 3476 	mov	_i2c_read_data_PARM_3,#_Data
      000A40 75 33 00         [24] 3477 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000A43 75 34 40         [24] 3478 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000A46 75 31 A8         [24] 3479 	mov	_i2c_read_data_PARM_2,#0xa8
      000A49 75 35 04         [24] 3480 	mov	_i2c_read_data_PARM_4,#0x04
      000A4C 8F 82            [24] 3481 	mov	dpl,r7
      000A4E C0 07            [24] 3482 	push	ar7
      000A50 C0 06            [24] 3483 	push	ar6
      000A52 12 05 00         [24] 3484 	lcall	_i2c_read_data
      000A55 D0 06            [24] 3485 	pop	ar6
      000A57 D0 07            [24] 3486 	pop	ar7
                           00095F  3487 	C$lab_5.c$378$2$182 ==.
                                   3488 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:378: avg_gx += ((Data[1] << 8 | Data[0]) >> 4);
      000A59 AD 4D            [24] 3489 	mov	r5,(_Data + 0x0001)
      000A5B 7C 00            [12] 3490 	mov	r4,#0x00
      000A5D AA 4C            [24] 3491 	mov	r2,_Data
      000A5F 7B 00            [12] 3492 	mov	r3,#0x00
      000A61 EA               [12] 3493 	mov	a,r2
      000A62 42 04            [12] 3494 	orl	ar4,a
      000A64 EB               [12] 3495 	mov	a,r3
      000A65 42 05            [12] 3496 	orl	ar5,a
      000A67 ED               [12] 3497 	mov	a,r5
      000A68 C4               [12] 3498 	swap	a
      000A69 CC               [12] 3499 	xch	a,r4
      000A6A C4               [12] 3500 	swap	a
      000A6B 54 0F            [12] 3501 	anl	a,#0x0f
      000A6D 6C               [12] 3502 	xrl	a,r4
      000A6E CC               [12] 3503 	xch	a,r4
      000A6F 54 0F            [12] 3504 	anl	a,#0x0f
      000A71 CC               [12] 3505 	xch	a,r4
      000A72 6C               [12] 3506 	xrl	a,r4
      000A73 CC               [12] 3507 	xch	a,r4
      000A74 30 E3 02         [24] 3508 	jnb	acc.3,00123$
      000A77 44 F0            [12] 3509 	orl	a,#0xf0
      000A79                       3510 00123$:
      000A79 FD               [12] 3511 	mov	r5,a
      000A7A EC               [12] 3512 	mov	a,r4
      000A7B 25 61            [12] 3513 	add	a,_avg_gx
      000A7D F5 61            [12] 3514 	mov	_avg_gx,a
      000A7F ED               [12] 3515 	mov	a,r5
      000A80 35 62            [12] 3516 	addc	a,(_avg_gx + 1)
      000A82 F5 62            [12] 3517 	mov	(_avg_gx + 1),a
                           00098A  3518 	C$lab_5.c$379$2$182 ==.
                                   3519 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:379: avg_gy += ((Data[3] << 8 | Data[2]) >> 4);
      000A84 AD 4F            [24] 3520 	mov	r5,(_Data + 0x0003)
      000A86 7C 00            [12] 3521 	mov	r4,#0x00
      000A88 AA 4E            [24] 3522 	mov	r2,(_Data + 0x0002)
      000A8A 7B 00            [12] 3523 	mov	r3,#0x00
      000A8C EA               [12] 3524 	mov	a,r2
      000A8D 42 04            [12] 3525 	orl	ar4,a
      000A8F EB               [12] 3526 	mov	a,r3
      000A90 42 05            [12] 3527 	orl	ar5,a
      000A92 ED               [12] 3528 	mov	a,r5
      000A93 C4               [12] 3529 	swap	a
      000A94 CC               [12] 3530 	xch	a,r4
      000A95 C4               [12] 3531 	swap	a
      000A96 54 0F            [12] 3532 	anl	a,#0x0f
      000A98 6C               [12] 3533 	xrl	a,r4
      000A99 CC               [12] 3534 	xch	a,r4
      000A9A 54 0F            [12] 3535 	anl	a,#0x0f
      000A9C CC               [12] 3536 	xch	a,r4
      000A9D 6C               [12] 3537 	xrl	a,r4
      000A9E CC               [12] 3538 	xch	a,r4
      000A9F 30 E3 02         [24] 3539 	jnb	acc.3,00124$
      000AA2 44 F0            [12] 3540 	orl	a,#0xf0
      000AA4                       3541 00124$:
      000AA4 FD               [12] 3542 	mov	r5,a
      000AA5 EC               [12] 3543 	mov	a,r4
      000AA6 25 63            [12] 3544 	add	a,_avg_gy
      000AA8 F5 63            [12] 3545 	mov	_avg_gy,a
      000AAA ED               [12] 3546 	mov	a,r5
      000AAB 35 64            [12] 3547 	addc	a,(_avg_gy + 1)
      000AAD F5 64            [12] 3548 	mov	(_avg_gy + 1),a
                           0009B5  3549 	C$lab_5.c$367$1$181 ==.
                                   3550 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:367: for (i = 0; i < 64; i++) { //average of 64 trials for calibration data
      000AAF 0E               [12] 3551 	inc	r6
      000AB0 BE 40 00         [24] 3552 	cjne	r6,#0x40,00125$
      000AB3                       3553 00125$:
      000AB3 50 03            [24] 3554 	jnc	00126$
      000AB5 02 09 F9         [24] 3555 	ljmp	00105$
      000AB8                       3556 00126$:
                           0009BE  3557 	C$lab_5.c$382$1$181 ==.
                                   3558 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:382: x0 = avg_gx / 64; 
      000AB8 75 11 40         [24] 3559 	mov	__divsint_PARM_2,#0x40
      000ABB 75 12 00         [24] 3560 	mov	(__divsint_PARM_2 + 1),#0x00
      000ABE 85 61 82         [24] 3561 	mov	dpl,_avg_gx
      000AC1 85 62 83         [24] 3562 	mov	dph,(_avg_gx + 1)
      000AC4 12 19 36         [24] 3563 	lcall	__divsint
      000AC7 85 82 54         [24] 3564 	mov	_x0,dpl
      000ACA 85 83 55         [24] 3565 	mov	(_x0 + 1),dph
                           0009D3  3566 	C$lab_5.c$383$1$181 ==.
                                   3567 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:383: y0 = avg_gy / 64;
      000ACD 75 11 40         [24] 3568 	mov	__divsint_PARM_2,#0x40
      000AD0 75 12 00         [24] 3569 	mov	(__divsint_PARM_2 + 1),#0x00
      000AD3 85 63 82         [24] 3570 	mov	dpl,_avg_gy
      000AD6 85 64 83         [24] 3571 	mov	dph,(_avg_gy + 1)
      000AD9 12 19 36         [24] 3572 	lcall	__divsint
      000ADC 85 82 56         [24] 3573 	mov	_y0,dpl
      000ADF 85 83 57         [24] 3574 	mov	(_y0 + 1),dph
                           0009E8  3575 	C$lab_5.c$385$1$181 ==.
                           0009E8  3576 	XG$calibration$0$0 ==.
      000AE2 22               [24] 3577 	ret
                                   3578 ;------------------------------------------------------------
                                   3579 ;Allocation info for local variables in function 'read_accels'
                                   3580 ;------------------------------------------------------------
                                   3581 ;addr                      Allocated to registers r7 
                                   3582 ;i                         Allocated to registers 
                                   3583 ;------------------------------------------------------------
                           0009E9  3584 	G$read_accels$0$0 ==.
                           0009E9  3585 	C$lab_5.c$387$1$181 ==.
                                   3586 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:387: void read_accels(void)
                                   3587 ;	-----------------------------------------
                                   3588 ;	 function read_accels
                                   3589 ;	-----------------------------------------
      000AE3                       3590 _read_accels:
                           0009E9  3591 	C$lab_5.c$389$1$181 ==.
                                   3592 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:389: unsigned char addr = 0x3A; // the address of the accel
      000AE3 7F 3A            [12] 3593 	mov	r7,#0x3a
                           0009EB  3594 	C$lab_5.c$392$1$185 ==.
                                   3595 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:392: avg_gx = 0;
      000AE5 E4               [12] 3596 	clr	a
      000AE6 F5 61            [12] 3597 	mov	_avg_gx,a
      000AE8 F5 62            [12] 3598 	mov	(_avg_gx + 1),a
                           0009F0  3599 	C$lab_5.c$393$1$185 ==.
                                   3600 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:393: avg_gy = 0;
      000AEA F5 63            [12] 3601 	mov	_avg_gy,a
      000AEC F5 64            [12] 3602 	mov	(_avg_gy + 1),a
                           0009F4  3603 	C$lab_5.c$395$1$185 ==.
                                   3604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:395: for (i = 0; i < 8; i++) {
      000AEE 7E 00            [12] 3605 	mov	r6,#0x00
      000AF0                       3606 00105$:
                           0009F6  3607 	C$lab_5.c$397$2$186 ==.
                                   3608 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:397: i2c_read_data(addr, 0x27, Data, 2);
      000AF0 75 32 4C         [24] 3609 	mov	_i2c_read_data_PARM_3,#_Data
      000AF3 75 33 00         [24] 3610 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000AF6 75 34 40         [24] 3611 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000AF9 75 31 27         [24] 3612 	mov	_i2c_read_data_PARM_2,#0x27
      000AFC 75 35 02         [24] 3613 	mov	_i2c_read_data_PARM_4,#0x02
      000AFF 8F 82            [24] 3614 	mov	dpl,r7
      000B01 C0 07            [24] 3615 	push	ar7
      000B03 C0 06            [24] 3616 	push	ar6
      000B05 12 05 00         [24] 3617 	lcall	_i2c_read_data
      000B08 D0 06            [24] 3618 	pop	ar6
      000B0A D0 07            [24] 3619 	pop	ar7
                           000A12  3620 	C$lab_5.c$399$2$186 ==.
                                   3621 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:399: while ((Data[0] & 0x03) != 0x03) {
      000B0C                       3622 00101$:
      000B0C 74 03            [12] 3623 	mov	a,#0x03
      000B0E 55 4C            [12] 3624 	anl	a,_Data
      000B10 FD               [12] 3625 	mov	r5,a
      000B11 BD 03 02         [24] 3626 	cjne	r5,#0x03,00122$
      000B14 80 1E            [24] 3627 	sjmp	00103$
      000B16                       3628 00122$:
                           000A1C  3629 	C$lab_5.c$400$3$187 ==.
                                   3630 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:400: i2c_read_data(addr, 0x27, Data, 2);
      000B16 75 32 4C         [24] 3631 	mov	_i2c_read_data_PARM_3,#_Data
      000B19 75 33 00         [24] 3632 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000B1C 75 34 40         [24] 3633 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000B1F 75 31 27         [24] 3634 	mov	_i2c_read_data_PARM_2,#0x27
      000B22 75 35 02         [24] 3635 	mov	_i2c_read_data_PARM_4,#0x02
      000B25 8F 82            [24] 3636 	mov	dpl,r7
      000B27 C0 07            [24] 3637 	push	ar7
      000B29 C0 06            [24] 3638 	push	ar6
      000B2B 12 05 00         [24] 3639 	lcall	_i2c_read_data
      000B2E D0 06            [24] 3640 	pop	ar6
      000B30 D0 07            [24] 3641 	pop	ar7
      000B32 80 D8            [24] 3642 	sjmp	00101$
      000B34                       3643 00103$:
                           000A3A  3644 	C$lab_5.c$404$2$186 ==.
                                   3645 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:404: i2c_read_data(addr, 0x28|0x80, Data, 4);
      000B34 75 32 4C         [24] 3646 	mov	_i2c_read_data_PARM_3,#_Data
      000B37 75 33 00         [24] 3647 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000B3A 75 34 40         [24] 3648 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000B3D 75 31 A8         [24] 3649 	mov	_i2c_read_data_PARM_2,#0xa8
      000B40 75 35 04         [24] 3650 	mov	_i2c_read_data_PARM_4,#0x04
      000B43 8F 82            [24] 3651 	mov	dpl,r7
      000B45 C0 07            [24] 3652 	push	ar7
      000B47 C0 06            [24] 3653 	push	ar6
      000B49 12 05 00         [24] 3654 	lcall	_i2c_read_data
      000B4C D0 06            [24] 3655 	pop	ar6
      000B4E D0 07            [24] 3656 	pop	ar7
                           000A56  3657 	C$lab_5.c$406$2$186 ==.
                                   3658 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:406: avg_gx += ((Data[1] << 8 | Data[0]) >> 4);
      000B50 AD 4D            [24] 3659 	mov	r5,(_Data + 0x0001)
      000B52 7C 00            [12] 3660 	mov	r4,#0x00
      000B54 AA 4C            [24] 3661 	mov	r2,_Data
      000B56 7B 00            [12] 3662 	mov	r3,#0x00
      000B58 EA               [12] 3663 	mov	a,r2
      000B59 42 04            [12] 3664 	orl	ar4,a
      000B5B EB               [12] 3665 	mov	a,r3
      000B5C 42 05            [12] 3666 	orl	ar5,a
      000B5E ED               [12] 3667 	mov	a,r5
      000B5F C4               [12] 3668 	swap	a
      000B60 CC               [12] 3669 	xch	a,r4
      000B61 C4               [12] 3670 	swap	a
      000B62 54 0F            [12] 3671 	anl	a,#0x0f
      000B64 6C               [12] 3672 	xrl	a,r4
      000B65 CC               [12] 3673 	xch	a,r4
      000B66 54 0F            [12] 3674 	anl	a,#0x0f
      000B68 CC               [12] 3675 	xch	a,r4
      000B69 6C               [12] 3676 	xrl	a,r4
      000B6A CC               [12] 3677 	xch	a,r4
      000B6B 30 E3 02         [24] 3678 	jnb	acc.3,00123$
      000B6E 44 F0            [12] 3679 	orl	a,#0xf0
      000B70                       3680 00123$:
      000B70 FD               [12] 3681 	mov	r5,a
      000B71 EC               [12] 3682 	mov	a,r4
      000B72 25 61            [12] 3683 	add	a,_avg_gx
      000B74 F5 61            [12] 3684 	mov	_avg_gx,a
      000B76 ED               [12] 3685 	mov	a,r5
      000B77 35 62            [12] 3686 	addc	a,(_avg_gx + 1)
      000B79 F5 62            [12] 3687 	mov	(_avg_gx + 1),a
                           000A81  3688 	C$lab_5.c$407$2$186 ==.
                                   3689 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:407: avg_gy += ((Data[3] << 8 | Data[2]) >> 4);
      000B7B AD 4F            [24] 3690 	mov	r5,(_Data + 0x0003)
      000B7D 7C 00            [12] 3691 	mov	r4,#0x00
      000B7F AA 4E            [24] 3692 	mov	r2,(_Data + 0x0002)
      000B81 7B 00            [12] 3693 	mov	r3,#0x00
      000B83 EA               [12] 3694 	mov	a,r2
      000B84 42 04            [12] 3695 	orl	ar4,a
      000B86 EB               [12] 3696 	mov	a,r3
      000B87 42 05            [12] 3697 	orl	ar5,a
      000B89 ED               [12] 3698 	mov	a,r5
      000B8A C4               [12] 3699 	swap	a
      000B8B CC               [12] 3700 	xch	a,r4
      000B8C C4               [12] 3701 	swap	a
      000B8D 54 0F            [12] 3702 	anl	a,#0x0f
      000B8F 6C               [12] 3703 	xrl	a,r4
      000B90 CC               [12] 3704 	xch	a,r4
      000B91 54 0F            [12] 3705 	anl	a,#0x0f
      000B93 CC               [12] 3706 	xch	a,r4
      000B94 6C               [12] 3707 	xrl	a,r4
      000B95 CC               [12] 3708 	xch	a,r4
      000B96 30 E3 02         [24] 3709 	jnb	acc.3,00124$
      000B99 44 F0            [12] 3710 	orl	a,#0xf0
      000B9B                       3711 00124$:
      000B9B FD               [12] 3712 	mov	r5,a
      000B9C EC               [12] 3713 	mov	a,r4
      000B9D 25 63            [12] 3714 	add	a,_avg_gy
      000B9F F5 63            [12] 3715 	mov	_avg_gy,a
      000BA1 ED               [12] 3716 	mov	a,r5
      000BA2 35 64            [12] 3717 	addc	a,(_avg_gy + 1)
      000BA4 F5 64            [12] 3718 	mov	(_avg_gy + 1),a
                           000AAC  3719 	C$lab_5.c$395$1$185 ==.
                                   3720 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:395: for (i = 0; i < 8; i++) {
      000BA6 0E               [12] 3721 	inc	r6
      000BA7 BE 08 00         [24] 3722 	cjne	r6,#0x08,00125$
      000BAA                       3723 00125$:
      000BAA 50 03            [24] 3724 	jnc	00126$
      000BAC 02 0A F0         [24] 3725 	ljmp	00105$
      000BAF                       3726 00126$:
                           000AB5  3727 	C$lab_5.c$410$1$185 ==.
                                   3728 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:410: avg_gx = avg_gx >> 3;
      000BAF E5 62            [12] 3729 	mov	a,(_avg_gx + 1)
      000BB1 C4               [12] 3730 	swap	a
      000BB2 23               [12] 3731 	rl	a
      000BB3 C5 61            [12] 3732 	xch	a,_avg_gx
      000BB5 C4               [12] 3733 	swap	a
      000BB6 23               [12] 3734 	rl	a
      000BB7 54 1F            [12] 3735 	anl	a,#0x1f
      000BB9 65 61            [12] 3736 	xrl	a,_avg_gx
      000BBB C5 61            [12] 3737 	xch	a,_avg_gx
      000BBD 54 1F            [12] 3738 	anl	a,#0x1f
      000BBF C5 61            [12] 3739 	xch	a,_avg_gx
      000BC1 65 61            [12] 3740 	xrl	a,_avg_gx
      000BC3 C5 61            [12] 3741 	xch	a,_avg_gx
      000BC5 30 E4 02         [24] 3742 	jnb	acc.4,00127$
      000BC8 44 E0            [12] 3743 	orl	a,#0xe0
      000BCA                       3744 00127$:
      000BCA F5 62            [12] 3745 	mov	(_avg_gx + 1),a
                           000AD2  3746 	C$lab_5.c$411$1$185 ==.
                                   3747 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:411: avg_gy = avg_gy >> 3;
      000BCC E5 64            [12] 3748 	mov	a,(_avg_gy + 1)
      000BCE C4               [12] 3749 	swap	a
      000BCF 23               [12] 3750 	rl	a
      000BD0 C5 63            [12] 3751 	xch	a,_avg_gy
      000BD2 C4               [12] 3752 	swap	a
      000BD3 23               [12] 3753 	rl	a
      000BD4 54 1F            [12] 3754 	anl	a,#0x1f
      000BD6 65 63            [12] 3755 	xrl	a,_avg_gy
      000BD8 C5 63            [12] 3756 	xch	a,_avg_gy
      000BDA 54 1F            [12] 3757 	anl	a,#0x1f
      000BDC C5 63            [12] 3758 	xch	a,_avg_gy
      000BDE 65 63            [12] 3759 	xrl	a,_avg_gy
      000BE0 C5 63            [12] 3760 	xch	a,_avg_gy
      000BE2 30 E4 02         [24] 3761 	jnb	acc.4,00128$
      000BE5 44 E0            [12] 3762 	orl	a,#0xe0
      000BE7                       3763 00128$:
      000BE7 F5 64            [12] 3764 	mov	(_avg_gy + 1),a
                           000AEF  3765 	C$lab_5.c$413$1$185 ==.
                                   3766 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:413: gx = avg_gx - x0;
      000BE9 E5 61            [12] 3767 	mov	a,_avg_gx
      000BEB C3               [12] 3768 	clr	c
      000BEC 95 54            [12] 3769 	subb	a,_x0
      000BEE F5 50            [12] 3770 	mov	_gx,a
      000BF0 E5 62            [12] 3771 	mov	a,(_avg_gx + 1)
      000BF2 95 55            [12] 3772 	subb	a,(_x0 + 1)
      000BF4 F5 51            [12] 3773 	mov	(_gx + 1),a
                           000AFC  3774 	C$lab_5.c$414$1$185 ==.
                                   3775 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:414: gy = avg_gy - y0;
      000BF6 E5 63            [12] 3776 	mov	a,_avg_gy
      000BF8 C3               [12] 3777 	clr	c
      000BF9 95 56            [12] 3778 	subb	a,_y0
      000BFB F5 52            [12] 3779 	mov	_gy,a
      000BFD E5 64            [12] 3780 	mov	a,(_avg_gy + 1)
      000BFF 95 57            [12] 3781 	subb	a,(_y0 + 1)
      000C01 F5 53            [12] 3782 	mov	(_gy + 1),a
                           000B09  3783 	C$lab_5.c$416$1$185 ==.
                           000B09  3784 	XG$read_accels$0$0 ==.
      000C03 22               [24] 3785 	ret
                                   3786 ;------------------------------------------------------------
                                   3787 ;Allocation info for local variables in function 'set_servo_PWM'
                                   3788 ;------------------------------------------------------------
                           000B0A  3789 	G$set_servo_PWM$0$0 ==.
                           000B0A  3790 	C$lab_5.c$419$1$185 ==.
                                   3791 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:419: void set_servo_PWM(void)
                                   3792 ;	-----------------------------------------
                                   3793 ;	 function set_servo_PWM
                                   3794 ;	-----------------------------------------
      000C04                       3795 _set_servo_PWM:
                           000B0A  3796 	C$lab_5.c$421$1$189 ==.
                                   3797 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:421: SERVO_PW = SERVO_CENTER + ks * gx;
      000C04 AE 58            [24] 3798 	mov	r6,_ks
      000C06 7F 00            [12] 3799 	mov	r7,#0x00
      000C08 85 50 11         [24] 3800 	mov	__mulint_PARM_2,_gx
      000C0B 85 51 12         [24] 3801 	mov	(__mulint_PARM_2 + 1),(_gx + 1)
      000C0E 8E 82            [24] 3802 	mov	dpl,r6
      000C10 8F 83            [24] 3803 	mov	dph,r7
      000C12 12 11 BA         [24] 3804 	lcall	__mulint
      000C15 AE 82            [24] 3805 	mov	r6,dpl
      000C17 AF 83            [24] 3806 	mov	r7,dph
      000C19 EE               [12] 3807 	mov	a,r6
      000C1A 25 3E            [12] 3808 	add	a,_SERVO_CENTER
      000C1C F5 44            [12] 3809 	mov	_SERVO_PW,a
      000C1E EF               [12] 3810 	mov	a,r7
      000C1F 35 3F            [12] 3811 	addc	a,(_SERVO_CENTER + 1)
      000C21 F5 45            [12] 3812 	mov	(_SERVO_PW + 1),a
                           000B29  3813 	C$lab_5.c$423$1$189 ==.
                                   3814 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:423: if (SERVO_PW > SERVO_RIGHT) {
      000C23 C3               [12] 3815 	clr	c
      000C24 E5 40            [12] 3816 	mov	a,_SERVO_RIGHT
      000C26 95 44            [12] 3817 	subb	a,_SERVO_PW
      000C28 E5 41            [12] 3818 	mov	a,(_SERVO_RIGHT + 1)
      000C2A 95 45            [12] 3819 	subb	a,(_SERVO_PW + 1)
      000C2C 50 06            [24] 3820 	jnc	00102$
                           000B34  3821 	C$lab_5.c$424$2$190 ==.
                                   3822 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:424: SERVO_PW = SERVO_RIGHT;
      000C2E 85 40 44         [24] 3823 	mov	_SERVO_PW,_SERVO_RIGHT
      000C31 85 41 45         [24] 3824 	mov	(_SERVO_PW + 1),(_SERVO_RIGHT + 1)
      000C34                       3825 00102$:
                           000B3A  3826 	C$lab_5.c$427$1$189 ==.
                                   3827 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:427: if (SERVO_PW < SERVO_LEFT) {
      000C34 C3               [12] 3828 	clr	c
      000C35 E5 44            [12] 3829 	mov	a,_SERVO_PW
      000C37 95 42            [12] 3830 	subb	a,_SERVO_LEFT
      000C39 E5 45            [12] 3831 	mov	a,(_SERVO_PW + 1)
      000C3B 95 43            [12] 3832 	subb	a,(_SERVO_LEFT + 1)
      000C3D 50 06            [24] 3833 	jnc	00104$
                           000B45  3834 	C$lab_5.c$428$2$191 ==.
                                   3835 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:428: SERVO_PW = SERVO_LEFT;
      000C3F 85 42 44         [24] 3836 	mov	_SERVO_PW,_SERVO_LEFT
      000C42 85 43 45         [24] 3837 	mov	(_SERVO_PW + 1),(_SERVO_LEFT + 1)
      000C45                       3838 00104$:
                           000B4B  3839 	C$lab_5.c$431$1$189 ==.
                                   3840 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:431: PCA0CP0 = 0xFFFF - SERVO_PW;
      000C45 74 FF            [12] 3841 	mov	a,#0xff
      000C47 C3               [12] 3842 	clr	c
      000C48 95 44            [12] 3843 	subb	a,_SERVO_PW
      000C4A F5 EA            [12] 3844 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000C4C 74 FF            [12] 3845 	mov	a,#0xff
      000C4E 95 45            [12] 3846 	subb	a,(_SERVO_PW + 1)
      000C50 F5 FA            [12] 3847 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000B58  3848 	C$lab_5.c$432$1$189 ==.
                           000B58  3849 	XG$set_servo_PWM$0$0 ==.
      000C52 22               [24] 3850 	ret
                                   3851 ;------------------------------------------------------------
                                   3852 ;Allocation info for local variables in function 'set_drive_PWM'
                                   3853 ;------------------------------------------------------------
                           000B59  3854 	G$set_drive_PWM$0$0 ==.
                           000B59  3855 	C$lab_5.c$435$1$189 ==.
                                   3856 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:435: void set_drive_PWM(void)
                                   3857 ;	-----------------------------------------
                                   3858 ;	 function set_drive_PWM
                                   3859 ;	-----------------------------------------
      000C53                       3860 _set_drive_PWM:
                           000B59  3861 	C$lab_5.c$437$1$193 ==.
                                   3862 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:437: kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
      000C53 75 65 32         [24] 3863 	mov	_read_AD_input_PARM_2,#0x32
      000C56 75 82 04         [24] 3864 	mov	dpl,#0x04
      000C59 12 09 7A         [24] 3865 	lcall	_read_AD_input
      000C5C 85 82 5A         [24] 3866 	mov	_kdy,dpl
                           000B65  3867 	C$lab_5.c$438$1$193 ==.
                                   3868 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:438: MOTOR_PW = MOTOR_STOP - (kdy * (3/4)) * gy; //kdy adjustment to even out forward vs reverse speeds
      000C5F 85 36 3C         [24] 3869 	mov	_MOTOR_PW,_MOTOR_STOP
      000C62 85 37 3D         [24] 3870 	mov	(_MOTOR_PW + 1),(_MOTOR_STOP + 1)
                           000B6B  3871 	C$lab_5.c$439$1$193 ==.
                                   3872 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:439: MOTOR_PW += kdx * abs(gx);
      000C65 85 50 82         [24] 3873 	mov	dpl,_gx
      000C68 85 51 83         [24] 3874 	mov	dph,(_gx + 1)
      000C6B 12 11 AD         [24] 3875 	lcall	_abs
      000C6E 85 82 11         [24] 3876 	mov	__mulint_PARM_2,dpl
      000C71 85 83 12         [24] 3877 	mov	(__mulint_PARM_2 + 1),dph
      000C74 AE 59            [24] 3878 	mov	r6,_kdx
      000C76 7F 00            [12] 3879 	mov	r7,#0x00
      000C78 8E 82            [24] 3880 	mov	dpl,r6
      000C7A 8F 83            [24] 3881 	mov	dph,r7
      000C7C 12 11 BA         [24] 3882 	lcall	__mulint
      000C7F AE 82            [24] 3883 	mov	r6,dpl
      000C81 AF 83            [24] 3884 	mov	r7,dph
      000C83 EE               [12] 3885 	mov	a,r6
      000C84 25 3C            [12] 3886 	add	a,_MOTOR_PW
      000C86 F5 3C            [12] 3887 	mov	_MOTOR_PW,a
      000C88 EF               [12] 3888 	mov	a,r7
      000C89 35 3D            [12] 3889 	addc	a,(_MOTOR_PW + 1)
      000C8B F5 3D            [12] 3890 	mov	(_MOTOR_PW + 1),a
                           000B93  3891 	C$lab_5.c$442$1$193 ==.
                                   3892 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:442: if (MOTOR_PW > MOTOR_MAX) {
      000C8D C3               [12] 3893 	clr	c
      000C8E E5 38            [12] 3894 	mov	a,_MOTOR_MAX
      000C90 95 3C            [12] 3895 	subb	a,_MOTOR_PW
      000C92 E5 39            [12] 3896 	mov	a,(_MOTOR_MAX + 1)
      000C94 95 3D            [12] 3897 	subb	a,(_MOTOR_PW + 1)
      000C96 50 06            [24] 3898 	jnc	00102$
                           000B9E  3899 	C$lab_5.c$443$2$194 ==.
                                   3900 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:443: MOTOR_PW = MOTOR_MAX;
      000C98 85 38 3C         [24] 3901 	mov	_MOTOR_PW,_MOTOR_MAX
      000C9B 85 39 3D         [24] 3902 	mov	(_MOTOR_PW + 1),(_MOTOR_MAX + 1)
      000C9E                       3903 00102$:
                           000BA4  3904 	C$lab_5.c$446$1$193 ==.
                                   3905 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:446: if (MOTOR_PW < MOTOR_MIN) {
      000C9E C3               [12] 3906 	clr	c
      000C9F E5 3C            [12] 3907 	mov	a,_MOTOR_PW
      000CA1 95 3A            [12] 3908 	subb	a,_MOTOR_MIN
      000CA3 E5 3D            [12] 3909 	mov	a,(_MOTOR_PW + 1)
      000CA5 95 3B            [12] 3910 	subb	a,(_MOTOR_MIN + 1)
      000CA7 50 06            [24] 3911 	jnc	00104$
                           000BAF  3912 	C$lab_5.c$447$2$195 ==.
                                   3913 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:447: MOTOR_PW = MOTOR_MIN;
      000CA9 85 3A 3C         [24] 3914 	mov	_MOTOR_PW,_MOTOR_MIN
      000CAC 85 3B 3D         [24] 3915 	mov	(_MOTOR_PW + 1),(_MOTOR_MIN + 1)
      000CAF                       3916 00104$:
                           000BB5  3917 	C$lab_5.c$450$1$193 ==.
                                   3918 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:450: PCA0CP2 = 0xFFFF - MOTOR_PW;
      000CAF 74 FF            [12] 3919 	mov	a,#0xff
      000CB1 C3               [12] 3920 	clr	c
      000CB2 95 3C            [12] 3921 	subb	a,_MOTOR_PW
      000CB4 F5 EC            [12] 3922 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000CB6 74 FF            [12] 3923 	mov	a,#0xff
      000CB8 95 3D            [12] 3924 	subb	a,(_MOTOR_PW + 1)
      000CBA F5 FC            [12] 3925 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000BC2  3926 	C$lab_5.c$452$1$193 ==.
                           000BC2  3927 	XG$set_drive_PWM$0$0 ==.
      000CBC 22               [24] 3928 	ret
                                   3929 ;------------------------------------------------------------
                                   3930 ;Allocation info for local variables in function 'set_gains'
                                   3931 ;------------------------------------------------------------
                                   3932 ;keypad                    Allocated to registers r7 
                                   3933 ;var                       Allocated to registers r6 
                                   3934 ;var                       Allocated to registers r6 
                                   3935 ;------------------------------------------------------------
                           000BC3  3936 	G$set_gains$0$0 ==.
                           000BC3  3937 	C$lab_5.c$455$1$193 ==.
                                   3938 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:455: void set_gains(void) {
                                   3939 ;	-----------------------------------------
                                   3940 ;	 function set_gains
                                   3941 ;	-----------------------------------------
      000CBD                       3942 _set_gains:
                           000BC3  3943 	C$lab_5.c$457$1$197 ==.
                                   3944 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:457: lcd_clear();
      000CBD 12 01 FA         [24] 3945 	lcall	_lcd_clear
                           000BC6  3946 	C$lab_5.c$458$1$197 ==.
                                   3947 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:458: lcd_print("Pick Gain\nPress a Number\n1: 1 2: 2 3: 3\n4: 4 0: custom");
      000CC0 74 31            [12] 3948 	mov	a,#___str_11
      000CC2 C0 E0            [24] 3949 	push	acc
      000CC4 74 1A            [12] 3950 	mov	a,#(___str_11 >> 8)
      000CC6 C0 E0            [24] 3951 	push	acc
      000CC8 74 80            [12] 3952 	mov	a,#0x80
      000CCA C0 E0            [24] 3953 	push	acc
      000CCC 12 01 75         [24] 3954 	lcall	_lcd_print
      000CCF 15 81            [12] 3955 	dec	sp
      000CD1 15 81            [12] 3956 	dec	sp
      000CD3 15 81            [12] 3957 	dec	sp
                           000BDB  3958 	C$lab_5.c$459$1$197 ==.
                                   3959 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:459: while (1) {
      000CD5                       3960 00145$:
                           000BDB  3961 	C$lab_5.c$460$2$198 ==.
                                   3962 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:460: keypad = read_keypad();
      000CD5 12 02 33         [24] 3963 	lcall	_read_keypad
      000CD8 AF 82            [24] 3964 	mov	r7,dpl
                           000BE0  3965 	C$lab_5.c$461$2$198 ==.
                                   3966 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:461: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms)
      000CDA C0 07            [24] 3967 	push	ar7
      000CDC 12 09 58         [24] 3968 	lcall	_pause
      000CDF D0 07            [24] 3969 	pop	ar7
                           000BE7  3970 	C$lab_5.c$464$2$198 ==.
                                   3971 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:464: if (keypad != 0xFF) {
      000CE1 BF FF 02         [24] 3972 	cjne	r7,#0xff,00297$
      000CE4 80 EF            [24] 3973 	sjmp	00145$
      000CE6                       3974 00297$:
                           000BEC  3975 	C$lab_5.c$465$3$199 ==.
                                   3976 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:465: while (read_keypad() != 0xFF);
      000CE6                       3977 00101$:
      000CE6 C0 07            [24] 3978 	push	ar7
      000CE8 12 02 33         [24] 3979 	lcall	_read_keypad
      000CEB AE 82            [24] 3980 	mov	r6,dpl
      000CED D0 07            [24] 3981 	pop	ar7
      000CEF BE FF F4         [24] 3982 	cjne	r6,#0xff,00101$
                           000BF8  3983 	C$lab_5.c$466$3$199 ==.
                                   3984 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:466: lcd_clear();
      000CF2 C0 07            [24] 3985 	push	ar7
      000CF4 12 01 FA         [24] 3986 	lcall	_lcd_clear
      000CF7 D0 07            [24] 3987 	pop	ar7
                           000BFF  3988 	C$lab_5.c$467$3$199 ==.
                                   3989 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:467: if (keypad == 0x31) { //if they enter a 1
      000CF9 BF 31 36         [24] 3990 	cjne	r7,#0x31,00140$
                           000C02  3991 	C$lab_5.c$468$4$200 ==.
                                   3992 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:468: lcd_clear();
      000CFC 12 01 FA         [24] 3993 	lcall	_lcd_clear
                           000C05  3994 	C$lab_5.c$469$4$200 ==.
                                   3995 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:469: lcd_print("Gain: 1");
      000CFF 74 68            [12] 3996 	mov	a,#___str_12
      000D01 C0 E0            [24] 3997 	push	acc
      000D03 74 1A            [12] 3998 	mov	a,#(___str_12 >> 8)
      000D05 C0 E0            [24] 3999 	push	acc
      000D07 74 80            [12] 4000 	mov	a,#0x80
      000D09 C0 E0            [24] 4001 	push	acc
      000D0B 12 01 75         [24] 4002 	lcall	_lcd_print
      000D0E 15 81            [12] 4003 	dec	sp
      000D10 15 81            [12] 4004 	dec	sp
      000D12 15 81            [12] 4005 	dec	sp
                           000C1A  4006 	C$lab_5.c$470$4$200 ==.
                                   4007 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:470: printf("Desired Gain: 1");
      000D14 74 70            [12] 4008 	mov	a,#___str_13
      000D16 C0 E0            [24] 4009 	push	acc
      000D18 74 1A            [12] 4010 	mov	a,#(___str_13 >> 8)
      000D1A C0 E0            [24] 4011 	push	acc
      000D1C 74 80            [12] 4012 	mov	a,#0x80
      000D1E C0 E0            [24] 4013 	push	acc
      000D20 12 13 1F         [24] 4014 	lcall	_printf
      000D23 15 81            [12] 4015 	dec	sp
      000D25 15 81            [12] 4016 	dec	sp
      000D27 15 81            [12] 4017 	dec	sp
                           000C2F  4018 	C$lab_5.c$471$4$200 ==.
                                   4019 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:471: wait();
      000D29 12 09 69         [24] 4020 	lcall	_wait
                           000C32  4021 	C$lab_5.c$472$4$200 ==.
                                   4022 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:472: ks = 1;
      000D2C 75 58 01         [24] 4023 	mov	_ks,#0x01
                           000C35  4024 	C$lab_5.c$473$4$200 ==.
                                   4025 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:473: break;
      000D2F 02 0F 25         [24] 4026 	ljmp	00146$
      000D32                       4027 00140$:
                           000C38  4028 	C$lab_5.c$475$3$199 ==.
                                   4029 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:475: else if (keypad == 0x32) { //if they enter a 2
      000D32 BF 32 36         [24] 4030 	cjne	r7,#0x32,00137$
                           000C3B  4031 	C$lab_5.c$476$4$201 ==.
                                   4032 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:476: lcd_clear();
      000D35 12 01 FA         [24] 4033 	lcall	_lcd_clear
                           000C3E  4034 	C$lab_5.c$477$4$201 ==.
                                   4035 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:477: lcd_print("Gain: 2");
      000D38 74 80            [12] 4036 	mov	a,#___str_14
      000D3A C0 E0            [24] 4037 	push	acc
      000D3C 74 1A            [12] 4038 	mov	a,#(___str_14 >> 8)
      000D3E C0 E0            [24] 4039 	push	acc
      000D40 74 80            [12] 4040 	mov	a,#0x80
      000D42 C0 E0            [24] 4041 	push	acc
      000D44 12 01 75         [24] 4042 	lcall	_lcd_print
      000D47 15 81            [12] 4043 	dec	sp
      000D49 15 81            [12] 4044 	dec	sp
      000D4B 15 81            [12] 4045 	dec	sp
                           000C53  4046 	C$lab_5.c$478$4$201 ==.
                                   4047 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:478: printf("Desired Gain: 2");
      000D4D 74 88            [12] 4048 	mov	a,#___str_15
      000D4F C0 E0            [24] 4049 	push	acc
      000D51 74 1A            [12] 4050 	mov	a,#(___str_15 >> 8)
      000D53 C0 E0            [24] 4051 	push	acc
      000D55 74 80            [12] 4052 	mov	a,#0x80
      000D57 C0 E0            [24] 4053 	push	acc
      000D59 12 13 1F         [24] 4054 	lcall	_printf
      000D5C 15 81            [12] 4055 	dec	sp
      000D5E 15 81            [12] 4056 	dec	sp
      000D60 15 81            [12] 4057 	dec	sp
                           000C68  4058 	C$lab_5.c$479$4$201 ==.
                                   4059 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:479: wait();
      000D62 12 09 69         [24] 4060 	lcall	_wait
                           000C6B  4061 	C$lab_5.c$480$4$201 ==.
                                   4062 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:480: ks = 2;
      000D65 75 58 02         [24] 4063 	mov	_ks,#0x02
                           000C6E  4064 	C$lab_5.c$481$4$201 ==.
                                   4065 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:481: break;
      000D68 02 0F 25         [24] 4066 	ljmp	00146$
      000D6B                       4067 00137$:
                           000C71  4068 	C$lab_5.c$483$3$199 ==.
                                   4069 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:483: else if (keypad == 0x33) { //if they enter a 3
      000D6B BF 33 36         [24] 4070 	cjne	r7,#0x33,00134$
                           000C74  4071 	C$lab_5.c$484$4$202 ==.
                                   4072 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:484: lcd_clear();
      000D6E 12 01 FA         [24] 4073 	lcall	_lcd_clear
                           000C77  4074 	C$lab_5.c$485$4$202 ==.
                                   4075 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:485: lcd_print("Gain: 3");
      000D71 74 98            [12] 4076 	mov	a,#___str_16
      000D73 C0 E0            [24] 4077 	push	acc
      000D75 74 1A            [12] 4078 	mov	a,#(___str_16 >> 8)
      000D77 C0 E0            [24] 4079 	push	acc
      000D79 74 80            [12] 4080 	mov	a,#0x80
      000D7B C0 E0            [24] 4081 	push	acc
      000D7D 12 01 75         [24] 4082 	lcall	_lcd_print
      000D80 15 81            [12] 4083 	dec	sp
      000D82 15 81            [12] 4084 	dec	sp
      000D84 15 81            [12] 4085 	dec	sp
                           000C8C  4086 	C$lab_5.c$486$4$202 ==.
                                   4087 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:486: printf("Desired Gain: 3");
      000D86 74 A0            [12] 4088 	mov	a,#___str_17
      000D88 C0 E0            [24] 4089 	push	acc
      000D8A 74 1A            [12] 4090 	mov	a,#(___str_17 >> 8)
      000D8C C0 E0            [24] 4091 	push	acc
      000D8E 74 80            [12] 4092 	mov	a,#0x80
      000D90 C0 E0            [24] 4093 	push	acc
      000D92 12 13 1F         [24] 4094 	lcall	_printf
      000D95 15 81            [12] 4095 	dec	sp
      000D97 15 81            [12] 4096 	dec	sp
      000D99 15 81            [12] 4097 	dec	sp
                           000CA1  4098 	C$lab_5.c$487$4$202 ==.
                                   4099 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:487: wait();
      000D9B 12 09 69         [24] 4100 	lcall	_wait
                           000CA4  4101 	C$lab_5.c$488$4$202 ==.
                                   4102 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:488: ks = 3;
      000D9E 75 58 03         [24] 4103 	mov	_ks,#0x03
                           000CA7  4104 	C$lab_5.c$489$4$202 ==.
                                   4105 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:489: break;
      000DA1 02 0F 25         [24] 4106 	ljmp	00146$
      000DA4                       4107 00134$:
                           000CAA  4108 	C$lab_5.c$491$3$199 ==.
                                   4109 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:491: else if (keypad == 0x34) { //if they enter a 4
      000DA4 BF 34 36         [24] 4110 	cjne	r7,#0x34,00131$
                           000CAD  4111 	C$lab_5.c$492$4$203 ==.
                                   4112 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:492: lcd_clear();
      000DA7 12 01 FA         [24] 4113 	lcall	_lcd_clear
                           000CB0  4114 	C$lab_5.c$493$4$203 ==.
                                   4115 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:493: lcd_print("Gain: 4");
      000DAA 74 B0            [12] 4116 	mov	a,#___str_18
      000DAC C0 E0            [24] 4117 	push	acc
      000DAE 74 1A            [12] 4118 	mov	a,#(___str_18 >> 8)
      000DB0 C0 E0            [24] 4119 	push	acc
      000DB2 74 80            [12] 4120 	mov	a,#0x80
      000DB4 C0 E0            [24] 4121 	push	acc
      000DB6 12 01 75         [24] 4122 	lcall	_lcd_print
      000DB9 15 81            [12] 4123 	dec	sp
      000DBB 15 81            [12] 4124 	dec	sp
      000DBD 15 81            [12] 4125 	dec	sp
                           000CC5  4126 	C$lab_5.c$494$4$203 ==.
                                   4127 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:494: printf("Desired Gain: 4");
      000DBF 74 B8            [12] 4128 	mov	a,#___str_19
      000DC1 C0 E0            [24] 4129 	push	acc
      000DC3 74 1A            [12] 4130 	mov	a,#(___str_19 >> 8)
      000DC5 C0 E0            [24] 4131 	push	acc
      000DC7 74 80            [12] 4132 	mov	a,#0x80
      000DC9 C0 E0            [24] 4133 	push	acc
      000DCB 12 13 1F         [24] 4134 	lcall	_printf
      000DCE 15 81            [12] 4135 	dec	sp
      000DD0 15 81            [12] 4136 	dec	sp
      000DD2 15 81            [12] 4137 	dec	sp
                           000CDA  4138 	C$lab_5.c$495$4$203 ==.
                                   4139 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:495: wait();
      000DD4 12 09 69         [24] 4140 	lcall	_wait
                           000CDD  4141 	C$lab_5.c$496$4$203 ==.
                                   4142 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:496: ks = 4;
      000DD7 75 58 04         [24] 4143 	mov	_ks,#0x04
                           000CE0  4144 	C$lab_5.c$497$4$203 ==.
                                   4145 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:497: break;
      000DDA 02 0F 25         [24] 4146 	ljmp	00146$
      000DDD                       4147 00131$:
                           000CE3  4148 	C$lab_5.c$499$3$199 ==.
                                   4149 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:499: else if (keypad == 0x30) { //if they enter a 0
      000DDD BF 30 02         [24] 4150 	cjne	r7,#0x30,00308$
      000DE0 80 03            [24] 4151 	sjmp	00309$
      000DE2                       4152 00308$:
      000DE2 02 0C D5         [24] 4153 	ljmp	00145$
      000DE5                       4154 00309$:
                           000CEB  4155 	C$lab_5.c$501$4$204 ==.
                                   4156 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:501: lcd_clear();
      000DE5 12 01 FA         [24] 4157 	lcall	_lcd_clear
                           000CEE  4158 	C$lab_5.c$502$4$204 ==.
                                   4159 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:502: lcd_print("Enter your number\nStart with 0s\nif need be\nso 45 is 045");
      000DE8 74 C8            [12] 4160 	mov	a,#___str_20
      000DEA C0 E0            [24] 4161 	push	acc
      000DEC 74 1A            [12] 4162 	mov	a,#(___str_20 >> 8)
      000DEE C0 E0            [24] 4163 	push	acc
      000DF0 74 80            [12] 4164 	mov	a,#0x80
      000DF2 C0 E0            [24] 4165 	push	acc
      000DF4 12 01 75         [24] 4166 	lcall	_lcd_print
      000DF7 15 81            [12] 4167 	dec	sp
      000DF9 15 81            [12] 4168 	dec	sp
      000DFB 15 81            [12] 4169 	dec	sp
                           000D03  4170 	C$lab_5.c$503$4$204 ==.
                                   4171 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:503: while (1) {
      000DFD                       4172 00110$:
                           000D03  4173 	C$lab_5.c$504$5$205 ==.
                                   4174 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:504: keypad = read_keypad();
      000DFD 12 02 33         [24] 4175 	lcall	_read_keypad
      000E00 AF 82            [24] 4176 	mov	r7,dpl
                           000D08  4177 	C$lab_5.c$505$5$205 ==.
                                   4178 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:505: pause();
      000E02 C0 07            [24] 4179 	push	ar7
      000E04 12 09 58         [24] 4180 	lcall	_pause
      000E07 D0 07            [24] 4181 	pop	ar7
                           000D0F  4182 	C$lab_5.c$506$5$205 ==.
                                   4183 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:506: if (keypad != 0xFF) {
      000E09 BF FF 02         [24] 4184 	cjne	r7,#0xff,00310$
      000E0C 80 EF            [24] 4185 	sjmp	00110$
      000E0E                       4186 00310$:
                           000D14  4187 	C$lab_5.c$507$6$206 ==.
                                   4188 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:507: while (read_keypad() != 0xFF);
      000E0E                       4189 00104$:
      000E0E C0 07            [24] 4190 	push	ar7
      000E10 12 02 33         [24] 4191 	lcall	_read_keypad
      000E13 AE 82            [24] 4192 	mov	r6,dpl
      000E15 D0 07            [24] 4193 	pop	ar7
      000E17 BE FF F4         [24] 4194 	cjne	r6,#0xff,00104$
                           000D20  4195 	C$lab_5.c$508$6$206 ==.
                                   4196 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:508: lcd_clear();
      000E1A C0 07            [24] 4197 	push	ar7
      000E1C 12 01 FA         [24] 4198 	lcall	_lcd_clear
      000E1F D0 07            [24] 4199 	pop	ar7
                           000D27  4200 	C$lab_5.c$509$6$206 ==.
                                   4201 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:509: var = (keypad - 0x30) * 100;
      000E21 EF               [12] 4202 	mov	a,r7
      000E22 24 D0            [12] 4203 	add	a,#0xd0
      000E24 75 F0 64         [24] 4204 	mov	b,#0x64
      000E27 A4               [48] 4205 	mul	ab
                           000D2E  4206 	C$lab_5.c$510$6$206 ==.
                                   4207 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:510: lcd_print("%i", var);
      000E28 FE               [12] 4208 	mov	r6,a
      000E29 FC               [12] 4209 	mov	r4,a
      000E2A 7D 00            [12] 4210 	mov	r5,#0x00
      000E2C C0 06            [24] 4211 	push	ar6
      000E2E C0 04            [24] 4212 	push	ar4
      000E30 C0 05            [24] 4213 	push	ar5
      000E32 74 00            [12] 4214 	mov	a,#___str_21
      000E34 C0 E0            [24] 4215 	push	acc
      000E36 74 1B            [12] 4216 	mov	a,#(___str_21 >> 8)
      000E38 C0 E0            [24] 4217 	push	acc
      000E3A 74 80            [12] 4218 	mov	a,#0x80
      000E3C C0 E0            [24] 4219 	push	acc
      000E3E 12 01 75         [24] 4220 	lcall	_lcd_print
      000E41 E5 81            [12] 4221 	mov	a,sp
      000E43 24 FB            [12] 4222 	add	a,#0xfb
      000E45 F5 81            [12] 4223 	mov	sp,a
      000E47 D0 06            [24] 4224 	pop	ar6
                           000D4F  4225 	C$lab_5.c$514$4$204 ==.
                                   4226 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:514: while (1) {
      000E49                       4227 00118$:
                           000D4F  4228 	C$lab_5.c$515$5$207 ==.
                                   4229 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:515: keypad = read_keypad();
      000E49 C0 06            [24] 4230 	push	ar6
      000E4B 12 02 33         [24] 4231 	lcall	_read_keypad
      000E4E AF 82            [24] 4232 	mov	r7,dpl
      000E50 D0 06            [24] 4233 	pop	ar6
                           000D58  4234 	C$lab_5.c$516$5$207 ==.
                                   4235 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:516: pause();
      000E52 C0 07            [24] 4236 	push	ar7
      000E54 C0 06            [24] 4237 	push	ar6
      000E56 12 09 58         [24] 4238 	lcall	_pause
      000E59 D0 06            [24] 4239 	pop	ar6
      000E5B D0 07            [24] 4240 	pop	ar7
                           000D63  4241 	C$lab_5.c$517$5$207 ==.
                                   4242 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:517: if (keypad != 0xFF) {
      000E5D BF FF 02         [24] 4243 	cjne	r7,#0xff,00313$
      000E60 80 E7            [24] 4244 	sjmp	00118$
      000E62                       4245 00313$:
                           000D68  4246 	C$lab_5.c$518$6$208 ==.
                                   4247 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:518: while (read_keypad() != 0xFF);
      000E62                       4248 00112$:
      000E62 C0 07            [24] 4249 	push	ar7
      000E64 C0 06            [24] 4250 	push	ar6
      000E66 12 02 33         [24] 4251 	lcall	_read_keypad
      000E69 AD 82            [24] 4252 	mov	r5,dpl
      000E6B D0 06            [24] 4253 	pop	ar6
      000E6D D0 07            [24] 4254 	pop	ar7
      000E6F BD FF F0         [24] 4255 	cjne	r5,#0xff,00112$
                           000D78  4256 	C$lab_5.c$519$6$208 ==.
                                   4257 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:519: lcd_clear();
      000E72 C0 07            [24] 4258 	push	ar7
      000E74 C0 06            [24] 4259 	push	ar6
      000E76 12 01 FA         [24] 4260 	lcall	_lcd_clear
      000E79 D0 06            [24] 4261 	pop	ar6
      000E7B D0 07            [24] 4262 	pop	ar7
                           000D83  4263 	C$lab_5.c$520$6$208 ==.
                                   4264 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:520: var = var + ((keypad - 0x30) * 10);
      000E7D EF               [12] 4265 	mov	a,r7
      000E7E 24 D0            [12] 4266 	add	a,#0xd0
      000E80 75 F0 0A         [24] 4267 	mov	b,#0x0a
      000E83 A4               [48] 4268 	mul	ab
      000E84 2E               [12] 4269 	add	a,r6
                           000D8B  4270 	C$lab_5.c$521$6$208 ==.
                                   4271 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:521: lcd_print("%i", var);
      000E85 FE               [12] 4272 	mov	r6,a
      000E86 FC               [12] 4273 	mov	r4,a
      000E87 7D 00            [12] 4274 	mov	r5,#0x00
      000E89 C0 06            [24] 4275 	push	ar6
      000E8B C0 04            [24] 4276 	push	ar4
      000E8D C0 05            [24] 4277 	push	ar5
      000E8F 74 00            [12] 4278 	mov	a,#___str_21
      000E91 C0 E0            [24] 4279 	push	acc
      000E93 74 1B            [12] 4280 	mov	a,#(___str_21 >> 8)
      000E95 C0 E0            [24] 4281 	push	acc
      000E97 74 80            [12] 4282 	mov	a,#0x80
      000E99 C0 E0            [24] 4283 	push	acc
      000E9B 12 01 75         [24] 4284 	lcall	_lcd_print
      000E9E E5 81            [12] 4285 	mov	a,sp
      000EA0 24 FB            [12] 4286 	add	a,#0xfb
      000EA2 F5 81            [12] 4287 	mov	sp,a
      000EA4 D0 06            [24] 4288 	pop	ar6
                           000DAC  4289 	C$lab_5.c$525$4$204 ==.
                                   4290 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:525: while (1) {
      000EA6                       4291 00126$:
                           000DAC  4292 	C$lab_5.c$526$5$209 ==.
                                   4293 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:526: keypad = read_keypad();
      000EA6 C0 06            [24] 4294 	push	ar6
      000EA8 12 02 33         [24] 4295 	lcall	_read_keypad
      000EAB AF 82            [24] 4296 	mov	r7,dpl
      000EAD D0 06            [24] 4297 	pop	ar6
                           000DB5  4298 	C$lab_5.c$527$5$209 ==.
                                   4299 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:527: pause();
      000EAF C0 07            [24] 4300 	push	ar7
      000EB1 C0 06            [24] 4301 	push	ar6
      000EB3 12 09 58         [24] 4302 	lcall	_pause
      000EB6 D0 06            [24] 4303 	pop	ar6
      000EB8 D0 07            [24] 4304 	pop	ar7
                           000DC0  4305 	C$lab_5.c$528$5$209 ==.
                                   4306 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:528: if (keypad != 0xFF) {
      000EBA BF FF 02         [24] 4307 	cjne	r7,#0xff,00316$
      000EBD 80 E7            [24] 4308 	sjmp	00126$
      000EBF                       4309 00316$:
                           000DC5  4310 	C$lab_5.c$529$6$210 ==.
                                   4311 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:529: while (read_keypad() != 0xFF);
      000EBF                       4312 00120$:
      000EBF C0 07            [24] 4313 	push	ar7
      000EC1 C0 06            [24] 4314 	push	ar6
      000EC3 12 02 33         [24] 4315 	lcall	_read_keypad
      000EC6 AD 82            [24] 4316 	mov	r5,dpl
      000EC8 D0 06            [24] 4317 	pop	ar6
      000ECA D0 07            [24] 4318 	pop	ar7
      000ECC BD FF F0         [24] 4319 	cjne	r5,#0xff,00120$
                           000DD5  4320 	C$lab_5.c$530$6$210 ==.
                                   4321 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:530: lcd_clear();
      000ECF C0 07            [24] 4322 	push	ar7
      000ED1 C0 06            [24] 4323 	push	ar6
      000ED3 12 01 FA         [24] 4324 	lcall	_lcd_clear
      000ED6 D0 06            [24] 4325 	pop	ar6
      000ED8 D0 07            [24] 4326 	pop	ar7
                           000DE0  4327 	C$lab_5.c$531$6$210 ==.
                                   4328 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:531: var = var + (keypad - 0x30);
      000EDA EF               [12] 4329 	mov	a,r7
      000EDB 24 D0            [12] 4330 	add	a,#0xd0
      000EDD 2E               [12] 4331 	add	a,r6
                           000DE4  4332 	C$lab_5.c$532$6$210 ==.
                                   4333 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:532: lcd_print("%i", var);
      000EDE FE               [12] 4334 	mov	r6,a
      000EDF FC               [12] 4335 	mov	r4,a
      000EE0 7D 00            [12] 4336 	mov	r5,#0x00
      000EE2 C0 06            [24] 4337 	push	ar6
      000EE4 C0 05            [24] 4338 	push	ar5
      000EE6 C0 04            [24] 4339 	push	ar4
      000EE8 C0 04            [24] 4340 	push	ar4
      000EEA C0 05            [24] 4341 	push	ar5
      000EEC 74 00            [12] 4342 	mov	a,#___str_21
      000EEE C0 E0            [24] 4343 	push	acc
      000EF0 74 1B            [12] 4344 	mov	a,#(___str_21 >> 8)
      000EF2 C0 E0            [24] 4345 	push	acc
      000EF4 74 80            [12] 4346 	mov	a,#0x80
      000EF6 C0 E0            [24] 4347 	push	acc
      000EF8 12 01 75         [24] 4348 	lcall	_lcd_print
      000EFB E5 81            [12] 4349 	mov	a,sp
      000EFD 24 FB            [12] 4350 	add	a,#0xfb
      000EFF F5 81            [12] 4351 	mov	sp,a
      000F01 D0 04            [24] 4352 	pop	ar4
      000F03 D0 05            [24] 4353 	pop	ar5
                           000E0B  4354 	C$lab_5.c$536$4$204 ==.
                                   4355 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:536: printf("Desired Gain: %i", var);
      000F05 C0 04            [24] 4356 	push	ar4
      000F07 C0 05            [24] 4357 	push	ar5
      000F09 74 03            [12] 4358 	mov	a,#___str_22
      000F0B C0 E0            [24] 4359 	push	acc
      000F0D 74 1B            [12] 4360 	mov	a,#(___str_22 >> 8)
      000F0F C0 E0            [24] 4361 	push	acc
      000F11 74 80            [12] 4362 	mov	a,#0x80
      000F13 C0 E0            [24] 4363 	push	acc
      000F15 12 13 1F         [24] 4364 	lcall	_printf
      000F18 E5 81            [12] 4365 	mov	a,sp
      000F1A 24 FB            [12] 4366 	add	a,#0xfb
      000F1C F5 81            [12] 4367 	mov	sp,a
                           000E24  4368 	C$lab_5.c$537$4$204 ==.
                                   4369 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:537: wait();
      000F1E 12 09 69         [24] 4370 	lcall	_wait
      000F21 D0 06            [24] 4371 	pop	ar6
                           000E29  4372 	C$lab_5.c$538$4$204 ==.
                                   4373 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:538: ks = var;
      000F23 8E 58            [24] 4374 	mov	_ks,r6
                           000E2B  4375 	C$lab_5.c$539$1$197 ==.
                                   4376 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:539: break;
      000F25                       4377 00146$:
                           000E2B  4378 	C$lab_5.c$543$1$197 ==.
                                   4379 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:543: lcd_clear();
      000F25 12 01 FA         [24] 4380 	lcall	_lcd_clear
                           000E2E  4381 	C$lab_5.c$544$1$197 ==.
                                   4382 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:544: lcd_print("Pick kdx Gain\nPress a Number\n1: 3 2: 6 3: 9\n4: 12 0: custom");
      000F28 74 14            [12] 4383 	mov	a,#___str_23
      000F2A C0 E0            [24] 4384 	push	acc
      000F2C 74 1B            [12] 4385 	mov	a,#(___str_23 >> 8)
      000F2E C0 E0            [24] 4386 	push	acc
      000F30 74 80            [12] 4387 	mov	a,#0x80
      000F32 C0 E0            [24] 4388 	push	acc
      000F34 12 01 75         [24] 4389 	lcall	_lcd_print
      000F37 15 81            [12] 4390 	dec	sp
      000F39 15 81            [12] 4391 	dec	sp
      000F3B 15 81            [12] 4392 	dec	sp
                           000E43  4393 	C$lab_5.c$545$1$197 ==.
                                   4394 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:545: while (1) {
      000F3D                       4395 00191$:
                           000E43  4396 	C$lab_5.c$546$2$211 ==.
                                   4397 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:546: keypad = read_keypad();
      000F3D 12 02 33         [24] 4398 	lcall	_read_keypad
      000F40 AF 82            [24] 4399 	mov	r7,dpl
                           000E48  4400 	C$lab_5.c$547$2$211 ==.
                                   4401 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:547: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms)
      000F42 C0 07            [24] 4402 	push	ar7
      000F44 12 09 58         [24] 4403 	lcall	_pause
      000F47 D0 07            [24] 4404 	pop	ar7
                           000E4F  4405 	C$lab_5.c$550$2$211 ==.
                                   4406 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:550: if (keypad != 0xFF) {
      000F49 BF FF 02         [24] 4407 	cjne	r7,#0xff,00319$
      000F4C 80 EF            [24] 4408 	sjmp	00191$
      000F4E                       4409 00319$:
                           000E54  4410 	C$lab_5.c$551$3$212 ==.
                                   4411 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:551: while (read_keypad() != 0xFF);
      000F4E                       4412 00147$:
      000F4E C0 07            [24] 4413 	push	ar7
      000F50 12 02 33         [24] 4414 	lcall	_read_keypad
      000F53 AE 82            [24] 4415 	mov	r6,dpl
      000F55 D0 07            [24] 4416 	pop	ar7
      000F57 BE FF F4         [24] 4417 	cjne	r6,#0xff,00147$
                           000E60  4418 	C$lab_5.c$552$3$212 ==.
                                   4419 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:552: lcd_clear();
      000F5A C0 07            [24] 4420 	push	ar7
      000F5C 12 01 FA         [24] 4421 	lcall	_lcd_clear
      000F5F D0 07            [24] 4422 	pop	ar7
                           000E67  4423 	C$lab_5.c$553$3$212 ==.
                                   4424 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:553: if (keypad == 0x31) { //if they enter a 1
      000F61 BF 31 36         [24] 4425 	cjne	r7,#0x31,00186$
                           000E6A  4426 	C$lab_5.c$554$4$213 ==.
                                   4427 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:554: lcd_clear();
      000F64 12 01 FA         [24] 4428 	lcall	_lcd_clear
                           000E6D  4429 	C$lab_5.c$555$4$213 ==.
                                   4430 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:555: lcd_print("Gain: 3");
      000F67 74 98            [12] 4431 	mov	a,#___str_16
      000F69 C0 E0            [24] 4432 	push	acc
      000F6B 74 1A            [12] 4433 	mov	a,#(___str_16 >> 8)
      000F6D C0 E0            [24] 4434 	push	acc
      000F6F 74 80            [12] 4435 	mov	a,#0x80
      000F71 C0 E0            [24] 4436 	push	acc
      000F73 12 01 75         [24] 4437 	lcall	_lcd_print
      000F76 15 81            [12] 4438 	dec	sp
      000F78 15 81            [12] 4439 	dec	sp
      000F7A 15 81            [12] 4440 	dec	sp
                           000E82  4441 	C$lab_5.c$556$4$213 ==.
                                   4442 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:556: printf("Desired Gain: 3");
      000F7C 74 A0            [12] 4443 	mov	a,#___str_17
      000F7E C0 E0            [24] 4444 	push	acc
      000F80 74 1A            [12] 4445 	mov	a,#(___str_17 >> 8)
      000F82 C0 E0            [24] 4446 	push	acc
      000F84 74 80            [12] 4447 	mov	a,#0x80
      000F86 C0 E0            [24] 4448 	push	acc
      000F88 12 13 1F         [24] 4449 	lcall	_printf
      000F8B 15 81            [12] 4450 	dec	sp
      000F8D 15 81            [12] 4451 	dec	sp
      000F8F 15 81            [12] 4452 	dec	sp
                           000E97  4453 	C$lab_5.c$557$4$213 ==.
                                   4454 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:557: wait();
      000F91 12 09 69         [24] 4455 	lcall	_wait
                           000E9A  4456 	C$lab_5.c$558$4$213 ==.
                                   4457 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:558: kdx = 3;
      000F94 75 59 03         [24] 4458 	mov	_kdx,#0x03
                           000E9D  4459 	C$lab_5.c$559$4$213 ==.
                                   4460 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:559: break;
      000F97 02 11 91         [24] 4461 	ljmp	00193$
      000F9A                       4462 00186$:
                           000EA0  4463 	C$lab_5.c$561$3$212 ==.
                                   4464 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:561: else if (keypad == 0x32) { //if they enter a 2
      000F9A BF 32 36         [24] 4465 	cjne	r7,#0x32,00183$
                           000EA3  4466 	C$lab_5.c$562$4$214 ==.
                                   4467 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:562: lcd_clear();
      000F9D 12 01 FA         [24] 4468 	lcall	_lcd_clear
                           000EA6  4469 	C$lab_5.c$563$4$214 ==.
                                   4470 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:563: lcd_print("Gain: 6");
      000FA0 74 50            [12] 4471 	mov	a,#___str_24
      000FA2 C0 E0            [24] 4472 	push	acc
      000FA4 74 1B            [12] 4473 	mov	a,#(___str_24 >> 8)
      000FA6 C0 E0            [24] 4474 	push	acc
      000FA8 74 80            [12] 4475 	mov	a,#0x80
      000FAA C0 E0            [24] 4476 	push	acc
      000FAC 12 01 75         [24] 4477 	lcall	_lcd_print
      000FAF 15 81            [12] 4478 	dec	sp
      000FB1 15 81            [12] 4479 	dec	sp
      000FB3 15 81            [12] 4480 	dec	sp
                           000EBB  4481 	C$lab_5.c$564$4$214 ==.
                                   4482 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:564: printf("Desired Gain: 6");
      000FB5 74 58            [12] 4483 	mov	a,#___str_25
      000FB7 C0 E0            [24] 4484 	push	acc
      000FB9 74 1B            [12] 4485 	mov	a,#(___str_25 >> 8)
      000FBB C0 E0            [24] 4486 	push	acc
      000FBD 74 80            [12] 4487 	mov	a,#0x80
      000FBF C0 E0            [24] 4488 	push	acc
      000FC1 12 13 1F         [24] 4489 	lcall	_printf
      000FC4 15 81            [12] 4490 	dec	sp
      000FC6 15 81            [12] 4491 	dec	sp
      000FC8 15 81            [12] 4492 	dec	sp
                           000ED0  4493 	C$lab_5.c$565$4$214 ==.
                                   4494 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:565: wait();
      000FCA 12 09 69         [24] 4495 	lcall	_wait
                           000ED3  4496 	C$lab_5.c$566$4$214 ==.
                                   4497 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:566: kdx = 6;
      000FCD 75 59 06         [24] 4498 	mov	_kdx,#0x06
                           000ED6  4499 	C$lab_5.c$567$4$214 ==.
                                   4500 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:567: break;
      000FD0 02 11 91         [24] 4501 	ljmp	00193$
      000FD3                       4502 00183$:
                           000ED9  4503 	C$lab_5.c$569$3$212 ==.
                                   4504 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:569: else if (keypad == 0x33) { //if they enter a 3
      000FD3 BF 33 36         [24] 4505 	cjne	r7,#0x33,00180$
                           000EDC  4506 	C$lab_5.c$570$4$215 ==.
                                   4507 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:570: lcd_clear();
      000FD6 12 01 FA         [24] 4508 	lcall	_lcd_clear
                           000EDF  4509 	C$lab_5.c$571$4$215 ==.
                                   4510 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:571: lcd_print("Gain: 9");
      000FD9 74 68            [12] 4511 	mov	a,#___str_26
      000FDB C0 E0            [24] 4512 	push	acc
      000FDD 74 1B            [12] 4513 	mov	a,#(___str_26 >> 8)
      000FDF C0 E0            [24] 4514 	push	acc
      000FE1 74 80            [12] 4515 	mov	a,#0x80
      000FE3 C0 E0            [24] 4516 	push	acc
      000FE5 12 01 75         [24] 4517 	lcall	_lcd_print
      000FE8 15 81            [12] 4518 	dec	sp
      000FEA 15 81            [12] 4519 	dec	sp
      000FEC 15 81            [12] 4520 	dec	sp
                           000EF4  4521 	C$lab_5.c$572$4$215 ==.
                                   4522 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:572: printf("Desired Gain: 9");
      000FEE 74 70            [12] 4523 	mov	a,#___str_27
      000FF0 C0 E0            [24] 4524 	push	acc
      000FF2 74 1B            [12] 4525 	mov	a,#(___str_27 >> 8)
      000FF4 C0 E0            [24] 4526 	push	acc
      000FF6 74 80            [12] 4527 	mov	a,#0x80
      000FF8 C0 E0            [24] 4528 	push	acc
      000FFA 12 13 1F         [24] 4529 	lcall	_printf
      000FFD 15 81            [12] 4530 	dec	sp
      000FFF 15 81            [12] 4531 	dec	sp
      001001 15 81            [12] 4532 	dec	sp
                           000F09  4533 	C$lab_5.c$573$4$215 ==.
                                   4534 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:573: wait();
      001003 12 09 69         [24] 4535 	lcall	_wait
                           000F0C  4536 	C$lab_5.c$574$4$215 ==.
                                   4537 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:574: kdx = 9;
      001006 75 59 09         [24] 4538 	mov	_kdx,#0x09
                           000F0F  4539 	C$lab_5.c$575$4$215 ==.
                                   4540 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:575: break;
      001009 02 11 91         [24] 4541 	ljmp	00193$
      00100C                       4542 00180$:
                           000F12  4543 	C$lab_5.c$577$3$212 ==.
                                   4544 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:577: else if (keypad == 0x34) { //if they enter a 4
      00100C BF 34 36         [24] 4545 	cjne	r7,#0x34,00177$
                           000F15  4546 	C$lab_5.c$578$4$216 ==.
                                   4547 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:578: lcd_clear();
      00100F 12 01 FA         [24] 4548 	lcall	_lcd_clear
                           000F18  4549 	C$lab_5.c$579$4$216 ==.
                                   4550 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:579: lcd_print("Gain: 12");
      001012 74 80            [12] 4551 	mov	a,#___str_28
      001014 C0 E0            [24] 4552 	push	acc
      001016 74 1B            [12] 4553 	mov	a,#(___str_28 >> 8)
      001018 C0 E0            [24] 4554 	push	acc
      00101A 74 80            [12] 4555 	mov	a,#0x80
      00101C C0 E0            [24] 4556 	push	acc
      00101E 12 01 75         [24] 4557 	lcall	_lcd_print
      001021 15 81            [12] 4558 	dec	sp
      001023 15 81            [12] 4559 	dec	sp
      001025 15 81            [12] 4560 	dec	sp
                           000F2D  4561 	C$lab_5.c$580$4$216 ==.
                                   4562 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:580: printf("Desired Gain: 12");
      001027 74 89            [12] 4563 	mov	a,#___str_29
      001029 C0 E0            [24] 4564 	push	acc
      00102B 74 1B            [12] 4565 	mov	a,#(___str_29 >> 8)
      00102D C0 E0            [24] 4566 	push	acc
      00102F 74 80            [12] 4567 	mov	a,#0x80
      001031 C0 E0            [24] 4568 	push	acc
      001033 12 13 1F         [24] 4569 	lcall	_printf
      001036 15 81            [12] 4570 	dec	sp
      001038 15 81            [12] 4571 	dec	sp
      00103A 15 81            [12] 4572 	dec	sp
                           000F42  4573 	C$lab_5.c$581$4$216 ==.
                                   4574 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:581: wait();
      00103C 12 09 69         [24] 4575 	lcall	_wait
                           000F45  4576 	C$lab_5.c$582$4$216 ==.
                                   4577 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:582: kdx = 12;
      00103F 75 59 0C         [24] 4578 	mov	_kdx,#0x0c
                           000F48  4579 	C$lab_5.c$583$4$216 ==.
                                   4580 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:583: break;
      001042 02 11 91         [24] 4581 	ljmp	00193$
      001045                       4582 00177$:
                           000F4B  4583 	C$lab_5.c$585$3$212 ==.
                                   4584 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:585: else if (keypad == 0x30) { //if they enter a 0
      001045 BF 30 02         [24] 4585 	cjne	r7,#0x30,00330$
      001048 80 03            [24] 4586 	sjmp	00331$
      00104A                       4587 00330$:
      00104A 02 0F 3D         [24] 4588 	ljmp	00191$
      00104D                       4589 00331$:
                           000F53  4590 	C$lab_5.c$587$4$217 ==.
                                   4591 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:587: lcd_clear();
      00104D 12 01 FA         [24] 4592 	lcall	_lcd_clear
                           000F56  4593 	C$lab_5.c$588$4$217 ==.
                                   4594 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:588: lcd_print("Enter your number\nStart with 0s\nif need be\nso 45 is 045");
      001050 74 C8            [12] 4595 	mov	a,#___str_20
      001052 C0 E0            [24] 4596 	push	acc
      001054 74 1A            [12] 4597 	mov	a,#(___str_20 >> 8)
      001056 C0 E0            [24] 4598 	push	acc
      001058 74 80            [12] 4599 	mov	a,#0x80
      00105A C0 E0            [24] 4600 	push	acc
      00105C 12 01 75         [24] 4601 	lcall	_lcd_print
      00105F 15 81            [12] 4602 	dec	sp
      001061 15 81            [12] 4603 	dec	sp
      001063 15 81            [12] 4604 	dec	sp
                           000F6B  4605 	C$lab_5.c$589$4$217 ==.
                                   4606 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:589: while (1) {
      001065                       4607 00156$:
                           000F6B  4608 	C$lab_5.c$590$5$218 ==.
                                   4609 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:590: keypad = read_keypad();
      001065 12 02 33         [24] 4610 	lcall	_read_keypad
      001068 AF 82            [24] 4611 	mov	r7,dpl
                           000F70  4612 	C$lab_5.c$591$5$218 ==.
                                   4613 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:591: pause();
      00106A C0 07            [24] 4614 	push	ar7
      00106C 12 09 58         [24] 4615 	lcall	_pause
      00106F D0 07            [24] 4616 	pop	ar7
                           000F77  4617 	C$lab_5.c$592$5$218 ==.
                                   4618 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:592: if (keypad != 0xFF) {
      001071 BF FF 02         [24] 4619 	cjne	r7,#0xff,00332$
      001074 80 EF            [24] 4620 	sjmp	00156$
      001076                       4621 00332$:
                           000F7C  4622 	C$lab_5.c$593$6$219 ==.
                                   4623 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:593: while (read_keypad() != 0xFF);
      001076                       4624 00150$:
      001076 C0 07            [24] 4625 	push	ar7
      001078 12 02 33         [24] 4626 	lcall	_read_keypad
      00107B AE 82            [24] 4627 	mov	r6,dpl
      00107D D0 07            [24] 4628 	pop	ar7
      00107F BE FF F4         [24] 4629 	cjne	r6,#0xff,00150$
                           000F88  4630 	C$lab_5.c$594$6$219 ==.
                                   4631 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:594: lcd_clear();
      001082 C0 07            [24] 4632 	push	ar7
      001084 12 01 FA         [24] 4633 	lcall	_lcd_clear
      001087 D0 07            [24] 4634 	pop	ar7
                           000F8F  4635 	C$lab_5.c$595$6$219 ==.
                                   4636 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:595: var = (keypad - 0x30) * 100;
      001089 EF               [12] 4637 	mov	a,r7
      00108A 24 D0            [12] 4638 	add	a,#0xd0
      00108C 75 F0 64         [24] 4639 	mov	b,#0x64
      00108F A4               [48] 4640 	mul	ab
                           000F96  4641 	C$lab_5.c$596$6$219 ==.
                                   4642 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:596: lcd_print("%i", var);
      001090 FE               [12] 4643 	mov	r6,a
      001091 FC               [12] 4644 	mov	r4,a
      001092 7D 00            [12] 4645 	mov	r5,#0x00
      001094 C0 06            [24] 4646 	push	ar6
      001096 C0 04            [24] 4647 	push	ar4
      001098 C0 05            [24] 4648 	push	ar5
      00109A 74 00            [12] 4649 	mov	a,#___str_21
      00109C C0 E0            [24] 4650 	push	acc
      00109E 74 1B            [12] 4651 	mov	a,#(___str_21 >> 8)
      0010A0 C0 E0            [24] 4652 	push	acc
      0010A2 74 80            [12] 4653 	mov	a,#0x80
      0010A4 C0 E0            [24] 4654 	push	acc
      0010A6 12 01 75         [24] 4655 	lcall	_lcd_print
      0010A9 E5 81            [12] 4656 	mov	a,sp
      0010AB 24 FB            [12] 4657 	add	a,#0xfb
      0010AD F5 81            [12] 4658 	mov	sp,a
      0010AF D0 06            [24] 4659 	pop	ar6
                           000FB7  4660 	C$lab_5.c$600$4$217 ==.
                                   4661 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:600: while (1) {
      0010B1                       4662 00164$:
                           000FB7  4663 	C$lab_5.c$601$5$220 ==.
                                   4664 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:601: keypad = read_keypad();
      0010B1 C0 06            [24] 4665 	push	ar6
      0010B3 12 02 33         [24] 4666 	lcall	_read_keypad
      0010B6 AF 82            [24] 4667 	mov	r7,dpl
      0010B8 D0 06            [24] 4668 	pop	ar6
                           000FC0  4669 	C$lab_5.c$602$5$220 ==.
                                   4670 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:602: pause();
      0010BA C0 07            [24] 4671 	push	ar7
      0010BC C0 06            [24] 4672 	push	ar6
      0010BE 12 09 58         [24] 4673 	lcall	_pause
      0010C1 D0 06            [24] 4674 	pop	ar6
      0010C3 D0 07            [24] 4675 	pop	ar7
                           000FCB  4676 	C$lab_5.c$603$5$220 ==.
                                   4677 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:603: if (keypad != 0xFF) {
      0010C5 BF FF 02         [24] 4678 	cjne	r7,#0xff,00335$
      0010C8 80 E7            [24] 4679 	sjmp	00164$
      0010CA                       4680 00335$:
                           000FD0  4681 	C$lab_5.c$604$6$221 ==.
                                   4682 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:604: while (read_keypad() != 0xFF);
      0010CA                       4683 00158$:
      0010CA C0 07            [24] 4684 	push	ar7
      0010CC C0 06            [24] 4685 	push	ar6
      0010CE 12 02 33         [24] 4686 	lcall	_read_keypad
      0010D1 AD 82            [24] 4687 	mov	r5,dpl
      0010D3 D0 06            [24] 4688 	pop	ar6
      0010D5 D0 07            [24] 4689 	pop	ar7
      0010D7 BD FF F0         [24] 4690 	cjne	r5,#0xff,00158$
                           000FE0  4691 	C$lab_5.c$605$6$221 ==.
                                   4692 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:605: lcd_clear();
      0010DA C0 07            [24] 4693 	push	ar7
      0010DC C0 06            [24] 4694 	push	ar6
      0010DE 12 01 FA         [24] 4695 	lcall	_lcd_clear
      0010E1 D0 06            [24] 4696 	pop	ar6
      0010E3 D0 07            [24] 4697 	pop	ar7
                           000FEB  4698 	C$lab_5.c$606$6$221 ==.
                                   4699 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:606: var = var + ((keypad - 0x30) * 10);
      0010E5 EF               [12] 4700 	mov	a,r7
      0010E6 24 D0            [12] 4701 	add	a,#0xd0
      0010E8 75 F0 0A         [24] 4702 	mov	b,#0x0a
      0010EB A4               [48] 4703 	mul	ab
      0010EC 2E               [12] 4704 	add	a,r6
                           000FF3  4705 	C$lab_5.c$607$6$221 ==.
                                   4706 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:607: lcd_print("%i", var);
      0010ED FE               [12] 4707 	mov	r6,a
      0010EE FC               [12] 4708 	mov	r4,a
      0010EF 7D 00            [12] 4709 	mov	r5,#0x00
      0010F1 C0 06            [24] 4710 	push	ar6
      0010F3 C0 04            [24] 4711 	push	ar4
      0010F5 C0 05            [24] 4712 	push	ar5
      0010F7 74 00            [12] 4713 	mov	a,#___str_21
      0010F9 C0 E0            [24] 4714 	push	acc
      0010FB 74 1B            [12] 4715 	mov	a,#(___str_21 >> 8)
      0010FD C0 E0            [24] 4716 	push	acc
      0010FF 74 80            [12] 4717 	mov	a,#0x80
      001101 C0 E0            [24] 4718 	push	acc
      001103 12 01 75         [24] 4719 	lcall	_lcd_print
      001106 E5 81            [12] 4720 	mov	a,sp
      001108 24 FB            [12] 4721 	add	a,#0xfb
      00110A F5 81            [12] 4722 	mov	sp,a
      00110C D0 06            [24] 4723 	pop	ar6
                           001014  4724 	C$lab_5.c$611$4$217 ==.
                                   4725 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:611: while (1) {
      00110E                       4726 00172$:
                           001014  4727 	C$lab_5.c$612$5$222 ==.
                                   4728 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:612: keypad = read_keypad();
      00110E C0 06            [24] 4729 	push	ar6
      001110 12 02 33         [24] 4730 	lcall	_read_keypad
      001113 AF 82            [24] 4731 	mov	r7,dpl
      001115 D0 06            [24] 4732 	pop	ar6
                           00101D  4733 	C$lab_5.c$613$5$222 ==.
                                   4734 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:613: pause();
      001117 C0 07            [24] 4735 	push	ar7
      001119 C0 06            [24] 4736 	push	ar6
      00111B 12 09 58         [24] 4737 	lcall	_pause
      00111E D0 06            [24] 4738 	pop	ar6
      001120 D0 07            [24] 4739 	pop	ar7
                           001028  4740 	C$lab_5.c$614$5$222 ==.
                                   4741 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:614: if (keypad != 0xFF) {
      001122 BF FF 02         [24] 4742 	cjne	r7,#0xff,00338$
      001125 80 E7            [24] 4743 	sjmp	00172$
      001127                       4744 00338$:
                           00102D  4745 	C$lab_5.c$615$6$223 ==.
                                   4746 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:615: while (read_keypad() != 0xFF);
      001127                       4747 00166$:
      001127 C0 07            [24] 4748 	push	ar7
      001129 C0 06            [24] 4749 	push	ar6
      00112B 12 02 33         [24] 4750 	lcall	_read_keypad
      00112E AD 82            [24] 4751 	mov	r5,dpl
      001130 D0 06            [24] 4752 	pop	ar6
      001132 D0 07            [24] 4753 	pop	ar7
      001134 BD FF F0         [24] 4754 	cjne	r5,#0xff,00166$
                           00103D  4755 	C$lab_5.c$616$6$223 ==.
                                   4756 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:616: lcd_clear();
      001137 C0 07            [24] 4757 	push	ar7
      001139 C0 06            [24] 4758 	push	ar6
      00113B 12 01 FA         [24] 4759 	lcall	_lcd_clear
      00113E D0 06            [24] 4760 	pop	ar6
      001140 D0 07            [24] 4761 	pop	ar7
                           001048  4762 	C$lab_5.c$617$6$223 ==.
                                   4763 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:617: var = var + (keypad - 0x30);
      001142 EF               [12] 4764 	mov	a,r7
      001143 24 D0            [12] 4765 	add	a,#0xd0
      001145 2E               [12] 4766 	add	a,r6
                           00104C  4767 	C$lab_5.c$618$6$223 ==.
                                   4768 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:618: lcd_print("%i", var);
      001146 FE               [12] 4769 	mov	r6,a
      001147 FD               [12] 4770 	mov	r5,a
      001148 7F 00            [12] 4771 	mov	r7,#0x00
      00114A C0 07            [24] 4772 	push	ar7
      00114C C0 06            [24] 4773 	push	ar6
      00114E C0 05            [24] 4774 	push	ar5
      001150 C0 05            [24] 4775 	push	ar5
      001152 C0 07            [24] 4776 	push	ar7
      001154 74 00            [12] 4777 	mov	a,#___str_21
      001156 C0 E0            [24] 4778 	push	acc
      001158 74 1B            [12] 4779 	mov	a,#(___str_21 >> 8)
      00115A C0 E0            [24] 4780 	push	acc
      00115C 74 80            [12] 4781 	mov	a,#0x80
      00115E C0 E0            [24] 4782 	push	acc
      001160 12 01 75         [24] 4783 	lcall	_lcd_print
      001163 E5 81            [12] 4784 	mov	a,sp
      001165 24 FB            [12] 4785 	add	a,#0xfb
      001167 F5 81            [12] 4786 	mov	sp,a
      001169 D0 05            [24] 4787 	pop	ar5
      00116B D0 06            [24] 4788 	pop	ar6
      00116D D0 07            [24] 4789 	pop	ar7
                           001075  4790 	C$lab_5.c$622$4$217 ==.
                                   4791 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:622: printf("Desired Gain: %i", var);
      00116F C0 06            [24] 4792 	push	ar6
      001171 C0 05            [24] 4793 	push	ar5
      001173 C0 07            [24] 4794 	push	ar7
      001175 74 03            [12] 4795 	mov	a,#___str_22
      001177 C0 E0            [24] 4796 	push	acc
      001179 74 1B            [12] 4797 	mov	a,#(___str_22 >> 8)
      00117B C0 E0            [24] 4798 	push	acc
      00117D 74 80            [12] 4799 	mov	a,#0x80
      00117F C0 E0            [24] 4800 	push	acc
      001181 12 13 1F         [24] 4801 	lcall	_printf
      001184 E5 81            [12] 4802 	mov	a,sp
      001186 24 FB            [12] 4803 	add	a,#0xfb
      001188 F5 81            [12] 4804 	mov	sp,a
                           001090  4805 	C$lab_5.c$623$4$217 ==.
                                   4806 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:623: wait();
      00118A 12 09 69         [24] 4807 	lcall	_wait
      00118D D0 06            [24] 4808 	pop	ar6
                           001095  4809 	C$lab_5.c$624$4$217 ==.
                                   4810 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:624: kdx = var;
      00118F 8E 59            [24] 4811 	mov	_kdx,r6
                           001097  4812 	C$lab_5.c$625$1$197 ==.
                                   4813 ;	C:\Users\gerlig\Documents\School\LITEC\LAB5\lab-5.c:625: break;
      001191                       4814 00193$:
                           001097  4815 	C$lab_5.c$629$1$197 ==.
                           001097  4816 	XG$set_gains$0$0 ==.
      001191 22               [24] 4817 	ret
                                   4818 	.area CSEG    (CODE)
                                   4819 	.area CONST   (CODE)
                           000000  4820 Flab_5$__str_0$0$0 == .
      001972                       4821 ___str_0:
      001972 0A                    4822 	.db 0x0a
      001973 54 79 70 65 20 64 69  4823 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      001987 00                    4824 	.db 0x00
                           000016  4825 Flab_5$__str_1$0$0 == .
      001988                       4826 ___str_1:
      001988 20 20 20 20 20 25 63  4827 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      001997 00                    4828 	.db 0x00
                           000026  4829 Flab_5$__str_2$0$0 == .
      001998                       4830 ___str_2:
      001998 25 63                 4831 	.ascii "%c"
      00199A 00                    4832 	.db 0x00
                           000029  4833 Flab_5$__str_3$0$0 == .
      00199B                       4834 ___str_3:
      00199B 50 6C 65 61 73 65 20  4835 	.ascii "Please put me"
             70 75 74 20 6D 65
      0019A8 0A                    4836 	.db 0x0a
      0019A9 6F 6E 20 61 20 66 6C  4837 	.ascii "on a flat"
             61 74
      0019B2 0A                    4838 	.db 0x0a
      0019B3 73 75 72 66 61 63 65  4839 	.ascii "surface! Then"
             21 20 54 68 65 6E
      0019C0 0A                    4840 	.db 0x0a
      0019C1 70 72 65 73 73 20 31  4841 	.ascii "press 1"
      0019C8 00                    4842 	.db 0x00
                           000057  4843 Flab_5$__str_4$0$0 == .
      0019C9                       4844 ___str_4:
      0019C9 43 61 6C 69 62 72 61  4845 	.ascii "Calibrated!"
             74 65 64 21
      0019D4 00                    4846 	.db 0x00
                           000063  4847 Flab_5$__str_5$0$0 == .
      0019D5                       4848 ___str_5:
      0019D5 58 30 3A 20 25 69 2C  4849 	.ascii "X0: %i, Y0: %i"
             20 59 30 3A 20 25 69
      0019E3 00                    4850 	.db 0x00
                           000072  4851 Flab_5$__str_6$0$0 == .
      0019E4                       4852 ___str_6:
      0019E4 31 3A 20 52 69 67 68  4853 	.ascii "1: Right"
             74
      0019EC 0A                    4854 	.db 0x0a
      0019ED 32 3A 20 4C 65 66 74  4855 	.ascii "2: Left"
      0019F4 00                    4856 	.db 0x00
                           000083  4857 Flab_5$__str_7$0$0 == .
      0019F5                       4858 ___str_7:
      0019F5 52 69 67 68 74        4859 	.ascii "Right"
      0019FA 00                    4860 	.db 0x00
                           000089  4861 Flab_5$__str_8$0$0 == .
      0019FB                       4862 ___str_8:
      0019FB 4C 65 66 74           4863 	.ascii "Left"
      0019FF 00                    4864 	.db 0x00
                           00008E  4865 Flab_5$__str_9$0$0 == .
      001A00                       4866 ___str_9:
      001A00 78 3A 20 25 69 20 79  4867 	.ascii "x: %i y: %i"
             3A 20 25 69
      001A0B 0A                    4868 	.db 0x0a
      001A0C 44 72 69 76 65 3A 20  4869 	.ascii "Drive: %i Steering: %i"
             25 69 20 53 74 65 65
             72 69 6E 67 3A 20 25
             69
      001A22 00                    4870 	.db 0x00
                           0000B1  4871 Flab_5$__str_10$0$0 == .
      001A23                       4872 ___str_10:
      001A23 25 69                 4873 	.ascii "%i"
      001A25 09                    4874 	.db 0x09
      001A26 25 69                 4875 	.ascii "%i"
      001A28 09                    4876 	.db 0x09
      001A29 25 69                 4877 	.ascii "%i"
      001A2B 09                    4878 	.db 0x09
      001A2C 25 69                 4879 	.ascii "%i"
      001A2E 0D                    4880 	.db 0x0d
      001A2F 0A                    4881 	.db 0x0a
      001A30 00                    4882 	.db 0x00
                           0000BF  4883 Flab_5$__str_11$0$0 == .
      001A31                       4884 ___str_11:
      001A31 50 69 63 6B 20 47 61  4885 	.ascii "Pick Gain"
             69 6E
      001A3A 0A                    4886 	.db 0x0a
      001A3B 50 72 65 73 73 20 61  4887 	.ascii "Press a Number"
             20 4E 75 6D 62 65 72
      001A49 0A                    4888 	.db 0x0a
      001A4A 31 3A 20 31 20 32 3A  4889 	.ascii "1: 1 2: 2 3: 3"
             20 32 20 33 3A 20 33
      001A58 0A                    4890 	.db 0x0a
      001A59 34 3A 20 34 20 30 3A  4891 	.ascii "4: 4 0: custom"
             20 63 75 73 74 6F 6D
      001A67 00                    4892 	.db 0x00
                           0000F6  4893 Flab_5$__str_12$0$0 == .
      001A68                       4894 ___str_12:
      001A68 47 61 69 6E 3A 20 31  4895 	.ascii "Gain: 1"
      001A6F 00                    4896 	.db 0x00
                           0000FE  4897 Flab_5$__str_13$0$0 == .
      001A70                       4898 ___str_13:
      001A70 44 65 73 69 72 65 64  4899 	.ascii "Desired Gain: 1"
             20 47 61 69 6E 3A 20
             31
      001A7F 00                    4900 	.db 0x00
                           00010E  4901 Flab_5$__str_14$0$0 == .
      001A80                       4902 ___str_14:
      001A80 47 61 69 6E 3A 20 32  4903 	.ascii "Gain: 2"
      001A87 00                    4904 	.db 0x00
                           000116  4905 Flab_5$__str_15$0$0 == .
      001A88                       4906 ___str_15:
      001A88 44 65 73 69 72 65 64  4907 	.ascii "Desired Gain: 2"
             20 47 61 69 6E 3A 20
             32
      001A97 00                    4908 	.db 0x00
                           000126  4909 Flab_5$__str_16$0$0 == .
      001A98                       4910 ___str_16:
      001A98 47 61 69 6E 3A 20 33  4911 	.ascii "Gain: 3"
      001A9F 00                    4912 	.db 0x00
                           00012E  4913 Flab_5$__str_17$0$0 == .
      001AA0                       4914 ___str_17:
      001AA0 44 65 73 69 72 65 64  4915 	.ascii "Desired Gain: 3"
             20 47 61 69 6E 3A 20
             33
      001AAF 00                    4916 	.db 0x00
                           00013E  4917 Flab_5$__str_18$0$0 == .
      001AB0                       4918 ___str_18:
      001AB0 47 61 69 6E 3A 20 34  4919 	.ascii "Gain: 4"
      001AB7 00                    4920 	.db 0x00
                           000146  4921 Flab_5$__str_19$0$0 == .
      001AB8                       4922 ___str_19:
      001AB8 44 65 73 69 72 65 64  4923 	.ascii "Desired Gain: 4"
             20 47 61 69 6E 3A 20
             34
      001AC7 00                    4924 	.db 0x00
                           000156  4925 Flab_5$__str_20$0$0 == .
      001AC8                       4926 ___str_20:
      001AC8 45 6E 74 65 72 20 79  4927 	.ascii "Enter your number"
             6F 75 72 20 6E 75 6D
             62 65 72
      001AD9 0A                    4928 	.db 0x0a
      001ADA 53 74 61 72 74 20 77  4929 	.ascii "Start with 0s"
             69 74 68 20 30 73
      001AE7 0A                    4930 	.db 0x0a
      001AE8 69 66 20 6E 65 65 64  4931 	.ascii "if need be"
             20 62 65
      001AF2 0A                    4932 	.db 0x0a
      001AF3 73 6F 20 34 35 20 69  4933 	.ascii "so 45 is 045"
             73 20 30 34 35
      001AFF 00                    4934 	.db 0x00
                           00018E  4935 Flab_5$__str_21$0$0 == .
      001B00                       4936 ___str_21:
      001B00 25 69                 4937 	.ascii "%i"
      001B02 00                    4938 	.db 0x00
                           000191  4939 Flab_5$__str_22$0$0 == .
      001B03                       4940 ___str_22:
      001B03 44 65 73 69 72 65 64  4941 	.ascii "Desired Gain: %i"
             20 47 61 69 6E 3A 20
             25 69
      001B13 00                    4942 	.db 0x00
                           0001A2  4943 Flab_5$__str_23$0$0 == .
      001B14                       4944 ___str_23:
      001B14 50 69 63 6B 20 6B 64  4945 	.ascii "Pick kdx Gain"
             78 20 47 61 69 6E
      001B21 0A                    4946 	.db 0x0a
      001B22 50 72 65 73 73 20 61  4947 	.ascii "Press a Number"
             20 4E 75 6D 62 65 72
      001B30 0A                    4948 	.db 0x0a
      001B31 31 3A 20 33 20 32 3A  4949 	.ascii "1: 3 2: 6 3: 9"
             20 36 20 33 3A 20 39
      001B3F 0A                    4950 	.db 0x0a
      001B40 34 3A 20 31 32 20 30  4951 	.ascii "4: 12 0: custom"
             3A 20 63 75 73 74 6F
             6D
      001B4F 00                    4952 	.db 0x00
                           0001DE  4953 Flab_5$__str_24$0$0 == .
      001B50                       4954 ___str_24:
      001B50 47 61 69 6E 3A 20 36  4955 	.ascii "Gain: 6"
      001B57 00                    4956 	.db 0x00
                           0001E6  4957 Flab_5$__str_25$0$0 == .
      001B58                       4958 ___str_25:
      001B58 44 65 73 69 72 65 64  4959 	.ascii "Desired Gain: 6"
             20 47 61 69 6E 3A 20
             36
      001B67 00                    4960 	.db 0x00
                           0001F6  4961 Flab_5$__str_26$0$0 == .
      001B68                       4962 ___str_26:
      001B68 47 61 69 6E 3A 20 39  4963 	.ascii "Gain: 9"
      001B6F 00                    4964 	.db 0x00
                           0001FE  4965 Flab_5$__str_27$0$0 == .
      001B70                       4966 ___str_27:
      001B70 44 65 73 69 72 65 64  4967 	.ascii "Desired Gain: 9"
             20 47 61 69 6E 3A 20
             39
      001B7F 00                    4968 	.db 0x00
                           00020E  4969 Flab_5$__str_28$0$0 == .
      001B80                       4970 ___str_28:
      001B80 47 61 69 6E 3A 20 31  4971 	.ascii "Gain: 12"
             32
      001B88 00                    4972 	.db 0x00
                           000217  4973 Flab_5$__str_29$0$0 == .
      001B89                       4974 ___str_29:
      001B89 44 65 73 69 72 65 64  4975 	.ascii "Desired Gain: 12"
             20 47 61 69 6E 3A 20
             31 32
      001B99 00                    4976 	.db 0x00
                                   4977 	.area XINIT   (CODE)
                                   4978 	.area CABS    (ABS,CODE)
