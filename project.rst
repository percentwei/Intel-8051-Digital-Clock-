                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module project
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sheet
                                     12 	.globl _main
                                     13 	.globl _read
                                     14 	.globl _Timer1
                                     15 	.globl _Timer0_ISR
                                     16 	.globl _display
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _size
                                    114 	.globl _clock
                                    115 	.globl _memory
                                    116 	.globl _digit
                                    117 	.globl _seg
                                    118 	.globl _play
                                    119 	.globl _tone
                                    120 	.globl _delay
                                    121 	.globl _counter_1
                                    122 	.globl _second
                                    123 	.globl _minute
                                    124 	.globl _counter
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area DSEG    (DATA)
      000010                        242 _counter::
      000010                        243 	.ds 1
      000011                        244 _minute::
      000011                        245 	.ds 1
      000012                        246 _second::
      000012                        247 	.ds 1
      000013                        248 _counter_1::
      000013                        249 	.ds 1
      000014                        250 _delay::
      000014                        251 	.ds 1
      000015                        252 _tone::
      000015                        253 	.ds 1
      000016                        254 _play::
      000016                        255 	.ds 1
      000017                        256 _seg::
      000017                        257 	.ds 10
      000021                        258 _digit::
      000021                        259 	.ds 4
      000025                        260 _memory::
      000025                        261 	.ds 2
      000027                        262 _clock::
      000027                        263 	.ds 8
      00002F                        264 _size::
      00002F                        265 	.ds 1
      000030                        266 _main_choose_65537_20:
      000030                        267 	.ds 1
      000031                        268 _main_n1_65537_20:
      000031                        269 	.ds 1
      000032                        270 _main_flag_65537_20:
      000032                        271 	.ds 1
      000033                        272 _main_reset_digit_65537_20:
      000033                        273 	.ds 4
      000037                        274 _main_index_131074_23:
      000037                        275 	.ds 1
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable items in internal ram 
                                    278 ;--------------------------------------------------------
                                    279 	.area	OSEG    (OVR,DATA)
                                    280 	.area	OSEG    (OVR,DATA)
      000038                        281 _read_row_131072_13:
      000038                        282 	.ds 2
      00003A                        283 _read_k_262144_15:
      00003A                        284 	.ds 2
                                    285 ;--------------------------------------------------------
                                    286 ; Stack segment in internal ram 
                                    287 ;--------------------------------------------------------
                                    288 	.area	SSEG
      00003C                        289 __start__stack:
      00003C                        290 	.ds	1
                                    291 
                                    292 ;--------------------------------------------------------
                                    293 ; indirectly addressable internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area ISEG    (DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area IABS    (ABS,DATA)
                                    300 	.area IABS    (ABS,DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; bit data
                                    303 ;--------------------------------------------------------
                                    304 	.area BSEG    (BIT)
                                    305 ;--------------------------------------------------------
                                    306 ; paged external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area PSEG    (PAG,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XSEG    (XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; absolute external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XABS    (ABS,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external initialized ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XISEG   (XDATA)
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT0 (CODE)
                                    323 	.area GSINIT1 (CODE)
                                    324 	.area GSINIT2 (CODE)
                                    325 	.area GSINIT3 (CODE)
                                    326 	.area GSINIT4 (CODE)
                                    327 	.area GSINIT5 (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area CSEG    (CODE)
                                    331 ;--------------------------------------------------------
                                    332 ; interrupt vector 
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
      000000                        335 __interrupt_vect:
      000000 02 00 21         [24]  336 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  337 	reti
      000004                        338 	.ds	7
      00000B 02 01 33         [24]  339 	ljmp	_Timer0_ISR
      00000E                        340 	.ds	5
      000013 32               [24]  341 	reti
      000014                        342 	.ds	7
      00001B 02 01 AE         [24]  343 	ljmp	_Timer1
                                    344 ;--------------------------------------------------------
                                    345 ; global & static initialisations
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.globl __sdcc_gsinit_startup
                                    352 	.globl __sdcc_program_startup
                                    353 	.globl __start__stack
                                    354 	.globl __mcs51_genXINIT
                                    355 	.globl __mcs51_genXRAMCLEAR
                                    356 	.globl __mcs51_genRAMCLEAR
                                    357 ;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
      00007A 75 10 00         [24]  358 	mov	_counter,#0x00
                                    359 ;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
      00007D 75 11 0A         [24]  360 	mov	_minute,#0x0a
                                    361 ;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
      000080 75 12 00         [24]  362 	mov	_second,#0x00
                                    363 ;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
      000083 75 13 00         [24]  364 	mov	_counter_1,#0x00
                                    365 ;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
      000086 75 14 00         [24]  366 	mov	_delay,#0x00
                                    367 ;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
      000089 75 15 00         [24]  368 	mov	_tone,#0x00
                                    369 ;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
      00008C 75 16 00         [24]  370 	mov	_play,#0x00
                                    371 ;	project.c:30: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
      00008F 75 17 C0         [24]  372 	mov	_seg,#0xc0
      000092 75 18 F9         [24]  373 	mov	(_seg + 0x0001),#0xf9
      000095 75 19 A4         [24]  374 	mov	(_seg + 0x0002),#0xa4
      000098 75 1A B0         [24]  375 	mov	(_seg + 0x0003),#0xb0
      00009B 75 1B 99         [24]  376 	mov	(_seg + 0x0004),#0x99
      00009E 75 1C 92         [24]  377 	mov	(_seg + 0x0005),#0x92
      0000A1 75 1D 82         [24]  378 	mov	(_seg + 0x0006),#0x82
      0000A4 75 1E D8         [24]  379 	mov	(_seg + 0x0007),#0xd8
      0000A7 75 1F 80         [24]  380 	mov	(_seg + 0x0008),#0x80
      0000AA 75 20 98         [24]  381 	mov	(_seg + 0x0009),#0x98
                                    382 ;	project.c:31: unsigned char digit[] = {0xC0,0xC0,0xC0,0xC0};
      0000AD 75 21 C0         [24]  383 	mov	_digit,#0xc0
      0000B0 75 22 C0         [24]  384 	mov	(_digit + 0x0001),#0xc0
      0000B3 75 23 C0         [24]  385 	mov	(_digit + 0x0002),#0xc0
      0000B6 75 24 C0         [24]  386 	mov	(_digit + 0x0003),#0xc0
                                    387 ;	project.c:32: unsigned char memory[] = {100,100};
      0000B9 75 25 64         [24]  388 	mov	_memory,#0x64
      0000BC 75 26 64         [24]  389 	mov	(_memory + 0x0001),#0x64
                                    390 ;	project.c:33: unsigned char clock[] = {0xA4,0xC0,0xA4,0xC0,0xC0,0x82,0xF9,0x92};
      0000BF 75 27 A4         [24]  391 	mov	_clock,#0xa4
      0000C2 75 28 C0         [24]  392 	mov	(_clock + 0x0001),#0xc0
      0000C5 75 29 A4         [24]  393 	mov	(_clock + 0x0002),#0xa4
      0000C8 75 2A C0         [24]  394 	mov	(_clock + 0x0003),#0xc0
      0000CB 75 2B C0         [24]  395 	mov	(_clock + 0x0004),#0xc0
      0000CE 75 2C 82         [24]  396 	mov	(_clock + 0x0005),#0x82
      0000D1 75 2D F9         [24]  397 	mov	(_clock + 0x0006),#0xf9
      0000D4 75 2E 92         [24]  398 	mov	(_clock + 0x0007),#0x92
                                    399 ;	project.c:40: unsigned char size = sizeof(sheet)/sizeof(sheet[0])-1;
      0000D7 75 2F 1D         [24]  400 	mov	_size,#0x1d
                                    401 	.area GSFINAL (CODE)
      0000DA 02 00 1E         [24]  402 	ljmp	__sdcc_program_startup
                                    403 ;--------------------------------------------------------
                                    404 ; Home
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area HOME    (CODE)
      00001E                        408 __sdcc_program_startup:
      00001E 02 02 A4         [24]  409 	ljmp	_main
                                    410 ;	return from main will return to caller
                                    411 ;--------------------------------------------------------
                                    412 ; code
                                    413 ;--------------------------------------------------------
                                    414 	.area CSEG    (CODE)
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'display'
                                    417 ;------------------------------------------------------------
                                    418 ;digit                     Allocated to registers r5 r6 r7 
                                    419 ;i                         Allocated to registers r3 r4 
                                    420 ;j                         Allocated to registers r1 r2 
                                    421 ;------------------------------------------------------------
                                    422 ;	project.c:42: void display(unsigned char *digit){
                                    423 ;	-----------------------------------------
                                    424 ;	 function display
                                    425 ;	-----------------------------------------
      0000DD                        426 _display:
                           000007   427 	ar7 = 0x07
                           000006   428 	ar6 = 0x06
                           000005   429 	ar5 = 0x05
                           000004   430 	ar4 = 0x04
                           000003   431 	ar3 = 0x03
                           000002   432 	ar2 = 0x02
                           000001   433 	ar1 = 0x01
                           000000   434 	ar0 = 0x00
      0000DD AD 82            [24]  435 	mov	r5,dpl
      0000DF AE 83            [24]  436 	mov	r6,dph
      0000E1 AF F0            [24]  437 	mov	r7,b
                                    438 ;	project.c:43: for(int i= 0; i< 4 ;i++){
      0000E3 7B 00            [12]  439 	mov	r3,#0x00
      0000E5 7C 00            [12]  440 	mov	r4,#0x00
      0000E7                        441 00107$:
      0000E7 C3               [12]  442 	clr	c
      0000E8 EB               [12]  443 	mov	a,r3
      0000E9 94 04            [12]  444 	subb	a,#0x04
      0000EB EC               [12]  445 	mov	a,r4
      0000EC 64 80            [12]  446 	xrl	a,#0x80
      0000EE 94 80            [12]  447 	subb	a,#0x80
      0000F0 50 40            [24]  448 	jnc	00109$
                                    449 ;	project.c:44: P2 = ~(0xF1<< i);
      0000F2 8B 02            [24]  450 	mov	ar2,r3
      0000F4 8A F0            [24]  451 	mov	b,r2
      0000F6 05 F0            [12]  452 	inc	b
      0000F8 74 F1            [12]  453 	mov	a,#0xf1
      0000FA 80 02            [24]  454 	sjmp	00132$
      0000FC                        455 00130$:
      0000FC 25 E0            [12]  456 	add	a,acc
      0000FE                        457 00132$:
      0000FE D5 F0 FB         [24]  458 	djnz	b,00130$
      000101 F4               [12]  459 	cpl	a
      000102 F5 A0            [12]  460 	mov	_P2,a
                                    461 ;	project.c:45: P0 = digit[i];
      000104 EB               [12]  462 	mov	a,r3
      000105 2D               [12]  463 	add	a,r5
      000106 F8               [12]  464 	mov	r0,a
      000107 EC               [12]  465 	mov	a,r4
      000108 3E               [12]  466 	addc	a,r6
      000109 F9               [12]  467 	mov	r1,a
      00010A 8F 02            [24]  468 	mov	ar2,r7
      00010C 88 82            [24]  469 	mov	dpl,r0
      00010E 89 83            [24]  470 	mov	dph,r1
      000110 8A F0            [24]  471 	mov	b,r2
      000112 12 05 8E         [24]  472 	lcall	__gptrget
      000115 F5 80            [12]  473 	mov	_P0,a
                                    474 ;	project.c:46: for(unsigned j= 0; j< 1000; j++);
      000117 79 00            [12]  475 	mov	r1,#0x00
      000119 7A 00            [12]  476 	mov	r2,#0x00
      00011B                        477 00104$:
      00011B C3               [12]  478 	clr	c
      00011C E9               [12]  479 	mov	a,r1
      00011D 94 E8            [12]  480 	subb	a,#0xe8
      00011F EA               [12]  481 	mov	a,r2
      000120 94 03            [12]  482 	subb	a,#0x03
      000122 50 07            [24]  483 	jnc	00108$
      000124 09               [12]  484 	inc	r1
      000125 B9 00 F3         [24]  485 	cjne	r1,#0x00,00104$
      000128 0A               [12]  486 	inc	r2
      000129 80 F0            [24]  487 	sjmp	00104$
      00012B                        488 00108$:
                                    489 ;	project.c:43: for(int i= 0; i< 4 ;i++){
      00012B 0B               [12]  490 	inc	r3
      00012C BB 00 B8         [24]  491 	cjne	r3,#0x00,00107$
      00012F 0C               [12]  492 	inc	r4
      000130 80 B5            [24]  493 	sjmp	00107$
      000132                        494 00109$:
                                    495 ;	project.c:48: }
      000132 22               [24]  496 	ret
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'Timer0_ISR'
                                    499 ;------------------------------------------------------------
                                    500 ;	project.c:50: void Timer0_ISR() __interrupt(1)__using(1){
                                    501 ;	-----------------------------------------
                                    502 ;	 function Timer0_ISR
                                    503 ;	-----------------------------------------
      000133                        504 _Timer0_ISR:
                           00000F   505 	ar7 = 0x0f
                           00000E   506 	ar6 = 0x0e
                           00000D   507 	ar5 = 0x0d
                           00000C   508 	ar4 = 0x0c
                           00000B   509 	ar3 = 0x0b
                           00000A   510 	ar2 = 0x0a
                           000009   511 	ar1 = 0x09
                           000008   512 	ar0 = 0x08
      000133 C0 E0            [24]  513 	push	acc
      000135 C0 F0            [24]  514 	push	b
      000137 C0 82            [24]  515 	push	dpl
      000139 C0 83            [24]  516 	push	dph
      00013B C0 D0            [24]  517 	push	psw
      00013D 75 D0 08         [24]  518 	mov	psw,#0x08
                                    519 ;	project.c:51: TH0 = (PERIOD>> 8);
      000140 75 8C CF         [24]  520 	mov	_TH0,#0xcf
                                    521 ;	project.c:52: TL0 = (PERIOD& 0xFF);
      000143 75 8A 2C         [24]  522 	mov	_TL0,#0x2c
                                    523 ;	project.c:53: counter++;
      000146 05 10            [12]  524 	inc	_counter
                                    525 ;	project.c:54: if(counter == 80){
      000148 74 50            [12]  526 	mov	a,#0x50
      00014A B5 10 0F         [24]  527 	cjne	a,_counter,00104$
                                    528 ;	project.c:55: second++;  		
      00014D 05 12            [12]  529 	inc	_second
                                    530 ;	project.c:56: counter= 0;    		
      00014F 75 10 00         [24]  531 	mov	_counter,#0x00
                                    532 ;	project.c:57: if(second== 60){
      000152 74 3C            [12]  533 	mov	a,#0x3c
      000154 B5 12 05         [24]  534 	cjne	a,_second,00104$
                                    535 ;	project.c:58: second= 0;
      000157 75 12 00         [24]  536 	mov	_second,#0x00
                                    537 ;	project.c:59: minute++;    			
      00015A 05 11            [12]  538 	inc	_minute
      00015C                        539 00104$:
                                    540 ;	project.c:62: counter_1++;
      00015C 05 13            [12]  541 	inc	_counter_1
                                    542 ;	project.c:63: if(counter_1==45){
      00015E 74 2D            [12]  543 	mov	a,#0x2d
      000160 B5 13 28         [24]  544 	cjne	a,_counter_1,00108$
                                    545 ;	project.c:64: tone++;
      000163 05 15            [12]  546 	inc	_tone
                                    547 ;	project.c:65: TH1 = (sheet[tone] >> 8);
      000165 E5 15            [12]  548 	mov	a,_tone
      000167 75 F0 02         [24]  549 	mov	b,#0x02
      00016A A4               [48]  550 	mul	ab
      00016B 24 1C            [12]  551 	add	a,#_sheet
      00016D F5 82            [12]  552 	mov	dpl,a
      00016F 74 06            [12]  553 	mov	a,#(_sheet >> 8)
      000171 35 F0            [12]  554 	addc	a,b
      000173 F5 83            [12]  555 	mov	dph,a
      000175 E4               [12]  556 	clr	a
      000176 93               [24]  557 	movc	a,@a+dptr
      000177 FE               [12]  558 	mov	r6,a
      000178 A3               [24]  559 	inc	dptr
      000179 E4               [12]  560 	clr	a
      00017A 93               [24]  561 	movc	a,@a+dptr
      00017B FF               [12]  562 	mov	r7,a
      00017C 8F 8D            [24]  563 	mov	_TH1,r7
                                    564 ;	project.c:66: TL1 = (sheet[tone] & 0xFF);
      00017E 8E 8B            [24]  565 	mov	_TL1,r6
                                    566 ;	project.c:67: counter_1= 0;
      000180 75 13 00         [24]  567 	mov	_counter_1,#0x00
                                    568 ;	project.c:68: if(tone==size)
      000183 E5 2F            [12]  569 	mov	a,_size
      000185 B5 15 03         [24]  570 	cjne	a,_tone,00108$
                                    571 ;	project.c:69: tone=0;	
      000188 75 15 00         [24]  572 	mov	_tone,#0x00
      00018B                        573 00108$:
                                    574 ;	project.c:72: if(minute>=24)
      00018B 74 E8            [12]  575 	mov	a,#0x100 - 0x18
      00018D 25 11            [12]  576 	add	a,_minute
      00018F 50 03            [24]  577 	jnc	00110$
                                    578 ;	project.c:73: minute=0;
      000191 75 11 00         [24]  579 	mov	_minute,#0x00
      000194                        580 00110$:
                                    581 ;	project.c:74: if(second>=60)
      000194 74 C4            [12]  582 	mov	a,#0x100 - 0x3c
      000196 25 12            [12]  583 	add	a,_second
      000198 50 03            [24]  584 	jnc	00112$
                                    585 ;	project.c:75: second=0;
      00019A 75 12 00         [24]  586 	mov	_second,#0x00
      00019D                        587 00112$:
                                    588 ;	project.c:76: if(play==0)
      00019D E5 16            [12]  589 	mov	a,_play
                                    590 ;	project.c:77: tone=0;							 	
      00019F 70 02            [24]  591 	jnz	00115$
      0001A1 F5 15            [12]  592 	mov	_tone,a
      0001A3                        593 00115$:
                                    594 ;	project.c:78: }
      0001A3 D0 D0            [24]  595 	pop	psw
      0001A5 D0 83            [24]  596 	pop	dph
      0001A7 D0 82            [24]  597 	pop	dpl
      0001A9 D0 F0            [24]  598 	pop	b
      0001AB D0 E0            [24]  599 	pop	acc
      0001AD 32               [24]  600 	reti
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'Timer1'
                                    603 ;------------------------------------------------------------
                                    604 ;	project.c:80: void Timer1() __interrupt(3)__using(1){
                                    605 ;	-----------------------------------------
                                    606 ;	 function Timer1
                                    607 ;	-----------------------------------------
      0001AE                        608 _Timer1:
      0001AE C0 E0            [24]  609 	push	acc
      0001B0 C0 F0            [24]  610 	push	b
      0001B2 C0 82            [24]  611 	push	dpl
      0001B4 C0 83            [24]  612 	push	dph
      0001B6 C0 D0            [24]  613 	push	psw
      0001B8 75 D0 08         [24]  614 	mov	psw,#0x08
                                    615 ;	project.c:81: TH1 = (sheet[tone] >> 8);
      0001BB E5 15            [12]  616 	mov	a,_tone
      0001BD 75 F0 02         [24]  617 	mov	b,#0x02
      0001C0 A4               [48]  618 	mul	ab
      0001C1 24 1C            [12]  619 	add	a,#_sheet
      0001C3 F5 82            [12]  620 	mov	dpl,a
      0001C5 74 06            [12]  621 	mov	a,#(_sheet >> 8)
      0001C7 35 F0            [12]  622 	addc	a,b
      0001C9 F5 83            [12]  623 	mov	dph,a
      0001CB E4               [12]  624 	clr	a
      0001CC 93               [24]  625 	movc	a,@a+dptr
      0001CD FE               [12]  626 	mov	r6,a
      0001CE A3               [24]  627 	inc	dptr
      0001CF E4               [12]  628 	clr	a
      0001D0 93               [24]  629 	movc	a,@a+dptr
      0001D1 FF               [12]  630 	mov	r7,a
      0001D2 8F 8D            [24]  631 	mov	_TH1,r7
                                    632 ;	project.c:82: TL1 = (sheet[tone] & 0xFF);
      0001D4 8E 8B            [24]  633 	mov	_TL1,r6
                                    634 ;	project.c:84: if((minute==memory[0]) && (second==memory[1])){
      0001D6 E5 25            [12]  635 	mov	a,_memory
      0001D8 B5 11 0B         [24]  636 	cjne	a,_minute,00102$
      0001DB E5 26            [12]  637 	mov	a,(_memory + 0x0001)
      0001DD B5 12 06         [24]  638 	cjne	a,_second,00102$
                                    639 ;	project.c:85: play=1;	
      0001E0 75 16 01         [24]  640 	mov	_play,#0x01
                                    641 ;	project.c:86: delay=0;
      0001E3 75 14 00         [24]  642 	mov	_delay,#0x00
      0001E6                        643 00102$:
                                    644 ;	project.c:88: if(play==1)
      0001E6 74 01            [12]  645 	mov	a,#0x01
      0001E8 B5 16 05         [24]  646 	cjne	a,_play,00106$
                                    647 ;	project.c:89: P3= ~P3;  	
      0001EB E5 B0            [12]  648 	mov	a,_P3
      0001ED F4               [12]  649 	cpl	a
      0001EE F5 B0            [12]  650 	mov	_P3,a
      0001F0                        651 00106$:
                                    652 ;	project.c:90: }
      0001F0 D0 D0            [24]  653 	pop	psw
      0001F2 D0 83            [24]  654 	pop	dph
      0001F4 D0 82            [24]  655 	pop	dpl
      0001F6 D0 F0            [24]  656 	pop	b
      0001F8 D0 E0            [24]  657 	pop	acc
      0001FA 32               [24]  658 	reti
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'read'
                                    661 ;------------------------------------------------------------
                                    662 ;button                    Allocated to registers 
                                    663 ;row                       Allocated with name '_read_row_131072_13'
                                    664 ;k                         Allocated with name '_read_k_262144_15'
                                    665 ;col                       Allocated to registers r0 r1 
                                    666 ;------------------------------------------------------------
                                    667 ;	project.c:91: unsigned char read(){
                                    668 ;	-----------------------------------------
                                    669 ;	 function read
                                    670 ;	-----------------------------------------
      0001FB                        671 _read:
                           000007   672 	ar7 = 0x07
                           000006   673 	ar6 = 0x06
                           000005   674 	ar5 = 0x05
                           000004   675 	ar4 = 0x04
                           000003   676 	ar3 = 0x03
                           000002   677 	ar2 = 0x02
                           000001   678 	ar1 = 0x01
                           000000   679 	ar0 = 0x00
                                    680 ;	project.c:93: for(int row=0; row<4; row++){
      0001FB E4               [12]  681 	clr	a
      0001FC FE               [12]  682 	mov	r6,a
      0001FD FF               [12]  683 	mov	r7,a
      0001FE F5 38            [12]  684 	mov	_read_row_131072_13,a
      000200 F5 39            [12]  685 	mov	(_read_row_131072_13 + 1),a
      000202                        686 00112$:
      000202 C3               [12]  687 	clr	c
      000203 E5 38            [12]  688 	mov	a,_read_row_131072_13
      000205 94 04            [12]  689 	subb	a,#0x04
      000207 E5 39            [12]  690 	mov	a,(_read_row_131072_13 + 1)
      000209 64 80            [12]  691 	xrl	a,#0x80
      00020B 94 80            [12]  692 	subb	a,#0x80
      00020D 40 03            [24]  693 	jc	00141$
      00020F 02 02 A0         [24]  694 	ljmp	00107$
      000212                        695 00141$:
                                    696 ;	project.c:94: P1 = ~(0x01<<row);
      000212 AB 38            [24]  697 	mov	r3,_read_row_131072_13
      000214 8B F0            [24]  698 	mov	b,r3
      000216 05 F0            [12]  699 	inc	b
      000218 74 01            [12]  700 	mov	a,#0x01
      00021A 80 02            [24]  701 	sjmp	00144$
      00021C                        702 00142$:
      00021C 25 E0            [12]  703 	add	a,acc
      00021E                        704 00144$:
      00021E D5 F0 FB         [24]  705 	djnz	b,00142$
      000221 F4               [12]  706 	cpl	a
      000222 F5 90            [12]  707 	mov	_P1,a
                                    708 ;	project.c:95: if(0xF0 != (P1 & 0xF0)){
      000224 AA 90            [24]  709 	mov	r2,_P1
      000226 53 02 F0         [24]  710 	anl	ar2,#0xf0
      000229 7B 00            [12]  711 	mov	r3,#0x00
      00022B BA F0 05         [24]  712 	cjne	r2,#0xf0,00145$
      00022E BB 00 02         [24]  713 	cjne	r3,#0x00,00145$
      000231 80 5E            [24]  714 	sjmp	00113$
      000233                        715 00145$:
                                    716 ;	project.c:96: unsigned k = P1 & 0xF0;
      000233 AA 90            [24]  717 	mov	r2,_P1
      000235 7B 00            [12]  718 	mov	r3,#0x00
      000237 74 F0            [12]  719 	mov	a,#0xf0
      000239 5A               [12]  720 	anl	a,r2
      00023A F5 3A            [12]  721 	mov	_read_k_262144_15,a
                                    722 ;	1-genFromRTrack replaced	mov	(_read_k_262144_15 + 1),#0x00
      00023C 8B 3B            [24]  723 	mov	(_read_k_262144_15 + 1),r3
                                    724 ;	project.c:97: for(int col=0; col<4; col++){
      00023E 78 00            [12]  725 	mov	r0,#0x00
      000240 79 00            [12]  726 	mov	r1,#0x00
      000242 7A 00            [12]  727 	mov	r2,#0x00
      000244 7B 00            [12]  728 	mov	r3,#0x00
      000246                        729 00109$:
      000246 C3               [12]  730 	clr	c
      000247 EA               [12]  731 	mov	a,r2
      000248 94 04            [12]  732 	subb	a,#0x04
      00024A EB               [12]  733 	mov	a,r3
      00024B 64 80            [12]  734 	xrl	a,#0x80
      00024D 94 80            [12]  735 	subb	a,#0x80
      00024F 50 40            [24]  736 	jnc	00113$
                                    737 ;	project.c:98: if(!(k & (0x10<<col)) && (button==0)){
      000251 8A F0            [24]  738 	mov	b,r2
      000253 05 F0            [12]  739 	inc	b
      000255 7C 10            [12]  740 	mov	r4,#0x10
      000257 7D 00            [12]  741 	mov	r5,#0x00
      000259 80 06            [24]  742 	sjmp	00148$
      00025B                        743 00147$:
      00025B EC               [12]  744 	mov	a,r4
      00025C 2C               [12]  745 	add	a,r4
      00025D FC               [12]  746 	mov	r4,a
      00025E ED               [12]  747 	mov	a,r5
      00025F 33               [12]  748 	rlc	a
      000260 FD               [12]  749 	mov	r5,a
      000261                        750 00148$:
      000261 D5 F0 F7         [24]  751 	djnz	b,00147$
      000264 E5 3A            [12]  752 	mov	a,_read_k_262144_15
      000266 52 04            [12]  753 	anl	ar4,a
      000268 E5 3B            [12]  754 	mov	a,(_read_k_262144_15 + 1)
      00026A 52 05            [12]  755 	anl	ar5,a
      00026C EC               [12]  756 	mov	a,r4
      00026D 4D               [12]  757 	orl	a,r5
      00026E 70 16            [24]  758 	jnz	00110$
                                    759 ;	project.c:100: return 4*(3-row)+3-col;                    
      000270 8E 05            [24]  760 	mov	ar5,r6
      000272 74 03            [12]  761 	mov	a,#0x03
      000274 C3               [12]  762 	clr	c
      000275 9D               [12]  763 	subb	a,r5
      000276 25 E0            [12]  764 	add	a,acc
      000278 25 E0            [12]  765 	add	a,acc
      00027A FD               [12]  766 	mov	r5,a
      00027B 0D               [12]  767 	inc	r5
      00027C 0D               [12]  768 	inc	r5
      00027D 0D               [12]  769 	inc	r5
      00027E 88 04            [24]  770 	mov	ar4,r0
      000280 ED               [12]  771 	mov	a,r5
      000281 C3               [12]  772 	clr	c
      000282 9C               [12]  773 	subb	a,r4
      000283 F5 82            [12]  774 	mov	dpl,a
      000285 22               [24]  775 	ret
      000286                        776 00110$:
                                    777 ;	project.c:97: for(int col=0; col<4; col++){
      000286 0A               [12]  778 	inc	r2
      000287 BA 00 01         [24]  779 	cjne	r2,#0x00,00150$
      00028A 0B               [12]  780 	inc	r3
      00028B                        781 00150$:
      00028B 8A 00            [24]  782 	mov	ar0,r2
      00028D 8B 01            [24]  783 	mov	ar1,r3
      00028F 80 B5            [24]  784 	sjmp	00109$
      000291                        785 00113$:
                                    786 ;	project.c:93: for(int row=0; row<4; row++){
      000291 05 38            [12]  787 	inc	_read_row_131072_13
      000293 E4               [12]  788 	clr	a
      000294 B5 38 02         [24]  789 	cjne	a,_read_row_131072_13,00151$
      000297 05 39            [12]  790 	inc	(_read_row_131072_13 + 1)
      000299                        791 00151$:
      000299 AE 38            [24]  792 	mov	r6,_read_row_131072_13
      00029B AF 39            [24]  793 	mov	r7,(_read_row_131072_13 + 1)
      00029D 02 02 02         [24]  794 	ljmp	00112$
      0002A0                        795 00107$:
                                    796 ;	project.c:106: return 16;	
      0002A0 75 82 10         [24]  797 	mov	dpl,#0x10
                                    798 ;	project.c:107: }
      0002A3 22               [24]  799 	ret
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'main'
                                    802 ;------------------------------------------------------------
                                    803 ;choose                    Allocated with name '_main_choose_65537_20'
                                    804 ;n1                        Allocated with name '_main_n1_65537_20'
                                    805 ;tmp                       Allocated to registers 
                                    806 ;func_button               Allocated to registers r5 
                                    807 ;flag                      Allocated with name '_main_flag_65537_20'
                                    808 ;reset_digit               Allocated with name '_main_reset_digit_65537_20'
                                    809 ;index                     Allocated with name '_main_index_131074_23'
                                    810 ;z                         Allocated to registers r2 r6 
                                    811 ;p                         Allocated to registers r6 
                                    812 ;y                         Allocated to registers r2 r3 
                                    813 ;y                         Allocated to registers r2 r3 
                                    814 ;num                       Allocated to registers r7 
                                    815 ;tt                        Allocated to registers r4 
                                    816 ;------------------------------------------------------------
                                    817 ;	project.c:109: void main() {
                                    818 ;	-----------------------------------------
                                    819 ;	 function main
                                    820 ;	-----------------------------------------
      0002A4                        821 _main:
                                    822 ;	project.c:110: TH0= (PERIOD>> 8);
      0002A4 75 8C CF         [24]  823 	mov	_TH0,#0xcf
                                    824 ;	project.c:111: TL0= (PERIOD& 0xFF);
      0002A7 75 8A 2C         [24]  825 	mov	_TL0,#0x2c
                                    826 ;	project.c:112: TMOD= 0x11;
      0002AA 75 89 11         [24]  827 	mov	_TMOD,#0x11
                                    828 ;	project.c:113: TCON= 0x50;
      0002AD 75 88 50         [24]  829 	mov	_TCON,#0x50
                                    830 ;	project.c:114: IE= 0x8A; 
      0002B0 75 A8 8A         [24]  831 	mov	_IE,#0x8a
                                    832 ;	project.c:115: unsigned char choose= 16, n1=0,tmp=16,func_button= 0,flag=0;
      0002B3 75 30 10         [24]  833 	mov	_main_choose_65537_20,#0x10
      0002B6 75 31 00         [24]  834 	mov	_main_n1_65537_20,#0x00
      0002B9 7D 00            [12]  835 	mov	r5,#0x00
                                    836 ;	1-genFromRTrack replaced	mov	_main_flag_65537_20,#0x00
      0002BB 8D 32            [24]  837 	mov	_main_flag_65537_20,r5
                                    838 ;	project.c:118: while(1){
      0002BD                        839 00152$:
                                    840 ;	project.c:119: if(func_button==0){
      0002BD ED               [12]  841 	mov	a,r5
                                    842 ;	project.c:120: digit[0]=seg[(minute/10)];
      0002BE 70 68            [24]  843 	jnz	00102$
      0002C0 AA 11            [24]  844 	mov	r2,_minute
      0002C2 FB               [12]  845 	mov	r3,a
      0002C3 75 38 0A         [24]  846 	mov	__divsint_PARM_2,#0x0a
                                    847 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0002C6 8B 39            [24]  848 	mov	(__divsint_PARM_2 + 1),r3
      0002C8 8A 82            [24]  849 	mov	dpl,r2
      0002CA 8B 83            [24]  850 	mov	dph,r3
      0002CC C0 05            [24]  851 	push	ar5
      0002CE 12 05 E0         [24]  852 	lcall	__divsint
      0002D1 E5 82            [12]  853 	mov	a,dpl
      0002D3 24 17            [12]  854 	add	a,#_seg
      0002D5 F9               [12]  855 	mov	r1,a
      0002D6 87 03            [24]  856 	mov	ar3,@r1
      0002D8 8B 21            [24]  857 	mov	_digit,r3
                                    858 ;	project.c:121: digit[1]=seg[(minute%10)];
      0002DA AA 11            [24]  859 	mov	r2,_minute
      0002DC 7B 00            [12]  860 	mov	r3,#0x00
      0002DE 75 38 0A         [24]  861 	mov	__modsint_PARM_2,#0x0a
                                    862 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0002E1 8B 39            [24]  863 	mov	(__modsint_PARM_2 + 1),r3
      0002E3 8A 82            [24]  864 	mov	dpl,r2
      0002E5 8B 83            [24]  865 	mov	dph,r3
      0002E7 12 05 AA         [24]  866 	lcall	__modsint
      0002EA E5 82            [12]  867 	mov	a,dpl
      0002EC 24 17            [12]  868 	add	a,#_seg
      0002EE F9               [12]  869 	mov	r1,a
      0002EF 87 03            [24]  870 	mov	ar3,@r1
      0002F1 8B 22            [24]  871 	mov	(_digit + 0x0001),r3
                                    872 ;	project.c:122: digit[2]=seg[(second/10)];
      0002F3 AA 12            [24]  873 	mov	r2,_second
      0002F5 7B 00            [12]  874 	mov	r3,#0x00
      0002F7 75 38 0A         [24]  875 	mov	__divsint_PARM_2,#0x0a
                                    876 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0002FA 8B 39            [24]  877 	mov	(__divsint_PARM_2 + 1),r3
      0002FC 8A 82            [24]  878 	mov	dpl,r2
      0002FE 8B 83            [24]  879 	mov	dph,r3
      000300 12 05 E0         [24]  880 	lcall	__divsint
      000303 E5 82            [12]  881 	mov	a,dpl
      000305 24 17            [12]  882 	add	a,#_seg
      000307 F9               [12]  883 	mov	r1,a
      000308 87 03            [24]  884 	mov	ar3,@r1
      00030A 8B 23            [24]  885 	mov	(_digit + 0x0002),r3
                                    886 ;	project.c:123: digit[3]=seg[(second%10)];					
      00030C AA 12            [24]  887 	mov	r2,_second
      00030E 7B 00            [12]  888 	mov	r3,#0x00
      000310 75 38 0A         [24]  889 	mov	__modsint_PARM_2,#0x0a
                                    890 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000313 8B 39            [24]  891 	mov	(__modsint_PARM_2 + 1),r3
      000315 8A 82            [24]  892 	mov	dpl,r2
      000317 8B 83            [24]  893 	mov	dph,r3
      000319 12 05 AA         [24]  894 	lcall	__modsint
      00031C AA 82            [24]  895 	mov	r2,dpl
      00031E D0 05            [24]  896 	pop	ar5
      000320 EA               [12]  897 	mov	a,r2
      000321 24 17            [12]  898 	add	a,#_seg
      000323 F9               [12]  899 	mov	r1,a
      000324 87 03            [24]  900 	mov	ar3,@r1
      000326 8B 24            [24]  901 	mov	(_digit + 0x0003),r3
      000328                        902 00102$:
                                    903 ;	project.c:125: display(digit);	
      000328 90 00 21         [24]  904 	mov	dptr,#_digit
      00032B 75 F0 40         [24]  905 	mov	b,#0x40
      00032E C0 05            [24]  906 	push	ar5
      000330 12 00 DD         [24]  907 	lcall	_display
                                    908 ;	project.c:127: unsigned char index=read();
      000333 12 01 FB         [24]  909 	lcall	_read
      000336 85 82 37         [24]  910 	mov	_main_index_131074_23,dpl
      000339 D0 05            [24]  911 	pop	ar5
                                    912 ;	project.c:129: if(func_button== 0)
      00033B ED               [12]  913 	mov	a,r5
      00033C 70 03            [24]  914 	jnz	00104$
                                    915 ;	project.c:130: choose=index;	                 
      00033E 85 37 30         [24]  916 	mov	_main_choose_65537_20,_main_index_131074_23
      000341                        917 00104$:
                                    918 ;	project.c:131: if(func_button== 0 && choose> 9 && choose< 16){ 
      000341 ED               [12]  919 	mov	a,r5
      000342 60 03            [24]  920 	jz	00302$
      000344 02 04 4F         [24]  921 	ljmp	00130$
      000347                        922 00302$:
      000347 E5 30            [12]  923 	mov	a,_main_choose_65537_20
      000349 24 F6            [12]  924 	add	a,#0xff - 0x09
      00034B 40 03            [24]  925 	jc	00303$
      00034D 02 04 4F         [24]  926 	ljmp	00130$
      000350                        927 00303$:
      000350 74 F0            [12]  928 	mov	a,#0x100 - 0x10
      000352 25 30            [12]  929 	add	a,_main_choose_65537_20
      000354 50 03            [24]  930 	jnc	00304$
      000356 02 04 4F         [24]  931 	ljmp	00130$
      000359                        932 00304$:
                                    933 ;	project.c:132: choose=index;               		
      000359 85 37 30         [24]  934 	mov	_main_choose_65537_20,_main_index_131074_23
                                    935 ;	project.c:133: func_button=1;
      00035C 7D 01            [12]  936 	mov	r5,#0x01
                                    937 ;	project.c:134: if(choose== 10 || choose== 11){
      00035E 74 0A            [12]  938 	mov	a,#0x0a
      000360 B5 37 02         [24]  939 	cjne	a,_main_index_131074_23,00305$
      000363 80 05            [24]  940 	sjmp	00106$
      000365                        941 00305$:
      000365 74 0B            [12]  942 	mov	a,#0x0b
      000367 B5 37 1D         [24]  943 	cjne	a,_main_index_131074_23,00107$
      00036A                        944 00106$:
                                    945 ;	project.c:135: n1=0;
      00036A 75 31 00         [24]  946 	mov	_main_n1_65537_20,#0x00
                                    947 ;	project.c:136: for(unsigned z=0;z<4;z++)
      00036D 7A 00            [12]  948 	mov	r2,#0x00
      00036F 7E 00            [12]  949 	mov	r6,#0x00
      000371                        950 00155$:
      000371 C3               [12]  951 	clr	c
      000372 EA               [12]  952 	mov	a,r2
      000373 94 04            [12]  953 	subb	a,#0x04
      000375 EE               [12]  954 	mov	a,r6
      000376 94 00            [12]  955 	subb	a,#0x00
      000378 50 0D            [24]  956 	jnc	00107$
                                    957 ;	project.c:137: digit[z]=0xBF;
      00037A EA               [12]  958 	mov	a,r2
      00037B 24 21            [12]  959 	add	a,#_digit
      00037D F8               [12]  960 	mov	r0,a
      00037E 76 BF            [12]  961 	mov	@r0,#0xbf
                                    962 ;	project.c:136: for(unsigned z=0;z<4;z++)
      000380 0A               [12]  963 	inc	r2
      000381 BA 00 ED         [24]  964 	cjne	r2,#0x00,00155$
      000384 0E               [12]  965 	inc	r6
      000385 80 EA            [24]  966 	sjmp	00155$
      000387                        967 00107$:
                                    968 ;	project.c:139: if(choose==12){
      000387 74 0C            [12]  969 	mov	a,#0x0c
      000389 B5 30 0E         [24]  970 	cjne	a,_main_choose_65537_20,00110$
                                    971 ;	project.c:140: play=0;
      00038C 75 16 00         [24]  972 	mov	_play,#0x00
                                    973 ;	project.c:141: delay=0;
      00038F 75 14 00         [24]  974 	mov	_delay,#0x00
                                    975 ;	project.c:142: func_button=0;
      000392 7D 00            [12]  976 	mov	r5,#0x00
                                    977 ;	project.c:143: memory[0]= 100;
      000394 75 25 64         [24]  978 	mov	_memory,#0x64
                                    979 ;	project.c:144: memory[1]= 100;	
      000397 75 26 64         [24]  980 	mov	(_memory + 0x0001),#0x64
      00039A                        981 00110$:
                                    982 ;	project.c:146: if(choose== 13){
      00039A 74 0D            [12]  983 	mov	a,#0x0d
      00039C B5 30 24         [24]  984 	cjne	a,_main_choose_65537_20,00116$
                                    985 ;	project.c:147: play= 0;
                                    986 ;	project.c:148: func_button= 0;
                                    987 ;	project.c:149: if(delay== 0){
      00039F E4               [12]  988 	clr	a
      0003A0 F5 16            [12]  989 	mov	_play,a
      0003A2 FD               [12]  990 	mov	r5,a
      0003A3 E5 14            [12]  991 	mov	a,_delay
      0003A5 70 1C            [24]  992 	jnz	00116$
                                    993 ;	project.c:150: memory[1]=second+10;
      0003A7 AE 12            [24]  994 	mov	r6,_second
      0003A9 74 0A            [12]  995 	mov	a,#0x0a
      0003AB 2E               [12]  996 	add	a,r6
      0003AC F5 26            [12]  997 	mov	(_memory + 0x0001),a
                                    998 ;	project.c:151: if(memory[1]>=60){
      0003AE AE 26            [24]  999 	mov	r6,(_memory + 0x0001)
      0003B0 BE 3C 00         [24] 1000 	cjne	r6,#0x3c,00315$
      0003B3                       1001 00315$:
      0003B3 40 0B            [24] 1002 	jc	00112$
                                   1003 ;	project.c:152: memory[1]-=60;
      0003B5 EE               [12] 1004 	mov	a,r6
      0003B6 24 C4            [12] 1005 	add	a,#0xc4
      0003B8 F5 26            [12] 1006 	mov	(_memory + 0x0001),a
                                   1007 ;	project.c:153: memory[0]+=1;
      0003BA E5 25            [12] 1008 	mov	a,_memory
      0003BC FE               [12] 1009 	mov	r6,a
      0003BD 04               [12] 1010 	inc	a
      0003BE F5 25            [12] 1011 	mov	_memory,a
      0003C0                       1012 00112$:
                                   1013 ;	project.c:155: delay=1;									
      0003C0 75 14 01         [24] 1014 	mov	_delay,#0x01
      0003C3                       1015 00116$:
                                   1016 ;	project.c:158: if(choose==15){
      0003C3 74 0F            [12] 1017 	mov	a,#0x0f
      0003C5 B5 30 02         [24] 1018 	cjne	a,_main_choose_65537_20,00317$
      0003C8 80 03            [24] 1019 	sjmp	00318$
      0003CA                       1020 00317$:
      0003CA 02 04 4F         [24] 1021 	ljmp	00130$
      0003CD                       1022 00318$:
                                   1023 ;	project.c:159: unsigned char p=0;
      0003CD 7E 00            [12] 1024 	mov	r6,#0x00
                                   1025 ;	project.c:160: while(read()!=16){
      0003CF                       1026 00124$:
      0003CF C0 06            [24] 1027 	push	ar6
      0003D1 12 01 FB         [24] 1028 	lcall	_read
      0003D4 AA 82            [24] 1029 	mov	r2,dpl
      0003D6 D0 06            [24] 1030 	pop	ar6
      0003D8 BA 10 02         [24] 1031 	cjne	r2,#0x10,00319$
      0003DB 80 70            [24] 1032 	sjmp	00126$
      0003DD                       1033 00319$:
                                   1034 ;	project.c:161: for(unsigned y=0;y<4;y++)
      0003DD 7A 00            [12] 1035 	mov	r2,#0x00
      0003DF 7B 00            [12] 1036 	mov	r3,#0x00
      0003E1                       1037 00158$:
      0003E1 C3               [12] 1038 	clr	c
      0003E2 EA               [12] 1039 	mov	a,r2
      0003E3 94 04            [12] 1040 	subb	a,#0x04
      0003E5 EB               [12] 1041 	mov	a,r3
      0003E6 94 00            [12] 1042 	subb	a,#0x00
      0003E8 50 13            [24] 1043 	jnc	00117$
                                   1044 ;	project.c:162: digit[y]=clock[y];
      0003EA EA               [12] 1045 	mov	a,r2
      0003EB 24 21            [12] 1046 	add	a,#_digit
      0003ED F9               [12] 1047 	mov	r1,a
      0003EE EA               [12] 1048 	mov	a,r2
      0003EF 24 27            [12] 1049 	add	a,#_clock
      0003F1 F8               [12] 1050 	mov	r0,a
      0003F2 86 07            [24] 1051 	mov	ar7,@r0
      0003F4 A7 07            [24] 1052 	mov	@r1,ar7
                                   1053 ;	project.c:161: for(unsigned y=0;y<4;y++)
      0003F6 0A               [12] 1054 	inc	r2
      0003F7 BA 00 E7         [24] 1055 	cjne	r2,#0x00,00158$
      0003FA 0B               [12] 1056 	inc	r3
      0003FB 80 E4            [24] 1057 	sjmp	00158$
      0003FD                       1058 00117$:
                                   1059 ;	project.c:163: display(digit);
      0003FD 90 00 21         [24] 1060 	mov	dptr,#_digit
      000400 75 F0 40         [24] 1061 	mov	b,#0x40
      000403 C0 06            [24] 1062 	push	ar6
      000405 12 00 DD         [24] 1063 	lcall	_display
      000408 D0 06            [24] 1064 	pop	ar6
                                   1065 ;	project.c:164: p++;
      00040A 0E               [12] 1066 	inc	r6
                                   1067 ;	project.c:165: if(p==120){
      00040B BE 78 C1         [24] 1068 	cjne	r6,#0x78,00124$
                                   1069 ;	project.c:166: while(p<=240){
      00040E 8E 07            [24] 1070 	mov	ar7,r6
      000410                       1071 00119$:
      000410 EF               [12] 1072 	mov	a,r7
      000411 24 0F            [12] 1073 	add	a,#0xff - 0xf0
      000413 40 34            [24] 1074 	jc	00121$
                                   1075 ;	project.c:167: for(unsigned y=0;y<4;y++)
      000415 7A 00            [12] 1076 	mov	r2,#0x00
      000417 7B 00            [12] 1077 	mov	r3,#0x00
      000419                       1078 00161$:
      000419 C3               [12] 1079 	clr	c
      00041A EA               [12] 1080 	mov	a,r2
      00041B 94 04            [12] 1081 	subb	a,#0x04
      00041D EB               [12] 1082 	mov	a,r3
      00041E 94 00            [12] 1083 	subb	a,#0x00
      000420 50 17            [24] 1084 	jnc	00118$
                                   1085 ;	project.c:168: digit[y]=clock[y+4];
      000422 EA               [12] 1086 	mov	a,r2
      000423 24 21            [12] 1087 	add	a,#_digit
      000425 F9               [12] 1088 	mov	r1,a
      000426 8A 04            [24] 1089 	mov	ar4,r2
      000428 74 04            [12] 1090 	mov	a,#0x04
      00042A 2C               [12] 1091 	add	a,r4
      00042B 24 27            [12] 1092 	add	a,#_clock
      00042D F8               [12] 1093 	mov	r0,a
      00042E 86 04            [24] 1094 	mov	ar4,@r0
      000430 A7 04            [24] 1095 	mov	@r1,ar4
                                   1096 ;	project.c:167: for(unsigned y=0;y<4;y++)
      000432 0A               [12] 1097 	inc	r2
      000433 BA 00 E3         [24] 1098 	cjne	r2,#0x00,00161$
      000436 0B               [12] 1099 	inc	r3
      000437 80 E0            [24] 1100 	sjmp	00161$
      000439                       1101 00118$:
                                   1102 ;	project.c:169: display(digit);
      000439 90 00 21         [24] 1103 	mov	dptr,#_digit
      00043C 75 F0 40         [24] 1104 	mov	b,#0x40
      00043F C0 07            [24] 1105 	push	ar7
      000441 12 00 DD         [24] 1106 	lcall	_display
      000444 D0 07            [24] 1107 	pop	ar7
                                   1108 ;	project.c:170: p++;							
      000446 0F               [12] 1109 	inc	r7
      000447 80 C7            [24] 1110 	sjmp	00119$
      000449                       1111 00121$:
                                   1112 ;	project.c:172: p=0;
      000449 7E 00            [12] 1113 	mov	r6,#0x00
      00044B 80 82            [24] 1114 	sjmp	00124$
      00044D                       1115 00126$:
                                   1116 ;	project.c:175: func_button=0;
      00044D 7D 00            [12] 1117 	mov	r5,#0x00
      00044F                       1118 00130$:
                                   1119 ;	project.c:179: unsigned char num=index;
      00044F AF 37            [24] 1120 	mov	r7,_main_index_131074_23
                                   1121 ;	project.c:180: if(func_button==1 && (choose==10 || choose==11) && num>=0 && num<10){
      000451 BD 01 02         [24] 1122 	cjne	r5,#0x01,00327$
      000454 80 03            [24] 1123 	sjmp	00328$
      000456                       1124 00327$:
      000456 02 02 BD         [24] 1125 	ljmp	00152$
      000459                       1126 00328$:
      000459 74 0A            [12] 1127 	mov	a,#0x0a
      00045B B5 30 04         [24] 1128 	cjne	a,_main_choose_65537_20,00329$
      00045E 74 01            [12] 1129 	mov	a,#0x01
      000460 80 01            [24] 1130 	sjmp	00330$
      000462                       1131 00329$:
      000462 E4               [12] 1132 	clr	a
      000463                       1133 00330$:
      000463 FE               [12] 1134 	mov	r6,a
      000464 70 0A            [24] 1135 	jnz	00150$
      000466 74 0B            [12] 1136 	mov	a,#0x0b
      000468 B5 30 02         [24] 1137 	cjne	a,_main_choose_65537_20,00332$
      00046B 80 03            [24] 1138 	sjmp	00333$
      00046D                       1139 00332$:
      00046D 02 02 BD         [24] 1140 	ljmp	00152$
      000470                       1141 00333$:
      000470                       1142 00150$:
      000470 BF 0A 00         [24] 1143 	cjne	r7,#0x0a,00334$
      000473                       1144 00334$:
      000473 40 03            [24] 1145 	jc	00335$
      000475 02 02 BD         [24] 1146 	ljmp	00152$
      000478                       1147 00335$:
                                   1148 ;	project.c:181: while(n1!=4){
      000478 AF 31            [24] 1149 	mov	r7,_main_n1_65537_20
      00047A                       1150 00138$:
      00047A BF 04 02         [24] 1151 	cjne	r7,#0x04,00336$
      00047D 80 45            [24] 1152 	sjmp	00199$
      00047F                       1153 00336$:
                                   1154 ;	project.c:182: unsigned char tt=read();
      00047F C0 07            [24] 1155 	push	ar7
      000481 C0 06            [24] 1156 	push	ar6
      000483 12 01 FB         [24] 1157 	lcall	_read
      000486 AC 82            [24] 1158 	mov	r4,dpl
      000488 D0 06            [24] 1159 	pop	ar6
      00048A D0 07            [24] 1160 	pop	ar7
                                   1161 ;	project.c:183: if(tt!=16 && flag==0){
      00048C BC 10 02         [24] 1162 	cjne	r4,#0x10,00337$
      00048F 80 1A            [24] 1163 	sjmp	00134$
      000491                       1164 00337$:
      000491 E5 32            [12] 1165 	mov	a,_main_flag_65537_20
      000493 70 16            [24] 1166 	jnz	00134$
                                   1167 ;	project.c:184: digit[n1]=seg[tt];
      000495 EF               [12] 1168 	mov	a,r7
      000496 24 21            [12] 1169 	add	a,#_digit
      000498 F9               [12] 1170 	mov	r1,a
      000499 EC               [12] 1171 	mov	a,r4
      00049A 24 17            [12] 1172 	add	a,#_seg
      00049C F8               [12] 1173 	mov	r0,a
      00049D 86 03            [24] 1174 	mov	ar3,@r0
      00049F A7 03            [24] 1175 	mov	@r1,ar3
                                   1176 ;	project.c:185: reset_digit[n1]=tt;
      0004A1 EF               [12] 1177 	mov	a,r7
      0004A2 24 33            [12] 1178 	add	a,#_main_reset_digit_65537_20
      0004A4 F8               [12] 1179 	mov	r0,a
      0004A5 A6 04            [24] 1180 	mov	@r0,ar4
                                   1181 ;	project.c:186: n1++;
      0004A7 0F               [12] 1182 	inc	r7
                                   1183 ;	project.c:187: flag=1;
      0004A8 75 32 01         [24] 1184 	mov	_main_flag_65537_20,#0x01
      0004AB                       1185 00134$:
                                   1186 ;	project.c:189: if(tt==16)
      0004AB BC 10 03         [24] 1187 	cjne	r4,#0x10,00137$
                                   1188 ;	project.c:190: flag=0;
      0004AE 75 32 00         [24] 1189 	mov	_main_flag_65537_20,#0x00
      0004B1                       1190 00137$:
                                   1191 ;	project.c:191: display(digit);	
      0004B1 90 00 21         [24] 1192 	mov	dptr,#_digit
      0004B4 75 F0 40         [24] 1193 	mov	b,#0x40
      0004B7 C0 07            [24] 1194 	push	ar7
      0004B9 C0 06            [24] 1195 	push	ar6
      0004BB 12 00 DD         [24] 1196 	lcall	_display
      0004BE D0 06            [24] 1197 	pop	ar6
      0004C0 D0 07            [24] 1198 	pop	ar7
      0004C2 80 B6            [24] 1199 	sjmp	00138$
      0004C4                       1200 00199$:
      0004C4 8F 31            [24] 1201 	mov	_main_n1_65537_20,r7
                                   1202 ;	project.c:194: if(choose==10){
      0004C6 EE               [12] 1203 	mov	a,r6
      0004C7 60 2E            [24] 1204 	jz	00142$
                                   1205 ;	project.c:195: minute=reset_digit[0]*10+reset_digit[1];									
      0004C9 E5 33            [12] 1206 	mov	a,_main_reset_digit_65537_20
      0004CB 75 F0 0A         [24] 1207 	mov	b,#0x0a
      0004CE A4               [48] 1208 	mul	ab
      0004CF 25 34            [12] 1209 	add	a,(_main_reset_digit_65537_20 + 0x0001)
      0004D1 F5 11            [12] 1210 	mov	_minute,a
                                   1211 ;	project.c:196: second=reset_digit[2]*10+reset_digit[3];
      0004D3 E5 35            [12] 1212 	mov	a,(_main_reset_digit_65537_20 + 0x0002)
      0004D5 75 F0 0A         [24] 1213 	mov	b,#0x0a
      0004D8 A4               [48] 1214 	mul	ab
      0004D9 25 36            [12] 1215 	add	a,(_main_reset_digit_65537_20 + 0x0003)
      0004DB F5 12            [12] 1216 	mov	_second,a
                                   1217 ;	project.c:197: digit[3]=seg[(second%10)];									
      0004DD AE 12            [24] 1218 	mov	r6,_second
      0004DF 7F 00            [12] 1219 	mov	r7,#0x00
      0004E1 75 38 0A         [24] 1220 	mov	__modsint_PARM_2,#0x0a
                                   1221 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0004E4 8F 39            [24] 1222 	mov	(__modsint_PARM_2 + 1),r7
      0004E6 8E 82            [24] 1223 	mov	dpl,r6
      0004E8 8F 83            [24] 1224 	mov	dph,r7
      0004EA 12 05 AA         [24] 1225 	lcall	__modsint
      0004ED E5 82            [12] 1226 	mov	a,dpl
      0004EF FE               [12] 1227 	mov	r6,a
      0004F0 24 17            [12] 1228 	add	a,#_seg
      0004F2 F9               [12] 1229 	mov	r1,a
      0004F3 87 07            [24] 1230 	mov	ar7,@r1
      0004F5 8F 24            [24] 1231 	mov	(_digit + 0x0003),r7
      0004F7                       1232 00142$:
                                   1233 ;	project.c:199: if(choose==11){
      0004F7 74 0B            [12] 1234 	mov	a,#0x0b
      0004F9 B5 30 17         [24] 1235 	cjne	a,_main_choose_65537_20,00144$
                                   1236 ;	project.c:200: memory[0]=reset_digit[0]*10+reset_digit[1];
      0004FC E5 33            [12] 1237 	mov	a,_main_reset_digit_65537_20
      0004FE 75 F0 0A         [24] 1238 	mov	b,#0x0a
      000501 A4               [48] 1239 	mul	ab
      000502 25 34            [12] 1240 	add	a,(_main_reset_digit_65537_20 + 0x0001)
      000504 F5 25            [12] 1241 	mov	_memory,a
                                   1242 ;	project.c:201: memory[1]=reset_digit[2]*10+reset_digit[3];
      000506 E5 35            [12] 1243 	mov	a,(_main_reset_digit_65537_20 + 0x0002)
      000508 75 F0 0A         [24] 1244 	mov	b,#0x0a
      00050B A4               [48] 1245 	mul	ab
      00050C FF               [12] 1246 	mov	r7,a
      00050D E5 36            [12] 1247 	mov	a,(_main_reset_digit_65537_20 + 0x0003)
      00050F FE               [12] 1248 	mov	r6,a
      000510 2F               [12] 1249 	add	a,r7
      000511 F5 26            [12] 1250 	mov	(_memory + 0x0001),a
      000513                       1251 00144$:
                                   1252 ;	project.c:203: func_button=0;												
      000513 7D 00            [12] 1253 	mov	r5,#0x00
                                   1254 ;	project.c:206: }
      000515 02 02 BD         [24] 1255 	ljmp	00152$
                                   1256 	.area CSEG    (CODE)
                                   1257 	.area CONST   (CODE)
      00061C                       1258 _sheet:
      00061C 05 FB                 1259 	.byte #0x05, #0xfb	; 64261
      00061E 8C F8                 1260 	.byte #0x8c, #0xf8	; 63628
      000620 5C F9                 1261 	.byte #0x5c, #0xf9	; 63836
      000622 15 FA                 1262 	.byte #0x15, #0xfa	; 64021
      000624 68 FA                 1263 	.byte #0x68, #0xfa	; 64104
      000626 05 FB                 1264 	.byte #0x05, #0xfb	; 64261
      000628 8C F8                 1265 	.byte #0x8c, #0xf8	; 63628
      00062A 8C F8                 1266 	.byte #0x8c, #0xf8	; 63628
      00062C 90 FB                 1267 	.byte #0x90, #0xfb	; 64400
      00062E 68 FA                 1268 	.byte #0x68, #0xfa	; 64104
      000630 05 FB                 1269 	.byte #0x05, #0xfb	; 64261
      000632 90 FB                 1270 	.byte #0x90, #0xfb	; 64400
      000634 0C FC                 1271 	.byte #0x0c, #0xfc	; 64524
      000636 46 FC                 1272 	.byte #0x46, #0xfc	; 64582
      000638 8C F8                 1273 	.byte #0x8c, #0xf8	; 63628
      00063A 8C F8                 1274 	.byte #0x8c, #0xf8	; 63628
      00063C 68 FA                 1275 	.byte #0x68, #0xfa	; 64104
      00063E 05 FB                 1276 	.byte #0x05, #0xfb	; 64261
      000640 68 FA                 1277 	.byte #0x68, #0xfa	; 64104
      000642 15 FA                 1278 	.byte #0x15, #0xfa	; 64021
      000644 5C F9                 1279 	.byte #0x5c, #0xf9	; 63836
      000646 15 FA                 1280 	.byte #0x15, #0xfa	; 64021
      000648 68 FA                 1281 	.byte #0x68, #0xfa	; 64104
      00064A 15 FA                 1282 	.byte #0x15, #0xfa	; 64021
      00064C 5C F9                 1283 	.byte #0x5c, #0xf9	; 63836
      00064E 8C F8                 1284 	.byte #0x8c, #0xf8	; 63628
      000650 5C F9                 1285 	.byte #0x5c, #0xf9	; 63836
      000652 15 FA                 1286 	.byte #0x15, #0xfa	; 64021
      000654 8C F8                 1287 	.byte #0x8c, #0xf8	; 63628
      000656 5C F9                 1288 	.byte #0x5c, #0xf9	; 63836
                                   1289 	.area XINIT   (CODE)
                                   1290 	.area CABS    (ABS,CODE)
