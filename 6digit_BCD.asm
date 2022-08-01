		ORG 40H			;Storing data
		DB 11H, 22H, 33H, 44H, 55H, 66H
		MOV R0, #40H	;Storing address
		MOV R1, #06H	;No. of bits
		CLR A			;Clearing Acc
		MOV R7, A		;Storing prev A to R7
loop:	ADD A, @R0
		DA A
		INC R0
		DJNZ R1, loop