	ORG 0000H
START:
	MOV R1,#10
	MOV DPTR,#400H
BACK:
	CLR A
	MOVC A,@A+DPTR
	MOV P1,A
	ACALL DELAY
	INC DPTR
	DJNZ R1,BACK
	SJMP START

DELAY:
	MOV R7,#25
LOOP:
	DJNZ R7,LOOP
	RET
	
	ORG 400H
	DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
END