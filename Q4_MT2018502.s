  AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
 	
	   MOV R1,#10 ;Initializing value of registers with some numbers
	   MOV R2,#20 
	   MOV R3,#30  
	   MOV R4,#40  
	   
       CMP R1, R2
       ITTEE LE		; Nested If then else block will not work 
       ITE LE
	   MOVGT R2, R0 ; Even if we use ITTEE, ITE block should have 3 statements not greater than that.
	   MOVLE R2, R1 ; So If then Else statement will not work
       MOVGE R1, R4 ; It produces UNPREDICTABLE results
	   
	   
stop    B stop ; stop program
     ENDFUNC
     END 
		