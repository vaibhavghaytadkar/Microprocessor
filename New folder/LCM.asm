;LCM
	MOV R0,#3
	MOV R1,#4
LOOP:
	MOV A,R0
	MOV B,R1
	DIV AB
	MOV A,B
	CJNE A,#00H,NEXT
	MOV R5,00H
	SJMP EXIT

NEXT:
	MOV A,R0
	ADD
 A,R0
	MOV R0,A
	SJMP LOOP
EXIT:
	NOP
	END