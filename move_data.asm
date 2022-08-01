; Move 4bytes of data from 0050H to 70H

		ORG 0050H
		DB 01H, 02H, 03H, 04H
		ORG 0000H
		MOV DPTR, #0050H
		MOV R1, #04
		MOV R0, #70H
loop:	CLR A
		MOVC A, @A+DPTR
		MOV @R0, A
		INC R0
		INC DPTR
		DJNZ R1, loop
here:	SJMP here
