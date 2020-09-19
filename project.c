#include <8051.h>
#define PERIOD 65536-12500

#define C 65536-(1000000/262/2)
#define CS 65536-(1000000/277/2)
#define D 65536-(1000000/294/2)
#define DS 65536-(1000000/311/2)
#define E 65536-(1000000/330/2)
#define F 65536-(1000000/349/2)
#define FS 65536-(1000000/370/2)
#define G 65536-(1000000/392/2)
#define GS 65536-(1000000/415/2)
#define A 65536-(1000000/440/2)
#define AS 65536-(1000000/466/2)
#define B 65536-(1000000/494/2)

#define HC 65536-(1000000/524/2)
#define HCS 65536-(1000000/(2*277)/2)
#define HD 65536-(1000000/(2*294)/2)
#define HDS 65536-(1000000/(2*311)/2)
#define HE 65536-(1000000/(2*330)/2)
#define HFS 65536-(1000000/(2*370)/2)
#define HG 65536-(1000000/(2*392)/2)
#define HGS 65536-(1000000/(2*415)/2)
#define HA 65536-(1000000/(2*440)/2)
#define HAS 65536-(1000000/(2*466)/2)
#define HB 65536-(1000000/(2*494)/2)

unsigned char counter= 0, minute= 10, second= 0, counter_1= 0, delay=0,tone=0,play=0;
unsigned char seg[] = {0xC0,0xF9,0xA4,0xB0,0X99,0x92,0x82,0xD8,0x80,0x98};
unsigned char digit[] = {0xC0,0xC0,0xC0,0xC0};
unsigned char memory[] = {100,100};
unsigned char clock[] = {0xA4,0xC0,0xA4,0xC0,0xC0,0x82,0xF9,0x92};

const unsigned sheet[]={
	G,C,D,E,F,G,C,C,A,F,G,A,B,HC,C,	
	C,F,G,F,E,D,E,F,E,D,C,D,E,C,D	
};

unsigned char size = sizeof(sheet)/sizeof(sheet[0])-1;

void display(unsigned char *digit){
    for(int i= 0; i< 4 ;i++){
        P2 = ~(0xF1<< i);
        P0 = digit[i];
        for(unsigned j= 0; j< 1000; j++);
    }
}

void Timer0_ISR() __interrupt(1)__using(1){
    TH0 = (PERIOD>> 8);
    TL0 = (PERIOD& 0xFF);
    counter++;
    if(counter == 80){
    	second++;  		
	 	counter= 0;    		
    	if(second== 60){
    		second= 0;
    		minute++;    			
		}
	}			
	counter_1++;
	if(counter_1==45){
	    tone++;
	    TH1 = (sheet[tone] >> 8);
	    TL1 = (sheet[tone] & 0xFF);
	    counter_1= 0;
	    if(tone==size)
	    	tone=0;	
	}
	
	if(minute>=24)
		minute=0;
	if(second>=60)
		second=0;
	if(play==0)
		tone=0;							 	
}

void Timer1() __interrupt(3)__using(1){
	TH1 = (sheet[tone] >> 8);
    TL1 = (sheet[tone] & 0xFF);
    
    if((minute==memory[0]) && (second==memory[1])){
    	play=1;	
    	delay=0;
	}		  	
	if(play==1)
		P3= ~P3;  	
}
unsigned char read(){
	unsigned char button= 0;
    for(int row=0; row<4; row++){
        P1 = ~(0x01<<row);
        if(0xF0 != (P1 & 0xF0)){
            unsigned k = P1 & 0xF0;
            for(int col=0; col<4; col++){
                if(!(k & (0x10<<col)) && (button==0)){
                	button=1;
                    return 4*(3-row)+3-col;                    
                }
            }
        }        	
    }
    button=0;
	return 16;	
}

void main() {
    TH0= (PERIOD>> 8);
    TL0= (PERIOD& 0xFF);
    TMOD= 0x11;
    TCON= 0x50;
    IE= 0x8A; 
	unsigned char choose= 16, n1=0,tmp=16,func_button= 0,flag=0;
	unsigned char reset_digit[4];
	
	while(1){
		if(func_button==0){
			digit[0]=seg[(minute/10)];
			digit[1]=seg[(minute%10)];
			digit[2]=seg[(second/10)];
			digit[3]=seg[(second%10)];					
		}
		display(digit);	
		
	    unsigned char index=read();
					    
        if(func_button== 0)
			choose=index;	                 
            if(func_button== 0 && choose> 9 && choose< 16){ 
			choose=index;               		
            func_button=1;
			if(choose== 10 || choose== 11){
				n1=0;
				for(unsigned z=0;z<4;z++)
					digit[z]=0xBF;
			}
			if(choose==12){
				play=0;
				delay=0;
				func_button=0;
				memory[0]= 100;
				memory[1]= 100;	
			}
			if(choose== 13){
				play= 0;
				func_button= 0;
				if(delay== 0){
					memory[1]=second+10;
					if(memory[1]>=60){
						memory[1]-=60;
						memory[0]+=1;
					}
					delay=1;									
				}								
			}
			if(choose==15){
				unsigned char p=0;
				while(read()!=16){
					for(unsigned y=0;y<4;y++)
						digit[y]=clock[y];
					display(digit);
					p++;
					if(p==120){
						while(p<=240){
							for(unsigned y=0;y<4;y++)
								digit[y]=clock[y+4];
							display(digit);
							p++;							
						}
						p=0;
					}	
				}
				func_button=0;
			}													                 	
		}
						
		unsigned char num=index;
		if(func_button==1 && (choose==10 || choose==11) && num>=0 && num<10){
			while(n1!=4){
				unsigned char tt=read();
				if(tt!=16 && flag==0){
					digit[n1]=seg[tt];
					reset_digit[n1]=tt;//
					n1++;
					flag=1;
				}
				if(tt==16)
					flag=0;
				display(digit);	
			}

			if(choose==10){
				minute=reset_digit[0]*10+reset_digit[1];									
				second=reset_digit[2]*10+reset_digit[3];
				digit[3]=seg[(second%10)];									
			}					
			if(choose==11){
				memory[0]=reset_digit[0]*10+reset_digit[1];
				memory[1]=reset_digit[2]*10+reset_digit[3];
			}
			func_button=0;												
		}
    }
}
