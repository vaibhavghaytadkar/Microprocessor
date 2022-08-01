;; Adding 10 even digits
		CLR A
		MOV R0, #02
loop:	ADD A, R0
		INC R0
		INC R0
		CJNE R0, #22, loop
		MOV 50H, A
here:	SJMP here