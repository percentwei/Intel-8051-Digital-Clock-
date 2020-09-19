;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module project
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sheet
	.globl _main
	.globl _read
	.globl _Timer1
	.globl _Timer0_ISR
	.globl _display
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
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
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
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
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _size
	.globl _clock
	.globl _memory
	.globl _digit
	.globl _seg
	.globl _play
	.globl _tone
	.globl _delay
	.globl _counter_1
	.globl _second
	.globl _minute
	.globl _counter
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_counter::
	.ds 1
_minute::
	.ds 1
_second::
	.ds 1
_counter_1::
	.ds 1
_delay::
	.ds 1
_tone::
	.ds 1
_play::
	.ds 1
_seg::
	.ds 10
_digit::
	.ds 4
_memory::
	.ds 2
_clock::
	.ds 8
_size::
	.ds 1
_main_choose_65537_20:
	.ds 1
_main_n1_65537_20:
	.ds 1
_main_flag_65537_20:
	.ds 1
_main_reset_digit_65537_20:
	.ds 4
_main_index_131074_23:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_read_row_131072_13:
	.ds 2
_read_k_262144_15:
	.ds 2
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
	.ds	5
	reti
	.ds	7
	ljmp	_Timer1
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
;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
	mov	_counter,#0x00
;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
	mov	_minute,#0x0a
;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
	mov	_second,#0x00
;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
	mov	_counter_1,#0x00
;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
	mov	_delay,#0x00
;	project.c:29: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
	mov	_tone,#0x00
;	project.c:29: unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
	mov	_play,#0x00
;	project.c:30: unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
	mov	_seg,#0xc0
	mov	(_seg + 0x0001),#0xf9
	mov	(_seg + 0x0002),#0xa4
	mov	(_seg + 0x0003),#0xb0
	mov	(_seg + 0x0004),#0x99
	mov	(_seg + 0x0005),#0x92
	mov	(_seg + 0x0006),#0x82
	mov	(_seg + 0x0007),#0xd8
	mov	(_seg + 0x0008),#0x80
	mov	(_seg + 0x0009),#0x98
;	project.c:31: unsigned char digit[] = {0xC0,0xC0,0xC0,0xC0};
	mov	_digit,#0xc0
	mov	(_digit + 0x0001),#0xc0
	mov	(_digit + 0x0002),#0xc0
	mov	(_digit + 0x0003),#0xc0
;	project.c:32: unsigned char memory[] = {100,100};
	mov	_memory,#0x64
	mov	(_memory + 0x0001),#0x64
;	project.c:33: unsigned char clock[] = {0xA4,0xC0,0xA4,0xC0,0xC0,0x82,0xF9,0x92};
	mov	_clock,#0xa4
	mov	(_clock + 0x0001),#0xc0
	mov	(_clock + 0x0002),#0xa4
	mov	(_clock + 0x0003),#0xc0
	mov	(_clock + 0x0004),#0xc0
	mov	(_clock + 0x0005),#0x82
	mov	(_clock + 0x0006),#0xf9
	mov	(_clock + 0x0007),#0x92
