	ORG 0000H
	MOV DPTR,#300H
	MOV R0,#5
	MOV R1,#70H
LOOP:
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	MOV @R1,A
	INC R1
	DJNZ R0,LOOP

	MOV R0,#5
	MOV R1,#5
	MOV R2,#60H
	MOV R3,#70H

LOOP1:
	CLR A
	MOV A,@R3
	
	
ORG 300H
DB 7H,5H,0AH,0CH,0BH
	