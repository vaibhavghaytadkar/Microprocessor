MOV A,#0
MOV R0,#10

LOOP:ADD A,#25
	DJNZ R0,LOOP
MOV R1,A