;	project.c:40: unsigned char size = sizeof(sheet)/sizeof(sheet[0])-1;
	mov	_size,#0x1d
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
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;digit                     Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;j                         Allocated to registers r1 r2 
;------------------------------------------------------------
;	project.c:42: void display(unsigned char *digit){
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	project.c:43: for(int i= 0; i< 4 ;i++){
	mov	r3,#0x00
	mov	r4,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,#0x04
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	project.c:44: P2 = ~(0xF1<< i);
	mov	ar2,r3
	mov	b,r2
	inc	b
	mov	a,#0xf1
	sjmp	00132$
00130$:
	add	a,acc
00132$:
	djnz	b,00130$
	cpl	a
	mov	_P2,a
;	project.c:45: P0 = digit[i];
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_P0,a
;	project.c:46: for(unsigned j= 0; j< 1000; j++);
	mov	r1,#0x00
	mov	r2,#0x00
00104$:
	clr	c
	mov	a,r1
	subb	a,#0xe8
	mov	a,r2
	subb	a,#0x03
	jnc	00108$
	inc	r1
	cjne	r1,#0x00,00104$
	inc	r2
	sjmp	00104$
00108$:
;	project.c:43: for(int i= 0; i< 4 ;i++){
	inc	r3
	cjne	r3,#0x00,00107$
	inc	r4
	sjmp	00107$
00109$:
;	project.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	project.c:50: void Timer0_ISR() __interrupt(1)__using(1){
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	project.c:51: TH0 = (PERIOD>> 8);
	mov	_TH0,#0xcf
;	project.c:52: TL0 = (PERIOD& 0xFF);
	mov	_TL0,#0x2c
;	project.c:53: counter++;
	inc	_counter
;	project.c:54: if(counter == 80){
	mov	a,#0x50
	cjne	a,_counter,00104$
;	project.c:55: second++;  		
	inc	_second
;	project.c:56: counter= 0;    		
	mov	_counter,#0x00
;	project.c:57: if(second== 60){
	mov	a,#0x3c
	cjne	a,_second,00104$
;	project.c:58: second= 0;
	mov	_second,#0x00
;	project.c:59: minute++;    			
	inc	_minute
00104$:
;	project.c:62: counter_1++;
	inc	_counter_1
;	project.c:63: if(counter_1==45){
	mov	a,#0x2d
	cjne	a,_counter_1,00108$
;	project.c:64: tone++;
	inc	_tone
;	project.c:65: TH1 = (sheet[tone] >> 8);
	mov	a,_tone
	mov	b,#0x02
	mul	ab
	add	a,#_sheet
	mov	dpl,a
	mov	a,#(_sheet >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_TH1,r7
;	project.c:66: TL1 = (sheet[tone] & 0xFF);
	mov	_TL1,r6
;	project.c:67: counter_1= 0;
	mov	_counter_1,#0x00
;	project.c:68: if(tone==size)
	mov	a,_size
	cjne	a,_tone,00108$
;	project.c:69: tone=0;	
	mov	_tone,#0x00
00108$:
;	project.c:72: if(minute>=24)
	mov	a,#0x100 - 0x18
	add	a,_minute
	jnc	00110$
;	project.c:73: minute=0;
	mov	_minute,#0x00
00110$:
;	project.c:74: if(second>=60)
	mov	a,#0x100 - 0x3c
	add	a,_second
	jnc	00112$
;	project.c:75: second=0;
	mov	_second,#0x00
00112$:
;	project.c:76: if(play==0)
	mov	a,_play
;	project.c:77: tone=0;							 	
	jnz	00115$
	mov	_tone,a
00115$:
;	project.c:78: }
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1'
;------------------------------------------------------------
;	project.c:80: void Timer1() __interrupt(3)__using(1){
;	-----------------------------------------
;	 function Timer1
;	-----------------------------------------
_Timer1:
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	project.c:81: TH1 = (sheet[tone] >> 8);
	mov	a,_tone
	mov	b,#0x02
	mul	ab
	add	a,#_sheet
	mov	dpl,a
	mov	a,#(_sheet >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_TH1,r7
;	project.c:82: TL1 = (sheet[tone] & 0xFF);
	mov	_TL1,r6
;	project.c:84: if((minute==memory[0]) && (second==memory[1])){
	mov	a,_memory
	cjne	a,_minute,00102$
	mov	a,(_memory + 0x0001)
	cjne	a,_second,00102$
;	project.c:85: play=1;	
	mov	_play,#0x01
;	project.c:86: delay=0;
	mov	_delay,#0x00
00102$:
;	project.c:88: if(play==1)
	mov	a,#0x01
	cjne	a,_play,00106$
;	project.c:89: P3= ~P3;  	
	mov	a,_P3
	cpl	a
	mov	_P3,a
00106$:
;	project.c:90: }
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;button                    Allocated to registers 
;row                       Allocated with name '_read_row_131072_13'
;k                         Allocated with name '_read_k_262144_15'
;col                       Allocated to registers r0 r1 
;------------------------------------------------------------
;	project.c:91: unsigned char read(){
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	project.c:93: for(int row=0; row<4; row++){
	clr	a
	mov	r6,a
	mov	r7,a
	mov	_read_row_131072_13,a
	mov	(_read_row_131072_13 + 1),a
00112$:
	clr	c
	mov	a,_read_row_131072_13
	subb	a,#0x04
	mov	a,(_read_row_131072_13 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00141$
	ljmp	00107$
00141$:
;	project.c:94: P1 = ~(0x01<<row);
	mov	r3,_read_row_131072_13
	mov	b,r3
	inc	b
	mov	a,#0x01
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	cpl	a
	mov	_P1,a
;	project.c:95: if(0xF0 != (P1 & 0xF0)){
	mov	r2,_P1
	anl	ar2,#0xf0
	mov	r3,#0x00
	cjne	r2,#0xf0,00145$
	cjne	r3,#0x00,00145$
	sjmp	00113$
00145$:
;	project.c:96: unsigned k = P1 & 0xF0;
	mov	r2,_P1
	mov	r3,#0x00
	mov	a,#0xf0
	anl	a,r2
	mov	_read_k_262144_15,a
;	1-genFromRTrack replaced	mov	(_read_k_262144_15 + 1),#0x00
	mov	(_read_k_262144_15 + 1),r3
;	project.c:97: for(int col=0; col<4; col++){
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00113$
;	project.c:98: if(!(k & (0x10<<col)) && (button==0)){
	mov	b,r2
	inc	b
	mov	r4,#0x10
	mov	r5,#0x00
	sjmp	00148$
00147$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00148$:
	djnz	b,00147$
	mov	a,_read_k_262144_15
	anl	ar4,a
	mov	a,(_read_k_262144_15 + 1)
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jnz	00110$
;	project.c:100: return 4*(3-row)+3-col;                    
	mov	ar5,r6
	mov	a,#0x03
	clr	c
	subb	a,r5
	add	a,acc
	add	a,acc
	mov	r5,a
	inc	r5
	inc	r5
	inc	r5
	mov	ar4,r0
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	ret
00110$:
;	project.c:97: for(int col=0; col<4; col++){
	inc	r2
	cjne	r2,#0x00,00150$
	inc	r3
00150$:
	mov	ar0,r2
	mov	ar1,r3
	sjmp	00109$
00113$:
;	project.c:93: for(int row=0; row<4; row++){
	inc	_read_row_131072_13
	clr	a
	cjne	a,_read_row_131072_13,00151$
	inc	(_read_row_131072_13 + 1)
00151$:
	mov	r6,_read_row_131072_13
	mov	r7,(_read_row_131072_13 + 1)
	ljmp	00112$
00107$:
;	project.c:106: return 16;	
	mov	dpl,#0x10
;	project.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;choose                    Allocated with name '_main_choose_65537_20'
;n1                        Allocated with name '_main_n1_65537_20'
;tmp                       Allocated to registers 
;func_button               Allocated to registers r5 
;flag                      Allocated with name '_main_flag_65537_20'
;reset_digit               Allocated with name '_main_reset_digit_65537_20'
;index                     Allocated with name '_main_index_131074_23'
;z                         Allocated to registers r2 r6 
;p                         Allocated to registers r6 
;y                         Allocated to registers r2 r3 
;y                         Allocated to registers r2 r3 
;num                       Allocated to registers r7 
;tt                        Allocated to registers r4 
;------------------------------------------------------------
;	project.c:109: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	project.c:110: TH0= (PERIOD>> 8);
	mov	_TH0,#0xcf
;	project.c:111: TL0= (PERIOD& 0xFF);
	mov	_TL0,#0x2c
;	project.c:112: TMOD= 0x11;
	mov	_TMOD,#0x11
;	project.c:113: TCON= 0x50;
	mov	_TCON,#0x50
;	project.c:114: IE= 0x8A; 
	mov	_IE,#0x8a
;	project.c:115: unsigned char choose= 16, n1=0,tmp=16,func_button= 0,flag=0;
	mov	_main_choose_65537_20,#0x10
	mov	_main_n1_65537_20,#0x00
	mov	r5,#0x00
;	1-genFromRTrack replaced	mov	_main_flag_65537_20,#0x00
	mov	_main_flag_65537_20,r5
;	project.c:118: while(1){
00152$:
;	project.c:119: if(func_button==0){
	mov	a,r5
;	project.c:120: digit[0]=seg[(minute/10)];
	jnz	00102$
	mov	r2,_minute
	mov	r3,a
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	lcall	__divsint
	mov	a,dpl
	add	a,#_seg
	mov	r1,a
	mov	ar3,@r1
	mov	_digit,r3
;	project.c:121: digit[1]=seg[(minute%10)];
	mov	r2,_minute
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	a,dpl
	add	a,#_seg
	mov	r1,a
	mov	ar3,@r1
	mov	(_digit + 0x0001),r3
;	project.c:122: digit[2]=seg[(second/10)];
	mov	r2,_second
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	a,dpl
	add	a,#_seg
	mov	r1,a
	mov	ar3,@r1
	mov	(_digit + 0x0002),r3
;	project.c:123: digit[3]=seg[(second%10)];					
	mov	r2,_second
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	pop	ar5
	mov	a,r2
	add	a,#_seg
	mov	r1,a
	mov	ar3,@r1
	mov	(_digit + 0x0003),r3
00102$:
;	project.c:125: display(digit);	
	mov	dptr,#_digit
	mov	b,#0x40
	push	ar5
	lcall	_display
;	project.c:127: unsigned char index=read();
	lcall	_read
	mov	_main_index_131074_23,dpl
	pop	ar5
;	project.c:129: if(func_button== 0)
	mov	a,r5
	jnz	00104$
;	project.c:130: choose=index;	                 
	mov	_main_choose_65537_20,_main_index_131074_23
00104$:
;	project.c:131: if(func_button== 0 && choose> 9 && choose< 16){ 
	mov	a,r5
	jz	00302$
	ljmp	00130$
00302$:
	mov	a,_main_choose_65537_20
	add	a,#0xff - 0x09
	jc	00303$
	ljmp	00130$
00303$:
	mov	a,#0x100 - 0x10
	add	a,_main_choose_65537_20
	jnc	00304$
	ljmp	00130$
00304$:
;	project.c:132: choose=index;               		
	mov	_main_choose_65537_20,_main_index_131074_23
;	project.c:133: func_button=1;
	mov	r5,#0x01
;	project.c:134: if(choose== 10 || choose== 11){
	mov	a,#0x0a
	cjne	a,_main_index_131074_23,00305$
	sjmp	00106$
00305$:
	mov	a,#0x0b
	cjne	a,_main_index_131074_23,00107$
00106$:
;	project.c:135: n1=0;
	mov	_main_n1_65537_20,#0x00
;	project.c:136: for(unsigned z=0;z<4;z++)
	mov	r2,#0x00
	mov	r6,#0x00
00155$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r6
	subb	a,#0x00
	jnc	00107$
;	project.c:137: digit[z]=0xBF;
	mov	a,r2
	add	a,#_digit
	mov	r0,a
	mov	@r0,#0xbf
;	project.c:136: for(unsigned z=0;z<4;z++)
	inc	r2
	cjne	r2,#0x00,00155$
	inc	r6
	sjmp	00155$
00107$:
;	project.c:139: if(choose==12){
	mov	a,#0x0c
	cjne	a,_main_choose_65537_20,00110$
;	project.c:140: play=0;
	mov	_play,#0x00
;	project.c:141: delay=0;
	mov	_delay,#0x00
;	project.c:142: func_button=0;
	mov	r5,#0x00
;	project.c:143: memory[0]= 100;
	mov	_memory,#0x64
;	project.c:144: memory[1]= 100;	
	mov	(_memory + 0x0001),#0x64
00110$:
;	project.c:146: if(choose== 13){
	mov	a,#0x0d
	cjne	a,_main_choose_65537_20,00116$
;	project.c:147: play= 0;
;	project.c:148: func_button= 0;
;	project.c:149: if(delay== 0){
	clr	a
	mov	_play,a
	mov	r5,a
	mov	a,_delay
	jnz	00116$
;	project.c:150: memory[1]=second+10;
	mov	r6,_second
	mov	a,#0x0a
	add	a,r6
	mov	(_memory + 0x0001),a
;	project.c:151: if(memory[1]>=60){
	mov	r6,(_memory + 0x0001)
	cjne	r6,#0x3c,00315$
00315$:
	jc	00112$
;	project.c:152: memory[1]-=60;
	mov	a,r6
	add	a,#0xc4
	mov	(_memory + 0x0001),a
;	project.c:153: memory[0]+=1;
	mov	a,_memory
	mov	r6,a
	inc	a
	mov	_memory,a
00112$:
;	project.c:155: delay=1;									
	mov	_delay,#0x01
00116$:
;	project.c:158: if(choose==15){
	mov	a,#0x0f
	cjne	a,_main_choose_65537_20,00317$
	sjmp	00318$
00317$:
	ljmp	00130$
00318$:
;	project.c:159: unsigned char p=0;
	mov	r6,#0x00
;	project.c:160: while(read()!=16){
00124$:
	push	ar6
	lcall	_read
	mov	r2,dpl
	pop	ar6
	cjne	r2,#0x10,00319$
	sjmp	00126$
00319$:
;	project.c:161: for(unsigned y=0;y<4;y++)
	mov	r2,#0x00
	mov	r3,#0x00
00158$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	subb	a,#0x00
	jnc	00117$
;	project.c:162: digit[y]=clock[y];
	mov	a,r2
	add	a,#_digit
	mov	r1,a
	mov	a,r2
	add	a,#_clock
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
;	project.c:161: for(unsigned y=0;y<4;y++)
	inc	r2
	cjne	r2,#0x00,00158$
	inc	r3
	sjmp	00158$
00117$:
;	project.c:163: display(digit);
	mov	dptr,#_digit
	mov	b,#0x40
	push	ar6
	lcall	_display
	pop	ar6
;	project.c:164: p++;
	inc	r6
;	project.c:165: if(p==120){
	cjne	r6,#0x78,00124$
;	project.c:166: while(p<=240){
	mov	ar7,r6
00119$:
	mov	a,r7
	add	a,#0xff - 0xf0
	jc	00121$
;	project.c:167: for(unsigned y=0;y<4;y++)
	mov	r2,#0x00
	mov	r3,#0x00
00161$:
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	subb	a,#0x00
	jnc	00118$
;	project.c:168: digit[y]=clock[y+4];
	mov	a,r2
	add	a,#_digit
	mov	r1,a
	mov	ar4,r2
	mov	a,#0x04
	add	a,r4
	add	a,#_clock
	mov	r0,a
	mov	ar4,@r0
	mov	@r1,ar4
;	project.c:167: for(unsigned y=0;y<4;y++)
	inc	r2
	cjne	r2,#0x00,00161$
	inc	r3
	sjmp	00161$
00118$:
;	project.c:169: display(digit);
	mov	dptr,#_digit
	mov	b,#0x40
	push	ar7
	lcall	_display
	pop	ar7
;	project.c:170: p++;							
	inc	r7
	sjmp	00119$
00121$:
;	project.c:172: p=0;
	mov	r6,#0x00
	sjmp	00124$
00126$:
;	project.c:175: func_button=0;
	mov	r5,#0x00
00130$:
;	project.c:179: unsigned char num=index;
	mov	r7,_main_index_131074_23
;	project.c:180: if(func_button==1 && (choose==10 || choose==11) && num>=0 && num<10){
	cjne	r5,#0x01,00327$
	sjmp	00328$
00327$:
	ljmp	00152$
00328$:
	mov	a,#0x0a
	cjne	a,_main_choose_65537_20,00329$
	mov	a,#0x01
	sjmp	00330$
00329$:
	clr	a
00330$:
	mov	r6,a
	jnz	00150$
	mov	a,#0x0b
	cjne	a,_main_choose_65537_20,00332$
	sjmp	00333$
00332$:
	ljmp	00152$
00333$:
00150$:
	cjne	r7,#0x0a,00334$
00334$:
	jc	00335$
	ljmp	00152$
00335$:
;	project.c:181: while(n1!=4){
	mov	r7,_main_n1_65537_20
00138$:
	cjne	r7,#0x04,00336$
	sjmp	00199$
00336$:
;	project.c:182: unsigned char tt=read();
	push	ar7
	push	ar6
	lcall	_read
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	project.c:183: if(tt!=16 && flag==0){
	cjne	r4,#0x10,00337$
	sjmp	00134$
00337$:
	mov	a,_main_flag_65537_20
	jnz	00134$
;	project.c:184: digit[n1]=seg[tt];
	mov	a,r7
	add	a,#_digit
	mov	r1,a
	mov	a,r4
	add	a,#_seg
	mov	r0,a
	mov	ar3,@r0
	mov	@r1,ar3
;	project.c:185: reset_digit[n1]=tt;
	mov	a,r7
	add	a,#_main_reset_digit_65537_20
	mov	r0,a
	mov	@r0,ar4
;	project.c:186: n1++;
	inc	r7
;	project.c:187: flag=1;
	mov	_main_flag_65537_20,#0x01
00134$:
;	project.c:189: if(tt==16)
	cjne	r4,#0x10,00137$
;	project.c:190: flag=0;
	mov	_main_flag_65537_20,#0x00
00137$:
;	project.c:191: display(digit);	
	mov	dptr,#_digit
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_display
	pop	ar6
	pop	ar7
	sjmp	00138$
00199$:
	mov	_main_n1_65537_20,r7
;	project.c:194: if(choose==10){
	mov	a,r6
	jz	00142$
;	project.c:195: minute=reset_digit[0]*10+reset_digit[1];									
	mov	a,_main_reset_digit_65537_20
	mov	b,#0x0a
	mul	ab
	add	a,(_main_reset_digit_65537_20 + 0x0001)
	mov	_minute,a
;	project.c:196: second=reset_digit[2]*10+reset_digit[3];
	mov	a,(_main_reset_digit_65537_20 + 0x0002)
	mov	b,#0x0a
	mul	ab
	add	a,(_main_reset_digit_65537_20 + 0x0003)
	mov	_second,a
;	project.c:197: digit[3]=seg[(second%10)];									
	mov	r6,_second
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	a,dpl
	mov	r6,a
	add	a,#_seg
	mov	r1,a
	mov	ar7,@r1
	mov	(_digit + 0x0003),r7
00142$:
;	project.c:199: if(choose==11){
	mov	a,#0x0b
	cjne	a,_main_choose_65537_20,00144$
;	project.c:200: memory[0]=reset_digit[0]*10+reset_digit[1];
	mov	a,_main_reset_digit_65537_20
	mov	b,#0x0a
	mul	ab
	add	a,(_main_reset_digit_65537_20 + 0x0001)
	mov	_memory,a
;	project.c:201: memory[1]=reset_digit[2]*10+reset_digit[3];
	mov	a,(_main_reset_digit_65537_20 + 0x0002)
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	a,(_main_reset_digit_65537_20 + 0x0003)
	mov	r6,a
	add	a,r7
	mov	(_memory + 0x0001),a
00144$:
;	project.c:203: func_button=0;												
	mov	r5,#0x00
;	project.c:206: }
	ljmp	00152$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_sheet:
	.byte #0x05, #0xfb	; 64261
	.byte #0x8c, #0xf8	; 63628
	.byte #0x5c, #0xf9	; 63836
	.byte #0x15, #0xfa	; 64021
	.byte #0x68, #0xfa	; 64104
	.byte #0x05, #0xfb	; 64261
	.byte #0x8c, #0xf8	; 63628
	.byte #0x8c, #0xf8	; 63628
	.byte #0x90, #0xfb	; 64400
	.byte #0x68, #0xfa	; 64104
	.byte #0x05, #0xfb	; 64261
	.byte #0x90, #0xfb	; 64400
	.byte #0x0c, #0xfc	; 64524
	.byte #0x46, #0xfc	; 64582
	.byte #0x8c, #0xf8	; 63628
	.byte #0x8c, #0xf8	; 63628
	.byte #0x68, #0xfa	; 64104
	.byte #0x05, #0xfb	; 64261
	.byte #0x68, #0xfa	; 64104
	.byte #0x15, #0xfa	; 64021
	.byte #0x5c, #0xf9	; 63836
	.byte #0x15, #0xfa	; 64021
	.byte #0x68, #0xfa	; 64104
	.byte #0x15, #0xfa	; 64021
	.byte #0x5c, #0xf9	; 63836
	.byte #0x8c, #0xf8	; 63628
	.byte #0x5c, #0xf9	; 63836
	.byte #0x15, #0xfa	; 64021
	.byte #0x8c, #0xf8	; 63628
	.byte #0x5c, #0xf9	; 63836
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
