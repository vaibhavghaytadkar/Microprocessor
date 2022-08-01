;multiplication of 8bit and 16 bit number
	MOV R0,#67H
	MOV R1,#1AH
	MOV R2,#2AH


	MOV A,R0
	MOV B,R2
	MUL AB
	MOV R7,A
	MOV R6,B

	MOV A,R0
	MOV B,R1
	MUL AB
	ADD A,R6
	MOV R6,A
	JNC NEXT
	INC B
NEXT:
	MOV R5,B
