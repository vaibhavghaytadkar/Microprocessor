START:
	SETB P1.3
	LCALL DELAY
	LCALL DELAY
	CLR P1.3
	LCALL DELAY
	SJMP START
DELAY:
	MOV R5,#10
AGAIN:
	DJNZ R5,AGAIN
	RET
	END