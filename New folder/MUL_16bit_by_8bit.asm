;Multiplication of 16 bit number by 8 bit number
;USING MUL OPERATION
;MUL:: 89BCH*3F = 21E544
		MOV R5, #89H
		MOV R4, #0BCH
		MOV R3, #3FH
		CLR A
		MOV R0, A
		MOV R1, A
		MOV R2, A

;First mul
		MOV A, R4
		MOV B, R3
		MUL AB
		MOV R0, A
		MOV R1, B

;Second mul
		MOV A, R5
		MOV B, R3
		MUL AB
		ADD A, R1
		MOV R1, A
		JNC next
		INC B
next: 	MOV R2, B
;RESULT
		MOV 70H, R2
		MOV 71H, R1
		MOV 72H, R0
here: 	SJMP here

