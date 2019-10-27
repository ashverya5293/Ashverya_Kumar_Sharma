	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY 
__main  FUNCTION		
		
	MOV R0, #0x38; Loading three numbers in register
	MOV R1, #0x45; R0, R1, and R2
	MOV R2, #0x66;
		
	cmp R0, R1
	ble loop1
	cmp R0, R2
	ble loop2
			
	MOV R7, #0x1;  If value of R7 is 1 then first number is greatest
	b stop
		
loop1	cmp R1,R2 
		ble loop3
		MOV R7, #0x2; If value of R7 is 2 then Second number is greatest
		b stop

loop2	MOV R7, #0x3; If value of R7 is 3 then third number is greatest
		b stop
		
loop3	MOV R7, #0x3;	If value of R7 is 3 then third number is greatest	
		b stop

stop    B stop ; stop program
     ENDFUNC
     END