	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY
__main  FUNCTION

		MOV R0, #6 ;Loading content of a in register r0  
		MOV R1, #15;Loading content of b in register r1

loop2 	CMP R0, R1 ; Comparing two values
		BNE loop ; Branch if R0 not equal to R1
stop    B stop ; stop program

loop  	BGT grt ; Branch if a is greater than b

		SUB R1, R1, R0 ; Execute this line if b>a
		B loop1
grt 	SUB R0, R0, R1 ; Execute this line if a>b


loop1	CMP R0, R1
		BNE loop2
 
	ENDFUNC
	END
