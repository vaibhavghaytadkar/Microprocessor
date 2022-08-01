;; Adding 10 digits using down-to-up loop
		CLR A
		MOV R0, #01
loop:	ADD A, R0
		INC R0
		CJNE R0, #11, loop
		MOV 70H, A 
here:	SJMP here