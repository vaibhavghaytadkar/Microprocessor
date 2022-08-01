; Add first 10 integers and store in 70H
		CLR A
		MOV R0, #10 ;Storing intital value
loop:	ADD A, R0
		DJNZ R0, loop
		MOV 70H, A
here:	SJMP here



