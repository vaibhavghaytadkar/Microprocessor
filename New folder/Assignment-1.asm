	ORG 00H
	MOV DPTR,#300H
	MOV R5,#8
	CLR A
	MOV R0,#60H
LOOP:
	CLR A
	MOVC A,@A+DPTR
	MOV @R0,A
	INC R0
	INC DPTR
	DJNZ R5,LOOP
ORG 300H
DB 11,12,13,15,16,17,18,19