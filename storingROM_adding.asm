		ORG 4000H
		DB 7BH, 6CH, F4H, 05H, 1EH, 94H
		ORG 0000H
		MOV SP, #69H
		MOV DPL, #00H
		MOV DPH, #40H
		MOV R0, #40H
		MOV R1, #06
loop:	CLR A
		MOVC A, @A+DPTR
		MOV @R0, A
		INC R0
		INC DPTR
		DJNZ R1, loop
;;Addition logic
		MOV DPH, 40H
		MOV DPL, 41H
		MOV R0, #43H	;Lower nibble
		MOV R1, #42H	;Higher nibble
		MOV R2, #02
again:	CLR A
		MOV A, @R0
		ADD A, DPL
		MOV DPL, A
		CLR A
		MOV A, @R1
		ADDC A, DPH
		MOV DPH, A
		INC R1
		INC R1
		INC R0
		INC R0
		DJNZ R2, again
here:	SJMP here
		
