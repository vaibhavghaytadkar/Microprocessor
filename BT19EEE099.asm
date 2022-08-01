;Program to divide two byte hex number
;by a one byte hex number

ORG 0070H
DB 89H, BCH, 3FH
ORG 00H
main:	MOV DPTR, #0070H
		MOV R1, #30H
		MOV R5, #03
loop:	CLR A
		MOVC A, @A+DPTR 
		MOV @R1, A
		INC DPTR	
		INC R1
		DJNZ R5, loop

		MOV R1, 30H
		MOV R2, 31H
		MOV R3, 32H
		MOV R6, #00H
		MOV DPTR, #0000H

rep:	CLR C
		MOV A, R2
		SUBB A, R3
		MOV R2, A
		MOV A, R1
		SUBB A, #00H
		MOV R1, A
		JC rem
		INC DPTR
		SJMP rep

rem:	MOV A, R2
		ADD A, R3
		MOV R2, A
		MOV A, R1
		ADDC A, #00H
		MOV R1, A

		MOV 70H, DPH
		MOV 71H, DPL
		MOV 72H, R2

here:	SJMP here

