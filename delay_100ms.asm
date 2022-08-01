		value1 EQU 0C3H
		value2 EQU 0FFH
		MOV R0, #value1
loop: 	MOV R1, #value2
again: 	DJNZ R1, again
		DJNZ R0, loop
here: 	SJMP here