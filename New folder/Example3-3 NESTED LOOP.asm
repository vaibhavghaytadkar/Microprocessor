	MOV A,#0FFH
	MOV R0,#10
LOOP1:
	MOV R1,#70
LOOP2:
	CPL A
	MOV P1,A
	DJNZ R1,LOOP2
	DJNZ R0,LOOP1