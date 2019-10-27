	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY 
__main  FUNCTION 
        ; We can check fibonacci series in register R0,R1,R2
		MOV R0, #0x0 ; initializing R0 to 0
		MOV R1, #0x1 ; initializing R1 to 1
	

back	ADD R2 ,R1 ,R0 ; Adding R0 and R1 and store the result in R2
		MOV R0,R1 ;   Updating values of R0
		MOV R1,R2 ;   Updating values of R1
					
		B back ;  Transferring control back to the ADD operation

stop    B stop ; stop program
	ENDFUNC
	END