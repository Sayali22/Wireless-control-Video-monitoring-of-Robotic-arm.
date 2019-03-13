#include<regx51.h>
#include<stdio.h>

void delay(int d) {
 int i, j;
 for(i=0;i<d;i++) {
  for(j=0;j<255;j++) {
   ;
  }
 }
}


void main()
{
	unsigned char temp;
	while(1)
	{
 	    temp = P2;
    	temp = temp >> 4;
    	temp = temp & 0x0f;
    	if(temp == 5 || temp==6 || temp==7 || temp==9){
      		if(temp == 5){
        		P1 = 4;	// ARM Left
            }else if(temp == 6){
        		P1 = 8;	// ARM Right
       		}else if(temp == 7){
	       		P1 = 1;	// ARM Open
       		}else if(temp == 9){
        		P1 = 2; // ARM Close
        	}
		

    	}else{
      		P1 = 0;
    	}
		 delay(100);
	}
}
