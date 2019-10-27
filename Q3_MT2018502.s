	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY 
__main  FUNCTION 

	MOV R0, #0x75; Moving immediate data into reg R0
	;MOV R0, #0x34; Uncomment if we want to check even number
	AND R0, R0, #0x1; Bitwise AND operation with last Bit determines whether number is ODD or EVEN
	; IF R0=0 EVEN number
	; IF R0=1 ODD number
 
stop    B stop ; stop program
	ENDFUNC
	END