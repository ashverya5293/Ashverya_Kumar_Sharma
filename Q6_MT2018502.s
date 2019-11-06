	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY
__main  FUNCTION
; GCD program  R3 shows the final value of GCD
		MOV R0, #6   ;Loading content of a in register r0  
		MOV R1, #15  ;Loading content of b in register r1
loop
loop2 	CMP R0, R1 ; Comparing two values
	BEQ equal ; Branch if R0 not equal to R1
  	BGT grt ; Branch if a is greater than b
	B less

grt	SUB R0, R1 ; Execute this line if b>a
	MOV R3,R0; R3 stores the result of GCD
	B loop

less SUB R1, R0; Execute this line if a>b
	 MOV R3,R1; R3 stores the result of GCD
	 
	B loop
	B loop2

equal
stop    B stop ; stop program
	ENDFUNC
	END
