                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Lab4andahalf
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
                                     21 	.globl _RUN
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
                                    307 	.globl _read_AD_input_PARM_2
                                    308 	.globl _pot_val
                                    309 	.globl _set_heading
                                    310 	.globl _run_stop
                                    311 	.globl _drivegain
                                    312 	.globl _ranger_select
                                    313 	.globl _Data
                                    314 	.globl _brightness_threshold
                                    315 	.globl _obstacle_threshold
                                    316 	.globl _deriv
                                    317 	.globl _error
                                    318 	.globl _desired_range
                                    319 	.globl _desired_heading
                                    320 	.globl _nCounts
                                    321 	.globl _print_count
                                    322 	.globl _h_count
                                    323 	.globl _r_count
                                    324 	.globl _heading
                                    325 	.globl _light
                                    326 	.globl _range
                                    327 	.globl _print_flag
                                    328 	.globl _new_range
                                    329 	.globl _new_heading
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
                                    359 	.globl _PCA_Init
                                    360 	.globl _ADC_Init
                                    361 	.globl _SMB_Init
                                    362 	.globl _Port_Init
                                    363 	.globl _XBR0_Init
                                    364 	.globl _read_compass
                                    365 	.globl _read_ranger
                                    366 	.globl _forward_mode
                                    367 	.globl _reverse_mode
                                    368 	.globl _set_servo_PWM
                                    369 	.globl _set_drive_PWM
                                    370 	.globl _pick_heading
                                    371 	.globl _pick_range
                                    372 	.globl _read_AD_input
                                    373 	.globl _PCA_ISR
                                    374 	.globl _pause
                                    375 	.globl _wait
                                    376 ;--------------------------------------------------------
                                    377 ; special function registers
                                    378 ;--------------------------------------------------------
                                    379 	.area RSEG    (ABS,DATA)
      000000                        380 	.org 0x0000
                           000080   381 G$P0$0$0 == 0x0080
                           000080   382 _P0	=	0x0080
                           000081   383 G$SP$0$0 == 0x0081
                           000081   384 _SP	=	0x0081
                           000082   385 G$DPL$0$0 == 0x0082
                           000082   386 _DPL	=	0x0082
                           000083   387 G$DPH$0$0 == 0x0083
                           000083   388 _DPH	=	0x0083
                           000084   389 G$P4$0$0 == 0x0084
                           000084   390 _P4	=	0x0084
                           000085   391 G$P5$0$0 == 0x0085
                           000085   392 _P5	=	0x0085
                           000086   393 G$P6$0$0 == 0x0086
                           000086   394 _P6	=	0x0086
                           000087   395 G$PCON$0$0 == 0x0087
                           000087   396 _PCON	=	0x0087
                           000088   397 G$TCON$0$0 == 0x0088
                           000088   398 _TCON	=	0x0088
                           000089   399 G$TMOD$0$0 == 0x0089
                           000089   400 _TMOD	=	0x0089
                           00008A   401 G$TL0$0$0 == 0x008a
                           00008A   402 _TL0	=	0x008a
                           00008B   403 G$TL1$0$0 == 0x008b
                           00008B   404 _TL1	=	0x008b
                           00008C   405 G$TH0$0$0 == 0x008c
                           00008C   406 _TH0	=	0x008c
                           00008D   407 G$TH1$0$0 == 0x008d
                           00008D   408 _TH1	=	0x008d
                           00008E   409 G$CKCON$0$0 == 0x008e
                           00008E   410 _CKCON	=	0x008e
                           00008F   411 G$PSCTL$0$0 == 0x008f
                           00008F   412 _PSCTL	=	0x008f
                           000090   413 G$P1$0$0 == 0x0090
                           000090   414 _P1	=	0x0090
                           000091   415 G$TMR3CN$0$0 == 0x0091
                           000091   416 _TMR3CN	=	0x0091
                           000092   417 G$TMR3RLL$0$0 == 0x0092
                           000092   418 _TMR3RLL	=	0x0092
                           000093   419 G$TMR3RLH$0$0 == 0x0093
                           000093   420 _TMR3RLH	=	0x0093
                           000094   421 G$TMR3L$0$0 == 0x0094
                           000094   422 _TMR3L	=	0x0094
                           000095   423 G$TMR3H$0$0 == 0x0095
                           000095   424 _TMR3H	=	0x0095
                           000096   425 G$P7$0$0 == 0x0096
                           000096   426 _P7	=	0x0096
                           000098   427 G$SCON$0$0 == 0x0098
                           000098   428 _SCON	=	0x0098
                           000098   429 G$SCON0$0$0 == 0x0098
                           000098   430 _SCON0	=	0x0098
                           000099   431 G$SBUF$0$0 == 0x0099
                           000099   432 _SBUF	=	0x0099
                           000099   433 G$SBUF0$0$0 == 0x0099
                           000099   434 _SBUF0	=	0x0099
                           00009A   435 G$SPI0CFG$0$0 == 0x009a
                           00009A   436 _SPI0CFG	=	0x009a
                           00009B   437 G$SPI0DAT$0$0 == 0x009b
                           00009B   438 _SPI0DAT	=	0x009b
                           00009C   439 G$ADC1$0$0 == 0x009c
                           00009C   440 _ADC1	=	0x009c
                           00009D   441 G$SPI0CKR$0$0 == 0x009d
                           00009D   442 _SPI0CKR	=	0x009d
                           00009E   443 G$CPT0CN$0$0 == 0x009e
                           00009E   444 _CPT0CN	=	0x009e
                           00009F   445 G$CPT1CN$0$0 == 0x009f
                           00009F   446 _CPT1CN	=	0x009f
                           0000A0   447 G$P2$0$0 == 0x00a0
                           0000A0   448 _P2	=	0x00a0
                           0000A1   449 G$EMI0TC$0$0 == 0x00a1
                           0000A1   450 _EMI0TC	=	0x00a1
                           0000A3   451 G$EMI0CF$0$0 == 0x00a3
                           0000A3   452 _EMI0CF	=	0x00a3
                           0000A4   453 G$PRT0CF$0$0 == 0x00a4
                           0000A4   454 _PRT0CF	=	0x00a4
                           0000A4   455 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   456 _P0MDOUT	=	0x00a4
                           0000A5   457 G$PRT1CF$0$0 == 0x00a5
                           0000A5   458 _PRT1CF	=	0x00a5
                           0000A5   459 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   460 _P1MDOUT	=	0x00a5
                           0000A6   461 G$PRT2CF$0$0 == 0x00a6
                           0000A6   462 _PRT2CF	=	0x00a6
                           0000A6   463 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   464 _P2MDOUT	=	0x00a6
                           0000A7   465 G$PRT3CF$0$0 == 0x00a7
                           0000A7   466 _PRT3CF	=	0x00a7
                           0000A7   467 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   468 _P3MDOUT	=	0x00a7
                           0000A8   469 G$IE$0$0 == 0x00a8
                           0000A8   470 _IE	=	0x00a8
                           0000A9   471 G$SADDR0$0$0 == 0x00a9
                           0000A9   472 _SADDR0	=	0x00a9
                           0000AA   473 G$ADC1CN$0$0 == 0x00aa
                           0000AA   474 _ADC1CN	=	0x00aa
                           0000AB   475 G$ADC1CF$0$0 == 0x00ab
                           0000AB   476 _ADC1CF	=	0x00ab
                           0000AC   477 G$AMX1SL$0$0 == 0x00ac
                           0000AC   478 _AMX1SL	=	0x00ac
                           0000AD   479 G$P3IF$0$0 == 0x00ad
                           0000AD   480 _P3IF	=	0x00ad
                           0000AE   481 G$SADEN1$0$0 == 0x00ae
                           0000AE   482 _SADEN1	=	0x00ae
                           0000AF   483 G$EMI0CN$0$0 == 0x00af
                           0000AF   484 _EMI0CN	=	0x00af
                           0000AF   485 G$_XPAGE$0$0 == 0x00af
                           0000AF   486 __XPAGE	=	0x00af
                           0000B0   487 G$P3$0$0 == 0x00b0
                           0000B0   488 _P3	=	0x00b0
                           0000B1   489 G$OSCXCN$0$0 == 0x00b1
                           0000B1   490 _OSCXCN	=	0x00b1
                           0000B2   491 G$OSCICN$0$0 == 0x00b2
                           0000B2   492 _OSCICN	=	0x00b2
                           0000B5   493 G$P74OUT$0$0 == 0x00b5
                           0000B5   494 _P74OUT	=	0x00b5
                           0000B6   495 G$FLSCL$0$0 == 0x00b6
                           0000B6   496 _FLSCL	=	0x00b6
                           0000B7   497 G$FLACL$0$0 == 0x00b7
                           0000B7   498 _FLACL	=	0x00b7
                           0000B8   499 G$IP$0$0 == 0x00b8
                           0000B8   500 _IP	=	0x00b8
                           0000B9   501 G$SADEN0$0$0 == 0x00b9
                           0000B9   502 _SADEN0	=	0x00b9
                           0000BA   503 G$AMX0CF$0$0 == 0x00ba
                           0000BA   504 _AMX0CF	=	0x00ba
                           0000BB   505 G$AMX0SL$0$0 == 0x00bb
                           0000BB   506 _AMX0SL	=	0x00bb
                           0000BC   507 G$ADC0CF$0$0 == 0x00bc
                           0000BC   508 _ADC0CF	=	0x00bc
                           0000BD   509 G$P1MDIN$0$0 == 0x00bd
                           0000BD   510 _P1MDIN	=	0x00bd
                           0000BE   511 G$ADC0L$0$0 == 0x00be
                           0000BE   512 _ADC0L	=	0x00be
                           0000BF   513 G$ADC0H$0$0 == 0x00bf
                           0000BF   514 _ADC0H	=	0x00bf
                           0000C0   515 G$SMB0CN$0$0 == 0x00c0
                           0000C0   516 _SMB0CN	=	0x00c0
                           0000C1   517 G$SMB0STA$0$0 == 0x00c1
                           0000C1   518 _SMB0STA	=	0x00c1
                           0000C2   519 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   520 _SMB0DAT	=	0x00c2
                           0000C3   521 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   522 _SMB0ADR	=	0x00c3
                           0000C4   523 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   524 _ADC0GTL	=	0x00c4
                           0000C5   525 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   526 _ADC0GTH	=	0x00c5
                           0000C6   527 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   528 _ADC0LTL	=	0x00c6
                           0000C7   529 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   530 _ADC0LTH	=	0x00c7
                           0000C8   531 G$T2CON$0$0 == 0x00c8
                           0000C8   532 _T2CON	=	0x00c8
                           0000C9   533 G$T4CON$0$0 == 0x00c9
                           0000C9   534 _T4CON	=	0x00c9
                           0000CA   535 G$RCAP2L$0$0 == 0x00ca
                           0000CA   536 _RCAP2L	=	0x00ca
                           0000CB   537 G$RCAP2H$0$0 == 0x00cb
                           0000CB   538 _RCAP2H	=	0x00cb
                           0000CC   539 G$TL2$0$0 == 0x00cc
                           0000CC   540 _TL2	=	0x00cc
                           0000CD   541 G$TH2$0$0 == 0x00cd
                           0000CD   542 _TH2	=	0x00cd
                           0000CF   543 G$SMB0CR$0$0 == 0x00cf
                           0000CF   544 _SMB0CR	=	0x00cf
                           0000D0   545 G$PSW$0$0 == 0x00d0
                           0000D0   546 _PSW	=	0x00d0
                           0000D1   547 G$REF0CN$0$0 == 0x00d1
                           0000D1   548 _REF0CN	=	0x00d1
                           0000D2   549 G$DAC0L$0$0 == 0x00d2
                           0000D2   550 _DAC0L	=	0x00d2
                           0000D3   551 G$DAC0H$0$0 == 0x00d3
                           0000D3   552 _DAC0H	=	0x00d3
                           0000D4   553 G$DAC0CN$0$0 == 0x00d4
                           0000D4   554 _DAC0CN	=	0x00d4
                           0000D5   555 G$DAC1L$0$0 == 0x00d5
                           0000D5   556 _DAC1L	=	0x00d5
                           0000D6   557 G$DAC1H$0$0 == 0x00d6
                           0000D6   558 _DAC1H	=	0x00d6
                           0000D7   559 G$DAC1CN$0$0 == 0x00d7
                           0000D7   560 _DAC1CN	=	0x00d7
                           0000D8   561 G$PCA0CN$0$0 == 0x00d8
                           0000D8   562 _PCA0CN	=	0x00d8
                           0000D9   563 G$PCA0MD$0$0 == 0x00d9
                           0000D9   564 _PCA0MD	=	0x00d9
                           0000DA   565 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   566 _PCA0CPM0	=	0x00da
                           0000DB   567 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   568 _PCA0CPM1	=	0x00db
                           0000DC   569 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   570 _PCA0CPM2	=	0x00dc
                           0000DD   571 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   572 _PCA0CPM3	=	0x00dd
                           0000DE   573 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   574 _PCA0CPM4	=	0x00de
                           0000E0   575 G$ACC$0$0 == 0x00e0
                           0000E0   576 _ACC	=	0x00e0
                           0000E1   577 G$XBR0$0$0 == 0x00e1
                           0000E1   578 _XBR0	=	0x00e1
                           0000E2   579 G$XBR1$0$0 == 0x00e2
                           0000E2   580 _XBR1	=	0x00e2
                           0000E3   581 G$XBR2$0$0 == 0x00e3
                           0000E3   582 _XBR2	=	0x00e3
                           0000E4   583 G$RCAP4L$0$0 == 0x00e4
                           0000E4   584 _RCAP4L	=	0x00e4
                           0000E5   585 G$RCAP4H$0$0 == 0x00e5
                           0000E5   586 _RCAP4H	=	0x00e5
                           0000E6   587 G$EIE1$0$0 == 0x00e6
                           0000E6   588 _EIE1	=	0x00e6
                           0000E7   589 G$EIE2$0$0 == 0x00e7
                           0000E7   590 _EIE2	=	0x00e7
                           0000E8   591 G$ADC0CN$0$0 == 0x00e8
                           0000E8   592 _ADC0CN	=	0x00e8
                           0000E9   593 G$PCA0L$0$0 == 0x00e9
                           0000E9   594 _PCA0L	=	0x00e9
                           0000EA   595 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   596 _PCA0CPL0	=	0x00ea
                           0000EB   597 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   598 _PCA0CPL1	=	0x00eb
                           0000EC   599 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   600 _PCA0CPL2	=	0x00ec
                           0000ED   601 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   602 _PCA0CPL3	=	0x00ed
                           0000EE   603 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   604 _PCA0CPL4	=	0x00ee
                           0000EF   605 G$RSTSRC$0$0 == 0x00ef
                           0000EF   606 _RSTSRC	=	0x00ef
                           0000F0   607 G$B$0$0 == 0x00f0
                           0000F0   608 _B	=	0x00f0
                           0000F1   609 G$SCON1$0$0 == 0x00f1
                           0000F1   610 _SCON1	=	0x00f1
                           0000F2   611 G$SBUF1$0$0 == 0x00f2
                           0000F2   612 _SBUF1	=	0x00f2
                           0000F3   613 G$SADDR1$0$0 == 0x00f3
                           0000F3   614 _SADDR1	=	0x00f3
                           0000F4   615 G$TL4$0$0 == 0x00f4
                           0000F4   616 _TL4	=	0x00f4
                           0000F5   617 G$TH4$0$0 == 0x00f5
                           0000F5   618 _TH4	=	0x00f5
                           0000F6   619 G$EIP1$0$0 == 0x00f6
                           0000F6   620 _EIP1	=	0x00f6
                           0000F7   621 G$EIP2$0$0 == 0x00f7
                           0000F7   622 _EIP2	=	0x00f7
                           0000F8   623 G$SPI0CN$0$0 == 0x00f8
                           0000F8   624 _SPI0CN	=	0x00f8
                           0000F9   625 G$PCA0H$0$0 == 0x00f9
                           0000F9   626 _PCA0H	=	0x00f9
                           0000FA   627 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   628 _PCA0CPH0	=	0x00fa
                           0000FB   629 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   630 _PCA0CPH1	=	0x00fb
                           0000FC   631 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   632 _PCA0CPH2	=	0x00fc
                           0000FD   633 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   634 _PCA0CPH3	=	0x00fd
                           0000FE   635 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   636 _PCA0CPH4	=	0x00fe
                           0000FF   637 G$WDTCN$0$0 == 0x00ff
                           0000FF   638 _WDTCN	=	0x00ff
                           008C8A   639 G$TMR0$0$0 == 0x8c8a
                           008C8A   640 _TMR0	=	0x8c8a
                           008D8B   641 G$TMR1$0$0 == 0x8d8b
                           008D8B   642 _TMR1	=	0x8d8b
                           00CDCC   643 G$TMR2$0$0 == 0xcdcc
                           00CDCC   644 _TMR2	=	0xcdcc
                           00CBCA   645 G$RCAP2$0$0 == 0xcbca
                           00CBCA   646 _RCAP2	=	0xcbca
                           009594   647 G$TMR3$0$0 == 0x9594
                           009594   648 _TMR3	=	0x9594
                           009392   649 G$TMR3RL$0$0 == 0x9392
                           009392   650 _TMR3RL	=	0x9392
                           00F5F4   651 G$TMR4$0$0 == 0xf5f4
                           00F5F4   652 _TMR4	=	0xf5f4
                           00E5E4   653 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   654 _RCAP4	=	0xe5e4
                           00BFBE   655 G$ADC0$0$0 == 0xbfbe
                           00BFBE   656 _ADC0	=	0xbfbe
                           00C5C4   657 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   658 _ADC0GT	=	0xc5c4
                           00C7C6   659 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   660 _ADC0LT	=	0xc7c6
                           00D3D2   661 G$DAC0$0$0 == 0xd3d2
                           00D3D2   662 _DAC0	=	0xd3d2
                           00D6D5   663 G$DAC1$0$0 == 0xd6d5
                           00D6D5   664 _DAC1	=	0xd6d5
                           00F9E9   665 G$PCA0$0$0 == 0xf9e9
                           00F9E9   666 _PCA0	=	0xf9e9
                           00FAEA   667 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   668 _PCA0CP0	=	0xfaea
                           00FBEB   669 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   670 _PCA0CP1	=	0xfbeb
                           00FCEC   671 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   672 _PCA0CP2	=	0xfcec
                           00FDED   673 G$PCA0CP3$0$0 == 0xfded
                           00FDED   674 _PCA0CP3	=	0xfded
                           00FEEE   675 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   676 _PCA0CP4	=	0xfeee
                                    677 ;--------------------------------------------------------
                                    678 ; special function bits
                                    679 ;--------------------------------------------------------
                                    680 	.area RSEG    (ABS,DATA)
      000000                        681 	.org 0x0000
                           000080   682 G$P0_0$0$0 == 0x0080
                           000080   683 _P0_0	=	0x0080
                           000081   684 G$P0_1$0$0 == 0x0081
                           000081   685 _P0_1	=	0x0081
                           000082   686 G$P0_2$0$0 == 0x0082
                           000082   687 _P0_2	=	0x0082
                           000083   688 G$P0_3$0$0 == 0x0083
                           000083   689 _P0_3	=	0x0083
                           000084   690 G$P0_4$0$0 == 0x0084
                           000084   691 _P0_4	=	0x0084
                           000085   692 G$P0_5$0$0 == 0x0085
                           000085   693 _P0_5	=	0x0085
                           000086   694 G$P0_6$0$0 == 0x0086
                           000086   695 _P0_6	=	0x0086
                           000087   696 G$P0_7$0$0 == 0x0087
                           000087   697 _P0_7	=	0x0087
                           000088   698 G$IT0$0$0 == 0x0088
                           000088   699 _IT0	=	0x0088
                           000089   700 G$IE0$0$0 == 0x0089
                           000089   701 _IE0	=	0x0089
                           00008A   702 G$IT1$0$0 == 0x008a
                           00008A   703 _IT1	=	0x008a
                           00008B   704 G$IE1$0$0 == 0x008b
                           00008B   705 _IE1	=	0x008b
                           00008C   706 G$TR0$0$0 == 0x008c
                           00008C   707 _TR0	=	0x008c
                           00008D   708 G$TF0$0$0 == 0x008d
                           00008D   709 _TF0	=	0x008d
                           00008E   710 G$TR1$0$0 == 0x008e
                           00008E   711 _TR1	=	0x008e
                           00008F   712 G$TF1$0$0 == 0x008f
                           00008F   713 _TF1	=	0x008f
                           000090   714 G$P1_0$0$0 == 0x0090
                           000090   715 _P1_0	=	0x0090
                           000091   716 G$P1_1$0$0 == 0x0091
                           000091   717 _P1_1	=	0x0091
                           000092   718 G$P1_2$0$0 == 0x0092
                           000092   719 _P1_2	=	0x0092
                           000093   720 G$P1_3$0$0 == 0x0093
                           000093   721 _P1_3	=	0x0093
                           000094   722 G$P1_4$0$0 == 0x0094
                           000094   723 _P1_4	=	0x0094
                           000095   724 G$P1_5$0$0 == 0x0095
                           000095   725 _P1_5	=	0x0095
                           000096   726 G$P1_6$0$0 == 0x0096
                           000096   727 _P1_6	=	0x0096
                           000097   728 G$P1_7$0$0 == 0x0097
                           000097   729 _P1_7	=	0x0097
                           000098   730 G$RI$0$0 == 0x0098
                           000098   731 _RI	=	0x0098
                           000098   732 G$RI0$0$0 == 0x0098
                           000098   733 _RI0	=	0x0098
                           000099   734 G$TI$0$0 == 0x0099
                           000099   735 _TI	=	0x0099
                           000099   736 G$TI0$0$0 == 0x0099
                           000099   737 _TI0	=	0x0099
                           00009A   738 G$RB8$0$0 == 0x009a
                           00009A   739 _RB8	=	0x009a
                           00009A   740 G$RB80$0$0 == 0x009a
                           00009A   741 _RB80	=	0x009a
                           00009B   742 G$TB8$0$0 == 0x009b
                           00009B   743 _TB8	=	0x009b
                           00009B   744 G$TB80$0$0 == 0x009b
                           00009B   745 _TB80	=	0x009b
                           00009C   746 G$REN$0$0 == 0x009c
                           00009C   747 _REN	=	0x009c
                           00009C   748 G$REN0$0$0 == 0x009c
                           00009C   749 _REN0	=	0x009c
                           00009D   750 G$SM2$0$0 == 0x009d
                           00009D   751 _SM2	=	0x009d
                           00009D   752 G$SM20$0$0 == 0x009d
                           00009D   753 _SM20	=	0x009d
                           00009D   754 G$MCE0$0$0 == 0x009d
                           00009D   755 _MCE0	=	0x009d
                           00009E   756 G$SM1$0$0 == 0x009e
                           00009E   757 _SM1	=	0x009e
                           00009E   758 G$SM10$0$0 == 0x009e
                           00009E   759 _SM10	=	0x009e
                           00009F   760 G$SM0$0$0 == 0x009f
                           00009F   761 _SM0	=	0x009f
                           00009F   762 G$SM00$0$0 == 0x009f
                           00009F   763 _SM00	=	0x009f
                           00009F   764 G$S0MODE$0$0 == 0x009f
                           00009F   765 _S0MODE	=	0x009f
                           0000A0   766 G$P2_0$0$0 == 0x00a0
                           0000A0   767 _P2_0	=	0x00a0
                           0000A1   768 G$P2_1$0$0 == 0x00a1
                           0000A1   769 _P2_1	=	0x00a1
                           0000A2   770 G$P2_2$0$0 == 0x00a2
                           0000A2   771 _P2_2	=	0x00a2
                           0000A3   772 G$P2_3$0$0 == 0x00a3
                           0000A3   773 _P2_3	=	0x00a3
                           0000A4   774 G$P2_4$0$0 == 0x00a4
                           0000A4   775 _P2_4	=	0x00a4
                           0000A5   776 G$P2_5$0$0 == 0x00a5
                           0000A5   777 _P2_5	=	0x00a5
                           0000A6   778 G$P2_6$0$0 == 0x00a6
                           0000A6   779 _P2_6	=	0x00a6
                           0000A7   780 G$P2_7$0$0 == 0x00a7
                           0000A7   781 _P2_7	=	0x00a7
                           0000A8   782 G$EX0$0$0 == 0x00a8
                           0000A8   783 _EX0	=	0x00a8
                           0000A9   784 G$ET0$0$0 == 0x00a9
                           0000A9   785 _ET0	=	0x00a9
                           0000AA   786 G$EX1$0$0 == 0x00aa
                           0000AA   787 _EX1	=	0x00aa
                           0000AB   788 G$ET1$0$0 == 0x00ab
                           0000AB   789 _ET1	=	0x00ab
                           0000AC   790 G$ES0$0$0 == 0x00ac
                           0000AC   791 _ES0	=	0x00ac
                           0000AC   792 G$ES$0$0 == 0x00ac
                           0000AC   793 _ES	=	0x00ac
                           0000AD   794 G$ET2$0$0 == 0x00ad
                           0000AD   795 _ET2	=	0x00ad
                           0000AF   796 G$EA$0$0 == 0x00af
                           0000AF   797 _EA	=	0x00af
                           0000B0   798 G$P3_0$0$0 == 0x00b0
                           0000B0   799 _P3_0	=	0x00b0
                           0000B1   800 G$P3_1$0$0 == 0x00b1
                           0000B1   801 _P3_1	=	0x00b1
                           0000B2   802 G$P3_2$0$0 == 0x00b2
                           0000B2   803 _P3_2	=	0x00b2
                           0000B3   804 G$P3_3$0$0 == 0x00b3
                           0000B3   805 _P3_3	=	0x00b3
                           0000B4   806 G$P3_4$0$0 == 0x00b4
                           0000B4   807 _P3_4	=	0x00b4
                           0000B5   808 G$P3_5$0$0 == 0x00b5
                           0000B5   809 _P3_5	=	0x00b5
                           0000B6   810 G$P3_6$0$0 == 0x00b6
                           0000B6   811 _P3_6	=	0x00b6
                           0000B7   812 G$P3_7$0$0 == 0x00b7
                           0000B7   813 _P3_7	=	0x00b7
                           0000B8   814 G$PX0$0$0 == 0x00b8
                           0000B8   815 _PX0	=	0x00b8
                           0000B9   816 G$PT0$0$0 == 0x00b9
                           0000B9   817 _PT0	=	0x00b9
                           0000BA   818 G$PX1$0$0 == 0x00ba
                           0000BA   819 _PX1	=	0x00ba
                           0000BB   820 G$PT1$0$0 == 0x00bb
                           0000BB   821 _PT1	=	0x00bb
                           0000BC   822 G$PS0$0$0 == 0x00bc
                           0000BC   823 _PS0	=	0x00bc
                           0000BC   824 G$PS$0$0 == 0x00bc
                           0000BC   825 _PS	=	0x00bc
                           0000BD   826 G$PT2$0$0 == 0x00bd
                           0000BD   827 _PT2	=	0x00bd
                           0000C0   828 G$SMBTOE$0$0 == 0x00c0
                           0000C0   829 _SMBTOE	=	0x00c0
                           0000C1   830 G$SMBFTE$0$0 == 0x00c1
                           0000C1   831 _SMBFTE	=	0x00c1
                           0000C2   832 G$AA$0$0 == 0x00c2
                           0000C2   833 _AA	=	0x00c2
                           0000C3   834 G$SI$0$0 == 0x00c3
                           0000C3   835 _SI	=	0x00c3
                           0000C4   836 G$STO$0$0 == 0x00c4
                           0000C4   837 _STO	=	0x00c4
                           0000C5   838 G$STA$0$0 == 0x00c5
                           0000C5   839 _STA	=	0x00c5
                           0000C6   840 G$ENSMB$0$0 == 0x00c6
                           0000C6   841 _ENSMB	=	0x00c6
                           0000C7   842 G$BUSY$0$0 == 0x00c7
                           0000C7   843 _BUSY	=	0x00c7
                           0000C8   844 G$CPRL2$0$0 == 0x00c8
                           0000C8   845 _CPRL2	=	0x00c8
                           0000C9   846 G$CT2$0$0 == 0x00c9
                           0000C9   847 _CT2	=	0x00c9
                           0000CA   848 G$TR2$0$0 == 0x00ca
                           0000CA   849 _TR2	=	0x00ca
                           0000CB   850 G$EXEN2$0$0 == 0x00cb
                           0000CB   851 _EXEN2	=	0x00cb
                           0000CC   852 G$TCLK$0$0 == 0x00cc
                           0000CC   853 _TCLK	=	0x00cc
                           0000CD   854 G$RCLK$0$0 == 0x00cd
                           0000CD   855 _RCLK	=	0x00cd
                           0000CE   856 G$EXF2$0$0 == 0x00ce
                           0000CE   857 _EXF2	=	0x00ce
                           0000CF   858 G$TF2$0$0 == 0x00cf
                           0000CF   859 _TF2	=	0x00cf
                           0000D0   860 G$P$0$0 == 0x00d0
                           0000D0   861 _P	=	0x00d0
                           0000D1   862 G$F1$0$0 == 0x00d1
                           0000D1   863 _F1	=	0x00d1
                           0000D2   864 G$OV$0$0 == 0x00d2
                           0000D2   865 _OV	=	0x00d2
                           0000D3   866 G$RS0$0$0 == 0x00d3
                           0000D3   867 _RS0	=	0x00d3
                           0000D4   868 G$RS1$0$0 == 0x00d4
                           0000D4   869 _RS1	=	0x00d4
                           0000D5   870 G$F0$0$0 == 0x00d5
                           0000D5   871 _F0	=	0x00d5
                           0000D6   872 G$AC$0$0 == 0x00d6
                           0000D6   873 _AC	=	0x00d6
                           0000D7   874 G$CY$0$0 == 0x00d7
                           0000D7   875 _CY	=	0x00d7
                           0000D8   876 G$CCF0$0$0 == 0x00d8
                           0000D8   877 _CCF0	=	0x00d8
                           0000D9   878 G$CCF1$0$0 == 0x00d9
                           0000D9   879 _CCF1	=	0x00d9
                           0000DA   880 G$CCF2$0$0 == 0x00da
                           0000DA   881 _CCF2	=	0x00da
                           0000DB   882 G$CCF3$0$0 == 0x00db
                           0000DB   883 _CCF3	=	0x00db
                           0000DC   884 G$CCF4$0$0 == 0x00dc
                           0000DC   885 _CCF4	=	0x00dc
                           0000DE   886 G$CR$0$0 == 0x00de
                           0000DE   887 _CR	=	0x00de
                           0000DF   888 G$CF$0$0 == 0x00df
                           0000DF   889 _CF	=	0x00df
                           0000E8   890 G$ADLJST$0$0 == 0x00e8
                           0000E8   891 _ADLJST	=	0x00e8
                           0000E8   892 G$AD0LJST$0$0 == 0x00e8
                           0000E8   893 _AD0LJST	=	0x00e8
                           0000E9   894 G$ADWINT$0$0 == 0x00e9
                           0000E9   895 _ADWINT	=	0x00e9
                           0000E9   896 G$AD0WINT$0$0 == 0x00e9
                           0000E9   897 _AD0WINT	=	0x00e9
                           0000EA   898 G$ADSTM0$0$0 == 0x00ea
                           0000EA   899 _ADSTM0	=	0x00ea
                           0000EA   900 G$AD0CM0$0$0 == 0x00ea
                           0000EA   901 _AD0CM0	=	0x00ea
                           0000EB   902 G$ADSTM1$0$0 == 0x00eb
                           0000EB   903 _ADSTM1	=	0x00eb
                           0000EB   904 G$AD0CM1$0$0 == 0x00eb
                           0000EB   905 _AD0CM1	=	0x00eb
                           0000EC   906 G$ADBUSY$0$0 == 0x00ec
                           0000EC   907 _ADBUSY	=	0x00ec
                           0000EC   908 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   909 _AD0BUSY	=	0x00ec
                           0000ED   910 G$ADCINT$0$0 == 0x00ed
                           0000ED   911 _ADCINT	=	0x00ed
                           0000ED   912 G$AD0INT$0$0 == 0x00ed
                           0000ED   913 _AD0INT	=	0x00ed
                           0000EE   914 G$ADCTM$0$0 == 0x00ee
                           0000EE   915 _ADCTM	=	0x00ee
                           0000EE   916 G$AD0TM$0$0 == 0x00ee
                           0000EE   917 _AD0TM	=	0x00ee
                           0000EF   918 G$ADCEN$0$0 == 0x00ef
                           0000EF   919 _ADCEN	=	0x00ef
                           0000EF   920 G$AD0EN$0$0 == 0x00ef
                           0000EF   921 _AD0EN	=	0x00ef
                           0000F8   922 G$SPIEN$0$0 == 0x00f8
                           0000F8   923 _SPIEN	=	0x00f8
                           0000F9   924 G$MSTEN$0$0 == 0x00f9
                           0000F9   925 _MSTEN	=	0x00f9
                           0000FA   926 G$SLVSEL$0$0 == 0x00fa
                           0000FA   927 _SLVSEL	=	0x00fa
                           0000FB   928 G$TXBSY$0$0 == 0x00fb
                           0000FB   929 _TXBSY	=	0x00fb
                           0000FC   930 G$RXOVRN$0$0 == 0x00fc
                           0000FC   931 _RXOVRN	=	0x00fc
                           0000FD   932 G$MODF$0$0 == 0x00fd
                           0000FD   933 _MODF	=	0x00fd
                           0000FE   934 G$WCOL$0$0 == 0x00fe
                           0000FE   935 _WCOL	=	0x00fe
                           0000FF   936 G$SPIF$0$0 == 0x00ff
                           0000FF   937 _SPIF	=	0x00ff
                           0000C7   938 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   939 _BUS_BUSY	=	0x00c7
                           0000C6   940 G$BUS_EN$0$0 == 0x00c6
                           0000C6   941 _BUS_EN	=	0x00c6
                           0000C5   942 G$BUS_START$0$0 == 0x00c5
                           0000C5   943 _BUS_START	=	0x00c5
                           0000C4   944 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   945 _BUS_STOP	=	0x00c4
                           0000C3   946 G$BUS_INT$0$0 == 0x00c3
                           0000C3   947 _BUS_INT	=	0x00c3
                           0000C2   948 G$BUS_AA$0$0 == 0x00c2
                           0000C2   949 _BUS_AA	=	0x00c2
                           0000C1   950 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   951 _BUS_FTE	=	0x00c1
                           0000C0   952 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   953 _BUS_TOE	=	0x00c0
                           000083   954 G$BUS_SCL$0$0 == 0x0083
                           000083   955 _BUS_SCL	=	0x0083
                           0000B7   956 G$RUN$0$0 == 0x00b7
                           0000B7   957 _RUN	=	0x00b7
                                    958 ;--------------------------------------------------------
                                    959 ; overlayable register banks
                                    960 ;--------------------------------------------------------
                                    961 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        962 	.ds 8
                                    963 ;--------------------------------------------------------
                                    964 ; internal ram data
                                    965 ;--------------------------------------------------------
                                    966 	.area DSEG    (DATA)
                           000000   967 G$Data2$0$0==.
      000022                        968 _Data2::
      000022                        969 	.ds 3
                           000003   970 LLab4andahalf.aligned_alloc$size$1$26==.
      000025                        971 _aligned_alloc_PARM_2:
      000025                        972 	.ds 2
                           000005   973 LLab4andahalf.lcd_clear$NumBytes$1$85==.
      000027                        974 _lcd_clear_NumBytes_1_85:
      000027                        975 	.ds 1
                           000006   976 LLab4andahalf.lcd_clear$Cmd$1$85==.
      000028                        977 _lcd_clear_Cmd_1_85:
      000028                        978 	.ds 2
                           000008   979 LLab4andahalf.read_keypad$Data$1$86==.
      00002A                        980 _read_keypad_Data_1_86:
      00002A                        981 	.ds 2
                           00000A   982 LLab4andahalf.i2c_write_data$start_reg$1$105==.
      00002C                        983 _i2c_write_data_PARM_2:
      00002C                        984 	.ds 1
                           00000B   985 LLab4andahalf.i2c_write_data$buffer$1$105==.
      00002D                        986 _i2c_write_data_PARM_3:
      00002D                        987 	.ds 3
                           00000E   988 LLab4andahalf.i2c_write_data$num_bytes$1$105==.
      000030                        989 _i2c_write_data_PARM_4:
      000030                        990 	.ds 1
                           00000F   991 LLab4andahalf.i2c_read_data$start_reg$1$107==.
      000031                        992 _i2c_read_data_PARM_2:
      000031                        993 	.ds 1
                           000010   994 LLab4andahalf.i2c_read_data$buffer$1$107==.
      000032                        995 _i2c_read_data_PARM_3:
      000032                        996 	.ds 3
                           000013   997 LLab4andahalf.i2c_read_data$num_bytes$1$107==.
      000035                        998 _i2c_read_data_PARM_4:
      000035                        999 	.ds 1
                           000014  1000 G$MOTOR_STOP$0$0==.
      000036                       1001 _MOTOR_STOP::
      000036                       1002 	.ds 2
                           000016  1003 G$MOTOR_MAX$0$0==.
      000038                       1004 _MOTOR_MAX::
      000038                       1005 	.ds 2
                           000018  1006 G$MOTOR_MIN$0$0==.
      00003A                       1007 _MOTOR_MIN::
      00003A                       1008 	.ds 2
                           00001A  1009 G$MOTOR_PW$0$0==.
      00003C                       1010 _MOTOR_PW::
      00003C                       1011 	.ds 2
                           00001C  1012 G$SERVO_CENTER$0$0==.
      00003E                       1013 _SERVO_CENTER::
      00003E                       1014 	.ds 2
                           00001E  1015 G$SERVO_RIGHT$0$0==.
      000040                       1016 _SERVO_RIGHT::
      000040                       1017 	.ds 2
                           000020  1018 G$SERVO_LEFT$0$0==.
      000042                       1019 _SERVO_LEFT::
      000042                       1020 	.ds 2
                           000022  1021 G$SERVO_PW$0$0==.
      000044                       1022 _SERVO_PW::
      000044                       1023 	.ds 2
                           000024  1024 G$new_heading$0$0==.
      000046                       1025 _new_heading::
      000046                       1026 	.ds 1
                           000025  1027 G$new_range$0$0==.
      000047                       1028 _new_range::
      000047                       1029 	.ds 1
                           000026  1030 G$print_flag$0$0==.
      000048                       1031 _print_flag::
      000048                       1032 	.ds 1
                           000027  1033 G$range$0$0==.
      000049                       1034 _range::
      000049                       1035 	.ds 2
                           000029  1036 G$light$0$0==.
      00004B                       1037 _light::
      00004B                       1038 	.ds 2
                           00002B  1039 G$heading$0$0==.
      00004D                       1040 _heading::
      00004D                       1041 	.ds 2
                           00002D  1042 G$r_count$0$0==.
      00004F                       1043 _r_count::
      00004F                       1044 	.ds 1
                           00002E  1045 G$h_count$0$0==.
      000050                       1046 _h_count::
      000050                       1047 	.ds 1
                           00002F  1048 G$print_count$0$0==.
      000051                       1049 _print_count::
      000051                       1050 	.ds 1
                           000030  1051 G$nCounts$0$0==.
      000052                       1052 _nCounts::
      000052                       1053 	.ds 1
                           000031  1054 G$desired_heading$0$0==.
      000053                       1055 _desired_heading::
      000053                       1056 	.ds 2
                           000033  1057 G$desired_range$0$0==.
      000055                       1058 _desired_range::
      000055                       1059 	.ds 2
                           000035  1060 G$error$0$0==.
      000057                       1061 _error::
      000057                       1062 	.ds 2
                           000037  1063 G$deriv$0$0==.
      000059                       1064 _deriv::
      000059                       1065 	.ds 2
                           000039  1066 G$obstacle_threshold$0$0==.
      00005B                       1067 _obstacle_threshold::
      00005B                       1068 	.ds 1
                           00003A  1069 G$brightness_threshold$0$0==.
      00005C                       1070 _brightness_threshold::
      00005C                       1071 	.ds 1
                           00003B  1072 G$Data$0$0==.
      00005D                       1073 _Data::
      00005D                       1074 	.ds 2
                           00003D  1075 G$ranger_select$0$0==.
      00005F                       1076 _ranger_select::
      00005F                       1077 	.ds 1
                           00003E  1078 G$drivegain$0$0==.
      000060                       1079 _drivegain::
      000060                       1080 	.ds 1
                           00003F  1081 G$run_stop$0$0==.
      000061                       1082 _run_stop::
      000061                       1083 	.ds 1
                           000040  1084 G$set_heading$0$0==.
      000062                       1085 _set_heading::
      000062                       1086 	.ds 2
                           000042  1087 G$pot_val$0$0==.
      000064                       1088 _pot_val::
      000064                       1089 	.ds 1
                           000043  1090 LLab4andahalf.read_AD_input$cast$1$198==.
      000065                       1091 _read_AD_input_PARM_2:
      000065                       1092 	.ds 1
                                   1093 ;--------------------------------------------------------
                                   1094 ; overlayable items in internal ram 
                                   1095 ;--------------------------------------------------------
                                   1096 	.area	OSEG    (OVR,DATA)
                                   1097 	.area	OSEG    (OVR,DATA)
                                   1098 	.area	OSEG    (OVR,DATA)
                                   1099 	.area	OSEG    (OVR,DATA)
                                   1100 	.area	OSEG    (OVR,DATA)
                                   1101 	.area	OSEG    (OVR,DATA)
                                   1102 	.area	OSEG    (OVR,DATA)
                                   1103 ;--------------------------------------------------------
                                   1104 ; Stack segment in internal ram 
                                   1105 ;--------------------------------------------------------
                                   1106 	.area	SSEG
      000080                       1107 __start__stack:
      000080                       1108 	.ds	1
                                   1109 
                                   1110 ;--------------------------------------------------------
                                   1111 ; indirectly addressable internal ram data
                                   1112 ;--------------------------------------------------------
                                   1113 	.area ISEG    (DATA)
                                   1114 ;--------------------------------------------------------
                                   1115 ; absolute internal ram data
                                   1116 ;--------------------------------------------------------
                                   1117 	.area IABS    (ABS,DATA)
                                   1118 	.area IABS    (ABS,DATA)
                                   1119 ;--------------------------------------------------------
                                   1120 ; bit data
                                   1121 ;--------------------------------------------------------
                                   1122 	.area BSEG    (BIT)
                                   1123 ;--------------------------------------------------------
                                   1124 ; paged external ram data
                                   1125 ;--------------------------------------------------------
                                   1126 	.area PSEG    (PAG,XDATA)
                                   1127 ;--------------------------------------------------------
                                   1128 ; external ram data
                                   1129 ;--------------------------------------------------------
                                   1130 	.area XSEG    (XDATA)
                           000000  1131 LLab4andahalf.lcd_print$text$1$81==.
      000001                       1132 _lcd_print_text_1_81:
      000001                       1133 	.ds 80
                                   1134 ;--------------------------------------------------------
                                   1135 ; absolute external ram data
                                   1136 ;--------------------------------------------------------
                                   1137 	.area XABS    (ABS,XDATA)
                                   1138 ;--------------------------------------------------------
                                   1139 ; external initialized ram data
                                   1140 ;--------------------------------------------------------
                                   1141 	.area XISEG   (XDATA)
                                   1142 	.area HOME    (CODE)
                                   1143 	.area GSINIT0 (CODE)
                                   1144 	.area GSINIT1 (CODE)
                                   1145 	.area GSINIT2 (CODE)
                                   1146 	.area GSINIT3 (CODE)
                                   1147 	.area GSINIT4 (CODE)
                                   1148 	.area GSINIT5 (CODE)
                                   1149 	.area GSINIT  (CODE)
                                   1150 	.area GSFINAL (CODE)
                                   1151 	.area CSEG    (CODE)
                                   1152 ;--------------------------------------------------------
                                   1153 ; interrupt vector 
                                   1154 ;--------------------------------------------------------
                                   1155 	.area HOME    (CODE)
      000000                       1156 __interrupt_vect:
      000000 02 00 51         [24] 1157 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1158 	reti
      000004                       1159 	.ds	7
      00000B 32               [24] 1160 	reti
      00000C                       1161 	.ds	7
      000013 32               [24] 1162 	reti
      000014                       1163 	.ds	7
      00001B 32               [24] 1164 	reti
      00001C                       1165 	.ds	7
      000023 32               [24] 1166 	reti
      000024                       1167 	.ds	7
      00002B 32               [24] 1168 	reti
      00002C                       1169 	.ds	7
      000033 32               [24] 1170 	reti
      000034                       1171 	.ds	7
      00003B 32               [24] 1172 	reti
      00003C                       1173 	.ds	7
      000043 32               [24] 1174 	reti
      000044                       1175 	.ds	7
      00004B 02 0E 5D         [24] 1176 	ljmp	_PCA_ISR
                                   1177 ;--------------------------------------------------------
                                   1178 ; global & static initialisations
                                   1179 ;--------------------------------------------------------
                                   1180 	.area HOME    (CODE)
                                   1181 	.area GSINIT  (CODE)
                                   1182 	.area GSFINAL (CODE)
                                   1183 	.area GSINIT  (CODE)
                                   1184 	.globl __sdcc_gsinit_startup
                                   1185 	.globl __sdcc_program_startup
                                   1186 	.globl __start__stack
                                   1187 	.globl __mcs51_genXINIT
                                   1188 	.globl __mcs51_genXRAMCLEAR
                                   1189 	.globl __mcs51_genRAMCLEAR
                           000000  1190 	C$Lab4andahalf.c$33$1$211 ==.
                                   1191 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:33: unsigned int MOTOR_STOP = 2760;
      0000AA 75 36 C8         [24] 1192 	mov	_MOTOR_STOP,#0xc8
      0000AD 75 37 0A         [24] 1193 	mov	(_MOTOR_STOP + 1),#0x0a
                           000006  1194 	C$Lab4andahalf.c$34$1$211 ==.
                                   1195 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:34: unsigned int MOTOR_MAX = 3500;
      0000B0 75 38 AC         [24] 1196 	mov	_MOTOR_MAX,#0xac
      0000B3 75 39 0D         [24] 1197 	mov	(_MOTOR_MAX + 1),#0x0d
                           00000C  1198 	C$Lab4andahalf.c$35$1$211 ==.
                                   1199 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:35: unsigned int MOTOR_MIN = 2030;
      0000B6 75 3A EE         [24] 1200 	mov	_MOTOR_MIN,#0xee
      0000B9 75 3B 07         [24] 1201 	mov	(_MOTOR_MIN + 1),#0x07
                           000012  1202 	C$Lab4andahalf.c$36$1$211 ==.
                                   1203 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:36: unsigned int MOTOR_PW = 0;
      0000BC E4               [12] 1204 	clr	a
      0000BD F5 3C            [12] 1205 	mov	_MOTOR_PW,a
      0000BF F5 3D            [12] 1206 	mov	(_MOTOR_PW + 1),a
                           000017  1207 	C$Lab4andahalf.c$37$1$211 ==.
                                   1208 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:37: unsigned int SERVO_CENTER = 2834;
      0000C1 75 3E 12         [24] 1209 	mov	_SERVO_CENTER,#0x12
      0000C4 75 3F 0B         [24] 1210 	mov	(_SERVO_CENTER + 1),#0x0b
                           00001D  1211 	C$Lab4andahalf.c$38$1$211 ==.
                                   1212 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:38: unsigned int SERVO_RIGHT = 3374;
      0000C7 75 40 2E         [24] 1213 	mov	_SERVO_RIGHT,#0x2e
      0000CA 75 41 0D         [24] 1214 	mov	(_SERVO_RIGHT + 1),#0x0d
                           000023  1215 	C$Lab4andahalf.c$39$1$211 ==.
                                   1216 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:39: unsigned int SERVO_LEFT = 2294;
      0000CD 75 42 F6         [24] 1217 	mov	_SERVO_LEFT,#0xf6
      0000D0 75 43 08         [24] 1218 	mov	(_SERVO_LEFT + 1),#0x08
                           000029  1219 	C$Lab4andahalf.c$40$1$211 ==.
                                   1220 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:40: unsigned int SERVO_PW = 0;
      0000D3 F5 44            [12] 1221 	mov	_SERVO_PW,a
      0000D5 F5 45            [12] 1222 	mov	(_SERVO_PW + 1),a
                           00002D  1223 	C$Lab4andahalf.c$42$1$211 ==.
                                   1224 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:42: unsigned char new_heading = 0; // flag for count of compass timing
                                   1225 ;	1-genFromRTrack replaced	mov	_new_heading,#0x00
      0000D7 F5 46            [12] 1226 	mov	_new_heading,a
                           00002F  1227 	C$Lab4andahalf.c$43$1$211 ==.
                                   1228 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:43: unsigned char new_range = 0; // flag for count of ranger timing
                                   1229 ;	1-genFromRTrack replaced	mov	_new_range,#0x00
      0000D9 F5 47            [12] 1230 	mov	_new_range,a
                           000031  1231 	C$Lab4andahalf.c$44$1$211 ==.
                                   1232 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:44: unsigned char print_flag = 0; // flag for count of printing
                                   1233 ;	1-genFromRTrack replaced	mov	_print_flag,#0x00
      0000DB F5 48            [12] 1234 	mov	_print_flag,a
                           000033  1235 	C$Lab4andahalf.c$49$1$211 ==.
                                   1236 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:49: int deriv = 0;
      0000DD F5 59            [12] 1237 	mov	_deriv,a
      0000DF F5 5A            [12] 1238 	mov	(_deriv + 1),a
                           000037  1239 	C$Lab4andahalf.c$50$1$211 ==.
                                   1240 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:50: unsigned char obstacle_threshold = 60;
      0000E1 75 5B 3C         [24] 1241 	mov	_obstacle_threshold,#0x3c
                           00003A  1242 	C$Lab4andahalf.c$51$1$211 ==.
                                   1243 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:51: unsigned char brightness_threshold = 200;
      0000E4 75 5C C8         [24] 1244 	mov	_brightness_threshold,#0xc8
                           00003D  1245 	C$Lab4andahalf.c$55$1$211 ==.
                                   1246 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:55: unsigned char run_stop = 0;
                                   1247 ;	1-genFromRTrack replaced	mov	_run_stop,#0x00
      0000E7 F5 61            [12] 1248 	mov	_run_stop,a
                                   1249 	.area GSFINAL (CODE)
      0000E9 02 00 4E         [24] 1250 	ljmp	__sdcc_program_startup
                                   1251 ;--------------------------------------------------------
                                   1252 ; Home
                                   1253 ;--------------------------------------------------------
                                   1254 	.area HOME    (CODE)
                                   1255 	.area HOME    (CODE)
      00004E                       1256 __sdcc_program_startup:
      00004E 02 05 F2         [24] 1257 	ljmp	_main
                                   1258 ;	return from main will return to caller
                                   1259 ;--------------------------------------------------------
                                   1260 ; code
                                   1261 ;--------------------------------------------------------
                                   1262 	.area CSEG    (CODE)
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1265 ;------------------------------------------------------------
                                   1266 ;i                         Allocated to registers r6 r7 
                                   1267 ;------------------------------------------------------------
                           000000  1268 	G$SYSCLK_Init$0$0 ==.
                           000000  1269 	C$c8051_SDCC.h$62$0$0 ==.
                                   1270 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function SYSCLK_Init
                                   1273 ;	-----------------------------------------
      0000EC                       1274 _SYSCLK_Init:
                           000007  1275 	ar7 = 0x07
                           000006  1276 	ar6 = 0x06
                           000005  1277 	ar5 = 0x05
                           000004  1278 	ar4 = 0x04
                           000003  1279 	ar3 = 0x03
                           000002  1280 	ar2 = 0x02
                           000001  1281 	ar1 = 0x01
                           000000  1282 	ar0 = 0x00
                           000000  1283 	C$c8051_SDCC.h$66$1$2 ==.
                                   1284 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000EC 75 B1 67         [24] 1285 	mov	_OSCXCN,#0x67
                           000003  1286 	C$c8051_SDCC.h$69$1$2 ==.
                                   1287 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000EF 7E 00            [12] 1288 	mov	r6,#0x00
      0000F1 7F 01            [12] 1289 	mov	r7,#0x01
      0000F3                       1290 00107$:
      0000F3 EE               [12] 1291 	mov	a,r6
      0000F4 24 FF            [12] 1292 	add	a,#0xff
      0000F6 FC               [12] 1293 	mov	r4,a
      0000F7 EF               [12] 1294 	mov	a,r7
      0000F8 34 FF            [12] 1295 	addc	a,#0xff
      0000FA FD               [12] 1296 	mov	r5,a
      0000FB 8C 06            [24] 1297 	mov	ar6,r4
      0000FD 8D 07            [24] 1298 	mov	ar7,r5
      0000FF EC               [12] 1299 	mov	a,r4
      000100 4D               [12] 1300 	orl	a,r5
      000101 70 F0            [24] 1301 	jnz	00107$
                           000017  1302 	C$c8051_SDCC.h$71$1$2 ==.
                                   1303 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000103                       1304 00102$:
      000103 E5 B1            [12] 1305 	mov	a,_OSCXCN
      000105 30 E7 FB         [24] 1306 	jnb	acc.7,00102$
                           00001C  1307 	C$c8051_SDCC.h$73$1$2 ==.
                                   1308 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      000108 75 B2 88         [24] 1309 	mov	_OSCICN,#0x88
                           00001F  1310 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1311 	XG$SYSCLK_Init$0$0 ==.
      00010B 22               [24] 1312 	ret
                                   1313 ;------------------------------------------------------------
                                   1314 ;Allocation info for local variables in function 'UART0_Init'
                                   1315 ;------------------------------------------------------------
                           000020  1316 	G$UART0_Init$0$0 ==.
                           000020  1317 	C$c8051_SDCC.h$84$1$2 ==.
                                   1318 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function UART0_Init
                                   1321 ;	-----------------------------------------
      00010C                       1322 _UART0_Init:
                           000020  1323 	C$c8051_SDCC.h$86$1$4 ==.
                                   1324 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      00010C 75 98 50         [24] 1325 	mov	_SCON0,#0x50
                           000023  1326 	C$c8051_SDCC.h$87$1$4 ==.
                                   1327 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      00010F 75 89 20         [24] 1328 	mov	_TMOD,#0x20
                           000026  1329 	C$c8051_SDCC.h$88$1$4 ==.
                                   1330 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000112 75 8D DC         [24] 1331 	mov	_TH1,#0xdc
                           000029  1332 	C$c8051_SDCC.h$89$1$4 ==.
                                   1333 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      000115 D2 8E            [12] 1334 	setb	_TR1
                           00002B  1335 	C$c8051_SDCC.h$90$1$4 ==.
                                   1336 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      000117 43 8E 10         [24] 1337 	orl	_CKCON,#0x10
                           00002E  1338 	C$c8051_SDCC.h$91$1$4 ==.
                                   1339 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      00011A 43 87 80         [24] 1340 	orl	_PCON,#0x80
                           000031  1341 	C$c8051_SDCC.h$93$1$4 ==.
                                   1342 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      00011D D2 99            [12] 1343 	setb	_TI0
                           000033  1344 	C$c8051_SDCC.h$94$1$4 ==.
                                   1345 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      00011F 43 A4 01         [24] 1346 	orl	_P0MDOUT,#0x01
                           000036  1347 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1348 	XG$UART0_Init$0$0 ==.
      000122 22               [24] 1349 	ret
                                   1350 ;------------------------------------------------------------
                                   1351 ;Allocation info for local variables in function 'Sys_Init'
                                   1352 ;------------------------------------------------------------
                           000037  1353 	G$Sys_Init$0$0 ==.
                           000037  1354 	C$c8051_SDCC.h$103$1$4 ==.
                                   1355 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function Sys_Init
                                   1358 ;	-----------------------------------------
      000123                       1359 _Sys_Init:
                           000037  1360 	C$c8051_SDCC.h$105$1$6 ==.
                                   1361 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000123 75 FF DE         [24] 1362 	mov	_WDTCN,#0xde
                           00003A  1363 	C$c8051_SDCC.h$106$1$6 ==.
                                   1364 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000126 75 FF AD         [24] 1365 	mov	_WDTCN,#0xad
                           00003D  1366 	C$c8051_SDCC.h$108$1$6 ==.
                                   1367 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000129 12 00 EC         [24] 1368 	lcall	_SYSCLK_Init
                           000040  1369 	C$c8051_SDCC.h$109$1$6 ==.
                                   1370 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00012C 12 01 0C         [24] 1371 	lcall	_UART0_Init
                           000043  1372 	C$c8051_SDCC.h$111$1$6 ==.
                                   1373 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      00012F 43 E1 04         [24] 1374 	orl	_XBR0,#0x04
                           000046  1375 	C$c8051_SDCC.h$112$1$6 ==.
                                   1376 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000132 43 E3 40         [24] 1377 	orl	_XBR2,#0x40
                           000049  1378 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1379 	XG$Sys_Init$0$0 ==.
      000135 22               [24] 1380 	ret
                                   1381 ;------------------------------------------------------------
                                   1382 ;Allocation info for local variables in function 'putchar'
                                   1383 ;------------------------------------------------------------
                                   1384 ;c                         Allocated to registers r7 
                                   1385 ;------------------------------------------------------------
                           00004A  1386 	G$putchar$0$0 ==.
                           00004A  1387 	C$c8051_SDCC.h$129$1$6 ==.
                                   1388 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function putchar
                                   1391 ;	-----------------------------------------
      000136                       1392 _putchar:
      000136 AF 82            [24] 1393 	mov	r7,dpl
                           00004C  1394 	C$c8051_SDCC.h$132$1$8 ==.
                                   1395 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000138                       1396 00101$:
                           00004C  1397 	C$c8051_SDCC.h$133$1$8 ==.
                                   1398 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000138 10 99 02         [24] 1399 	jbc	_TI0,00112$
      00013B 80 FB            [24] 1400 	sjmp	00101$
      00013D                       1401 00112$:
                           000051  1402 	C$c8051_SDCC.h$134$1$8 ==.
                                   1403 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      00013D 8F 99            [24] 1404 	mov	_SBUF0,r7
                           000053  1405 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1406 	XG$putchar$0$0 ==.
      00013F 22               [24] 1407 	ret
                                   1408 ;------------------------------------------------------------
                                   1409 ;Allocation info for local variables in function 'getchar'
                                   1410 ;------------------------------------------------------------
                                   1411 ;c                         Allocated to registers r7 
                                   1412 ;------------------------------------------------------------
                           000054  1413 	G$getchar$0$0 ==.
                           000054  1414 	C$c8051_SDCC.h$154$1$8 ==.
                                   1415 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function getchar
                                   1418 ;	-----------------------------------------
      000140                       1419 _getchar:
                           000054  1420 	C$c8051_SDCC.h$157$1$10 ==.
                                   1421 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000140                       1422 00101$:
                           000054  1423 	C$c8051_SDCC.h$158$1$10 ==.
                                   1424 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000140 10 98 02         [24] 1425 	jbc	_RI0,00112$
      000143 80 FB            [24] 1426 	sjmp	00101$
      000145                       1427 00112$:
                           000059  1428 	C$c8051_SDCC.h$159$1$10 ==.
                                   1429 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000145 AF 99            [24] 1430 	mov	r7,_SBUF0
                           00005B  1431 	C$c8051_SDCC.h$160$1$10 ==.
                                   1432 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000147 8F 82            [24] 1433 	mov	dpl,r7
      000149 C0 07            [24] 1434 	push	ar7
      00014B 12 01 36         [24] 1435 	lcall	_putchar
      00014E D0 07            [24] 1436 	pop	ar7
                           000064  1437 	C$c8051_SDCC.h$161$1$10 ==.
                                   1438 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000150 8F 82            [24] 1439 	mov	dpl,r7
                           000066  1440 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1441 	XG$getchar$0$0 ==.
      000152 22               [24] 1442 	ret
                                   1443 ;------------------------------------------------------------
                                   1444 ;Allocation info for local variables in function 'getchar_nw'
                                   1445 ;------------------------------------------------------------
                                   1446 ;c                         Allocated to registers 
                                   1447 ;------------------------------------------------------------
                           000067  1448 	G$getchar_nw$0$0 ==.
                           000067  1449 	C$c8051_SDCC.h$168$1$10 ==.
                                   1450 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function getchar_nw
                                   1453 ;	-----------------------------------------
      000153                       1454 _getchar_nw:
                           000067  1455 	C$c8051_SDCC.h$171$1$12 ==.
                                   1456 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000153 20 98 05         [24] 1457 	jb	_RI0,00102$
      000156 75 82 FF         [24] 1458 	mov	dpl,#0xff
      000159 80 0B            [24] 1459 	sjmp	00104$
      00015B                       1460 00102$:
                           00006F  1461 	C$c8051_SDCC.h$174$2$13 ==.
                                   1462 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00015B C2 98            [12] 1463 	clr	_RI0
                           000071  1464 	C$c8051_SDCC.h$175$2$13 ==.
                                   1465 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00015D 85 99 82         [24] 1466 	mov	dpl,_SBUF0
                           000074  1467 	C$c8051_SDCC.h$176$2$13 ==.
                                   1468 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000160 12 01 36         [24] 1469 	lcall	_putchar
                           000077  1470 	C$c8051_SDCC.h$177$2$13 ==.
                                   1471 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000163 85 99 82         [24] 1472 	mov	dpl,_SBUF0
      000166                       1473 00104$:
                           00007A  1474 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1475 	XG$getchar_nw$0$0 ==.
      000166 22               [24] 1476 	ret
                                   1477 ;------------------------------------------------------------
                                   1478 ;Allocation info for local variables in function 'lcd_print'
                                   1479 ;------------------------------------------------------------
                                   1480 ;fmt                       Allocated to stack - _bp -5
                                   1481 ;len                       Allocated to registers r6 
                                   1482 ;i                         Allocated to registers 
                                   1483 ;ap                        Allocated to registers 
                                   1484 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1485 ;------------------------------------------------------------
                           00007B  1486 	G$lcd_print$0$0 ==.
                           00007B  1487 	C$i2c.h$84$1$12 ==.
                                   1488 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function lcd_print
                                   1491 ;	-----------------------------------------
      000167                       1492 _lcd_print:
      000167 C0 0F            [24] 1493 	push	_bp
      000169 85 81 0F         [24] 1494 	mov	_bp,sp
                           000080  1495 	C$i2c.h$90$1$81 ==.
                                   1496 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00016C E5 0F            [12] 1497 	mov	a,_bp
      00016E 24 FB            [12] 1498 	add	a,#0xfb
      000170 F8               [12] 1499 	mov	r0,a
      000171 86 82            [24] 1500 	mov	dpl,@r0
      000173 08               [12] 1501 	inc	r0
      000174 86 83            [24] 1502 	mov	dph,@r0
      000176 08               [12] 1503 	inc	r0
      000177 86 F0            [24] 1504 	mov	b,@r0
      000179 12 18 01         [24] 1505 	lcall	_strlen
      00017C E5 82            [12] 1506 	mov	a,dpl
      00017E 85 83 F0         [24] 1507 	mov	b,dph
      000181 45 F0            [12] 1508 	orl	a,b
      000183 70 02            [24] 1509 	jnz	00102$
      000185 80 62            [24] 1510 	sjmp	00109$
      000187                       1511 00102$:
                           00009B  1512 	C$i2c.h$92$2$82 ==.
                                   1513 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000187 E5 0F            [12] 1514 	mov	a,_bp
      000189 24 FB            [12] 1515 	add	a,#0xfb
      00018B FF               [12] 1516 	mov	r7,a
      00018C 8F 0B            [24] 1517 	mov	_vsprintf_PARM_3,r7
                           0000A2  1518 	C$i2c.h$93$1$81 ==.
                                   1519 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00018E E5 0F            [12] 1520 	mov	a,_bp
      000190 24 FB            [12] 1521 	add	a,#0xfb
      000192 F8               [12] 1522 	mov	r0,a
      000193 86 08            [24] 1523 	mov	_vsprintf_PARM_2,@r0
      000195 08               [12] 1524 	inc	r0
      000196 86 09            [24] 1525 	mov	(_vsprintf_PARM_2 + 1),@r0
      000198 08               [12] 1526 	inc	r0
      000199 86 0A            [24] 1527 	mov	(_vsprintf_PARM_2 + 2),@r0
      00019B 90 00 01         [24] 1528 	mov	dptr,#_lcd_print_text_1_81
      00019E 75 F0 00         [24] 1529 	mov	b,#0x00
      0001A1 12 10 60         [24] 1530 	lcall	_vsprintf
                           0000B8  1531 	C$i2c.h$96$1$81 ==.
                                   1532 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      0001A4 90 00 01         [24] 1533 	mov	dptr,#_lcd_print_text_1_81
      0001A7 75 F0 00         [24] 1534 	mov	b,#0x00
      0001AA 12 18 01         [24] 1535 	lcall	_strlen
      0001AD AE 82            [24] 1536 	mov	r6,dpl
                           0000C3  1537 	C$i2c.h$97$1$81 ==.
                                   1538 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001AF 7F 00            [12] 1539 	mov	r7,#0x00
      0001B1                       1540 00107$:
      0001B1 C3               [12] 1541 	clr	c
      0001B2 EF               [12] 1542 	mov	a,r7
      0001B3 9E               [12] 1543 	subb	a,r6
      0001B4 50 1F            [24] 1544 	jnc	00105$
                           0000CA  1545 	C$i2c.h$99$2$84 ==.
                                   1546 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      0001B6 EF               [12] 1547 	mov	a,r7
      0001B7 24 01            [12] 1548 	add	a,#_lcd_print_text_1_81
      0001B9 F5 82            [12] 1549 	mov	dpl,a
      0001BB E4               [12] 1550 	clr	a
      0001BC 34 00            [12] 1551 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001BE F5 83            [12] 1552 	mov	dph,a
      0001C0 E0               [24] 1553 	movx	a,@dptr
      0001C1 FD               [12] 1554 	mov	r5,a
      0001C2 BD 0A 0D         [24] 1555 	cjne	r5,#0x0a,00108$
      0001C5 EF               [12] 1556 	mov	a,r7
      0001C6 24 01            [12] 1557 	add	a,#_lcd_print_text_1_81
      0001C8 F5 82            [12] 1558 	mov	dpl,a
      0001CA E4               [12] 1559 	clr	a
      0001CB 34 00            [12] 1560 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001CD F5 83            [12] 1561 	mov	dph,a
      0001CF 74 0D            [12] 1562 	mov	a,#0x0d
      0001D1 F0               [24] 1563 	movx	@dptr,a
      0001D2                       1564 00108$:
                           0000E6  1565 	C$i2c.h$97$1$81 ==.
                                   1566 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001D2 0F               [12] 1567 	inc	r7
      0001D3 80 DC            [24] 1568 	sjmp	00107$
      0001D5                       1569 00105$:
                           0000E9  1570 	C$i2c.h$102$1$81 ==.
                                   1571 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001D5 75 2D 01         [24] 1572 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001D8 75 2E 00         [24] 1573 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001DB 75 2F 00         [24] 1574 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001DE 75 2C 00         [24] 1575 	mov	_i2c_write_data_PARM_2,#0x00
      0001E1 8E 30            [24] 1576 	mov	_i2c_write_data_PARM_4,r6
      0001E3 75 82 C6         [24] 1577 	mov	dpl,#0xc6
      0001E6 12 04 78         [24] 1578 	lcall	_i2c_write_data
      0001E9                       1579 00109$:
      0001E9 D0 0F            [24] 1580 	pop	_bp
                           0000FF  1581 	C$i2c.h$103$1$81 ==.
                           0000FF  1582 	XG$lcd_print$0$0 ==.
      0001EB 22               [24] 1583 	ret
                                   1584 ;------------------------------------------------------------
                                   1585 ;Allocation info for local variables in function 'lcd_clear'
                                   1586 ;------------------------------------------------------------
                                   1587 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1588 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1589 ;------------------------------------------------------------
                           000100  1590 	G$lcd_clear$0$0 ==.
                           000100  1591 	C$i2c.h$106$1$81 ==.
                                   1592 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1593 ;	-----------------------------------------
                                   1594 ;	 function lcd_clear
                                   1595 ;	-----------------------------------------
      0001EC                       1596 _lcd_clear:
                           000100  1597 	C$i2c.h$108$1$81 ==.
                                   1598 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001EC 75 27 00         [24] 1599 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1600 	C$i2c.h$110$1$85 ==.
                                   1601 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001EF                       1602 00101$:
      0001EF 74 C0            [12] 1603 	mov	a,#0x100 - 0x40
      0001F1 25 27            [12] 1604 	add	a,_lcd_clear_NumBytes_1_85
      0001F3 40 17            [24] 1605 	jc	00103$
      0001F5 75 32 27         [24] 1606 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001F8 75 33 00         [24] 1607 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001FB 75 34 40         [24] 1608 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001FE 75 31 00         [24] 1609 	mov	_i2c_read_data_PARM_2,#0x00
      000201 75 35 01         [24] 1610 	mov	_i2c_read_data_PARM_4,#0x01
      000204 75 82 C6         [24] 1611 	mov	dpl,#0xc6
      000207 12 04 F2         [24] 1612 	lcall	_i2c_read_data
      00020A 80 E3            [24] 1613 	sjmp	00101$
      00020C                       1614 00103$:
                           000120  1615 	C$i2c.h$112$1$85 ==.
                                   1616 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      00020C 75 28 0C         [24] 1617 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1618 	C$i2c.h$113$1$85 ==.
                                   1619 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      00020F 75 2D 28         [24] 1620 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      000212 75 2E 00         [24] 1621 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000215 75 2F 40         [24] 1622 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000218 75 2C 00         [24] 1623 	mov	_i2c_write_data_PARM_2,#0x00
      00021B 75 30 01         [24] 1624 	mov	_i2c_write_data_PARM_4,#0x01
      00021E 75 82 C6         [24] 1625 	mov	dpl,#0xc6
      000221 12 04 78         [24] 1626 	lcall	_i2c_write_data
                           000138  1627 	C$i2c.h$114$1$85 ==.
                           000138  1628 	XG$lcd_clear$0$0 ==.
      000224 22               [24] 1629 	ret
                                   1630 ;------------------------------------------------------------
                                   1631 ;Allocation info for local variables in function 'read_keypad'
                                   1632 ;------------------------------------------------------------
                                   1633 ;i                         Allocated to registers r7 
                                   1634 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1635 ;------------------------------------------------------------
                           000139  1636 	G$read_keypad$0$0 ==.
                           000139  1637 	C$i2c.h$117$1$85 ==.
                                   1638 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
                                   1639 ;	-----------------------------------------
                                   1640 ;	 function read_keypad
                                   1641 ;	-----------------------------------------
      000225                       1642 _read_keypad:
                           000139  1643 	C$i2c.h$121$1$86 ==.
                                   1644 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000225 75 32 2A         [24] 1645 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000228 75 33 00         [24] 1646 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      00022B 75 34 40         [24] 1647 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00022E 75 31 01         [24] 1648 	mov	_i2c_read_data_PARM_2,#0x01
      000231 75 35 02         [24] 1649 	mov	_i2c_read_data_PARM_4,#0x02
      000234 75 82 C6         [24] 1650 	mov	dpl,#0xc6
      000237 12 04 F2         [24] 1651 	lcall	_i2c_read_data
                           00014E  1652 	C$i2c.h$122$1$86 ==.
                                   1653 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      00023A 74 FF            [12] 1654 	mov	a,#0xff
      00023C B5 2A 05         [24] 1655 	cjne	a,_read_keypad_Data_1_86,00102$
      00023F 75 82 00         [24] 1656 	mov	dpl,#0x00
      000242 80 5F            [24] 1657 	sjmp	00116$
      000244                       1658 00102$:
                           000158  1659 	C$i2c.h$124$1$86 ==.
                                   1660 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000244 7F 00            [12] 1661 	mov	r7,#0x00
      000246 8F 06            [24] 1662 	mov	ar6,r7
      000248                       1663 00114$:
                           00015C  1664 	C$i2c.h$126$2$87 ==.
                                   1665 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000248 8E F0            [24] 1666 	mov	b,r6
      00024A 05 F0            [12] 1667 	inc	b
      00024C 7C 01            [12] 1668 	mov	r4,#0x01
      00024E 7D 00            [12] 1669 	mov	r5,#0x00
      000250 80 06            [24] 1670 	sjmp	00145$
      000252                       1671 00144$:
      000252 EC               [12] 1672 	mov	a,r4
      000253 2C               [12] 1673 	add	a,r4
      000254 FC               [12] 1674 	mov	r4,a
      000255 ED               [12] 1675 	mov	a,r5
      000256 33               [12] 1676 	rlc	a
      000257 FD               [12] 1677 	mov	r5,a
      000258                       1678 00145$:
      000258 D5 F0 F7         [24] 1679 	djnz	b,00144$
      00025B AA 2A            [24] 1680 	mov	r2,_read_keypad_Data_1_86
      00025D 7B 00            [12] 1681 	mov	r3,#0x00
      00025F EA               [12] 1682 	mov	a,r2
      000260 52 04            [12] 1683 	anl	ar4,a
      000262 EB               [12] 1684 	mov	a,r3
      000263 52 05            [12] 1685 	anl	ar5,a
      000265 EC               [12] 1686 	mov	a,r4
      000266 4D               [12] 1687 	orl	a,r5
      000267 60 07            [24] 1688 	jz	00115$
                           00017D  1689 	C$i2c.h$127$2$87 ==.
                                   1690 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      000269 74 31            [12] 1691 	mov	a,#0x31
      00026B 2F               [12] 1692 	add	a,r7
      00026C F5 82            [12] 1693 	mov	dpl,a
      00026E 80 33            [24] 1694 	sjmp	00116$
      000270                       1695 00115$:
                           000184  1696 	C$i2c.h$124$1$86 ==.
                                   1697 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000270 0E               [12] 1698 	inc	r6
      000271 8E 07            [24] 1699 	mov	ar7,r6
      000273 BE 08 00         [24] 1700 	cjne	r6,#0x08,00147$
      000276                       1701 00147$:
      000276 40 D0            [24] 1702 	jc	00114$
                           00018C  1703 	C$i2c.h$130$1$86 ==.
                                   1704 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000278 E5 2B            [12] 1705 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00027A 30 E0 05         [24] 1706 	jnb	acc.0,00107$
      00027D 75 82 39         [24] 1707 	mov	dpl,#0x39
      000280 80 21            [24] 1708 	sjmp	00116$
      000282                       1709 00107$:
                           000196  1710 	C$i2c.h$132$1$86 ==.
                                   1711 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000282 E5 2B            [12] 1712 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000284 30 E1 05         [24] 1713 	jnb	acc.1,00109$
      000287 75 82 2A         [24] 1714 	mov	dpl,#0x2a
      00028A 80 17            [24] 1715 	sjmp	00116$
      00028C                       1716 00109$:
                           0001A0  1717 	C$i2c.h$134$1$86 ==.
                                   1718 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00028C E5 2B            [12] 1719 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00028E 30 E2 05         [24] 1720 	jnb	acc.2,00111$
      000291 75 82 30         [24] 1721 	mov	dpl,#0x30
      000294 80 0D            [24] 1722 	sjmp	00116$
      000296                       1723 00111$:
                           0001AA  1724 	C$i2c.h$136$1$86 ==.
                                   1725 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000296 E5 2B            [12] 1726 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000298 30 E3 05         [24] 1727 	jnb	acc.3,00113$
      00029B 75 82 23         [24] 1728 	mov	dpl,#0x23
      00029E 80 03            [24] 1729 	sjmp	00116$
      0002A0                       1730 00113$:
                           0001B4  1731 	C$i2c.h$138$1$86 ==.
                                   1732 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      0002A0 75 82 FF         [24] 1733 	mov	dpl,#0xff
      0002A3                       1734 00116$:
                           0001B7  1735 	C$i2c.h$139$1$86 ==.
                           0001B7  1736 	XG$read_keypad$0$0 ==.
      0002A3 22               [24] 1737 	ret
                                   1738 ;------------------------------------------------------------
                                   1739 ;Allocation info for local variables in function 'kpd_input'
                                   1740 ;------------------------------------------------------------
                                   1741 ;mode                      Allocated to registers r7 
                                   1742 ;sum                       Allocated to registers r5 r6 
                                   1743 ;key                       Allocated to registers r3 
                                   1744 ;i                         Allocated to registers 
                                   1745 ;------------------------------------------------------------
                           0001B8  1746 	G$kpd_input$0$0 ==.
                           0001B8  1747 	C$i2c.h$151$1$86 ==.
                                   1748 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1749 ;	-----------------------------------------
                                   1750 ;	 function kpd_input
                                   1751 ;	-----------------------------------------
      0002A4                       1752 _kpd_input:
      0002A4 AF 82            [24] 1753 	mov	r7,dpl
                           0001BA  1754 	C$i2c.h$156$1$89 ==.
                                   1755 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1756 	C$i2c.h$159$1$89 ==.
                                   1757 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      0002A6 E4               [12] 1758 	clr	a
      0002A7 FD               [12] 1759 	mov	r5,a
      0002A8 FE               [12] 1760 	mov	r6,a
      0002A9 EF               [12] 1761 	mov	a,r7
      0002AA 70 1D            [24] 1762 	jnz	00102$
      0002AC C0 06            [24] 1763 	push	ar6
      0002AE C0 05            [24] 1764 	push	ar5
      0002B0 74 2D            [12] 1765 	mov	a,#___str_0
      0002B2 C0 E0            [24] 1766 	push	acc
      0002B4 74 19            [12] 1767 	mov	a,#(___str_0 >> 8)
      0002B6 C0 E0            [24] 1768 	push	acc
      0002B8 74 80            [12] 1769 	mov	a,#0x80
      0002BA C0 E0            [24] 1770 	push	acc
      0002BC 12 01 67         [24] 1771 	lcall	_lcd_print
      0002BF 15 81            [12] 1772 	dec	sp
      0002C1 15 81            [12] 1773 	dec	sp
      0002C3 15 81            [12] 1774 	dec	sp
      0002C5 D0 05            [24] 1775 	pop	ar5
      0002C7 D0 06            [24] 1776 	pop	ar6
      0002C9                       1777 00102$:
                           0001DD  1778 	C$i2c.h$161$1$89 ==.
                                   1779 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002C9 C0 06            [24] 1780 	push	ar6
      0002CB C0 05            [24] 1781 	push	ar5
      0002CD 74 08            [12] 1782 	mov	a,#0x08
      0002CF C0 E0            [24] 1783 	push	acc
      0002D1 E4               [12] 1784 	clr	a
      0002D2 C0 E0            [24] 1785 	push	acc
      0002D4 74 08            [12] 1786 	mov	a,#0x08
      0002D6 C0 E0            [24] 1787 	push	acc
      0002D8 E4               [12] 1788 	clr	a
      0002D9 C0 E0            [24] 1789 	push	acc
      0002DB 74 08            [12] 1790 	mov	a,#0x08
      0002DD C0 E0            [24] 1791 	push	acc
      0002DF E4               [12] 1792 	clr	a
      0002E0 C0 E0            [24] 1793 	push	acc
      0002E2 74 08            [12] 1794 	mov	a,#0x08
      0002E4 C0 E0            [24] 1795 	push	acc
      0002E6 E4               [12] 1796 	clr	a
      0002E7 C0 E0            [24] 1797 	push	acc
      0002E9 74 08            [12] 1798 	mov	a,#0x08
      0002EB C0 E0            [24] 1799 	push	acc
      0002ED E4               [12] 1800 	clr	a
      0002EE C0 E0            [24] 1801 	push	acc
      0002F0 74 43            [12] 1802 	mov	a,#___str_1
      0002F2 C0 E0            [24] 1803 	push	acc
      0002F4 74 19            [12] 1804 	mov	a,#(___str_1 >> 8)
      0002F6 C0 E0            [24] 1805 	push	acc
      0002F8 74 80            [12] 1806 	mov	a,#0x80
      0002FA C0 E0            [24] 1807 	push	acc
      0002FC 12 01 67         [24] 1808 	lcall	_lcd_print
      0002FF E5 81            [12] 1809 	mov	a,sp
      000301 24 F3            [12] 1810 	add	a,#0xf3
      000303 F5 81            [12] 1811 	mov	sp,a
                           000219  1812 	C$i2c.h$163$1$89 ==.
                                   1813 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      000305 90 A1 20         [24] 1814 	mov	dptr,#0xa120
      000308 75 F0 07         [24] 1815 	mov	b,#0x07
      00030B E4               [12] 1816 	clr	a
      00030C 12 04 13         [24] 1817 	lcall	_delay_time
      00030F D0 05            [24] 1818 	pop	ar5
      000311 D0 06            [24] 1819 	pop	ar6
                           000227  1820 	C$i2c.h$167$1$89 ==.
                                   1821 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000313 7F 00            [12] 1822 	mov	r7,#0x00
                           000229  1823 	C$i2c.h$169$3$92 ==.
                                   1824 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      000315                       1825 00104$:
      000315 C0 07            [24] 1826 	push	ar7
      000317 C0 06            [24] 1827 	push	ar6
      000319 C0 05            [24] 1828 	push	ar5
      00031B 12 02 25         [24] 1829 	lcall	_read_keypad
      00031E AC 82            [24] 1830 	mov	r4,dpl
      000320 D0 05            [24] 1831 	pop	ar5
      000322 D0 06            [24] 1832 	pop	ar6
      000324 D0 07            [24] 1833 	pop	ar7
      000326 8C 03            [24] 1834 	mov	ar3,r4
      000328 BC FF 02         [24] 1835 	cjne	r4,#0xff,00146$
      00032B 80 03            [24] 1836 	sjmp	00105$
      00032D                       1837 00146$:
      00032D BB 2A 17         [24] 1838 	cjne	r3,#0x2a,00106$
      000330                       1839 00105$:
      000330 90 27 10         [24] 1840 	mov	dptr,#0x2710
      000333 E4               [12] 1841 	clr	a
      000334 F5 F0            [12] 1842 	mov	b,a
      000336 C0 07            [24] 1843 	push	ar7
      000338 C0 06            [24] 1844 	push	ar6
      00033A C0 05            [24] 1845 	push	ar5
      00033C 12 04 13         [24] 1846 	lcall	_delay_time
      00033F D0 05            [24] 1847 	pop	ar5
      000341 D0 06            [24] 1848 	pop	ar6
      000343 D0 07            [24] 1849 	pop	ar7
      000345 80 CE            [24] 1850 	sjmp	00104$
      000347                       1851 00106$:
                           00025B  1852 	C$i2c.h$170$2$90 ==.
                                   1853 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000347 BB 23 2A         [24] 1854 	cjne	r3,#0x23,00114$
                           00025E  1855 	C$i2c.h$172$3$91 ==.
                                   1856 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      00034A                       1857 00107$:
      00034A C0 06            [24] 1858 	push	ar6
      00034C C0 05            [24] 1859 	push	ar5
      00034E 12 02 25         [24] 1860 	lcall	_read_keypad
      000351 AC 82            [24] 1861 	mov	r4,dpl
      000353 D0 05            [24] 1862 	pop	ar5
      000355 D0 06            [24] 1863 	pop	ar6
      000357 BC 23 13         [24] 1864 	cjne	r4,#0x23,00109$
      00035A 90 27 10         [24] 1865 	mov	dptr,#0x2710
      00035D E4               [12] 1866 	clr	a
      00035E F5 F0            [12] 1867 	mov	b,a
      000360 C0 06            [24] 1868 	push	ar6
      000362 C0 05            [24] 1869 	push	ar5
      000364 12 04 13         [24] 1870 	lcall	_delay_time
      000367 D0 05            [24] 1871 	pop	ar5
      000369 D0 06            [24] 1872 	pop	ar6
      00036B 80 DD            [24] 1873 	sjmp	00107$
      00036D                       1874 00109$:
                           000281  1875 	C$i2c.h$173$3$91 ==.
                                   1876 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00036D 8D 82            [24] 1877 	mov	dpl,r5
      00036F 8E 83            [24] 1878 	mov	dph,r6
      000371 02 04 12         [24] 1879 	ljmp	00119$
      000374                       1880 00114$:
                           000288  1881 	C$i2c.h$177$3$92 ==.
                                   1882 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000374 8B 02            [24] 1883 	mov	ar2,r3
      000376 7C 00            [12] 1884 	mov	r4,#0x00
      000378 C0 07            [24] 1885 	push	ar7
      00037A C0 06            [24] 1886 	push	ar6
      00037C C0 05            [24] 1887 	push	ar5
      00037E C0 04            [24] 1888 	push	ar4
      000380 C0 03            [24] 1889 	push	ar3
      000382 C0 02            [24] 1890 	push	ar2
      000384 C0 02            [24] 1891 	push	ar2
      000386 C0 04            [24] 1892 	push	ar4
      000388 74 53            [12] 1893 	mov	a,#___str_2
      00038A C0 E0            [24] 1894 	push	acc
      00038C 74 19            [12] 1895 	mov	a,#(___str_2 >> 8)
      00038E C0 E0            [24] 1896 	push	acc
      000390 74 80            [12] 1897 	mov	a,#0x80
      000392 C0 E0            [24] 1898 	push	acc
      000394 12 01 67         [24] 1899 	lcall	_lcd_print
      000397 E5 81            [12] 1900 	mov	a,sp
      000399 24 FB            [12] 1901 	add	a,#0xfb
      00039B F5 81            [12] 1902 	mov	sp,a
      00039D D0 02            [24] 1903 	pop	ar2
      00039F D0 03            [24] 1904 	pop	ar3
      0003A1 D0 04            [24] 1905 	pop	ar4
      0003A3 D0 05            [24] 1906 	pop	ar5
      0003A5 D0 06            [24] 1907 	pop	ar6
                           0002BB  1908 	C$i2c.h$178$1$89 ==.
                                   1909 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      0003A7 8D 11            [24] 1910 	mov	__mulint_PARM_2,r5
      0003A9 8E 12            [24] 1911 	mov	(__mulint_PARM_2 + 1),r6
      0003AB 90 00 0A         [24] 1912 	mov	dptr,#0x000a
      0003AE C0 04            [24] 1913 	push	ar4
      0003B0 C0 03            [24] 1914 	push	ar3
      0003B2 C0 02            [24] 1915 	push	ar2
      0003B4 12 0F D3         [24] 1916 	lcall	__mulint
      0003B7 A8 82            [24] 1917 	mov	r0,dpl
      0003B9 A9 83            [24] 1918 	mov	r1,dph
      0003BB D0 02            [24] 1919 	pop	ar2
      0003BD D0 03            [24] 1920 	pop	ar3
      0003BF D0 04            [24] 1921 	pop	ar4
      0003C1 D0 07            [24] 1922 	pop	ar7
      0003C3 EA               [12] 1923 	mov	a,r2
      0003C4 28               [12] 1924 	add	a,r0
      0003C5 F8               [12] 1925 	mov	r0,a
      0003C6 EC               [12] 1926 	mov	a,r4
      0003C7 39               [12] 1927 	addc	a,r1
      0003C8 F9               [12] 1928 	mov	r1,a
      0003C9 E8               [12] 1929 	mov	a,r0
      0003CA 24 D0            [12] 1930 	add	a,#0xd0
      0003CC FD               [12] 1931 	mov	r5,a
      0003CD E9               [12] 1932 	mov	a,r1
      0003CE 34 FF            [12] 1933 	addc	a,#0xff
      0003D0 FE               [12] 1934 	mov	r6,a
                           0002E5  1935 	C$i2c.h$179$3$92 ==.
                                   1936 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003D1                       1937 00110$:
      0003D1 C0 07            [24] 1938 	push	ar7
      0003D3 C0 06            [24] 1939 	push	ar6
      0003D5 C0 05            [24] 1940 	push	ar5
      0003D7 C0 03            [24] 1941 	push	ar3
      0003D9 12 02 25         [24] 1942 	lcall	_read_keypad
      0003DC AC 82            [24] 1943 	mov	r4,dpl
      0003DE D0 03            [24] 1944 	pop	ar3
      0003E0 D0 05            [24] 1945 	pop	ar5
      0003E2 D0 06            [24] 1946 	pop	ar6
      0003E4 D0 07            [24] 1947 	pop	ar7
      0003E6 EC               [12] 1948 	mov	a,r4
      0003E7 B5 03 1B         [24] 1949 	cjne	a,ar3,00118$
      0003EA 90 27 10         [24] 1950 	mov	dptr,#0x2710
      0003ED E4               [12] 1951 	clr	a
      0003EE F5 F0            [12] 1952 	mov	b,a
      0003F0 C0 07            [24] 1953 	push	ar7
      0003F2 C0 06            [24] 1954 	push	ar6
      0003F4 C0 05            [24] 1955 	push	ar5
      0003F6 C0 03            [24] 1956 	push	ar3
      0003F8 12 04 13         [24] 1957 	lcall	_delay_time
      0003FB D0 03            [24] 1958 	pop	ar3
      0003FD D0 05            [24] 1959 	pop	ar5
      0003FF D0 06            [24] 1960 	pop	ar6
      000401 D0 07            [24] 1961 	pop	ar7
      000403 80 CC            [24] 1962 	sjmp	00110$
      000405                       1963 00118$:
                           000319  1964 	C$i2c.h$167$1$89 ==.
                                   1965 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      000405 0F               [12] 1966 	inc	r7
      000406 BF 05 00         [24] 1967 	cjne	r7,#0x05,00155$
      000409                       1968 00155$:
      000409 50 03            [24] 1969 	jnc	00156$
      00040B 02 03 15         [24] 1970 	ljmp	00104$
      00040E                       1971 00156$:
                           000322  1972 	C$i2c.h$182$1$89 ==.
                                   1973 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      00040E 8D 82            [24] 1974 	mov	dpl,r5
      000410 8E 83            [24] 1975 	mov	dph,r6
      000412                       1976 00119$:
                           000326  1977 	C$i2c.h$183$1$89 ==.
                           000326  1978 	XG$kpd_input$0$0 ==.
      000412 22               [24] 1979 	ret
                                   1980 ;------------------------------------------------------------
                                   1981 ;Allocation info for local variables in function 'delay_time'
                                   1982 ;------------------------------------------------------------
                                   1983 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1984 ;index                     Allocated to registers 
                                   1985 ;------------------------------------------------------------
                           000327  1986 	G$delay_time$0$0 ==.
                           000327  1987 	C$i2c.h$192$1$89 ==.
                                   1988 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function delay_time
                                   1991 ;	-----------------------------------------
      000413                       1992 _delay_time:
      000413 AC 82            [24] 1993 	mov	r4,dpl
      000415 AD 83            [24] 1994 	mov	r5,dph
      000417 AE F0            [24] 1995 	mov	r6,b
      000419 FF               [12] 1996 	mov	r7,a
                           00032E  1997 	C$i2c.h$196$1$94 ==.
                                   1998 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      00041A 78 00            [12] 1999 	mov	r0,#0x00
      00041C 79 00            [12] 2000 	mov	r1,#0x00
      00041E 7A 00            [12] 2001 	mov	r2,#0x00
      000420 7B 00            [12] 2002 	mov	r3,#0x00
      000422                       2003 00103$:
      000422 C3               [12] 2004 	clr	c
      000423 E8               [12] 2005 	mov	a,r0
      000424 9C               [12] 2006 	subb	a,r4
      000425 E9               [12] 2007 	mov	a,r1
      000426 9D               [12] 2008 	subb	a,r5
      000427 EA               [12] 2009 	mov	a,r2
      000428 9E               [12] 2010 	subb	a,r6
      000429 EB               [12] 2011 	mov	a,r3
      00042A 9F               [12] 2012 	subb	a,r7
      00042B 50 0F            [24] 2013 	jnc	00105$
      00042D 08               [12] 2014 	inc	r0
      00042E B8 00 09         [24] 2015 	cjne	r0,#0x00,00115$
      000431 09               [12] 2016 	inc	r1
      000432 B9 00 05         [24] 2017 	cjne	r1,#0x00,00115$
      000435 0A               [12] 2018 	inc	r2
      000436 BA 00 E9         [24] 2019 	cjne	r2,#0x00,00103$
      000439 0B               [12] 2020 	inc	r3
      00043A                       2021 00115$:
      00043A 80 E6            [24] 2022 	sjmp	00103$
      00043C                       2023 00105$:
                           000350  2024 	C$i2c.h$197$1$94 ==.
                           000350  2025 	XG$delay_time$0$0 ==.
      00043C 22               [24] 2026 	ret
                                   2027 ;------------------------------------------------------------
                                   2028 ;Allocation info for local variables in function 'i2c_start'
                                   2029 ;------------------------------------------------------------
                           000351  2030 	G$i2c_start$0$0 ==.
                           000351  2031 	C$i2c.h$200$1$94 ==.
                                   2032 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   2033 ;	-----------------------------------------
                                   2034 ;	 function i2c_start
                                   2035 ;	-----------------------------------------
      00043D                       2036 _i2c_start:
                           000351  2037 	C$i2c.h$202$1$96 ==.
                                   2038 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      00043D                       2039 00101$:
      00043D 20 C7 FD         [24] 2040 	jb	_BUSY,00101$
                           000354  2041 	C$i2c.h$203$1$96 ==.
                                   2042 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000440 D2 C5            [12] 2043 	setb	_STA
                           000356  2044 	C$i2c.h$204$1$96 ==.
                                   2045 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000442                       2046 00104$:
      000442 30 C3 FD         [24] 2047 	jnb	_SI,00104$
                           000359  2048 	C$i2c.h$205$1$96 ==.
                                   2049 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000445 C2 C5            [12] 2050 	clr	_STA
                           00035B  2051 	C$i2c.h$206$1$96 ==.
                                   2052 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000447 C2 C3            [12] 2053 	clr	_SI
                           00035D  2054 	C$i2c.h$207$1$96 ==.
                           00035D  2055 	XG$i2c_start$0$0 ==.
      000449 22               [24] 2056 	ret
                                   2057 ;------------------------------------------------------------
                                   2058 ;Allocation info for local variables in function 'i2c_write'
                                   2059 ;------------------------------------------------------------
                                   2060 ;output_data               Allocated to registers 
                                   2061 ;------------------------------------------------------------
                           00035E  2062 	G$i2c_write$0$0 ==.
                           00035E  2063 	C$i2c.h$210$1$96 ==.
                                   2064 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   2065 ;	-----------------------------------------
                                   2066 ;	 function i2c_write
                                   2067 ;	-----------------------------------------
      00044A                       2068 _i2c_write:
      00044A 85 82 C2         [24] 2069 	mov	_SMB0DAT,dpl
                           000361  2070 	C$i2c.h$213$1$98 ==.
                                   2071 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00044D                       2072 00101$:
                           000361  2073 	C$i2c.h$214$1$98 ==.
                                   2074 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00044D 10 C3 02         [24] 2075 	jbc	_SI,00112$
      000450 80 FB            [24] 2076 	sjmp	00101$
      000452                       2077 00112$:
                           000366  2078 	C$i2c.h$215$1$98 ==.
                           000366  2079 	XG$i2c_write$0$0 ==.
      000452 22               [24] 2080 	ret
                                   2081 ;------------------------------------------------------------
                                   2082 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   2083 ;------------------------------------------------------------
                                   2084 ;output_data               Allocated to registers 
                                   2085 ;------------------------------------------------------------
                           000367  2086 	G$i2c_write_and_stop$0$0 ==.
                           000367  2087 	C$i2c.h$218$1$98 ==.
                                   2088 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   2089 ;	-----------------------------------------
                                   2090 ;	 function i2c_write_and_stop
                                   2091 ;	-----------------------------------------
      000453                       2092 _i2c_write_and_stop:
      000453 85 82 C2         [24] 2093 	mov	_SMB0DAT,dpl
                           00036A  2094 	C$i2c.h$221$1$100 ==.
                                   2095 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000456 D2 C4            [12] 2096 	setb	_STO
                           00036C  2097 	C$i2c.h$222$1$100 ==.
                                   2098 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000458                       2099 00101$:
                           00036C  2100 	C$i2c.h$223$1$100 ==.
                                   2101 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000458 10 C3 02         [24] 2102 	jbc	_SI,00112$
      00045B 80 FB            [24] 2103 	sjmp	00101$
      00045D                       2104 00112$:
                           000371  2105 	C$i2c.h$224$1$100 ==.
                           000371  2106 	XG$i2c_write_and_stop$0$0 ==.
      00045D 22               [24] 2107 	ret
                                   2108 ;------------------------------------------------------------
                                   2109 ;Allocation info for local variables in function 'i2c_read'
                                   2110 ;------------------------------------------------------------
                                   2111 ;input_data                Allocated to registers 
                                   2112 ;------------------------------------------------------------
                           000372  2113 	G$i2c_read$0$0 ==.
                           000372  2114 	C$i2c.h$227$1$100 ==.
                                   2115 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function i2c_read
                                   2118 ;	-----------------------------------------
      00045E                       2119 _i2c_read:
                           000372  2120 	C$i2c.h$231$1$102 ==.
                                   2121 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00045E                       2122 00101$:
      00045E 30 C3 FD         [24] 2123 	jnb	_SI,00101$
                           000375  2124 	C$i2c.h$232$1$102 ==.
                                   2125 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000461 85 C2 82         [24] 2126 	mov	dpl,_SMB0DAT
                           000378  2127 	C$i2c.h$233$1$102 ==.
                                   2128 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000464 C2 C3            [12] 2129 	clr	_SI
                           00037A  2130 	C$i2c.h$234$1$102 ==.
                                   2131 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2132 	C$i2c.h$235$1$102 ==.
                           00037A  2133 	XG$i2c_read$0$0 ==.
      000466 22               [24] 2134 	ret
                                   2135 ;------------------------------------------------------------
                                   2136 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2137 ;------------------------------------------------------------
                                   2138 ;input_data                Allocated to registers r7 
                                   2139 ;------------------------------------------------------------
                           00037B  2140 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2141 	C$i2c.h$238$1$102 ==.
                                   2142 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2143 ;	-----------------------------------------
                                   2144 ;	 function i2c_read_and_stop
                                   2145 ;	-----------------------------------------
      000467                       2146 _i2c_read_and_stop:
                           00037B  2147 	C$i2c.h$242$1$104 ==.
                                   2148 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000467                       2149 00101$:
      000467 30 C3 FD         [24] 2150 	jnb	_SI,00101$
                           00037E  2151 	C$i2c.h$243$1$104 ==.
                                   2152 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      00046A AF C2            [24] 2153 	mov	r7,_SMB0DAT
                           000380  2154 	C$i2c.h$244$1$104 ==.
                                   2155 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00046C C2 C3            [12] 2156 	clr	_SI
                           000382  2157 	C$i2c.h$245$1$104 ==.
                                   2158 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00046E D2 C4            [12] 2159 	setb	_STO
                           000384  2160 	C$i2c.h$246$1$104 ==.
                                   2161 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000470                       2162 00104$:
                           000384  2163 	C$i2c.h$247$1$104 ==.
                                   2164 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000470 10 C3 02         [24] 2165 	jbc	_SI,00122$
      000473 80 FB            [24] 2166 	sjmp	00104$
      000475                       2167 00122$:
                           000389  2168 	C$i2c.h$248$1$104 ==.
                                   2169 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000475 8F 82            [24] 2170 	mov	dpl,r7
                           00038B  2171 	C$i2c.h$249$1$104 ==.
                           00038B  2172 	XG$i2c_read_and_stop$0$0 ==.
      000477 22               [24] 2173 	ret
                                   2174 ;------------------------------------------------------------
                                   2175 ;Allocation info for local variables in function 'i2c_write_data'
                                   2176 ;------------------------------------------------------------
                                   2177 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2178 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2179 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2180 ;addr                      Allocated to registers r7 
                                   2181 ;i                         Allocated to registers 
                                   2182 ;------------------------------------------------------------
                           00038C  2183 	G$i2c_write_data$0$0 ==.
                           00038C  2184 	C$i2c.h$252$1$104 ==.
                                   2185 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2186 ;	-----------------------------------------
                                   2187 ;	 function i2c_write_data
                                   2188 ;	-----------------------------------------
      000478                       2189 _i2c_write_data:
      000478 AF 82            [24] 2190 	mov	r7,dpl
                           00038E  2191 	C$i2c.h$256$1$106 ==.
                                   2192 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      00047A C2 AF            [12] 2193 	clr	_EA
                           000390  2194 	C$i2c.h$257$1$106 ==.
                                   2195 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00047C C0 07            [24] 2196 	push	ar7
      00047E 12 04 3D         [24] 2197 	lcall	_i2c_start
      000481 D0 07            [24] 2198 	pop	ar7
                           000397  2199 	C$i2c.h$258$1$106 ==.
                                   2200 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000483 74 FE            [12] 2201 	mov	a,#0xfe
      000485 5F               [12] 2202 	anl	a,r7
      000486 F5 82            [12] 2203 	mov	dpl,a
      000488 12 04 4A         [24] 2204 	lcall	_i2c_write
                           00039F  2205 	C$i2c.h$259$1$106 ==.
                                   2206 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00048B 85 2C 82         [24] 2207 	mov	dpl,_i2c_write_data_PARM_2
      00048E 12 04 4A         [24] 2208 	lcall	_i2c_write
                           0003A5  2209 	C$i2c.h$260$1$106 ==.
                                   2210 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000491 7F 00            [12] 2211 	mov	r7,#0x00
      000493                       2212 00103$:
      000493 AD 30            [24] 2213 	mov	r5,_i2c_write_data_PARM_4
      000495 7E 00            [12] 2214 	mov	r6,#0x00
      000497 1D               [12] 2215 	dec	r5
      000498 BD FF 01         [24] 2216 	cjne	r5,#0xff,00114$
      00049B 1E               [12] 2217 	dec	r6
      00049C                       2218 00114$:
      00049C 8F 03            [24] 2219 	mov	ar3,r7
      00049E 7C 00            [12] 2220 	mov	r4,#0x00
      0004A0 C3               [12] 2221 	clr	c
      0004A1 EB               [12] 2222 	mov	a,r3
      0004A2 9D               [12] 2223 	subb	a,r5
      0004A3 EC               [12] 2224 	mov	a,r4
      0004A4 64 80            [12] 2225 	xrl	a,#0x80
      0004A6 8E F0            [24] 2226 	mov	b,r6
      0004A8 63 F0 80         [24] 2227 	xrl	b,#0x80
      0004AB 95 F0            [12] 2228 	subb	a,b
      0004AD 50 1F            [24] 2229 	jnc	00101$
                           0003C3  2230 	C$i2c.h$261$1$106 ==.
                                   2231 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      0004AF EF               [12] 2232 	mov	a,r7
      0004B0 25 2D            [12] 2233 	add	a,_i2c_write_data_PARM_3
      0004B2 FC               [12] 2234 	mov	r4,a
      0004B3 E4               [12] 2235 	clr	a
      0004B4 35 2E            [12] 2236 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004B6 FD               [12] 2237 	mov	r5,a
      0004B7 AE 2F            [24] 2238 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      0004B9 8C 82            [24] 2239 	mov	dpl,r4
      0004BB 8D 83            [24] 2240 	mov	dph,r5
      0004BD 8E F0            [24] 2241 	mov	b,r6
      0004BF 12 18 19         [24] 2242 	lcall	__gptrget
      0004C2 F5 82            [12] 2243 	mov	dpl,a
      0004C4 C0 07            [24] 2244 	push	ar7
      0004C6 12 04 4A         [24] 2245 	lcall	_i2c_write
      0004C9 D0 07            [24] 2246 	pop	ar7
                           0003DF  2247 	C$i2c.h$260$1$106 ==.
                                   2248 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004CB 0F               [12] 2249 	inc	r7
      0004CC 80 C5            [24] 2250 	sjmp	00103$
      0004CE                       2251 00101$:
                           0003E2  2252 	C$i2c.h$262$1$106 ==.
                                   2253 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004CE AE 30            [24] 2254 	mov	r6,_i2c_write_data_PARM_4
      0004D0 7F 00            [12] 2255 	mov	r7,#0x00
      0004D2 1E               [12] 2256 	dec	r6
      0004D3 BE FF 01         [24] 2257 	cjne	r6,#0xff,00116$
      0004D6 1F               [12] 2258 	dec	r7
      0004D7                       2259 00116$:
      0004D7 EE               [12] 2260 	mov	a,r6
      0004D8 25 2D            [12] 2261 	add	a,_i2c_write_data_PARM_3
      0004DA FE               [12] 2262 	mov	r6,a
      0004DB EF               [12] 2263 	mov	a,r7
      0004DC 35 2E            [12] 2264 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004DE FF               [12] 2265 	mov	r7,a
      0004DF AD 2F            [24] 2266 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004E1 8E 82            [24] 2267 	mov	dpl,r6
      0004E3 8F 83            [24] 2268 	mov	dph,r7
      0004E5 8D F0            [24] 2269 	mov	b,r5
      0004E7 12 18 19         [24] 2270 	lcall	__gptrget
      0004EA F5 82            [12] 2271 	mov	dpl,a
      0004EC 12 04 53         [24] 2272 	lcall	_i2c_write_and_stop
                           000403  2273 	C$i2c.h$263$1$106 ==.
                                   2274 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004EF D2 AF            [12] 2275 	setb	_EA
                           000405  2276 	C$i2c.h$264$1$106 ==.
                           000405  2277 	XG$i2c_write_data$0$0 ==.
      0004F1 22               [24] 2278 	ret
                                   2279 ;------------------------------------------------------------
                                   2280 ;Allocation info for local variables in function 'i2c_read_data'
                                   2281 ;------------------------------------------------------------
                                   2282 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2283 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2284 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2285 ;addr                      Allocated to registers r7 
                                   2286 ;j                         Allocated to registers 
                                   2287 ;------------------------------------------------------------
                           000406  2288 	G$i2c_read_data$0$0 ==.
                           000406  2289 	C$i2c.h$267$1$106 ==.
                                   2290 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2291 ;	-----------------------------------------
                                   2292 ;	 function i2c_read_data
                                   2293 ;	-----------------------------------------
      0004F2                       2294 _i2c_read_data:
      0004F2 AF 82            [24] 2295 	mov	r7,dpl
                           000408  2296 	C$i2c.h$271$1$108 ==.
                                   2297 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004F4 C2 AF            [12] 2298 	clr	_EA
                           00040A  2299 	C$i2c.h$272$1$108 ==.
                                   2300 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004F6 C0 07            [24] 2301 	push	ar7
      0004F8 12 04 3D         [24] 2302 	lcall	_i2c_start
      0004FB D0 07            [24] 2303 	pop	ar7
                           000411  2304 	C$i2c.h$273$1$108 ==.
                                   2305 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004FD 74 FE            [12] 2306 	mov	a,#0xfe
      0004FF 5F               [12] 2307 	anl	a,r7
      000500 F5 82            [12] 2308 	mov	dpl,a
      000502 C0 07            [24] 2309 	push	ar7
      000504 12 04 4A         [24] 2310 	lcall	_i2c_write
                           00041B  2311 	C$i2c.h$274$1$108 ==.
                                   2312 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      000507 85 31 82         [24] 2313 	mov	dpl,_i2c_read_data_PARM_2
      00050A 12 04 53         [24] 2314 	lcall	_i2c_write_and_stop
                           000421  2315 	C$i2c.h$275$1$108 ==.
                                   2316 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      00050D 12 04 3D         [24] 2317 	lcall	_i2c_start
      000510 D0 07            [24] 2318 	pop	ar7
                           000426  2319 	C$i2c.h$276$1$108 ==.
                                   2320 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      000512 74 01            [12] 2321 	mov	a,#0x01
      000514 4F               [12] 2322 	orl	a,r7
      000515 F5 82            [12] 2323 	mov	dpl,a
      000517 12 04 4A         [24] 2324 	lcall	_i2c_write
                           00042E  2325 	C$i2c.h$277$1$108 ==.
                                   2326 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      00051A 7F 00            [12] 2327 	mov	r7,#0x00
      00051C                       2328 00103$:
      00051C AD 35            [24] 2329 	mov	r5,_i2c_read_data_PARM_4
      00051E 7E 00            [12] 2330 	mov	r6,#0x00
      000520 1D               [12] 2331 	dec	r5
      000521 BD FF 01         [24] 2332 	cjne	r5,#0xff,00114$
      000524 1E               [12] 2333 	dec	r6
      000525                       2334 00114$:
      000525 8F 03            [24] 2335 	mov	ar3,r7
      000527 7C 00            [12] 2336 	mov	r4,#0x00
      000529 C3               [12] 2337 	clr	c
      00052A EB               [12] 2338 	mov	a,r3
      00052B 9D               [12] 2339 	subb	a,r5
      00052C EC               [12] 2340 	mov	a,r4
      00052D 64 80            [12] 2341 	xrl	a,#0x80
      00052F 8E F0            [24] 2342 	mov	b,r6
      000531 63 F0 80         [24] 2343 	xrl	b,#0x80
      000534 95 F0            [12] 2344 	subb	a,b
      000536 50 2E            [24] 2345 	jnc	00101$
                           00044C  2346 	C$i2c.h$279$2$109 ==.
                                   2347 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000538 D2 C2            [12] 2348 	setb	_AA
                           00044E  2349 	C$i2c.h$280$2$109 ==.
                                   2350 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      00053A EF               [12] 2351 	mov	a,r7
      00053B 25 32            [12] 2352 	add	a,_i2c_read_data_PARM_3
      00053D FC               [12] 2353 	mov	r4,a
      00053E E4               [12] 2354 	clr	a
      00053F 35 33            [12] 2355 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000541 FD               [12] 2356 	mov	r5,a
      000542 AE 34            [24] 2357 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000544 C0 07            [24] 2358 	push	ar7
      000546 C0 06            [24] 2359 	push	ar6
      000548 C0 05            [24] 2360 	push	ar5
      00054A C0 04            [24] 2361 	push	ar4
      00054C 12 04 5E         [24] 2362 	lcall	_i2c_read
      00054F AB 82            [24] 2363 	mov	r3,dpl
      000551 D0 04            [24] 2364 	pop	ar4
      000553 D0 05            [24] 2365 	pop	ar5
      000555 D0 06            [24] 2366 	pop	ar6
      000557 D0 07            [24] 2367 	pop	ar7
      000559 8C 82            [24] 2368 	mov	dpl,r4
      00055B 8D 83            [24] 2369 	mov	dph,r5
      00055D 8E F0            [24] 2370 	mov	b,r6
      00055F EB               [12] 2371 	mov	a,r3
      000560 12 0F B8         [24] 2372 	lcall	__gptrput
                           000477  2373 	C$i2c.h$277$1$108 ==.
                                   2374 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000563 0F               [12] 2375 	inc	r7
      000564 80 B6            [24] 2376 	sjmp	00103$
      000566                       2377 00101$:
                           00047A  2378 	C$i2c.h$282$1$108 ==.
                                   2379 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000566 C2 C2            [12] 2380 	clr	_AA
                           00047C  2381 	C$i2c.h$283$1$108 ==.
                                   2382 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000568 AE 35            [24] 2383 	mov	r6,_i2c_read_data_PARM_4
      00056A 7F 00            [12] 2384 	mov	r7,#0x00
      00056C 1E               [12] 2385 	dec	r6
      00056D BE FF 01         [24] 2386 	cjne	r6,#0xff,00116$
      000570 1F               [12] 2387 	dec	r7
      000571                       2388 00116$:
      000571 EE               [12] 2389 	mov	a,r6
      000572 25 32            [12] 2390 	add	a,_i2c_read_data_PARM_3
      000574 FE               [12] 2391 	mov	r6,a
      000575 EF               [12] 2392 	mov	a,r7
      000576 35 33            [12] 2393 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000578 FF               [12] 2394 	mov	r7,a
      000579 AD 34            [24] 2395 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00057B C0 07            [24] 2396 	push	ar7
      00057D C0 06            [24] 2397 	push	ar6
      00057F C0 05            [24] 2398 	push	ar5
      000581 12 04 67         [24] 2399 	lcall	_i2c_read_and_stop
      000584 AC 82            [24] 2400 	mov	r4,dpl
      000586 D0 05            [24] 2401 	pop	ar5
      000588 D0 06            [24] 2402 	pop	ar6
      00058A D0 07            [24] 2403 	pop	ar7
      00058C 8E 82            [24] 2404 	mov	dpl,r6
      00058E 8F 83            [24] 2405 	mov	dph,r7
      000590 8D F0            [24] 2406 	mov	b,r5
      000592 EC               [12] 2407 	mov	a,r4
      000593 12 0F B8         [24] 2408 	lcall	__gptrput
                           0004AA  2409 	C$i2c.h$284$1$108 ==.
                                   2410 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000596 D2 AF            [12] 2411 	setb	_EA
                           0004AC  2412 	C$i2c.h$285$1$108 ==.
                           0004AC  2413 	XG$i2c_read_data$0$0 ==.
      000598 22               [24] 2414 	ret
                                   2415 ;------------------------------------------------------------
                                   2416 ;Allocation info for local variables in function 'Accel_Init'
                                   2417 ;------------------------------------------------------------
                           0004AD  2418 	G$Accel_Init$0$0 ==.
                           0004AD  2419 	C$i2c.h$294$1$108 ==.
                                   2420 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2421 ;	-----------------------------------------
                                   2422 ;	 function Accel_Init
                                   2423 ;	-----------------------------------------
      000599                       2424 _Accel_Init:
                           0004AD  2425 	C$i2c.h$298$1$111 ==.
                                   2426 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      000599 75 22 23         [24] 2427 	mov	_Data2,#0x23
                           0004B0  2428 	C$i2c.h$300$1$111 ==.
                                   2429 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00059C 75 23 00         [24] 2430 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2431 	C$i2c.h$301$1$111 ==.
                                   2432 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      00059F 75 23 10         [24] 2433 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2434 	C$i2c.h$302$1$111 ==.
                                   2435 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      0005A2 75 24 00         [24] 2436 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2437 	C$i2c.h$304$1$111 ==.
                                   2438 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      0005A5 75 2D 22         [24] 2439 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A8 75 2E 00         [24] 2440 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005AB 75 2F 40         [24] 2441 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005AE 75 2C 20         [24] 2442 	mov	_i2c_write_data_PARM_2,#0x20
      0005B1 75 30 01         [24] 2443 	mov	_i2c_write_data_PARM_4,#0x01
      0005B4 75 82 30         [24] 2444 	mov	dpl,#0x30
      0005B7 12 04 78         [24] 2445 	lcall	_i2c_write_data
                           0004CE  2446 	C$i2c.h$310$1$111 ==.
                           0004CE  2447 	XG$Accel_Init$0$0 ==.
      0005BA 22               [24] 2448 	ret
                                   2449 ;------------------------------------------------------------
                                   2450 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2451 ;------------------------------------------------------------
                           0004CF  2452 	G$Accel_Init_C$0$0 ==.
                           0004CF  2453 	C$i2c.h$313$1$111 ==.
                                   2454 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2455 ;	-----------------------------------------
                                   2456 ;	 function Accel_Init_C
                                   2457 ;	-----------------------------------------
      0005BB                       2458 _Accel_Init_C:
                           0004CF  2459 	C$i2c.h$318$1$113 ==.
                                   2460 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      0005BB 75 22 04         [24] 2461 	mov	_Data2,#0x04
                           0004D2  2462 	C$i2c.h$319$1$113 ==.
                                   2463 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      0005BE 75 2D 22         [24] 2464 	mov	_i2c_write_data_PARM_3,#_Data2
      0005C1 75 2E 00         [24] 2465 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C4 75 2F 40         [24] 2466 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005C7 75 2C 23         [24] 2467 	mov	_i2c_write_data_PARM_2,#0x23
      0005CA 75 30 01         [24] 2468 	mov	_i2c_write_data_PARM_4,#0x01
      0005CD 75 82 3A         [24] 2469 	mov	dpl,#0x3a
      0005D0 12 04 78         [24] 2470 	lcall	_i2c_write_data
                           0004E7  2471 	C$i2c.h$321$1$113 ==.
                                   2472 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005D3 75 22 6B         [24] 2473 	mov	_Data2,#0x6b
                           0004EA  2474 	C$i2c.h$323$1$113 ==.
                                   2475 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005D6 75 23 00         [24] 2476 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2477 	C$i2c.h$325$1$113 ==.
                                   2478 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005D9 75 24 00         [24] 2479 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2480 	C$i2c.h$326$1$113 ==.
                                   2481 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005DC 75 2D 22         [24] 2482 	mov	_i2c_write_data_PARM_3,#_Data2
      0005DF 75 2E 00         [24] 2483 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005E2 75 2F 40         [24] 2484 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005E5 75 2C 20         [24] 2485 	mov	_i2c_write_data_PARM_2,#0x20
      0005E8 75 30 01         [24] 2486 	mov	_i2c_write_data_PARM_4,#0x01
      0005EB 75 82 3A         [24] 2487 	mov	dpl,#0x3a
      0005EE 12 04 78         [24] 2488 	lcall	_i2c_write_data
                           000505  2489 	C$i2c.h$328$1$113 ==.
                           000505  2490 	XG$Accel_Init_C$0$0 ==.
      0005F1 22               [24] 2491 	ret
                                   2492 ;------------------------------------------------------------
                                   2493 ;Allocation info for local variables in function 'main'
                                   2494 ;------------------------------------------------------------
                           000506  2495 	G$main$0$0 ==.
                           000506  2496 	C$Lab4andahalf.c$62$1$113 ==.
                                   2497 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:62: void main(void)
                                   2498 ;	-----------------------------------------
                                   2499 ;	 function main
                                   2500 ;	-----------------------------------------
      0005F2                       2501 _main:
                           000506  2502 	C$Lab4andahalf.c$64$1$134 ==.
                                   2503 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:64: Sys_Init(); // initialize board
      0005F2 12 01 23         [24] 2504 	lcall	_Sys_Init
                           000509  2505 	C$Lab4andahalf.c$65$1$134 ==.
                                   2506 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:65: Port_Init();
      0005F5 12 07 55         [24] 2507 	lcall	_Port_Init
                           00050C  2508 	C$Lab4andahalf.c$66$1$134 ==.
                                   2509 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:66: ADC_Init();
      0005F8 12 07 45         [24] 2510 	lcall	_ADC_Init
                           00050F  2511 	C$Lab4andahalf.c$67$1$134 ==.
                                   2512 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:67: XBR0_Init();
      0005FB 12 07 68         [24] 2513 	lcall	_XBR0_Init
                           000512  2514 	C$Lab4andahalf.c$68$1$134 ==.
                                   2515 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:68: PCA_Init();
      0005FE 12 07 30         [24] 2516 	lcall	_PCA_Init
                           000515  2517 	C$Lab4andahalf.c$69$1$134 ==.
                                   2518 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:69: SMB_Init();
      000601 12 07 4F         [24] 2519 	lcall	_SMB_Init
                           000518  2520 	C$Lab4andahalf.c$70$1$134 ==.
                                   2521 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:70: putchar(' '); //gotta have that putchar folks
      000604 75 82 20         [24] 2522 	mov	dpl,#0x20
      000607 12 01 36         [24] 2523 	lcall	_putchar
                           00051E  2524 	C$Lab4andahalf.c$71$1$134 ==.
                                   2525 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:71: r_count = 0;
                           00051E  2526 	C$Lab4andahalf.c$72$1$134 ==.
                                   2527 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:72: h_count = 0;
                           00051E  2528 	C$Lab4andahalf.c$73$1$134 ==.
                                   2529 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:73: print_count = 0;
                           00051E  2530 	C$Lab4andahalf.c$75$1$134 ==.
                                   2531 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:75: printf("A brave car stands alone against the many horrors on the battlefield!");
      00060A E4               [12] 2532 	clr	a
      00060B F5 4F            [12] 2533 	mov	_r_count,a
      00060D F5 50            [12] 2534 	mov	_h_count,a
      00060F F5 51            [12] 2535 	mov	_print_count,a
      000611 74 56            [12] 2536 	mov	a,#___str_3
      000613 C0 E0            [24] 2537 	push	acc
      000615 74 19            [12] 2538 	mov	a,#(___str_3 >> 8)
      000617 C0 E0            [24] 2539 	push	acc
      000619 74 80            [12] 2540 	mov	a,#0x80
      00061B C0 E0            [24] 2541 	push	acc
      00061D 12 12 04         [24] 2542 	lcall	_printf
      000620 15 81            [12] 2543 	dec	sp
      000622 15 81            [12] 2544 	dec	sp
      000624 15 81            [12] 2545 	dec	sp
                           00053A  2546 	C$Lab4andahalf.c$76$1$134 ==.
                                   2547 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:76: wait(); //wait for everything to initialize
      000626 12 0E AA         [24] 2548 	lcall	_wait
                           00053D  2549 	C$Lab4andahalf.c$77$1$134 ==.
                                   2550 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:77: lcd_clear();
      000629 12 01 EC         [24] 2551 	lcall	_lcd_clear
                           000540  2552 	C$Lab4andahalf.c$78$1$134 ==.
                                   2553 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:78: lcd_print("Good luck!");
      00062C 74 9C            [12] 2554 	mov	a,#___str_4
      00062E C0 E0            [24] 2555 	push	acc
      000630 74 19            [12] 2556 	mov	a,#(___str_4 >> 8)
      000632 C0 E0            [24] 2557 	push	acc
      000634 74 80            [12] 2558 	mov	a,#0x80
      000636 C0 E0            [24] 2559 	push	acc
      000638 12 01 67         [24] 2560 	lcall	_lcd_print
      00063B 15 81            [12] 2561 	dec	sp
      00063D 15 81            [12] 2562 	dec	sp
      00063F 15 81            [12] 2563 	dec	sp
                           000555  2564 	C$Lab4andahalf.c$81$2$135 ==.
                                   2565 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:81: while (!RUN) // make RUN an sbit for the run/stop switch
      000641                       2566 00103$:
      000641 20 B7 47         [24] 2567 	jb	_RUN,00105$
                           000558  2568 	C$Lab4andahalf.c$83$3$136 ==.
                                   2569 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:83: MOTOR_PW = MOTOR_STOP;
      000644 85 36 3C         [24] 2570 	mov	_MOTOR_PW,_MOTOR_STOP
      000647 85 37 3D         [24] 2571 	mov	(_MOTOR_PW + 1),(_MOTOR_STOP + 1)
                           00055E  2572 	C$Lab4andahalf.c$84$3$136 ==.
                                   2573 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:84: SERVO_PW = SERVO_CENTER;
      00064A 85 3E 44         [24] 2574 	mov	_SERVO_PW,_SERVO_CENTER
      00064D 85 3F 45         [24] 2575 	mov	(_SERVO_PW + 1),(_SERVO_CENTER + 1)
                           000564  2576 	C$Lab4andahalf.c$86$3$136 ==.
                                   2577 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:86: PCA0CP0 = 0xFFFF - SERVO_PW;  //set servos to center while not running
      000650 74 FF            [12] 2578 	mov	a,#0xff
      000652 C3               [12] 2579 	clr	c
      000653 95 44            [12] 2580 	subb	a,_SERVO_PW
      000655 F5 EA            [12] 2581 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000657 74 FF            [12] 2582 	mov	a,#0xff
      000659 95 45            [12] 2583 	subb	a,(_SERVO_PW + 1)
      00065B F5 FA            [12] 2584 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000571  2585 	C$Lab4andahalf.c$87$3$136 ==.
                                   2586 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:87: PCA0CP2 = 0xFFFF - MOTOR_PW;  //set motors to center while not running
      00065D 74 FF            [12] 2587 	mov	a,#0xff
      00065F C3               [12] 2588 	clr	c
      000660 95 3C            [12] 2589 	subb	a,_MOTOR_PW
      000662 F5 EC            [12] 2590 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000664 74 FF            [12] 2591 	mov	a,#0xff
      000666 95 3D            [12] 2592 	subb	a,(_MOTOR_PW + 1)
      000668 F5 FC            [12] 2593 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           00057E  2594 	C$Lab4andahalf.c$88$3$136 ==.
                                   2595 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:88: if (run_stop == 0)
      00066A E5 61            [12] 2596 	mov	a,_run_stop
      00066C 70 D3            [24] 2597 	jnz	00103$
                           000582  2598 	C$Lab4andahalf.c$90$4$137 ==.
                                   2599 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:90: set_heading = pick_heading();
      00066E 12 0A CE         [24] 2600 	lcall	_pick_heading
      000671 85 82 62         [24] 2601 	mov	_set_heading,dpl
      000674 85 83 63         [24] 2602 	mov	(_set_heading + 1),dph
                           00058B  2603 	C$Lab4andahalf.c$91$4$137 ==.
                                   2604 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:91: desired_heading = set_heading;
      000677 85 62 53         [24] 2605 	mov	_desired_heading,_set_heading
      00067A 85 63 54         [24] 2606 	mov	(_desired_heading + 1),(_set_heading + 1)
                           000591  2607 	C$Lab4andahalf.c$92$4$137 ==.
                                   2608 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:92: desired_range = pick_range();
      00067D 12 0D 43         [24] 2609 	lcall	_pick_range
      000680 85 82 55         [24] 2610 	mov	_desired_range,dpl
      000683 85 83 56         [24] 2611 	mov	(_desired_range + 1),dph
                           00059A  2612 	C$Lab4andahalf.c$93$4$137 ==.
                                   2613 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:93: run_stop = 1; // only try to update desired heading once
      000686 75 61 01         [24] 2614 	mov	_run_stop,#0x01
      000689 80 B6            [24] 2615 	sjmp	00103$
      00068B                       2616 00105$:
                           00059F  2617 	C$Lab4andahalf.c$96$2$135 ==.
                                   2618 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:96: if (new_heading) { // enough overflows for a new heading 
      00068B E5 46            [12] 2619 	mov	a,_new_heading
      00068D 60 0F            [24] 2620 	jz	00107$
                           0005A3  2621 	C$Lab4andahalf.c$97$3$138 ==.
                                   2622 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:97: heading = read_compass();
      00068F 12 07 6C         [24] 2623 	lcall	_read_compass
      000692 85 82 4D         [24] 2624 	mov	_heading,dpl
      000695 85 83 4E         [24] 2625 	mov	(_heading + 1),dph
                           0005AC  2626 	C$Lab4andahalf.c$98$3$138 ==.
                                   2627 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:98: set_servo_PWM(); // if new data, adjust servo PWM for compass & ranger
      000698 12 09 27         [24] 2628 	lcall	_set_servo_PWM
                           0005AF  2629 	C$Lab4andahalf.c$99$3$138 ==.
                                   2630 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:99: new_heading = 0;
      00069B 75 46 00         [24] 2631 	mov	_new_heading,#0x00
      00069E                       2632 00107$:
                           0005B2  2633 	C$Lab4andahalf.c$101$2$135 ==.
                                   2634 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:101: if (new_range) { // enough overflow for a new range
      00069E E5 47            [12] 2635 	mov	a,_new_range
      0006A0 60 2B            [24] 2636 	jz	00112$
                           0005B6  2637 	C$Lab4andahalf.c$102$3$139 ==.
                                   2638 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:102: light = read_ranger(); // get range, also stores light value into light
      0006A2 12 07 92         [24] 2639 	lcall	_read_ranger
      0006A5 AF 82            [24] 2640 	mov	r7,dpl
      0006A7 8F 4B            [24] 2641 	mov	_light,r7
      0006A9 75 4C 00         [24] 2642 	mov	(_light + 1),#0x00
                           0005C0  2643 	C$Lab4andahalf.c$104$3$139 ==.
                                   2644 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:104: if (light > brightness_threshold) { // if bright light is detected
      0006AC AE 5C            [24] 2645 	mov	r6,_brightness_threshold
      0006AE 7F 00            [12] 2646 	mov	r7,#0x00
      0006B0 C3               [12] 2647 	clr	c
      0006B1 EE               [12] 2648 	mov	a,r6
      0006B2 95 4B            [12] 2649 	subb	a,_light
      0006B4 EF               [12] 2650 	mov	a,r7
      0006B5 95 4C            [12] 2651 	subb	a,(_light + 1)
      0006B7 50 05            [24] 2652 	jnc	00109$
                           0005CD  2653 	C$Lab4andahalf.c$105$4$140 ==.
                                   2654 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:105: reverse_mode(); // adjust steering control variables for reverse mode
      0006B9 12 07 F3         [24] 2655 	lcall	_reverse_mode
      0006BC 80 0C            [24] 2656 	sjmp	00110$
      0006BE                       2657 00109$:
                           0005D2  2658 	C$Lab4andahalf.c$109$4$141 ==.
                                   2659 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:109: forward_mode(); // adjust steering control variables for forward mode
      0006BE 12 07 EC         [24] 2660 	lcall	_forward_mode
                           0005D5  2661 	C$Lab4andahalf.c$110$4$141 ==.
                                   2662 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:110: set_drive_PWM(range); //adjust drive PWM
      0006C1 85 49 82         [24] 2663 	mov	dpl,_range
      0006C4 85 4A 83         [24] 2664 	mov	dph,(_range + 1)
      0006C7 12 0A 31         [24] 2665 	lcall	_set_drive_PWM
      0006CA                       2666 00110$:
                           0005DE  2667 	C$Lab4andahalf.c$121$3$139 ==.
                                   2668 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:121: new_range = 0;
      0006CA 75 47 00         [24] 2669 	mov	_new_range,#0x00
      0006CD                       2670 00112$:
                           0005E1  2671 	C$Lab4andahalf.c$123$2$135 ==.
                                   2672 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:123: if (print_flag) { //enough overflows for a new LCD print
      0006CD E5 48            [12] 2673 	mov	a,_print_flag
      0006CF 70 03            [24] 2674 	jnz	00146$
      0006D1 02 06 41         [24] 2675 	ljmp	00103$
      0006D4                       2676 00146$:
                           0005E8  2677 	C$Lab4andahalf.c$124$3$142 ==.
                                   2678 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:124: lcd_clear();
      0006D4 12 01 EC         [24] 2679 	lcall	_lcd_clear
                           0005EB  2680 	C$Lab4andahalf.c$125$3$142 ==.
                                   2681 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:125: lcd_print("S: %i M: %i\nH: %i R: %i\nL: %i", SERVO_PW, MOTOR_PW, heading, range, light);
      0006D7 C0 4B            [24] 2682 	push	_light
      0006D9 C0 4C            [24] 2683 	push	(_light + 1)
      0006DB C0 49            [24] 2684 	push	_range
      0006DD C0 4A            [24] 2685 	push	(_range + 1)
      0006DF C0 4D            [24] 2686 	push	_heading
      0006E1 C0 4E            [24] 2687 	push	(_heading + 1)
      0006E3 C0 3C            [24] 2688 	push	_MOTOR_PW
      0006E5 C0 3D            [24] 2689 	push	(_MOTOR_PW + 1)
      0006E7 C0 44            [24] 2690 	push	_SERVO_PW
      0006E9 C0 45            [24] 2691 	push	(_SERVO_PW + 1)
      0006EB 74 A7            [12] 2692 	mov	a,#___str_5
      0006ED C0 E0            [24] 2693 	push	acc
      0006EF 74 19            [12] 2694 	mov	a,#(___str_5 >> 8)
      0006F1 C0 E0            [24] 2695 	push	acc
      0006F3 74 80            [12] 2696 	mov	a,#0x80
      0006F5 C0 E0            [24] 2697 	push	acc
      0006F7 12 01 67         [24] 2698 	lcall	_lcd_print
      0006FA E5 81            [12] 2699 	mov	a,sp
      0006FC 24 F3            [12] 2700 	add	a,#0xf3
      0006FE F5 81            [12] 2701 	mov	sp,a
                           000614  2702 	C$Lab4andahalf.c$126$3$142 ==.
                                   2703 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:126: printf("S:%i\tM:%i\tH:%i\tR:%i\tL:%i\r\n", SERVO_PW, MOTOR_PW, heading, range, light);
      000700 C0 4B            [24] 2704 	push	_light
      000702 C0 4C            [24] 2705 	push	(_light + 1)
      000704 C0 49            [24] 2706 	push	_range
      000706 C0 4A            [24] 2707 	push	(_range + 1)
      000708 C0 4D            [24] 2708 	push	_heading
      00070A C0 4E            [24] 2709 	push	(_heading + 1)
      00070C C0 3C            [24] 2710 	push	_MOTOR_PW
      00070E C0 3D            [24] 2711 	push	(_MOTOR_PW + 1)
      000710 C0 44            [24] 2712 	push	_SERVO_PW
      000712 C0 45            [24] 2713 	push	(_SERVO_PW + 1)
      000714 74 C5            [12] 2714 	mov	a,#___str_6
      000716 C0 E0            [24] 2715 	push	acc
      000718 74 19            [12] 2716 	mov	a,#(___str_6 >> 8)
      00071A C0 E0            [24] 2717 	push	acc
      00071C 74 80            [12] 2718 	mov	a,#0x80
      00071E C0 E0            [24] 2719 	push	acc
      000720 12 12 04         [24] 2720 	lcall	_printf
      000723 E5 81            [12] 2721 	mov	a,sp
      000725 24 F3            [12] 2722 	add	a,#0xf3
      000727 F5 81            [12] 2723 	mov	sp,a
                           00063D  2724 	C$Lab4andahalf.c$127$3$142 ==.
                                   2725 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:127: print_flag = 0;
      000729 75 48 00         [24] 2726 	mov	_print_flag,#0x00
      00072C 02 06 41         [24] 2727 	ljmp	00103$
                           000643  2728 	C$Lab4andahalf.c$130$1$134 ==.
                           000643  2729 	XG$main$0$0 ==.
      00072F 22               [24] 2730 	ret
                                   2731 ;------------------------------------------------------------
                                   2732 ;Allocation info for local variables in function 'PCA_Init'
                                   2733 ;------------------------------------------------------------
                           000644  2734 	G$PCA_Init$0$0 ==.
                           000644  2735 	C$Lab4andahalf.c$132$1$134 ==.
                                   2736 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:132: void PCA_Init(void)
                                   2737 ;	-----------------------------------------
                                   2738 ;	 function PCA_Init
                                   2739 ;	-----------------------------------------
      000730                       2740 _PCA_Init:
                           000644  2741 	C$Lab4andahalf.c$134$1$144 ==.
                                   2742 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:134: PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
      000730 75 D9 81         [24] 2743 	mov	_PCA0MD,#0x81
                           000647  2744 	C$Lab4andahalf.c$135$1$144 ==.
                                   2745 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:135: PCA0CPM2 = PCA0CPM3 = PCA0CPM0 = 0xC2; //CCM0,2,3 in 16 bit compare mode
      000733 75 DA C2         [24] 2746 	mov	_PCA0CPM0,#0xc2
      000736 75 DD C2         [24] 2747 	mov	_PCA0CPM3,#0xc2
      000739 75 DC C2         [24] 2748 	mov	_PCA0CPM2,#0xc2
                           000650  2749 	C$Lab4andahalf.c$136$1$144 ==.
                                   2750 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:136: PCA0CN = 0x40; //enable PCA counter
      00073C 75 D8 40         [24] 2751 	mov	_PCA0CN,#0x40
                           000653  2752 	C$Lab4andahalf.c$137$1$144 ==.
                                   2753 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:137: EIE1 |= 0x08;
      00073F 43 E6 08         [24] 2754 	orl	_EIE1,#0x08
                           000656  2755 	C$Lab4andahalf.c$138$1$144 ==.
                                   2756 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:138: EA = 1;
      000742 D2 AF            [12] 2757 	setb	_EA
                           000658  2758 	C$Lab4andahalf.c$140$1$144 ==.
                           000658  2759 	XG$PCA_Init$0$0 ==.
      000744 22               [24] 2760 	ret
                                   2761 ;------------------------------------------------------------
                                   2762 ;Allocation info for local variables in function 'ADC_Init'
                                   2763 ;------------------------------------------------------------
                           000659  2764 	G$ADC_Init$0$0 ==.
                           000659  2765 	C$Lab4andahalf.c$142$1$144 ==.
                                   2766 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:142: void ADC_Init(void)
                                   2767 ;	-----------------------------------------
                                   2768 ;	 function ADC_Init
                                   2769 ;	-----------------------------------------
      000745                       2770 _ADC_Init:
                           000659  2771 	C$Lab4andahalf.c$144$1$146 ==.
                                   2772 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:144: REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
      000745 75 D1 03         [24] 2773 	mov	_REF0CN,#0x03
                           00065C  2774 	C$Lab4andahalf.c$145$1$146 ==.
                                   2775 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:145: ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
      000748 75 AA 80         [24] 2776 	mov	_ADC1CN,#0x80
                           00065F  2777 	C$Lab4andahalf.c$146$1$146 ==.
                                   2778 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:146: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
      00074B 43 AB 01         [24] 2779 	orl	_ADC1CF,#0x01
                           000662  2780 	C$Lab4andahalf.c$147$1$146 ==.
                           000662  2781 	XG$ADC_Init$0$0 ==.
      00074E 22               [24] 2782 	ret
                                   2783 ;------------------------------------------------------------
                                   2784 ;Allocation info for local variables in function 'SMB_Init'
                                   2785 ;------------------------------------------------------------
                           000663  2786 	G$SMB_Init$0$0 ==.
                           000663  2787 	C$Lab4andahalf.c$149$1$146 ==.
                                   2788 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:149: void SMB_Init(void)
                                   2789 ;	-----------------------------------------
                                   2790 ;	 function SMB_Init
                                   2791 ;	-----------------------------------------
      00074F                       2792 _SMB_Init:
                           000663  2793 	C$Lab4andahalf.c$151$1$148 ==.
                                   2794 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:151: SMB0CR = 0x93; // set SCL to 100KHz
      00074F 75 CF 93         [24] 2795 	mov	_SMB0CR,#0x93
                           000666  2796 	C$Lab4andahalf.c$152$1$148 ==.
                                   2797 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:152: ENSMB = TRUE; // enable SMBUS0
      000752 D2 C6            [12] 2798 	setb	_ENSMB
                           000668  2799 	C$Lab4andahalf.c$153$1$148 ==.
                           000668  2800 	XG$SMB_Init$0$0 ==.
      000754 22               [24] 2801 	ret
                                   2802 ;------------------------------------------------------------
                                   2803 ;Allocation info for local variables in function 'Port_Init'
                                   2804 ;------------------------------------------------------------
                           000669  2805 	G$Port_Init$0$0 ==.
                           000669  2806 	C$Lab4andahalf.c$155$1$148 ==.
                                   2807 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:155: void Port_Init(void)
                                   2808 ;	-----------------------------------------
                                   2809 ;	 function Port_Init
                                   2810 ;	-----------------------------------------
      000755                       2811 _Port_Init:
                           000669  2812 	C$Lab4andahalf.c$157$1$150 ==.
                                   2813 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:157: P1MDIN &= ~0x10; 	//potentiometer
      000755 53 BD EF         [24] 2814 	anl	_P1MDIN,#0xef
                           00066C  2815 	C$Lab4andahalf.c$158$1$150 ==.
                                   2816 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:158: P1MDOUT &= ~0x10;	
      000758 53 A5 EF         [24] 2817 	anl	_P1MDOUT,#0xef
                           00066F  2818 	C$Lab4andahalf.c$159$1$150 ==.
                                   2819 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:159: P1MDOUT |= 0x0D;	//CEX pins
      00075B 43 A5 0D         [24] 2820 	orl	_P1MDOUT,#0x0d
                           000672  2821 	C$Lab4andahalf.c$160$1$150 ==.
                                   2822 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:160: P1 |= 0x10;
      00075E 43 90 10         [24] 2823 	orl	_P1,#0x10
                           000675  2824 	C$Lab4andahalf.c$162$1$150 ==.
                                   2825 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:162: P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
      000761 53 A7 80         [24] 2826 	anl	_P3MDOUT,#0x80
                           000678  2827 	C$Lab4andahalf.c$163$1$150 ==.
                                   2828 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:163: P3 |= ~0x80;
      000764 43 B0 7F         [24] 2829 	orl	_P3,#0x7f
                           00067B  2830 	C$Lab4andahalf.c$164$1$150 ==.
                           00067B  2831 	XG$Port_Init$0$0 ==.
      000767 22               [24] 2832 	ret
                                   2833 ;------------------------------------------------------------
                                   2834 ;Allocation info for local variables in function 'XBR0_Init'
                                   2835 ;------------------------------------------------------------
                           00067C  2836 	G$XBR0_Init$0$0 ==.
                           00067C  2837 	C$Lab4andahalf.c$166$1$150 ==.
                                   2838 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:166: void XBR0_Init(void)
                                   2839 ;	-----------------------------------------
                                   2840 ;	 function XBR0_Init
                                   2841 ;	-----------------------------------------
      000768                       2842 _XBR0_Init:
                           00067C  2843 	C$Lab4andahalf.c$168$1$152 ==.
                                   2844 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:168: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      000768 75 E1 27         [24] 2845 	mov	_XBR0,#0x27
                           00067F  2846 	C$Lab4andahalf.c$170$1$152 ==.
                           00067F  2847 	XG$XBR0_Init$0$0 ==.
      00076B 22               [24] 2848 	ret
                                   2849 ;------------------------------------------------------------
                                   2850 ;Allocation info for local variables in function 'read_compass'
                                   2851 ;------------------------------------------------------------
                                   2852 ;addr                      Allocated to registers 
                                   2853 ;compheading               Allocated to registers 
                                   2854 ;------------------------------------------------------------
                           000680  2855 	G$read_compass$0$0 ==.
                           000680  2856 	C$Lab4andahalf.c$172$1$152 ==.
                                   2857 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:172: int read_compass(void)
                                   2858 ;	-----------------------------------------
                                   2859 ;	 function read_compass
                                   2860 ;	-----------------------------------------
      00076C                       2861 _read_compass:
                           000680  2862 	C$Lab4andahalf.c$176$1$154 ==.
                                   2863 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:176: i2c_read_data(addr, 2, Data, 2); // read two byte, starting at reg 2
      00076C 75 32 5D         [24] 2864 	mov	_i2c_read_data_PARM_3,#_Data
      00076F 75 33 00         [24] 2865 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000772 75 34 40         [24] 2866 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000775 75 31 02         [24] 2867 	mov	_i2c_read_data_PARM_2,#0x02
      000778 75 35 02         [24] 2868 	mov	_i2c_read_data_PARM_4,#0x02
      00077B 75 82 C0         [24] 2869 	mov	dpl,#0xc0
      00077E 12 04 F2         [24] 2870 	lcall	_i2c_read_data
                           000695  2871 	C$Lab4andahalf.c$177$1$154 ==.
                                   2872 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:177: compheading =(((unsigned int)Data[0] << 8) | Data[1]); //combine the two values
      000781 AF 5D            [24] 2873 	mov	r7,_Data
      000783 7E 00            [12] 2874 	mov	r6,#0x00
      000785 AC 5E            [24] 2875 	mov	r4,(_Data + 0x0001)
      000787 7D 00            [12] 2876 	mov	r5,#0x00
      000789 EC               [12] 2877 	mov	a,r4
      00078A 4E               [12] 2878 	orl	a,r6
      00078B F5 82            [12] 2879 	mov	dpl,a
      00078D ED               [12] 2880 	mov	a,r5
      00078E 4F               [12] 2881 	orl	a,r7
      00078F F5 83            [12] 2882 	mov	dph,a
                           0006A5  2883 	C$Lab4andahalf.c$179$1$154 ==.
                                   2884 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:179: return compheading; // the heading returned in degrees between 0 and 3599
                           0006A5  2885 	C$Lab4andahalf.c$180$1$154 ==.
                           0006A5  2886 	XG$read_compass$0$0 ==.
      000791 22               [24] 2887 	ret
                                   2888 ;------------------------------------------------------------
                                   2889 ;Allocation info for local variables in function 'read_ranger'
                                   2890 ;------------------------------------------------------------
                                   2891 ;addr                      Allocated to registers 
                                   2892 ;lightlevel                Allocated to registers r7 
                                   2893 ;------------------------------------------------------------
                           0006A6  2894 	G$read_ranger$0$0 ==.
                           0006A6  2895 	C$Lab4andahalf.c$182$1$154 ==.
                                   2896 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:182: char read_ranger(void)
                                   2897 ;	-----------------------------------------
                                   2898 ;	 function read_ranger
                                   2899 ;	-----------------------------------------
      000792                       2900 _read_ranger:
                           0006A6  2901 	C$Lab4andahalf.c$186$1$156 ==.
                                   2902 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:186: i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
      000792 75 32 5D         [24] 2903 	mov	_i2c_read_data_PARM_3,#_Data
      000795 75 33 00         [24] 2904 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000798 75 34 40         [24] 2905 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00079B 75 31 02         [24] 2906 	mov	_i2c_read_data_PARM_2,#0x02
      00079E 75 35 02         [24] 2907 	mov	_i2c_read_data_PARM_4,#0x02
      0007A1 75 82 E0         [24] 2908 	mov	dpl,#0xe0
      0007A4 12 04 F2         [24] 2909 	lcall	_i2c_read_data
                           0006BB  2910 	C$Lab4andahalf.c$187$1$156 ==.
                                   2911 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:187: range = (((unsigned int)Data[0] << 8) | Data[1]);
      0007A7 AF 5D            [24] 2912 	mov	r7,_Data
      0007A9 7E 00            [12] 2913 	mov	r6,#0x00
      0007AB AC 5E            [24] 2914 	mov	r4,(_Data + 0x0001)
      0007AD 7D 00            [12] 2915 	mov	r5,#0x00
      0007AF EC               [12] 2916 	mov	a,r4
      0007B0 4E               [12] 2917 	orl	a,r6
      0007B1 F5 49            [12] 2918 	mov	_range,a
      0007B3 ED               [12] 2919 	mov	a,r5
      0007B4 4F               [12] 2920 	orl	a,r7
      0007B5 F5 4A            [12] 2921 	mov	(_range + 1),a
                           0006CB  2922 	C$Lab4andahalf.c$188$1$156 ==.
                                   2923 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:188: i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
      0007B7 75 32 5D         [24] 2924 	mov	_i2c_read_data_PARM_3,#_Data
                                   2925 ;	1-genFromRTrack replaced	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0007BA 8E 33            [24] 2926 	mov	(_i2c_read_data_PARM_3 + 1),r6
      0007BC 75 34 40         [24] 2927 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0007BF 75 31 01         [24] 2928 	mov	_i2c_read_data_PARM_2,#0x01
      0007C2 75 35 01         [24] 2929 	mov	_i2c_read_data_PARM_4,#0x01
      0007C5 75 82 E0         [24] 2930 	mov	dpl,#0xe0
      0007C8 12 04 F2         [24] 2931 	lcall	_i2c_read_data
                           0006DF  2932 	C$Lab4andahalf.c$189$1$156 ==.
                                   2933 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:189: lightlevel = Data[0];
      0007CB AF 5D            [24] 2934 	mov	r7,_Data
                           0006E1  2935 	C$Lab4andahalf.c$190$1$156 ==.
                                   2936 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:190: Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
      0007CD 75 5D 51         [24] 2937 	mov	_Data,#0x51
                           0006E4  2938 	C$Lab4andahalf.c$191$1$156 ==.
                                   2939 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:191: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      0007D0 75 2D 5D         [24] 2940 	mov	_i2c_write_data_PARM_3,#_Data
      0007D3 75 2E 00         [24] 2941 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0007D6 75 2F 40         [24] 2942 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0007D9 75 2C 00         [24] 2943 	mov	_i2c_write_data_PARM_2,#0x00
      0007DC 75 30 01         [24] 2944 	mov	_i2c_write_data_PARM_4,#0x01
      0007DF 75 82 E0         [24] 2945 	mov	dpl,#0xe0
      0007E2 C0 07            [24] 2946 	push	ar7
      0007E4 12 04 78         [24] 2947 	lcall	_i2c_write_data
      0007E7 D0 07            [24] 2948 	pop	ar7
                           0006FD  2949 	C$Lab4andahalf.c$192$1$156 ==.
                                   2950 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:192: return lightlevel;
      0007E9 8F 82            [24] 2951 	mov	dpl,r7
                           0006FF  2952 	C$Lab4andahalf.c$193$1$156 ==.
                           0006FF  2953 	XG$read_ranger$0$0 ==.
      0007EB 22               [24] 2954 	ret
                                   2955 ;------------------------------------------------------------
                                   2956 ;Allocation info for local variables in function 'forward_mode'
                                   2957 ;------------------------------------------------------------
                           000700  2958 	G$forward_mode$0$0 ==.
                           000700  2959 	C$Lab4andahalf.c$195$1$156 ==.
                                   2960 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:195: void forward_mode(void) {
                                   2961 ;	-----------------------------------------
                                   2962 ;	 function forward_mode
                                   2963 ;	-----------------------------------------
      0007EC                       2964 _forward_mode:
                           000700  2965 	C$Lab4andahalf.c$197$1$158 ==.
                                   2966 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:197: desired_heading = set_heading;	
      0007EC 85 62 53         [24] 2967 	mov	_desired_heading,_set_heading
      0007EF 85 63 54         [24] 2968 	mov	(_desired_heading + 1),(_set_heading + 1)
                           000706  2969 	C$Lab4andahalf.c$198$1$158 ==.
                           000706  2970 	XG$forward_mode$0$0 ==.
      0007F2 22               [24] 2971 	ret
                                   2972 ;------------------------------------------------------------
                                   2973 ;Allocation info for local variables in function 'reverse_mode'
                                   2974 ;------------------------------------------------------------
                           000707  2975 	G$reverse_mode$0$0 ==.
                           000707  2976 	C$Lab4andahalf.c$200$1$158 ==.
                                   2977 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:200: void reverse_mode(void) {
                                   2978 ;	-----------------------------------------
                                   2979 ;	 function reverse_mode
                                   2980 ;	-----------------------------------------
      0007F3                       2981 _reverse_mode:
                           000707  2982 	C$Lab4andahalf.c$202$1$160 ==.
                                   2983 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:202: pot_val = read_AD_input(4, 0);
      0007F3 75 65 00         [24] 2984 	mov	_read_AD_input_PARM_2,#0x00
      0007F6 75 82 04         [24] 2985 	mov	dpl,#0x04
      0007F9 12 0E 2C         [24] 2986 	lcall	_read_AD_input
                           000710  2987 	C$Lab4andahalf.c$203$1$160 ==.
                                   2988 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:203: MOTOR_PW = MOTOR_MIN + (pot_val * 3);
      0007FC E5 82            [12] 2989 	mov	a,dpl
      0007FE F5 64            [12] 2990 	mov	_pot_val,a
      000800 75 F0 03         [24] 2991 	mov	b,#0x03
      000803 A4               [48] 2992 	mul	ab
      000804 FE               [12] 2993 	mov	r6,a
      000805 AF F0            [24] 2994 	mov	r7,b
      000807 25 3A            [12] 2995 	add	a,_MOTOR_MIN
      000809 F5 3C            [12] 2996 	mov	_MOTOR_PW,a
      00080B EF               [12] 2997 	mov	a,r7
      00080C 35 3B            [12] 2998 	addc	a,(_MOTOR_MIN + 1)
      00080E F5 3D            [12] 2999 	mov	(_MOTOR_PW + 1),a
                           000724  3000 	C$Lab4andahalf.c$204$1$160 ==.
                                   3001 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:204: PCA0CP2 = 0xFFFF - MOTOR_PW;
      000810 74 FF            [12] 3002 	mov	a,#0xff
      000812 C3               [12] 3003 	clr	c
      000813 95 3C            [12] 3004 	subb	a,_MOTOR_PW
      000815 F5 EC            [12] 3005 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000817 74 FF            [12] 3006 	mov	a,#0xff
      000819 95 3D            [12] 3007 	subb	a,(_MOTOR_PW + 1)
      00081B F5 FC            [12] 3008 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000731  3009 	C$Lab4andahalf.c$205$1$160 ==.
                                   3010 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:205: error = desired_heading - heading;
      00081D E5 53            [12] 3011 	mov	a,_desired_heading
      00081F C3               [12] 3012 	clr	c
      000820 95 4D            [12] 3013 	subb	a,_heading
      000822 F5 57            [12] 3014 	mov	_error,a
      000824 E5 54            [12] 3015 	mov	a,(_desired_heading + 1)
      000826 95 4E            [12] 3016 	subb	a,(_heading + 1)
      000828 F5 58            [12] 3017 	mov	(_error + 1),a
                           00073E  3018 	C$Lab4andahalf.c$206$1$160 ==.
                                   3019 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:206: deriv = error - deriv;
      00082A E5 57            [12] 3020 	mov	a,_error
      00082C C3               [12] 3021 	clr	c
      00082D 95 59            [12] 3022 	subb	a,_deriv
      00082F F5 59            [12] 3023 	mov	_deriv,a
      000831 E5 58            [12] 3024 	mov	a,(_error + 1)
      000833 95 5A            [12] 3025 	subb	a,(_deriv + 1)
      000835 F5 5A            [12] 3026 	mov	(_deriv + 1),a
                           00074B  3027 	C$Lab4andahalf.c$207$1$160 ==.
                                   3028 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:207: if (error > 1800) {
      000837 C3               [12] 3029 	clr	c
      000838 74 08            [12] 3030 	mov	a,#0x08
      00083A 95 57            [12] 3031 	subb	a,_error
      00083C 74 87            [12] 3032 	mov	a,#(0x07 ^ 0x80)
      00083E 85 58 F0         [24] 3033 	mov	b,(_error + 1)
      000841 63 F0 80         [24] 3034 	xrl	b,#0x80
      000844 95 F0            [12] 3035 	subb	a,b
      000846 50 0E            [24] 3036 	jnc	00104$
                           00075C  3037 	C$Lab4andahalf.c$208$2$161 ==.
                                   3038 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:208: error = error - 3600;
      000848 E5 57            [12] 3039 	mov	a,_error
      00084A 24 F0            [12] 3040 	add	a,#0xf0
      00084C F5 57            [12] 3041 	mov	_error,a
      00084E E5 58            [12] 3042 	mov	a,(_error + 1)
      000850 34 F1            [12] 3043 	addc	a,#0xf1
      000852 F5 58            [12] 3044 	mov	(_error + 1),a
      000854 80 1A            [24] 3045 	sjmp	00105$
      000856                       3046 00104$:
                           00076A  3047 	C$Lab4andahalf.c$210$1$160 ==.
                                   3048 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:210: else if (error < -1800) {
      000856 C3               [12] 3049 	clr	c
      000857 E5 57            [12] 3050 	mov	a,_error
      000859 94 F8            [12] 3051 	subb	a,#0xf8
      00085B E5 58            [12] 3052 	mov	a,(_error + 1)
      00085D 64 80            [12] 3053 	xrl	a,#0x80
      00085F 94 78            [12] 3054 	subb	a,#0x78
      000861 50 0D            [24] 3055 	jnc	00105$
                           000777  3056 	C$Lab4andahalf.c$211$2$162 ==.
                                   3057 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:211: error = 3600 - error;
      000863 74 10            [12] 3058 	mov	a,#0x10
      000865 C3               [12] 3059 	clr	c
      000866 95 57            [12] 3060 	subb	a,_error
      000868 F5 57            [12] 3061 	mov	_error,a
      00086A 74 0E            [12] 3062 	mov	a,#0x0e
      00086C 95 58            [12] 3063 	subb	a,(_error + 1)
      00086E F5 58            [12] 3064 	mov	(_error + 1),a
      000870                       3065 00105$:
                           000784  3066 	C$Lab4andahalf.c$214$1$160 ==.
                                   3067 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:214: SERVO_PW = (error*-2.5) + SERVO_CENTER;
      000870 85 57 82         [24] 3068 	mov	dpl,_error
      000873 85 58 83         [24] 3069 	mov	dph,(_error + 1)
      000876 12 11 6D         [24] 3070 	lcall	___sint2fs
      000879 AC 82            [24] 3071 	mov	r4,dpl
      00087B AD 83            [24] 3072 	mov	r5,dph
      00087D AE F0            [24] 3073 	mov	r6,b
      00087F FF               [12] 3074 	mov	r7,a
      000880 C0 04            [24] 3075 	push	ar4
      000882 C0 05            [24] 3076 	push	ar5
      000884 C0 06            [24] 3077 	push	ar6
      000886 C0 07            [24] 3078 	push	ar7
      000888 90 00 00         [24] 3079 	mov	dptr,#0x0000
      00088B 75 F0 20         [24] 3080 	mov	b,#0x20
      00088E 74 C0            [12] 3081 	mov	a,#0xc0
      000890 12 0E B4         [24] 3082 	lcall	___fsmul
      000893 AC 82            [24] 3083 	mov	r4,dpl
      000895 AD 83            [24] 3084 	mov	r5,dph
      000897 AE F0            [24] 3085 	mov	r6,b
      000899 FF               [12] 3086 	mov	r7,a
      00089A E5 81            [12] 3087 	mov	a,sp
      00089C 24 FC            [12] 3088 	add	a,#0xfc
      00089E F5 81            [12] 3089 	mov	sp,a
      0008A0 85 3E 82         [24] 3090 	mov	dpl,_SERVO_CENTER
      0008A3 85 3F 83         [24] 3091 	mov	dph,(_SERVO_CENTER + 1)
      0008A6 C0 07            [24] 3092 	push	ar7
      0008A8 C0 06            [24] 3093 	push	ar6
      0008AA C0 05            [24] 3094 	push	ar5
      0008AC C0 04            [24] 3095 	push	ar4
      0008AE 12 11 7A         [24] 3096 	lcall	___uint2fs
      0008B1 A8 82            [24] 3097 	mov	r0,dpl
      0008B3 A9 83            [24] 3098 	mov	r1,dph
      0008B5 AA F0            [24] 3099 	mov	r2,b
      0008B7 FB               [12] 3100 	mov	r3,a
      0008B8 D0 04            [24] 3101 	pop	ar4
      0008BA D0 05            [24] 3102 	pop	ar5
      0008BC D0 06            [24] 3103 	pop	ar6
      0008BE D0 07            [24] 3104 	pop	ar7
      0008C0 C0 00            [24] 3105 	push	ar0
      0008C2 C0 01            [24] 3106 	push	ar1
      0008C4 C0 02            [24] 3107 	push	ar2
      0008C6 C0 03            [24] 3108 	push	ar3
      0008C8 8C 82            [24] 3109 	mov	dpl,r4
      0008CA 8D 83            [24] 3110 	mov	dph,r5
      0008CC 8E F0            [24] 3111 	mov	b,r6
      0008CE EF               [12] 3112 	mov	a,r7
      0008CF 12 10 EB         [24] 3113 	lcall	___fsadd
      0008D2 AC 82            [24] 3114 	mov	r4,dpl
      0008D4 AD 83            [24] 3115 	mov	r5,dph
      0008D6 AE F0            [24] 3116 	mov	r6,b
      0008D8 FF               [12] 3117 	mov	r7,a
      0008D9 E5 81            [12] 3118 	mov	a,sp
      0008DB 24 FC            [12] 3119 	add	a,#0xfc
      0008DD F5 81            [12] 3120 	mov	sp,a
      0008DF 8C 82            [24] 3121 	mov	dpl,r4
      0008E1 8D 83            [24] 3122 	mov	dph,r5
      0008E3 8E F0            [24] 3123 	mov	b,r6
      0008E5 EF               [12] 3124 	mov	a,r7
      0008E6 12 11 86         [24] 3125 	lcall	___fs2uint
      0008E9 85 82 44         [24] 3126 	mov	_SERVO_PW,dpl
      0008EC 85 83 45         [24] 3127 	mov	(_SERVO_PW + 1),dph
                           000803  3128 	C$Lab4andahalf.c$216$1$160 ==.
                                   3129 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:216: if (SERVO_PW > SERVO_RIGHT) {
      0008EF C3               [12] 3130 	clr	c
      0008F0 E5 40            [12] 3131 	mov	a,_SERVO_RIGHT
      0008F2 95 44            [12] 3132 	subb	a,_SERVO_PW
      0008F4 E5 41            [12] 3133 	mov	a,(_SERVO_RIGHT + 1)
      0008F6 95 45            [12] 3134 	subb	a,(_SERVO_PW + 1)
      0008F8 50 08            [24] 3135 	jnc	00109$
                           00080E  3136 	C$Lab4andahalf.c$217$2$163 ==.
                                   3137 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:217: SERVO_PW = SERVO_RIGHT;
      0008FA 85 40 44         [24] 3138 	mov	_SERVO_PW,_SERVO_RIGHT
      0008FD 85 41 45         [24] 3139 	mov	(_SERVO_PW + 1),(_SERVO_RIGHT + 1)
      000900 80 11            [24] 3140 	sjmp	00110$
      000902                       3141 00109$:
                           000816  3142 	C$Lab4andahalf.c$219$1$160 ==.
                                   3143 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:219: else if (SERVO_PW < SERVO_LEFT) {
      000902 C3               [12] 3144 	clr	c
      000903 E5 44            [12] 3145 	mov	a,_SERVO_PW
      000905 95 42            [12] 3146 	subb	a,_SERVO_LEFT
      000907 E5 45            [12] 3147 	mov	a,(_SERVO_PW + 1)
      000909 95 43            [12] 3148 	subb	a,(_SERVO_LEFT + 1)
      00090B 50 06            [24] 3149 	jnc	00110$
                           000821  3150 	C$Lab4andahalf.c$220$2$164 ==.
                                   3151 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:220: SERVO_PW = SERVO_LEFT;
      00090D 85 42 44         [24] 3152 	mov	_SERVO_PW,_SERVO_LEFT
      000910 85 43 45         [24] 3153 	mov	(_SERVO_PW + 1),(_SERVO_LEFT + 1)
      000913                       3154 00110$:
                           000827  3155 	C$Lab4andahalf.c$222$1$160 ==.
                                   3156 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:222: PCA0CP0 = 0xFFFF - SERVO_PW;
      000913 74 FF            [12] 3157 	mov	a,#0xff
      000915 C3               [12] 3158 	clr	c
      000916 95 44            [12] 3159 	subb	a,_SERVO_PW
      000918 F5 EA            [12] 3160 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      00091A 74 FF            [12] 3161 	mov	a,#0xff
      00091C 95 45            [12] 3162 	subb	a,(_SERVO_PW + 1)
      00091E F5 FA            [12] 3163 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000834  3164 	C$Lab4andahalf.c$223$1$160 ==.
                                   3165 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:223: deriv = heading;
      000920 85 4D 59         [24] 3166 	mov	_deriv,_heading
      000923 85 4E 5A         [24] 3167 	mov	(_deriv + 1),(_heading + 1)
                           00083A  3168 	C$Lab4andahalf.c$225$1$160 ==.
                           00083A  3169 	XG$reverse_mode$0$0 ==.
      000926 22               [24] 3170 	ret
                                   3171 ;------------------------------------------------------------
                                   3172 ;Allocation info for local variables in function 'set_servo_PWM'
                                   3173 ;------------------------------------------------------------
                           00083B  3174 	G$set_servo_PWM$0$0 ==.
                           00083B  3175 	C$Lab4andahalf.c$227$1$160 ==.
                                   3176 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:227: void set_servo_PWM(void)
                                   3177 ;	-----------------------------------------
                                   3178 ;	 function set_servo_PWM
                                   3179 ;	-----------------------------------------
      000927                       3180 _set_servo_PWM:
                           00083B  3181 	C$Lab4andahalf.c$229$1$166 ==.
                                   3182 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:229: error = desired_heading - heading;
      000927 E5 53            [12] 3183 	mov	a,_desired_heading
      000929 C3               [12] 3184 	clr	c
      00092A 95 4D            [12] 3185 	subb	a,_heading
      00092C F5 57            [12] 3186 	mov	_error,a
      00092E E5 54            [12] 3187 	mov	a,(_desired_heading + 1)
      000930 95 4E            [12] 3188 	subb	a,(_heading + 1)
      000932 F5 58            [12] 3189 	mov	(_error + 1),a
                           000848  3190 	C$Lab4andahalf.c$230$1$166 ==.
                                   3191 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:230: deriv = error - deriv;
      000934 E5 57            [12] 3192 	mov	a,_error
      000936 C3               [12] 3193 	clr	c
      000937 95 59            [12] 3194 	subb	a,_deriv
      000939 F5 59            [12] 3195 	mov	_deriv,a
      00093B E5 58            [12] 3196 	mov	a,(_error + 1)
      00093D 95 5A            [12] 3197 	subb	a,(_deriv + 1)
      00093F F5 5A            [12] 3198 	mov	(_deriv + 1),a
                           000855  3199 	C$Lab4andahalf.c$231$1$166 ==.
                                   3200 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:231: if (error > 1800) {
      000941 C3               [12] 3201 	clr	c
      000942 74 08            [12] 3202 	mov	a,#0x08
      000944 95 57            [12] 3203 	subb	a,_error
      000946 74 87            [12] 3204 	mov	a,#(0x07 ^ 0x80)
      000948 85 58 F0         [24] 3205 	mov	b,(_error + 1)
      00094B 63 F0 80         [24] 3206 	xrl	b,#0x80
      00094E 95 F0            [12] 3207 	subb	a,b
      000950 50 0E            [24] 3208 	jnc	00104$
                           000866  3209 	C$Lab4andahalf.c$232$2$167 ==.
                                   3210 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:232: error = error - 3600;
      000952 E5 57            [12] 3211 	mov	a,_error
      000954 24 F0            [12] 3212 	add	a,#0xf0
      000956 F5 57            [12] 3213 	mov	_error,a
      000958 E5 58            [12] 3214 	mov	a,(_error + 1)
      00095A 34 F1            [12] 3215 	addc	a,#0xf1
      00095C F5 58            [12] 3216 	mov	(_error + 1),a
      00095E 80 1A            [24] 3217 	sjmp	00105$
      000960                       3218 00104$:
                           000874  3219 	C$Lab4andahalf.c$234$1$166 ==.
                                   3220 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:234: else if (error < -1800) {
      000960 C3               [12] 3221 	clr	c
      000961 E5 57            [12] 3222 	mov	a,_error
      000963 94 F8            [12] 3223 	subb	a,#0xf8
      000965 E5 58            [12] 3224 	mov	a,(_error + 1)
      000967 64 80            [12] 3225 	xrl	a,#0x80
      000969 94 78            [12] 3226 	subb	a,#0x78
      00096B 50 0D            [24] 3227 	jnc	00105$
                           000881  3228 	C$Lab4andahalf.c$235$2$168 ==.
                                   3229 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:235: error = 3600 - error;
      00096D 74 10            [12] 3230 	mov	a,#0x10
      00096F C3               [12] 3231 	clr	c
      000970 95 57            [12] 3232 	subb	a,_error
      000972 F5 57            [12] 3233 	mov	_error,a
      000974 74 0E            [12] 3234 	mov	a,#0x0e
      000976 95 58            [12] 3235 	subb	a,(_error + 1)
      000978 F5 58            [12] 3236 	mov	(_error + 1),a
      00097A                       3237 00105$:
                           00088E  3238 	C$Lab4andahalf.c$238$1$166 ==.
                                   3239 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:238: SERVO_PW = (error*2.5) + SERVO_CENTER;
      00097A 85 57 82         [24] 3240 	mov	dpl,_error
      00097D 85 58 83         [24] 3241 	mov	dph,(_error + 1)
      000980 12 11 6D         [24] 3242 	lcall	___sint2fs
      000983 AC 82            [24] 3243 	mov	r4,dpl
      000985 AD 83            [24] 3244 	mov	r5,dph
      000987 AE F0            [24] 3245 	mov	r6,b
      000989 FF               [12] 3246 	mov	r7,a
      00098A C0 04            [24] 3247 	push	ar4
      00098C C0 05            [24] 3248 	push	ar5
      00098E C0 06            [24] 3249 	push	ar6
      000990 C0 07            [24] 3250 	push	ar7
      000992 90 00 00         [24] 3251 	mov	dptr,#0x0000
      000995 75 F0 20         [24] 3252 	mov	b,#0x20
      000998 74 40            [12] 3253 	mov	a,#0x40
      00099A 12 0E B4         [24] 3254 	lcall	___fsmul
      00099D AC 82            [24] 3255 	mov	r4,dpl
      00099F AD 83            [24] 3256 	mov	r5,dph
      0009A1 AE F0            [24] 3257 	mov	r6,b
      0009A3 FF               [12] 3258 	mov	r7,a
      0009A4 E5 81            [12] 3259 	mov	a,sp
      0009A6 24 FC            [12] 3260 	add	a,#0xfc
      0009A8 F5 81            [12] 3261 	mov	sp,a
      0009AA 85 3E 82         [24] 3262 	mov	dpl,_SERVO_CENTER
      0009AD 85 3F 83         [24] 3263 	mov	dph,(_SERVO_CENTER + 1)
      0009B0 C0 07            [24] 3264 	push	ar7
      0009B2 C0 06            [24] 3265 	push	ar6
      0009B4 C0 05            [24] 3266 	push	ar5
      0009B6 C0 04            [24] 3267 	push	ar4
      0009B8 12 11 7A         [24] 3268 	lcall	___uint2fs
      0009BB A8 82            [24] 3269 	mov	r0,dpl
      0009BD A9 83            [24] 3270 	mov	r1,dph
      0009BF AA F0            [24] 3271 	mov	r2,b
      0009C1 FB               [12] 3272 	mov	r3,a
      0009C2 D0 04            [24] 3273 	pop	ar4
      0009C4 D0 05            [24] 3274 	pop	ar5
      0009C6 D0 06            [24] 3275 	pop	ar6
      0009C8 D0 07            [24] 3276 	pop	ar7
      0009CA C0 00            [24] 3277 	push	ar0
      0009CC C0 01            [24] 3278 	push	ar1
      0009CE C0 02            [24] 3279 	push	ar2
      0009D0 C0 03            [24] 3280 	push	ar3
      0009D2 8C 82            [24] 3281 	mov	dpl,r4
      0009D4 8D 83            [24] 3282 	mov	dph,r5
      0009D6 8E F0            [24] 3283 	mov	b,r6
      0009D8 EF               [12] 3284 	mov	a,r7
      0009D9 12 10 EB         [24] 3285 	lcall	___fsadd
      0009DC AC 82            [24] 3286 	mov	r4,dpl
      0009DE AD 83            [24] 3287 	mov	r5,dph
      0009E0 AE F0            [24] 3288 	mov	r6,b
      0009E2 FF               [12] 3289 	mov	r7,a
      0009E3 E5 81            [12] 3290 	mov	a,sp
      0009E5 24 FC            [12] 3291 	add	a,#0xfc
      0009E7 F5 81            [12] 3292 	mov	sp,a
      0009E9 8C 82            [24] 3293 	mov	dpl,r4
      0009EB 8D 83            [24] 3294 	mov	dph,r5
      0009ED 8E F0            [24] 3295 	mov	b,r6
      0009EF EF               [12] 3296 	mov	a,r7
      0009F0 12 11 86         [24] 3297 	lcall	___fs2uint
      0009F3 85 82 44         [24] 3298 	mov	_SERVO_PW,dpl
      0009F6 85 83 45         [24] 3299 	mov	(_SERVO_PW + 1),dph
                           00090D  3300 	C$Lab4andahalf.c$240$1$166 ==.
                                   3301 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:240: if (SERVO_PW > SERVO_RIGHT) {
      0009F9 C3               [12] 3302 	clr	c
      0009FA E5 40            [12] 3303 	mov	a,_SERVO_RIGHT
      0009FC 95 44            [12] 3304 	subb	a,_SERVO_PW
      0009FE E5 41            [12] 3305 	mov	a,(_SERVO_RIGHT + 1)
      000A00 95 45            [12] 3306 	subb	a,(_SERVO_PW + 1)
      000A02 50 08            [24] 3307 	jnc	00109$
                           000918  3308 	C$Lab4andahalf.c$241$2$169 ==.
                                   3309 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:241: SERVO_PW = SERVO_RIGHT;
      000A04 85 40 44         [24] 3310 	mov	_SERVO_PW,_SERVO_RIGHT
      000A07 85 41 45         [24] 3311 	mov	(_SERVO_PW + 1),(_SERVO_RIGHT + 1)
      000A0A 80 11            [24] 3312 	sjmp	00110$
      000A0C                       3313 00109$:
                           000920  3314 	C$Lab4andahalf.c$243$1$166 ==.
                                   3315 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:243: else if (SERVO_PW < SERVO_LEFT) {
      000A0C C3               [12] 3316 	clr	c
      000A0D E5 44            [12] 3317 	mov	a,_SERVO_PW
      000A0F 95 42            [12] 3318 	subb	a,_SERVO_LEFT
      000A11 E5 45            [12] 3319 	mov	a,(_SERVO_PW + 1)
      000A13 95 43            [12] 3320 	subb	a,(_SERVO_LEFT + 1)
      000A15 50 06            [24] 3321 	jnc	00110$
                           00092B  3322 	C$Lab4andahalf.c$244$2$170 ==.
                                   3323 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:244: SERVO_PW = SERVO_LEFT;
      000A17 85 42 44         [24] 3324 	mov	_SERVO_PW,_SERVO_LEFT
      000A1A 85 43 45         [24] 3325 	mov	(_SERVO_PW + 1),(_SERVO_LEFT + 1)
      000A1D                       3326 00110$:
                           000931  3327 	C$Lab4andahalf.c$246$1$166 ==.
                                   3328 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:246: PCA0CP0 = 0xFFFF - SERVO_PW;
      000A1D 74 FF            [12] 3329 	mov	a,#0xff
      000A1F C3               [12] 3330 	clr	c
      000A20 95 44            [12] 3331 	subb	a,_SERVO_PW
      000A22 F5 EA            [12] 3332 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000A24 74 FF            [12] 3333 	mov	a,#0xff
      000A26 95 45            [12] 3334 	subb	a,(_SERVO_PW + 1)
      000A28 F5 FA            [12] 3335 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           00093E  3336 	C$Lab4andahalf.c$247$1$166 ==.
                                   3337 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:247: deriv = heading;
      000A2A 85 4D 59         [24] 3338 	mov	_deriv,_heading
      000A2D 85 4E 5A         [24] 3339 	mov	(_deriv + 1),(_heading + 1)
                           000944  3340 	C$Lab4andahalf.c$248$1$166 ==.
                           000944  3341 	XG$set_servo_PWM$0$0 ==.
      000A30 22               [24] 3342 	ret
                                   3343 ;------------------------------------------------------------
                                   3344 ;Allocation info for local variables in function 'set_drive_PWM'
                                   3345 ;------------------------------------------------------------
                                   3346 ;distance                  Allocated to registers r6 r7 
                                   3347 ;------------------------------------------------------------
                           000945  3348 	G$set_drive_PWM$0$0 ==.
                           000945  3349 	C$Lab4andahalf.c$250$1$166 ==.
                                   3350 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:250: void set_drive_PWM(unsigned int distance)
                                   3351 ;	-----------------------------------------
                                   3352 ;	 function set_drive_PWM
                                   3353 ;	-----------------------------------------
      000A31                       3354 _set_drive_PWM:
      000A31 AE 82            [24] 3355 	mov	r6,dpl
      000A33 AF 83            [24] 3356 	mov	r7,dph
                           000949  3357 	C$Lab4andahalf.c$252$1$172 ==.
                                   3358 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:252: drivegain = read_AD_input(4, 0); //get potentiometer read to adjust speed
      000A35 75 65 00         [24] 3359 	mov	_read_AD_input_PARM_2,#0x00
      000A38 75 82 04         [24] 3360 	mov	dpl,#0x04
      000A3B C0 07            [24] 3361 	push	ar7
      000A3D C0 06            [24] 3362 	push	ar6
      000A3F 12 0E 2C         [24] 3363 	lcall	_read_AD_input
      000A42 85 82 60         [24] 3364 	mov	_drivegain,dpl
      000A45 D0 06            [24] 3365 	pop	ar6
      000A47 D0 07            [24] 3366 	pop	ar7
                           00095D  3367 	C$Lab4andahalf.c$253$1$172 ==.
                                   3368 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:253: if (distance < 30) {
      000A49 C3               [12] 3369 	clr	c
      000A4A EE               [12] 3370 	mov	a,r6
      000A4B 94 1E            [12] 3371 	subb	a,#0x1e
      000A4D EF               [12] 3372 	mov	a,r7
      000A4E 94 00            [12] 3373 	subb	a,#0x00
      000A50 50 08            [24] 3374 	jnc	00108$
                           000966  3375 	C$Lab4andahalf.c$254$2$173 ==.
                                   3376 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:254: MOTOR_PW = MOTOR_STOP;
      000A52 85 36 3C         [24] 3377 	mov	_MOTOR_PW,_MOTOR_STOP
      000A55 85 37 3D         [24] 3378 	mov	(_MOTOR_PW + 1),(_MOTOR_STOP + 1)
      000A58 80 41            [24] 3379 	sjmp	00109$
      000A5A                       3380 00108$:
                           00096E  3381 	C$Lab4andahalf.c$256$1$172 ==.
                                   3382 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:256: else if ((distance > 30) && (distance < desired_range)) {
      000A5A C3               [12] 3383 	clr	c
      000A5B 74 1E            [12] 3384 	mov	a,#0x1e
      000A5D 9E               [12] 3385 	subb	a,r6
      000A5E E4               [12] 3386 	clr	a
      000A5F 9F               [12] 3387 	subb	a,r7
      000A60 50 2B            [24] 3388 	jnc	00104$
      000A62 C3               [12] 3389 	clr	c
      000A63 EE               [12] 3390 	mov	a,r6
      000A64 95 55            [12] 3391 	subb	a,_desired_range
      000A66 EF               [12] 3392 	mov	a,r7
      000A67 95 56            [12] 3393 	subb	a,(_desired_range + 1)
      000A69 50 22            [24] 3394 	jnc	00104$
                           00097F  3395 	C$Lab4andahalf.c$257$2$174 ==.
                                   3396 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:257: distance = distance - 30;
      000A6B EE               [12] 3397 	mov	a,r6
      000A6C 24 E2            [12] 3398 	add	a,#0xe2
      000A6E FE               [12] 3399 	mov	r6,a
      000A6F EF               [12] 3400 	mov	a,r7
      000A70 34 FF            [12] 3401 	addc	a,#0xff
      000A72 FF               [12] 3402 	mov	r7,a
                           000987  3403 	C$Lab4andahalf.c$258$1$172 ==.
                                   3404 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:258: MOTOR_PW = MOTOR_STOP + (distance * 24); //pot value scales between 0 and 24, which scales between full drive forward and stop
      000A73 8E 11            [24] 3405 	mov	__mulint_PARM_2,r6
      000A75 8F 12            [24] 3406 	mov	(__mulint_PARM_2 + 1),r7
      000A77 90 00 18         [24] 3407 	mov	dptr,#0x0018
      000A7A 12 0F D3         [24] 3408 	lcall	__mulint
      000A7D AC 82            [24] 3409 	mov	r4,dpl
      000A7F AD 83            [24] 3410 	mov	r5,dph
      000A81 EC               [12] 3411 	mov	a,r4
      000A82 25 36            [12] 3412 	add	a,_MOTOR_STOP
      000A84 F5 3C            [12] 3413 	mov	_MOTOR_PW,a
      000A86 ED               [12] 3414 	mov	a,r5
      000A87 35 37            [12] 3415 	addc	a,(_MOTOR_STOP + 1)
      000A89 F5 3D            [12] 3416 	mov	(_MOTOR_PW + 1),a
      000A8B 80 0E            [24] 3417 	sjmp	00109$
      000A8D                       3418 00104$:
                           0009A1  3419 	C$Lab4andahalf.c$260$1$172 ==.
                                   3420 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:260: else if (distance > 60) {
      000A8D C3               [12] 3421 	clr	c
      000A8E 74 3C            [12] 3422 	mov	a,#0x3c
      000A90 9E               [12] 3423 	subb	a,r6
      000A91 E4               [12] 3424 	clr	a
      000A92 9F               [12] 3425 	subb	a,r7
      000A93 50 06            [24] 3426 	jnc	00109$
                           0009A9  3427 	C$Lab4andahalf.c$261$2$175 ==.
                                   3428 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:261: MOTOR_PW = MOTOR_MAX;
      000A95 85 38 3C         [24] 3429 	mov	_MOTOR_PW,_MOTOR_MAX
      000A98 85 39 3D         [24] 3430 	mov	(_MOTOR_PW + 1),(_MOTOR_MAX + 1)
      000A9B                       3431 00109$:
                           0009AF  3432 	C$Lab4andahalf.c$263$1$172 ==.
                                   3433 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:263: MOTOR_PW = MOTOR_PW - (drivegain * 3); //scale speed for potentiometer value
      000A9B E5 60            [12] 3434 	mov	a,_drivegain
      000A9D 75 F0 03         [24] 3435 	mov	b,#0x03
      000AA0 A4               [48] 3436 	mul	ab
      000AA1 FE               [12] 3437 	mov	r6,a
      000AA2 AF F0            [24] 3438 	mov	r7,b
      000AA4 E5 3C            [12] 3439 	mov	a,_MOTOR_PW
      000AA6 C3               [12] 3440 	clr	c
      000AA7 9E               [12] 3441 	subb	a,r6
      000AA8 F5 3C            [12] 3442 	mov	_MOTOR_PW,a
      000AAA E5 3D            [12] 3443 	mov	a,(_MOTOR_PW + 1)
      000AAC 9F               [12] 3444 	subb	a,r7
      000AAD F5 3D            [12] 3445 	mov	(_MOTOR_PW + 1),a
                           0009C3  3446 	C$Lab4andahalf.c$264$1$172 ==.
                                   3447 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:264: if (MOTOR_PW < MOTOR_STOP) {
      000AAF C3               [12] 3448 	clr	c
      000AB0 E5 3C            [12] 3449 	mov	a,_MOTOR_PW
      000AB2 95 36            [12] 3450 	subb	a,_MOTOR_STOP
      000AB4 E5 3D            [12] 3451 	mov	a,(_MOTOR_PW + 1)
      000AB6 95 37            [12] 3452 	subb	a,(_MOTOR_STOP + 1)
      000AB8 50 06            [24] 3453 	jnc	00111$
                           0009CE  3454 	C$Lab4andahalf.c$265$2$176 ==.
                                   3455 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:265: MOTOR_PW = MOTOR_STOP;
      000ABA 85 36 3C         [24] 3456 	mov	_MOTOR_PW,_MOTOR_STOP
      000ABD 85 37 3D         [24] 3457 	mov	(_MOTOR_PW + 1),(_MOTOR_STOP + 1)
      000AC0                       3458 00111$:
                           0009D4  3459 	C$Lab4andahalf.c$268$1$172 ==.
                                   3460 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:268: PCA0CP2 = 0xFFFF - MOTOR_PW;
      000AC0 74 FF            [12] 3461 	mov	a,#0xff
      000AC2 C3               [12] 3462 	clr	c
      000AC3 95 3C            [12] 3463 	subb	a,_MOTOR_PW
      000AC5 F5 EC            [12] 3464 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000AC7 74 FF            [12] 3465 	mov	a,#0xff
      000AC9 95 3D            [12] 3466 	subb	a,(_MOTOR_PW + 1)
      000ACB F5 FC            [12] 3467 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           0009E1  3468 	C$Lab4andahalf.c$270$1$172 ==.
                           0009E1  3469 	XG$set_drive_PWM$0$0 ==.
      000ACD 22               [24] 3470 	ret
                                   3471 ;------------------------------------------------------------
                                   3472 ;Allocation info for local variables in function 'pick_heading'
                                   3473 ;------------------------------------------------------------
                                   3474 ;keypad                    Allocated to registers r7 
                                   3475 ;var                       Allocated to registers r6 
                                   3476 ;------------------------------------------------------------
                           0009E2  3477 	G$pick_heading$0$0 ==.
                           0009E2  3478 	C$Lab4andahalf.c$272$1$172 ==.
                                   3479 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:272: int pick_heading(void) {
                                   3480 ;	-----------------------------------------
                                   3481 ;	 function pick_heading
                                   3482 ;	-----------------------------------------
      000ACE                       3483 _pick_heading:
                           0009E2  3484 	C$Lab4andahalf.c$274$1$178 ==.
                                   3485 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:274: lcd_clear();
      000ACE 12 01 EC         [24] 3486 	lcall	_lcd_clear
                           0009E5  3487 	C$Lab4andahalf.c$275$1$178 ==.
                                   3488 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:275: lcd_print("Pick Heading\nPress a Number\n1: 0 2: 90 3: 180\n4: 270 0: custom");
      000AD1 74 E0            [12] 3489 	mov	a,#___str_7
      000AD3 C0 E0            [24] 3490 	push	acc
      000AD5 74 19            [12] 3491 	mov	a,#(___str_7 >> 8)
      000AD7 C0 E0            [24] 3492 	push	acc
      000AD9 74 80            [12] 3493 	mov	a,#0x80
      000ADB C0 E0            [24] 3494 	push	acc
      000ADD 12 01 67         [24] 3495 	lcall	_lcd_print
      000AE0 15 81            [12] 3496 	dec	sp
      000AE2 15 81            [12] 3497 	dec	sp
      000AE4 15 81            [12] 3498 	dec	sp
                           0009FA  3499 	C$Lab4andahalf.c$276$1$178 ==.
                                   3500 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:276: while (1) {
      000AE6                       3501 00145$:
                           0009FA  3502 	C$Lab4andahalf.c$277$2$179 ==.
                                   3503 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:277: keypad = read_keypad();
      000AE6 12 02 25         [24] 3504 	lcall	_read_keypad
      000AE9 AF 82            [24] 3505 	mov	r7,dpl
                           0009FF  3506 	C$Lab4andahalf.c$278$2$179 ==.
                                   3507 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:278: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      000AEB C0 07            [24] 3508 	push	ar7
      000AED 12 0E A0         [24] 3509 	lcall	_pause
      000AF0 D0 07            [24] 3510 	pop	ar7
                           000A06  3511 	C$Lab4andahalf.c$281$2$179 ==.
                                   3512 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:281: if (keypad != 0xFF) {
      000AF2 BF FF 02         [24] 3513 	cjne	r7,#0xff,00200$
      000AF5 80 EF            [24] 3514 	sjmp	00145$
      000AF7                       3515 00200$:
                           000A0B  3516 	C$Lab4andahalf.c$282$3$180 ==.
                                   3517 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:282: while (read_keypad() != 0xFF);
      000AF7                       3518 00101$:
      000AF7 C0 07            [24] 3519 	push	ar7
      000AF9 12 02 25         [24] 3520 	lcall	_read_keypad
      000AFC AE 82            [24] 3521 	mov	r6,dpl
      000AFE D0 07            [24] 3522 	pop	ar7
      000B00 BE FF F4         [24] 3523 	cjne	r6,#0xff,00101$
                           000A17  3524 	C$Lab4andahalf.c$283$3$180 ==.
                                   3525 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:283: lcd_clear();
      000B03 C0 07            [24] 3526 	push	ar7
      000B05 12 01 EC         [24] 3527 	lcall	_lcd_clear
      000B08 D0 07            [24] 3528 	pop	ar7
                           000A1E  3529 	C$Lab4andahalf.c$284$3$180 ==.
                                   3530 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:284: if (keypad == 0x31) { //if they enter a 1
      000B0A BF 31 36         [24] 3531 	cjne	r7,#0x31,00140$
                           000A21  3532 	C$Lab4andahalf.c$285$4$181 ==.
                                   3533 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:285: lcd_clear(); 
      000B0D 12 01 EC         [24] 3534 	lcall	_lcd_clear
                           000A24  3535 	C$Lab4andahalf.c$286$4$181 ==.
                                   3536 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:286: lcd_print("Heading: 0");
      000B10 74 1F            [12] 3537 	mov	a,#___str_8
      000B12 C0 E0            [24] 3538 	push	acc
      000B14 74 1A            [12] 3539 	mov	a,#(___str_8 >> 8)
      000B16 C0 E0            [24] 3540 	push	acc
      000B18 74 80            [12] 3541 	mov	a,#0x80
      000B1A C0 E0            [24] 3542 	push	acc
      000B1C 12 01 67         [24] 3543 	lcall	_lcd_print
      000B1F 15 81            [12] 3544 	dec	sp
      000B21 15 81            [12] 3545 	dec	sp
      000B23 15 81            [12] 3546 	dec	sp
                           000A39  3547 	C$Lab4andahalf.c$287$4$181 ==.
                                   3548 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:287: printf("Desired Heading: 0");
      000B25 74 2A            [12] 3549 	mov	a,#___str_9
      000B27 C0 E0            [24] 3550 	push	acc
      000B29 74 1A            [12] 3551 	mov	a,#(___str_9 >> 8)
      000B2B C0 E0            [24] 3552 	push	acc
      000B2D 74 80            [12] 3553 	mov	a,#0x80
      000B2F C0 E0            [24] 3554 	push	acc
      000B31 12 12 04         [24] 3555 	lcall	_printf
      000B34 15 81            [12] 3556 	dec	sp
      000B36 15 81            [12] 3557 	dec	sp
      000B38 15 81            [12] 3558 	dec	sp
                           000A4E  3559 	C$Lab4andahalf.c$288$4$181 ==.
                                   3560 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:288: wait();
      000B3A 12 0E AA         [24] 3561 	lcall	_wait
                           000A51  3562 	C$Lab4andahalf.c$289$4$181 ==.
                                   3563 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:289: return 0; 
      000B3D 90 00 00         [24] 3564 	mov	dptr,#0x0000
      000B40 02 0D 42         [24] 3565 	ljmp	00147$
      000B43                       3566 00140$:
                           000A57  3567 	C$Lab4andahalf.c$291$3$180 ==.
                                   3568 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:291: else if (keypad == 0x32) { //if they enter a 2
      000B43 BF 32 36         [24] 3569 	cjne	r7,#0x32,00137$
                           000A5A  3570 	C$Lab4andahalf.c$292$4$182 ==.
                                   3571 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:292: lcd_clear(); 
      000B46 12 01 EC         [24] 3572 	lcall	_lcd_clear
                           000A5D  3573 	C$Lab4andahalf.c$293$4$182 ==.
                                   3574 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:293: lcd_print("Heading: 90");
      000B49 74 3D            [12] 3575 	mov	a,#___str_10
      000B4B C0 E0            [24] 3576 	push	acc
      000B4D 74 1A            [12] 3577 	mov	a,#(___str_10 >> 8)
      000B4F C0 E0            [24] 3578 	push	acc
      000B51 74 80            [12] 3579 	mov	a,#0x80
      000B53 C0 E0            [24] 3580 	push	acc
      000B55 12 01 67         [24] 3581 	lcall	_lcd_print
      000B58 15 81            [12] 3582 	dec	sp
      000B5A 15 81            [12] 3583 	dec	sp
      000B5C 15 81            [12] 3584 	dec	sp
                           000A72  3585 	C$Lab4andahalf.c$294$4$182 ==.
                                   3586 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:294: printf("Desired Heading: 90");
      000B5E 74 49            [12] 3587 	mov	a,#___str_11
      000B60 C0 E0            [24] 3588 	push	acc
      000B62 74 1A            [12] 3589 	mov	a,#(___str_11 >> 8)
      000B64 C0 E0            [24] 3590 	push	acc
      000B66 74 80            [12] 3591 	mov	a,#0x80
      000B68 C0 E0            [24] 3592 	push	acc
      000B6A 12 12 04         [24] 3593 	lcall	_printf
      000B6D 15 81            [12] 3594 	dec	sp
      000B6F 15 81            [12] 3595 	dec	sp
      000B71 15 81            [12] 3596 	dec	sp
                           000A87  3597 	C$Lab4andahalf.c$295$4$182 ==.
                                   3598 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:295: wait();
      000B73 12 0E AA         [24] 3599 	lcall	_wait
                           000A8A  3600 	C$Lab4andahalf.c$296$4$182 ==.
                                   3601 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:296: return 900;
      000B76 90 03 84         [24] 3602 	mov	dptr,#0x0384
      000B79 02 0D 42         [24] 3603 	ljmp	00147$
      000B7C                       3604 00137$:
                           000A90  3605 	C$Lab4andahalf.c$298$3$180 ==.
                                   3606 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:298: else if (keypad == 0x33) { //if they enter a 3
      000B7C BF 33 36         [24] 3607 	cjne	r7,#0x33,00134$
                           000A93  3608 	C$Lab4andahalf.c$299$4$183 ==.
                                   3609 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:299: lcd_clear(); 
      000B7F 12 01 EC         [24] 3610 	lcall	_lcd_clear
                           000A96  3611 	C$Lab4andahalf.c$300$4$183 ==.
                                   3612 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:300: lcd_print("Heading: 180");
      000B82 74 5D            [12] 3613 	mov	a,#___str_12
      000B84 C0 E0            [24] 3614 	push	acc
      000B86 74 1A            [12] 3615 	mov	a,#(___str_12 >> 8)
      000B88 C0 E0            [24] 3616 	push	acc
      000B8A 74 80            [12] 3617 	mov	a,#0x80
      000B8C C0 E0            [24] 3618 	push	acc
      000B8E 12 01 67         [24] 3619 	lcall	_lcd_print
      000B91 15 81            [12] 3620 	dec	sp
      000B93 15 81            [12] 3621 	dec	sp
      000B95 15 81            [12] 3622 	dec	sp
                           000AAB  3623 	C$Lab4andahalf.c$301$4$183 ==.
                                   3624 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:301: printf("Desired Heading: 180");
      000B97 74 6A            [12] 3625 	mov	a,#___str_13
      000B99 C0 E0            [24] 3626 	push	acc
      000B9B 74 1A            [12] 3627 	mov	a,#(___str_13 >> 8)
      000B9D C0 E0            [24] 3628 	push	acc
      000B9F 74 80            [12] 3629 	mov	a,#0x80
      000BA1 C0 E0            [24] 3630 	push	acc
      000BA3 12 12 04         [24] 3631 	lcall	_printf
      000BA6 15 81            [12] 3632 	dec	sp
      000BA8 15 81            [12] 3633 	dec	sp
      000BAA 15 81            [12] 3634 	dec	sp
                           000AC0  3635 	C$Lab4andahalf.c$302$4$183 ==.
                                   3636 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:302: wait();
      000BAC 12 0E AA         [24] 3637 	lcall	_wait
                           000AC3  3638 	C$Lab4andahalf.c$303$4$183 ==.
                                   3639 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:303: return 1800; 
      000BAF 90 07 08         [24] 3640 	mov	dptr,#0x0708
      000BB2 02 0D 42         [24] 3641 	ljmp	00147$
      000BB5                       3642 00134$:
                           000AC9  3643 	C$Lab4andahalf.c$305$3$180 ==.
                                   3644 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:305: else if (keypad == 0x34) { //if they enter a 4
      000BB5 BF 34 36         [24] 3645 	cjne	r7,#0x34,00131$
                           000ACC  3646 	C$Lab4andahalf.c$306$4$184 ==.
                                   3647 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:306: lcd_clear(); 
      000BB8 12 01 EC         [24] 3648 	lcall	_lcd_clear
                           000ACF  3649 	C$Lab4andahalf.c$307$4$184 ==.
                                   3650 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:307: lcd_print("Heading: 270");
      000BBB 74 7F            [12] 3651 	mov	a,#___str_14
      000BBD C0 E0            [24] 3652 	push	acc
      000BBF 74 1A            [12] 3653 	mov	a,#(___str_14 >> 8)
      000BC1 C0 E0            [24] 3654 	push	acc
      000BC3 74 80            [12] 3655 	mov	a,#0x80
      000BC5 C0 E0            [24] 3656 	push	acc
      000BC7 12 01 67         [24] 3657 	lcall	_lcd_print
      000BCA 15 81            [12] 3658 	dec	sp
      000BCC 15 81            [12] 3659 	dec	sp
      000BCE 15 81            [12] 3660 	dec	sp
                           000AE4  3661 	C$Lab4andahalf.c$308$4$184 ==.
                                   3662 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:308: printf("Desired Heading: 270");
      000BD0 74 8C            [12] 3663 	mov	a,#___str_15
      000BD2 C0 E0            [24] 3664 	push	acc
      000BD4 74 1A            [12] 3665 	mov	a,#(___str_15 >> 8)
      000BD6 C0 E0            [24] 3666 	push	acc
      000BD8 74 80            [12] 3667 	mov	a,#0x80
      000BDA C0 E0            [24] 3668 	push	acc
      000BDC 12 12 04         [24] 3669 	lcall	_printf
      000BDF 15 81            [12] 3670 	dec	sp
      000BE1 15 81            [12] 3671 	dec	sp
      000BE3 15 81            [12] 3672 	dec	sp
                           000AF9  3673 	C$Lab4andahalf.c$309$4$184 ==.
                                   3674 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:309: wait();
      000BE5 12 0E AA         [24] 3675 	lcall	_wait
                           000AFC  3676 	C$Lab4andahalf.c$310$4$184 ==.
                                   3677 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:310: return 2700; 
      000BE8 90 0A 8C         [24] 3678 	mov	dptr,#0x0a8c
      000BEB 02 0D 42         [24] 3679 	ljmp	00147$
      000BEE                       3680 00131$:
                           000B02  3681 	C$Lab4andahalf.c$312$3$180 ==.
                                   3682 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:312: else if (keypad == 0x30) { //if they enter a 0
      000BEE BF 30 02         [24] 3683 	cjne	r7,#0x30,00211$
      000BF1 80 03            [24] 3684 	sjmp	00212$
      000BF3                       3685 00211$:
      000BF3 02 0A E6         [24] 3686 	ljmp	00145$
      000BF6                       3687 00212$:
                           000B0A  3688 	C$Lab4andahalf.c$314$4$185 ==.
                                   3689 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:314: lcd_clear();
      000BF6 12 01 EC         [24] 3690 	lcall	_lcd_clear
                           000B0D  3691 	C$Lab4andahalf.c$315$4$185 ==.
                                   3692 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:315: lcd_print("Enter your number\nStart with 0s\nif need be\nso 45 is 045");
      000BF9 74 A1            [12] 3693 	mov	a,#___str_16
      000BFB C0 E0            [24] 3694 	push	acc
      000BFD 74 1A            [12] 3695 	mov	a,#(___str_16 >> 8)
      000BFF C0 E0            [24] 3696 	push	acc
      000C01 74 80            [12] 3697 	mov	a,#0x80
      000C03 C0 E0            [24] 3698 	push	acc
      000C05 12 01 67         [24] 3699 	lcall	_lcd_print
      000C08 15 81            [12] 3700 	dec	sp
      000C0A 15 81            [12] 3701 	dec	sp
      000C0C 15 81            [12] 3702 	dec	sp
                           000B22  3703 	C$Lab4andahalf.c$316$4$185 ==.
                                   3704 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:316: while (1) {
      000C0E                       3705 00110$:
                           000B22  3706 	C$Lab4andahalf.c$317$5$186 ==.
                                   3707 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:317: keypad = read_keypad();
      000C0E 12 02 25         [24] 3708 	lcall	_read_keypad
      000C11 AF 82            [24] 3709 	mov	r7,dpl
                           000B27  3710 	C$Lab4andahalf.c$318$5$186 ==.
                                   3711 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:318: pause();
      000C13 C0 07            [24] 3712 	push	ar7
      000C15 12 0E A0         [24] 3713 	lcall	_pause
      000C18 D0 07            [24] 3714 	pop	ar7
                           000B2E  3715 	C$Lab4andahalf.c$319$5$186 ==.
                                   3716 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:319: if (keypad != 0xFF) {
      000C1A BF FF 02         [24] 3717 	cjne	r7,#0xff,00213$
      000C1D 80 EF            [24] 3718 	sjmp	00110$
      000C1F                       3719 00213$:
                           000B33  3720 	C$Lab4andahalf.c$320$6$187 ==.
                                   3721 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:320: while (read_keypad() != 0xFF);
      000C1F                       3722 00104$:
      000C1F C0 07            [24] 3723 	push	ar7
      000C21 12 02 25         [24] 3724 	lcall	_read_keypad
      000C24 AE 82            [24] 3725 	mov	r6,dpl
      000C26 D0 07            [24] 3726 	pop	ar7
      000C28 BE FF F4         [24] 3727 	cjne	r6,#0xff,00104$
                           000B3F  3728 	C$Lab4andahalf.c$321$6$187 ==.
                                   3729 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:321: lcd_clear();
      000C2B C0 07            [24] 3730 	push	ar7
      000C2D 12 01 EC         [24] 3731 	lcall	_lcd_clear
      000C30 D0 07            [24] 3732 	pop	ar7
                           000B46  3733 	C$Lab4andahalf.c$322$6$187 ==.
                                   3734 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:322: var = (keypad - 0x30) * 100; 
      000C32 EF               [12] 3735 	mov	a,r7
      000C33 24 D0            [12] 3736 	add	a,#0xd0
      000C35 75 F0 64         [24] 3737 	mov	b,#0x64
      000C38 A4               [48] 3738 	mul	ab
                           000B4D  3739 	C$Lab4andahalf.c$323$6$187 ==.
                                   3740 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:323: lcd_print("%i", var);
      000C39 FE               [12] 3741 	mov	r6,a
      000C3A FC               [12] 3742 	mov	r4,a
      000C3B 7D 00            [12] 3743 	mov	r5,#0x00
      000C3D C0 06            [24] 3744 	push	ar6
      000C3F C0 04            [24] 3745 	push	ar4
      000C41 C0 05            [24] 3746 	push	ar5
      000C43 74 D9            [12] 3747 	mov	a,#___str_17
      000C45 C0 E0            [24] 3748 	push	acc
      000C47 74 1A            [12] 3749 	mov	a,#(___str_17 >> 8)
      000C49 C0 E0            [24] 3750 	push	acc
      000C4B 74 80            [12] 3751 	mov	a,#0x80
      000C4D C0 E0            [24] 3752 	push	acc
      000C4F 12 01 67         [24] 3753 	lcall	_lcd_print
      000C52 E5 81            [12] 3754 	mov	a,sp
      000C54 24 FB            [12] 3755 	add	a,#0xfb
      000C56 F5 81            [12] 3756 	mov	sp,a
      000C58 D0 06            [24] 3757 	pop	ar6
                           000B6E  3758 	C$Lab4andahalf.c$327$4$185 ==.
                                   3759 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:327: while (1) {
      000C5A                       3760 00118$:
                           000B6E  3761 	C$Lab4andahalf.c$328$5$188 ==.
                                   3762 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:328: keypad = read_keypad();
      000C5A C0 06            [24] 3763 	push	ar6
      000C5C 12 02 25         [24] 3764 	lcall	_read_keypad
      000C5F AF 82            [24] 3765 	mov	r7,dpl
      000C61 D0 06            [24] 3766 	pop	ar6
                           000B77  3767 	C$Lab4andahalf.c$329$5$188 ==.
                                   3768 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:329: pause();
      000C63 C0 07            [24] 3769 	push	ar7
      000C65 C0 06            [24] 3770 	push	ar6
      000C67 12 0E A0         [24] 3771 	lcall	_pause
      000C6A D0 06            [24] 3772 	pop	ar6
      000C6C D0 07            [24] 3773 	pop	ar7
                           000B82  3774 	C$Lab4andahalf.c$330$5$188 ==.
                                   3775 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:330: if (keypad != 0xFF) {
      000C6E BF FF 02         [24] 3776 	cjne	r7,#0xff,00216$
      000C71 80 E7            [24] 3777 	sjmp	00118$
      000C73                       3778 00216$:
                           000B87  3779 	C$Lab4andahalf.c$331$6$189 ==.
                                   3780 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:331: while (read_keypad() != 0xFF);
      000C73                       3781 00112$:
      000C73 C0 07            [24] 3782 	push	ar7
      000C75 C0 06            [24] 3783 	push	ar6
      000C77 12 02 25         [24] 3784 	lcall	_read_keypad
      000C7A AD 82            [24] 3785 	mov	r5,dpl
      000C7C D0 06            [24] 3786 	pop	ar6
      000C7E D0 07            [24] 3787 	pop	ar7
      000C80 BD FF F0         [24] 3788 	cjne	r5,#0xff,00112$
                           000B97  3789 	C$Lab4andahalf.c$332$6$189 ==.
                                   3790 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:332: lcd_clear();
      000C83 C0 07            [24] 3791 	push	ar7
      000C85 C0 06            [24] 3792 	push	ar6
      000C87 12 01 EC         [24] 3793 	lcall	_lcd_clear
      000C8A D0 06            [24] 3794 	pop	ar6
      000C8C D0 07            [24] 3795 	pop	ar7
                           000BA2  3796 	C$Lab4andahalf.c$333$6$189 ==.
                                   3797 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:333: var = var + ((keypad - 0x30) * 10);
      000C8E EF               [12] 3798 	mov	a,r7
      000C8F 24 D0            [12] 3799 	add	a,#0xd0
      000C91 75 F0 0A         [24] 3800 	mov	b,#0x0a
      000C94 A4               [48] 3801 	mul	ab
      000C95 2E               [12] 3802 	add	a,r6
                           000BAA  3803 	C$Lab4andahalf.c$334$6$189 ==.
                                   3804 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:334: lcd_print("%i", var);
      000C96 FE               [12] 3805 	mov	r6,a
      000C97 FC               [12] 3806 	mov	r4,a
      000C98 7D 00            [12] 3807 	mov	r5,#0x00
      000C9A C0 06            [24] 3808 	push	ar6
      000C9C C0 04            [24] 3809 	push	ar4
      000C9E C0 05            [24] 3810 	push	ar5
      000CA0 74 D9            [12] 3811 	mov	a,#___str_17
      000CA2 C0 E0            [24] 3812 	push	acc
      000CA4 74 1A            [12] 3813 	mov	a,#(___str_17 >> 8)
      000CA6 C0 E0            [24] 3814 	push	acc
      000CA8 74 80            [12] 3815 	mov	a,#0x80
      000CAA C0 E0            [24] 3816 	push	acc
      000CAC 12 01 67         [24] 3817 	lcall	_lcd_print
      000CAF E5 81            [12] 3818 	mov	a,sp
      000CB1 24 FB            [12] 3819 	add	a,#0xfb
      000CB3 F5 81            [12] 3820 	mov	sp,a
      000CB5 D0 06            [24] 3821 	pop	ar6
                           000BCB  3822 	C$Lab4andahalf.c$338$4$185 ==.
                                   3823 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:338: while (1) {
      000CB7                       3824 00126$:
                           000BCB  3825 	C$Lab4andahalf.c$339$5$190 ==.
                                   3826 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:339: keypad = read_keypad();
      000CB7 C0 06            [24] 3827 	push	ar6
      000CB9 12 02 25         [24] 3828 	lcall	_read_keypad
      000CBC AF 82            [24] 3829 	mov	r7,dpl
      000CBE D0 06            [24] 3830 	pop	ar6
                           000BD4  3831 	C$Lab4andahalf.c$340$5$190 ==.
                                   3832 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:340: pause();
      000CC0 C0 07            [24] 3833 	push	ar7
      000CC2 C0 06            [24] 3834 	push	ar6
      000CC4 12 0E A0         [24] 3835 	lcall	_pause
      000CC7 D0 06            [24] 3836 	pop	ar6
      000CC9 D0 07            [24] 3837 	pop	ar7
                           000BDF  3838 	C$Lab4andahalf.c$341$5$190 ==.
                                   3839 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:341: if (keypad != 0xFF) {
      000CCB BF FF 02         [24] 3840 	cjne	r7,#0xff,00219$
      000CCE 80 E7            [24] 3841 	sjmp	00126$
      000CD0                       3842 00219$:
                           000BE4  3843 	C$Lab4andahalf.c$342$6$191 ==.
                                   3844 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:342: while (read_keypad() != 0xFF);
      000CD0                       3845 00120$:
      000CD0 C0 07            [24] 3846 	push	ar7
      000CD2 C0 06            [24] 3847 	push	ar6
      000CD4 12 02 25         [24] 3848 	lcall	_read_keypad
      000CD7 AD 82            [24] 3849 	mov	r5,dpl
      000CD9 D0 06            [24] 3850 	pop	ar6
      000CDB D0 07            [24] 3851 	pop	ar7
      000CDD BD FF F0         [24] 3852 	cjne	r5,#0xff,00120$
                           000BF4  3853 	C$Lab4andahalf.c$343$6$191 ==.
                                   3854 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:343: lcd_clear();
      000CE0 C0 07            [24] 3855 	push	ar7
      000CE2 C0 06            [24] 3856 	push	ar6
      000CE4 12 01 EC         [24] 3857 	lcall	_lcd_clear
      000CE7 D0 06            [24] 3858 	pop	ar6
      000CE9 D0 07            [24] 3859 	pop	ar7
                           000BFF  3860 	C$Lab4andahalf.c$344$6$191 ==.
                                   3861 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:344: var = var + (keypad - 0x30);
      000CEB EF               [12] 3862 	mov	a,r7
      000CEC 24 D0            [12] 3863 	add	a,#0xd0
      000CEE 2E               [12] 3864 	add	a,r6
                           000C03  3865 	C$Lab4andahalf.c$345$6$191 ==.
                                   3866 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:345: lcd_print("%i", var);
      000CEF FE               [12] 3867 	mov	r6,a
      000CF0 FD               [12] 3868 	mov	r5,a
      000CF1 7F 00            [12] 3869 	mov	r7,#0x00
      000CF3 C0 07            [24] 3870 	push	ar7
      000CF5 C0 06            [24] 3871 	push	ar6
      000CF7 C0 05            [24] 3872 	push	ar5
      000CF9 C0 05            [24] 3873 	push	ar5
      000CFB C0 07            [24] 3874 	push	ar7
      000CFD 74 D9            [12] 3875 	mov	a,#___str_17
      000CFF C0 E0            [24] 3876 	push	acc
      000D01 74 1A            [12] 3877 	mov	a,#(___str_17 >> 8)
      000D03 C0 E0            [24] 3878 	push	acc
      000D05 74 80            [12] 3879 	mov	a,#0x80
      000D07 C0 E0            [24] 3880 	push	acc
      000D09 12 01 67         [24] 3881 	lcall	_lcd_print
      000D0C E5 81            [12] 3882 	mov	a,sp
      000D0E 24 FB            [12] 3883 	add	a,#0xfb
      000D10 F5 81            [12] 3884 	mov	sp,a
      000D12 D0 05            [24] 3885 	pop	ar5
      000D14 D0 06            [24] 3886 	pop	ar6
      000D16 D0 07            [24] 3887 	pop	ar7
                           000C2C  3888 	C$Lab4andahalf.c$349$4$185 ==.
                                   3889 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:349: printf("Desired Heading: %i", var);
      000D18 C0 06            [24] 3890 	push	ar6
      000D1A C0 05            [24] 3891 	push	ar5
      000D1C C0 07            [24] 3892 	push	ar7
      000D1E 74 DC            [12] 3893 	mov	a,#___str_18
      000D20 C0 E0            [24] 3894 	push	acc
      000D22 74 1A            [12] 3895 	mov	a,#(___str_18 >> 8)
      000D24 C0 E0            [24] 3896 	push	acc
      000D26 74 80            [12] 3897 	mov	a,#0x80
      000D28 C0 E0            [24] 3898 	push	acc
      000D2A 12 12 04         [24] 3899 	lcall	_printf
      000D2D E5 81            [12] 3900 	mov	a,sp
      000D2F 24 FB            [12] 3901 	add	a,#0xfb
      000D31 F5 81            [12] 3902 	mov	sp,a
                           000C47  3903 	C$Lab4andahalf.c$350$4$185 ==.
                                   3904 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:350: wait();
      000D33 12 0E AA         [24] 3905 	lcall	_wait
      000D36 D0 06            [24] 3906 	pop	ar6
                           000C4C  3907 	C$Lab4andahalf.c$351$4$185 ==.
                                   3908 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:351: return (var * 10); //times 10 to get from 10ths of a degree to degrees
      000D38 EE               [12] 3909 	mov	a,r6
      000D39 75 F0 0A         [24] 3910 	mov	b,#0x0a
      000D3C A4               [48] 3911 	mul	ab
      000D3D F5 82            [12] 3912 	mov	dpl,a
      000D3F 85 F0 83         [24] 3913 	mov	dph,b
      000D42                       3914 00147$:
                           000C56  3915 	C$Lab4andahalf.c$355$1$178 ==.
                           000C56  3916 	XG$pick_heading$0$0 ==.
      000D42 22               [24] 3917 	ret
                                   3918 ;------------------------------------------------------------
                                   3919 ;Allocation info for local variables in function 'pick_range'
                                   3920 ;------------------------------------------------------------
                                   3921 ;keypad                    Allocated to registers r7 
                                   3922 ;var                       Allocated to registers r6 
                                   3923 ;------------------------------------------------------------
                           000C57  3924 	G$pick_range$0$0 ==.
                           000C57  3925 	C$Lab4andahalf.c$357$1$178 ==.
                                   3926 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:357: int pick_range(void) {
                                   3927 ;	-----------------------------------------
                                   3928 ;	 function pick_range
                                   3929 ;	-----------------------------------------
      000D43                       3930 _pick_range:
                           000C57  3931 	C$Lab4andahalf.c$360$1$193 ==.
                                   3932 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:360: lcd_clear();
      000D43 12 01 EC         [24] 3933 	lcall	_lcd_clear
                           000C5A  3934 	C$Lab4andahalf.c$361$1$193 ==.
                                   3935 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:361: lcd_print("Pick a Range\nPress a Number\nBetween 0 and 80\nenter with 0 first");
      000D46 74 F0            [12] 3936 	mov	a,#___str_19
      000D48 C0 E0            [24] 3937 	push	acc
      000D4A 74 1A            [12] 3938 	mov	a,#(___str_19 >> 8)
      000D4C C0 E0            [24] 3939 	push	acc
      000D4E 74 80            [12] 3940 	mov	a,#0x80
      000D50 C0 E0            [24] 3941 	push	acc
      000D52 12 01 67         [24] 3942 	lcall	_lcd_print
      000D55 15 81            [12] 3943 	dec	sp
      000D57 15 81            [12] 3944 	dec	sp
      000D59 15 81            [12] 3945 	dec	sp
                           000C6F  3946 	C$Lab4andahalf.c$362$1$193 ==.
                                   3947 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:362: while (1) {
      000D5B                       3948 00107$:
                           000C6F  3949 	C$Lab4andahalf.c$363$2$194 ==.
                                   3950 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:363: keypad = read_keypad();
      000D5B 12 02 25         [24] 3951 	lcall	_read_keypad
      000D5E AF 82            [24] 3952 	mov	r7,dpl
                           000C74  3953 	C$Lab4andahalf.c$364$2$194 ==.
                                   3954 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:364: pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
      000D60 C0 07            [24] 3955 	push	ar7
      000D62 12 0E A0         [24] 3956 	lcall	_pause
      000D65 D0 07            [24] 3957 	pop	ar7
                           000C7B  3958 	C$Lab4andahalf.c$367$2$194 ==.
                                   3959 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:367: if (keypad != 0xFF) {
      000D67 BF FF 02         [24] 3960 	cjne	r7,#0xff,00137$
      000D6A 80 EF            [24] 3961 	sjmp	00107$
      000D6C                       3962 00137$:
                           000C80  3963 	C$Lab4andahalf.c$368$3$195 ==.
                                   3964 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:368: while (read_keypad() != 0xFF);
      000D6C                       3965 00101$:
      000D6C C0 07            [24] 3966 	push	ar7
      000D6E 12 02 25         [24] 3967 	lcall	_read_keypad
      000D71 AE 82            [24] 3968 	mov	r6,dpl
      000D73 D0 07            [24] 3969 	pop	ar7
      000D75 BE FF F4         [24] 3970 	cjne	r6,#0xff,00101$
                           000C8C  3971 	C$Lab4andahalf.c$369$3$195 ==.
                                   3972 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:369: lcd_clear();
      000D78 C0 07            [24] 3973 	push	ar7
      000D7A 12 01 EC         [24] 3974 	lcall	_lcd_clear
      000D7D D0 07            [24] 3975 	pop	ar7
                           000C93  3976 	C$Lab4andahalf.c$370$3$195 ==.
                                   3977 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:370: var = (keypad - 0x30) * 10;
      000D7F EF               [12] 3978 	mov	a,r7
      000D80 24 D0            [12] 3979 	add	a,#0xd0
      000D82 75 F0 0A         [24] 3980 	mov	b,#0x0a
      000D85 A4               [48] 3981 	mul	ab
                           000C9A  3982 	C$Lab4andahalf.c$371$3$195 ==.
                                   3983 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:371: lcd_print("%i", var);
      000D86 FE               [12] 3984 	mov	r6,a
      000D87 FC               [12] 3985 	mov	r4,a
      000D88 7D 00            [12] 3986 	mov	r5,#0x00
      000D8A C0 06            [24] 3987 	push	ar6
      000D8C C0 04            [24] 3988 	push	ar4
      000D8E C0 05            [24] 3989 	push	ar5
      000D90 74 D9            [12] 3990 	mov	a,#___str_17
      000D92 C0 E0            [24] 3991 	push	acc
      000D94 74 1A            [12] 3992 	mov	a,#(___str_17 >> 8)
      000D96 C0 E0            [24] 3993 	push	acc
      000D98 74 80            [12] 3994 	mov	a,#0x80
      000D9A C0 E0            [24] 3995 	push	acc
      000D9C 12 01 67         [24] 3996 	lcall	_lcd_print
      000D9F E5 81            [12] 3997 	mov	a,sp
      000DA1 24 FB            [12] 3998 	add	a,#0xfb
      000DA3 F5 81            [12] 3999 	mov	sp,a
      000DA5 D0 06            [24] 4000 	pop	ar6
                           000CBB  4001 	C$Lab4andahalf.c$375$1$193 ==.
                                   4002 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:375: while (1) {
      000DA7                       4003 00115$:
                           000CBB  4004 	C$Lab4andahalf.c$376$2$196 ==.
                                   4005 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:376: keypad = read_keypad();
      000DA7 C0 06            [24] 4006 	push	ar6
      000DA9 12 02 25         [24] 4007 	lcall	_read_keypad
      000DAC AF 82            [24] 4008 	mov	r7,dpl
      000DAE D0 06            [24] 4009 	pop	ar6
                           000CC4  4010 	C$Lab4andahalf.c$377$2$196 ==.
                                   4011 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:377: pause();
      000DB0 C0 07            [24] 4012 	push	ar7
      000DB2 C0 06            [24] 4013 	push	ar6
      000DB4 12 0E A0         [24] 4014 	lcall	_pause
      000DB7 D0 06            [24] 4015 	pop	ar6
      000DB9 D0 07            [24] 4016 	pop	ar7
                           000CCF  4017 	C$Lab4andahalf.c$378$2$196 ==.
                                   4018 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:378: if (keypad != 0xFF) {
      000DBB BF FF 02         [24] 4019 	cjne	r7,#0xff,00140$
      000DBE 80 E7            [24] 4020 	sjmp	00115$
      000DC0                       4021 00140$:
                           000CD4  4022 	C$Lab4andahalf.c$379$3$197 ==.
                                   4023 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:379: while (read_keypad() != 0xFF);
      000DC0                       4024 00109$:
      000DC0 C0 07            [24] 4025 	push	ar7
      000DC2 C0 06            [24] 4026 	push	ar6
      000DC4 12 02 25         [24] 4027 	lcall	_read_keypad
      000DC7 AD 82            [24] 4028 	mov	r5,dpl
      000DC9 D0 06            [24] 4029 	pop	ar6
      000DCB D0 07            [24] 4030 	pop	ar7
      000DCD BD FF F0         [24] 4031 	cjne	r5,#0xff,00109$
                           000CE4  4032 	C$Lab4andahalf.c$380$3$197 ==.
                                   4033 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:380: lcd_clear();
      000DD0 C0 07            [24] 4034 	push	ar7
      000DD2 C0 06            [24] 4035 	push	ar6
      000DD4 12 01 EC         [24] 4036 	lcall	_lcd_clear
      000DD7 D0 06            [24] 4037 	pop	ar6
      000DD9 D0 07            [24] 4038 	pop	ar7
                           000CEF  4039 	C$Lab4andahalf.c$381$3$197 ==.
                                   4040 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:381: var = var + (keypad - 0x30); 
      000DDB EF               [12] 4041 	mov	a,r7
      000DDC 24 D0            [12] 4042 	add	a,#0xd0
      000DDE 2E               [12] 4043 	add	a,r6
      000DDF FE               [12] 4044 	mov	r6,a
                           000CF4  4045 	C$Lab4andahalf.c$382$3$197 ==.
                                   4046 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:382: lcd_print("%i", var);		
      000DE0 7F 00            [12] 4047 	mov	r7,#0x00
      000DE2 C0 07            [24] 4048 	push	ar7
      000DE4 C0 06            [24] 4049 	push	ar6
      000DE6 C0 06            [24] 4050 	push	ar6
      000DE8 C0 07            [24] 4051 	push	ar7
      000DEA 74 D9            [12] 4052 	mov	a,#___str_17
      000DEC C0 E0            [24] 4053 	push	acc
      000DEE 74 1A            [12] 4054 	mov	a,#(___str_17 >> 8)
      000DF0 C0 E0            [24] 4055 	push	acc
      000DF2 74 80            [12] 4056 	mov	a,#0x80
      000DF4 C0 E0            [24] 4057 	push	acc
      000DF6 12 01 67         [24] 4058 	lcall	_lcd_print
      000DF9 E5 81            [12] 4059 	mov	a,sp
      000DFB 24 FB            [12] 4060 	add	a,#0xfb
      000DFD F5 81            [12] 4061 	mov	sp,a
      000DFF D0 06            [24] 4062 	pop	ar6
      000E01 D0 07            [24] 4063 	pop	ar7
                           000D17  4064 	C$Lab4andahalf.c$386$1$193 ==.
                                   4065 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:386: printf("Desired Range: %i", var);
      000E03 C0 07            [24] 4066 	push	ar7
      000E05 C0 06            [24] 4067 	push	ar6
      000E07 C0 06            [24] 4068 	push	ar6
      000E09 C0 07            [24] 4069 	push	ar7
      000E0B 74 30            [12] 4070 	mov	a,#___str_20
      000E0D C0 E0            [24] 4071 	push	acc
      000E0F 74 1B            [12] 4072 	mov	a,#(___str_20 >> 8)
      000E11 C0 E0            [24] 4073 	push	acc
      000E13 74 80            [12] 4074 	mov	a,#0x80
      000E15 C0 E0            [24] 4075 	push	acc
      000E17 12 12 04         [24] 4076 	lcall	_printf
      000E1A E5 81            [12] 4077 	mov	a,sp
      000E1C 24 FB            [12] 4078 	add	a,#0xfb
      000E1E F5 81            [12] 4079 	mov	sp,a
                           000D34  4080 	C$Lab4andahalf.c$387$1$193 ==.
                                   4081 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:387: wait();
      000E20 12 0E AA         [24] 4082 	lcall	_wait
      000E23 D0 06            [24] 4083 	pop	ar6
      000E25 D0 07            [24] 4084 	pop	ar7
                           000D3B  4085 	C$Lab4andahalf.c$388$1$193 ==.
                                   4086 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:388: return (var);
      000E27 8E 82            [24] 4087 	mov	dpl,r6
      000E29 8F 83            [24] 4088 	mov	dph,r7
                           000D3F  4089 	C$Lab4andahalf.c$389$1$193 ==.
                           000D3F  4090 	XG$pick_range$0$0 ==.
      000E2B 22               [24] 4091 	ret
                                   4092 ;------------------------------------------------------------
                                   4093 ;Allocation info for local variables in function 'read_AD_input'
                                   4094 ;------------------------------------------------------------
                                   4095 ;cast                      Allocated with name '_read_AD_input_PARM_2'
                                   4096 ;n                         Allocated to registers 
                                   4097 ;adcast                    Allocated to registers 
                                   4098 ;------------------------------------------------------------
                           000D40  4099 	G$read_AD_input$0$0 ==.
                           000D40  4100 	C$Lab4andahalf.c$391$1$193 ==.
                                   4101 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:391: unsigned char read_AD_input(unsigned char n, unsigned char cast)
                                   4102 ;	-----------------------------------------
                                   4103 ;	 function read_AD_input
                                   4104 ;	-----------------------------------------
      000E2C                       4105 _read_AD_input:
      000E2C 85 82 AC         [24] 4106 	mov	_AMX1SL,dpl
                           000D43  4107 	C$Lab4andahalf.c$395$1$199 ==.
                                   4108 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:395: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
      000E2F 53 AA DF         [24] 4109 	anl	_ADC1CN,#0xdf
                           000D46  4110 	C$Lab4andahalf.c$396$1$199 ==.
                                   4111 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:396: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
      000E32 43 AA 10         [24] 4112 	orl	_ADC1CN,#0x10
                           000D49  4113 	C$Lab4andahalf.c$397$1$199 ==.
                                   4114 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:397: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      000E35                       4115 00101$:
      000E35 E5 AA            [12] 4116 	mov	a,_ADC1CN
      000E37 30 E5 FB         [24] 4117 	jnb	acc.5,00101$
                           000D4E  4118 	C$Lab4andahalf.c$398$1$199 ==.
                                   4119 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:398: if (cast == 0) { //check for unmodified case
      000E3A E5 65            [12] 4120 	mov	a,_read_AD_input_PARM_2
      000E3C 70 05            [24] 4121 	jnz	00105$
                           000D52  4122 	C$Lab4andahalf.c$399$2$200 ==.
                                   4123 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:399: return (ADC1); /* Return digital value in ADC1 register */
      000E3E 85 9C 82         [24] 4124 	mov	dpl,_ADC1
      000E41 80 19            [24] 4125 	sjmp	00107$
      000E43                       4126 00105$:
                           000D57  4127 	C$Lab4andahalf.c$402$2$201 ==.
                                   4128 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:402: adcast = (265 / cast) + 1; //create the casting gradient
      000E43 85 65 11         [24] 4129 	mov	__divsint_PARM_2,_read_AD_input_PARM_2
      000E46 75 12 00         [24] 4130 	mov	(__divsint_PARM_2 + 1),#0x00
      000E49 90 01 09         [24] 4131 	mov	dptr,#0x0109
      000E4C 12 18 75         [24] 4132 	lcall	__divsint
      000E4F AE 82            [24] 4133 	mov	r6,dpl
      000E51 AF 83            [24] 4134 	mov	r7,dph
      000E53 EE               [12] 4135 	mov	a,r6
      000E54 04               [12] 4136 	inc	a
                           000D69  4137 	C$Lab4andahalf.c$403$2$201 ==.
                                   4138 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:403: return (ADC1/adcast); /* Return digital value in ADC1 register */
      000E55 F5 F0            [12] 4139 	mov	b,a
      000E57 E5 9C            [12] 4140 	mov	a,_ADC1
      000E59 84               [48] 4141 	div	ab
      000E5A F5 82            [12] 4142 	mov	dpl,a
      000E5C                       4143 00107$:
                           000D70  4144 	C$Lab4andahalf.c$405$1$199 ==.
                           000D70  4145 	XG$read_AD_input$0$0 ==.
      000E5C 22               [24] 4146 	ret
                                   4147 ;------------------------------------------------------------
                                   4148 ;Allocation info for local variables in function 'PCA_ISR'
                                   4149 ;------------------------------------------------------------
                           000D71  4150 	G$PCA_ISR$0$0 ==.
                           000D71  4151 	C$Lab4andahalf.c$413$1$199 ==.
                                   4152 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:413: void PCA_ISR(void) __interrupt 9
                                   4153 ;	-----------------------------------------
                                   4154 ;	 function PCA_ISR
                                   4155 ;	-----------------------------------------
      000E5D                       4156 _PCA_ISR:
      000E5D C0 E0            [24] 4157 	push	acc
      000E5F C0 D0            [24] 4158 	push	psw
                           000D75  4159 	C$Lab4andahalf.c$415$1$203 ==.
                                   4160 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:415: if (CF)
                           000D75  4161 	C$Lab4andahalf.c$417$2$204 ==.
                                   4162 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:417: CF = 0; // clear overflow indicator
      000E61 10 DF 02         [24] 4163 	jbc	_CF,00123$
      000E64 80 32            [24] 4164 	sjmp	00108$
      000E66                       4165 00123$:
                           000D7A  4166 	C$Lab4andahalf.c$418$2$204 ==.
                                   4167 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:418: PCA0 = 28671; 	//start count for 20 ms period
      000E66 75 E9 FF         [24] 4168 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      000E69 75 F9 6F         [24] 4169 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           000D80  4170 	C$Lab4andahalf.c$419$2$204 ==.
                                   4171 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:419: nCounts ++; //for LCD/keypad operation
      000E6C 05 52            [12] 4172 	inc	_nCounts
                           000D82  4173 	C$Lab4andahalf.c$420$2$204 ==.
                                   4174 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:420: h_count++;
      000E6E 05 50            [12] 4175 	inc	_h_count
                           000D84  4176 	C$Lab4andahalf.c$421$2$204 ==.
                                   4177 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:421: if (h_count>=2)
      000E70 74 FE            [12] 4178 	mov	a,#0x100 - 0x02
      000E72 25 50            [12] 4179 	add	a,_h_count
      000E74 50 06            [24] 4180 	jnc	00102$
                           000D8A  4181 	C$Lab4andahalf.c$423$3$205 ==.
                                   4182 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:423: new_heading=1;
      000E76 75 46 01         [24] 4183 	mov	_new_heading,#0x01
                           000D8D  4184 	C$Lab4andahalf.c$424$3$205 ==.
                                   4185 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:424: h_count = 0;
      000E79 75 50 00         [24] 4186 	mov	_h_count,#0x00
      000E7C                       4187 00102$:
                           000D90  4188 	C$Lab4andahalf.c$426$2$204 ==.
                                   4189 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:426: r_count++;
      000E7C 05 4F            [12] 4190 	inc	_r_count
                           000D92  4191 	C$Lab4andahalf.c$427$2$204 ==.
                                   4192 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:427: if (r_count>=4)
      000E7E 74 FC            [12] 4193 	mov	a,#0x100 - 0x04
      000E80 25 4F            [12] 4194 	add	a,_r_count
      000E82 50 06            [24] 4195 	jnc	00104$
                           000D98  4196 	C$Lab4andahalf.c$429$3$206 ==.
                                   4197 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:429: new_range = 1;
      000E84 75 47 01         [24] 4198 	mov	_new_range,#0x01
                           000D9B  4199 	C$Lab4andahalf.c$430$3$206 ==.
                                   4200 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:430: r_count = 0;
      000E87 75 4F 00         [24] 4201 	mov	_r_count,#0x00
      000E8A                       4202 00104$:
                           000D9E  4203 	C$Lab4andahalf.c$432$2$204 ==.
                                   4204 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:432: print_count ++;
      000E8A 05 51            [12] 4205 	inc	_print_count
                           000DA0  4206 	C$Lab4andahalf.c$433$2$204 ==.
                                   4207 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:433: if (print_count>=50)
      000E8C 74 CE            [12] 4208 	mov	a,#0x100 - 0x32
      000E8E 25 51            [12] 4209 	add	a,_print_count
      000E90 50 06            [24] 4210 	jnc	00108$
                           000DA6  4211 	C$Lab4andahalf.c$435$3$207 ==.
                                   4212 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:435: print_flag = 1;
      000E92 75 48 01         [24] 4213 	mov	_print_flag,#0x01
                           000DA9  4214 	C$Lab4andahalf.c$436$3$207 ==.
                                   4215 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:436: print_count = 0;
      000E95 75 51 00         [24] 4216 	mov	_print_count,#0x00
      000E98                       4217 00108$:
                           000DAC  4218 	C$Lab4andahalf.c$440$1$203 ==.
                                   4219 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:440: PCA0CN &= 0xC0;
      000E98 53 D8 C0         [24] 4220 	anl	_PCA0CN,#0xc0
      000E9B D0 D0            [24] 4221 	pop	psw
      000E9D D0 E0            [24] 4222 	pop	acc
                           000DB3  4223 	C$Lab4andahalf.c$441$1$203 ==.
                           000DB3  4224 	XG$PCA_ISR$0$0 ==.
      000E9F 32               [24] 4225 	reti
                                   4226 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   4227 ;	eliminated unneeded push/pop dpl
                                   4228 ;	eliminated unneeded push/pop dph
                                   4229 ;	eliminated unneeded push/pop b
                                   4230 ;------------------------------------------------------------
                                   4231 ;Allocation info for local variables in function 'pause'
                                   4232 ;------------------------------------------------------------
                           000DB4  4233 	G$pause$0$0 ==.
                           000DB4  4234 	C$Lab4andahalf.c$443$1$203 ==.
                                   4235 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:443: void pause(void) //used for reading from the keypad
                                   4236 ;	-----------------------------------------
                                   4237 ;	 function pause
                                   4238 ;	-----------------------------------------
      000EA0                       4239 _pause:
                           000DB4  4240 	C$Lab4andahalf.c$445$1$209 ==.
                                   4241 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:445: nCounts = 0;
      000EA0 75 52 00         [24] 4242 	mov	_nCounts,#0x00
                           000DB7  4243 	C$Lab4andahalf.c$446$1$209 ==.
                                   4244 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:446: while (nCounts < 6);// 1 count -> (65536-PCA_START) x 12/22118400 = 20ms
      000EA3                       4245 00101$:
      000EA3 74 FA            [12] 4246 	mov	a,#0x100 - 0x06
      000EA5 25 52            [12] 4247 	add	a,_nCounts
      000EA7 50 FA            [24] 4248 	jnc	00101$
                           000DBD  4249 	C$Lab4andahalf.c$447$1$209 ==.
                           000DBD  4250 	XG$pause$0$0 ==.
      000EA9 22               [24] 4251 	ret
                                   4252 ;------------------------------------------------------------
                                   4253 ;Allocation info for local variables in function 'wait'
                                   4254 ;------------------------------------------------------------
                           000DBE  4255 	G$wait$0$0 ==.
                           000DBE  4256 	C$Lab4andahalf.c$449$1$209 ==.
                                   4257 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:449: void wait(void) //used for reading from the keypad
                                   4258 ;	-----------------------------------------
                                   4259 ;	 function wait
                                   4260 ;	-----------------------------------------
      000EAA                       4261 _wait:
                           000DBE  4262 	C$Lab4andahalf.c$451$1$211 ==.
                                   4263 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:451: nCounts = 0;
      000EAA 75 52 00         [24] 4264 	mov	_nCounts,#0x00
                           000DC1  4265 	C$Lab4andahalf.c$452$1$211 ==.
                                   4266 ;	C:\Users\gerlig\Documents\School\LITEC\LAB4\Lab4andahalf.c:452: while (nCounts < 50);    // 50 counts -> 50 x 20ms = 1000ms
      000EAD                       4267 00101$:
      000EAD 74 CE            [12] 4268 	mov	a,#0x100 - 0x32
      000EAF 25 52            [12] 4269 	add	a,_nCounts
      000EB1 50 FA            [24] 4270 	jnc	00101$
                           000DC7  4271 	C$Lab4andahalf.c$453$1$211 ==.
                           000DC7  4272 	XG$wait$0$0 ==.
      000EB3 22               [24] 4273 	ret
                                   4274 	.area CSEG    (CODE)
                                   4275 	.area CONST   (CODE)
                           000000  4276 FLab4andahalf$__str_0$0$0 == .
      00192D                       4277 ___str_0:
      00192D 0A                    4278 	.db 0x0a
      00192E 54 79 70 65 20 64 69  4279 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      001942 00                    4280 	.db 0x00
                           000016  4281 FLab4andahalf$__str_1$0$0 == .
      001943                       4282 ___str_1:
      001943 20 20 20 20 20 25 63  4283 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      001952 00                    4284 	.db 0x00
                           000026  4285 FLab4andahalf$__str_2$0$0 == .
      001953                       4286 ___str_2:
      001953 25 63                 4287 	.ascii "%c"
      001955 00                    4288 	.db 0x00
                           000029  4289 FLab4andahalf$__str_3$0$0 == .
      001956                       4290 ___str_3:
      001956 41 20 62 72 61 76 65  4291 	.ascii "A brave car stands alone against the many horrors on the bat"
             20 63 61 72 20 73 74
             61 6E 64 73 20 61 6C
             6F 6E 65 20 61 67 61
             69 6E 73 74 20 74 68
             65 20 6D 61 6E 79 20
             68 6F 72 72 6F 72 73
             20 6F 6E 20 74 68 65
             20 62 61 74
      001992 74 6C 65 66 69 65 6C  4292 	.ascii "tlefield!"
             64 21
      00199B 00                    4293 	.db 0x00
                           00006F  4294 FLab4andahalf$__str_4$0$0 == .
      00199C                       4295 ___str_4:
      00199C 47 6F 6F 64 20 6C 75  4296 	.ascii "Good luck!"
             63 6B 21
      0019A6 00                    4297 	.db 0x00
                           00007A  4298 FLab4andahalf$__str_5$0$0 == .
      0019A7                       4299 ___str_5:
      0019A7 53 3A 20 25 69 20 4D  4300 	.ascii "S: %i M: %i"
             3A 20 25 69
      0019B2 0A                    4301 	.db 0x0a
      0019B3 48 3A 20 25 69 20 52  4302 	.ascii "H: %i R: %i"
             3A 20 25 69
      0019BE 0A                    4303 	.db 0x0a
      0019BF 4C 3A 20 25 69        4304 	.ascii "L: %i"
      0019C4 00                    4305 	.db 0x00
                           000098  4306 FLab4andahalf$__str_6$0$0 == .
      0019C5                       4307 ___str_6:
      0019C5 53 3A 25 69           4308 	.ascii "S:%i"
      0019C9 09                    4309 	.db 0x09
      0019CA 4D 3A 25 69           4310 	.ascii "M:%i"
      0019CE 09                    4311 	.db 0x09
      0019CF 48 3A 25 69           4312 	.ascii "H:%i"
      0019D3 09                    4313 	.db 0x09
      0019D4 52 3A 25 69           4314 	.ascii "R:%i"
      0019D8 09                    4315 	.db 0x09
      0019D9 4C 3A 25 69           4316 	.ascii "L:%i"
      0019DD 0D                    4317 	.db 0x0d
      0019DE 0A                    4318 	.db 0x0a
      0019DF 00                    4319 	.db 0x00
                           0000B3  4320 FLab4andahalf$__str_7$0$0 == .
      0019E0                       4321 ___str_7:
      0019E0 50 69 63 6B 20 48 65  4322 	.ascii "Pick Heading"
             61 64 69 6E 67
      0019EC 0A                    4323 	.db 0x0a
      0019ED 50 72 65 73 73 20 61  4324 	.ascii "Press a Number"
             20 4E 75 6D 62 65 72
      0019FB 0A                    4325 	.db 0x0a
      0019FC 31 3A 20 30 20 32 3A  4326 	.ascii "1: 0 2: 90 3: 180"
             20 39 30 20 33 3A 20
             31 38 30
      001A0D 0A                    4327 	.db 0x0a
      001A0E 34 3A 20 32 37 30 20  4328 	.ascii "4: 270 0: cust"
             30 3A 20 63 75 73 74
      001A1C 6F 6D                 4329 	.ascii "om"
      001A1E 00                    4330 	.db 0x00
                           0000F2  4331 FLab4andahalf$__str_8$0$0 == .
      001A1F                       4332 ___str_8:
      001A1F 48 65 61 64 69 6E 67  4333 	.ascii "Heading: 0"
             3A 20 30
      001A29 00                    4334 	.db 0x00
                           0000FD  4335 FLab4andahalf$__str_9$0$0 == .
      001A2A                       4336 ___str_9:
      001A2A 44 65 73 69 72 65 64  4337 	.ascii "Desired Heading: 0"
             20 48 65 61 64 69 6E
             67 3A 20 30
      001A3C 00                    4338 	.db 0x00
                           000110  4339 FLab4andahalf$__str_10$0$0 == .
      001A3D                       4340 ___str_10:
      001A3D 48 65 61 64 69 6E 67  4341 	.ascii "Heading: 90"
             3A 20 39 30
      001A48 00                    4342 	.db 0x00
                           00011C  4343 FLab4andahalf$__str_11$0$0 == .
      001A49                       4344 ___str_11:
      001A49 44 65 73 69 72 65 64  4345 	.ascii "Desired Heading: 90"
             20 48 65 61 64 69 6E
             67 3A 20 39 30
      001A5C 00                    4346 	.db 0x00
                           000130  4347 FLab4andahalf$__str_12$0$0 == .
      001A5D                       4348 ___str_12:
      001A5D 48 65 61 64 69 6E 67  4349 	.ascii "Heading: 180"
             3A 20 31 38 30
      001A69 00                    4350 	.db 0x00
                           00013D  4351 FLab4andahalf$__str_13$0$0 == .
      001A6A                       4352 ___str_13:
      001A6A 44 65 73 69 72 65 64  4353 	.ascii "Desired Heading: 180"
             20 48 65 61 64 69 6E
             67 3A 20 31 38 30
      001A7E 00                    4354 	.db 0x00
                           000152  4355 FLab4andahalf$__str_14$0$0 == .
      001A7F                       4356 ___str_14:
      001A7F 48 65 61 64 69 6E 67  4357 	.ascii "Heading: 270"
             3A 20 32 37 30
      001A8B 00                    4358 	.db 0x00
                           00015F  4359 FLab4andahalf$__str_15$0$0 == .
      001A8C                       4360 ___str_15:
      001A8C 44 65 73 69 72 65 64  4361 	.ascii "Desired Heading: 270"
             20 48 65 61 64 69 6E
             67 3A 20 32 37 30
      001AA0 00                    4362 	.db 0x00
                           000174  4363 FLab4andahalf$__str_16$0$0 == .
      001AA1                       4364 ___str_16:
      001AA1 45 6E 74 65 72 20 79  4365 	.ascii "Enter your number"
             6F 75 72 20 6E 75 6D
             62 65 72
      001AB2 0A                    4366 	.db 0x0a
      001AB3 53 74 61 72 74 20 77  4367 	.ascii "Start with 0s"
             69 74 68 20 30 73
      001AC0 0A                    4368 	.db 0x0a
      001AC1 69 66 20 6E 65 65 64  4369 	.ascii "if need be"
             20 62 65
      001ACB 0A                    4370 	.db 0x0a
      001ACC 73 6F 20 34 35 20 69  4371 	.ascii "so 45 is 045"
             73 20 30 34 35
      001AD8 00                    4372 	.db 0x00
                           0001AC  4373 FLab4andahalf$__str_17$0$0 == .
      001AD9                       4374 ___str_17:
      001AD9 25 69                 4375 	.ascii "%i"
      001ADB 00                    4376 	.db 0x00
                           0001AF  4377 FLab4andahalf$__str_18$0$0 == .
      001ADC                       4378 ___str_18:
      001ADC 44 65 73 69 72 65 64  4379 	.ascii "Desired Heading: %i"
             20 48 65 61 64 69 6E
             67 3A 20 25 69
      001AEF 00                    4380 	.db 0x00
                           0001C3  4381 FLab4andahalf$__str_19$0$0 == .
      001AF0                       4382 ___str_19:
      001AF0 50 69 63 6B 20 61 20  4383 	.ascii "Pick a Range"
             52 61 6E 67 65
      001AFC 0A                    4384 	.db 0x0a
      001AFD 50 72 65 73 73 20 61  4385 	.ascii "Press a Number"
             20 4E 75 6D 62 65 72
      001B0B 0A                    4386 	.db 0x0a
      001B0C 42 65 74 77 65 65 6E  4387 	.ascii "Between 0 and 80"
             20 30 20 61 6E 64 20
             38 30
      001B1C 0A                    4388 	.db 0x0a
      001B1D 65 6E 74 65 72 20 77  4389 	.ascii "enter with 0 fi"
             69 74 68 20 30 20 66
             69
      001B2C 72 73 74              4390 	.ascii "rst"
      001B2F 00                    4391 	.db 0x00
                           000203  4392 FLab4andahalf$__str_20$0$0 == .
      001B30                       4393 ___str_20:
      001B30 44 65 73 69 72 65 64  4394 	.ascii "Desired Range: %i"
             20 52 61 6E 67 65 3A
             20 25 69
      001B41 00                    4395 	.db 0x00
                                   4396 	.area XINIT   (CODE)
                                   4397 	.area CABS    (ABS,CODE)
