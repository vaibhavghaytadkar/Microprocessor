	MOV R0,#25H

LOOP1:
	ADD A,#0ECH
	JNC HERE
	INC R6
HERE:
	DJNZ R0,LOOP1
	MOV R7,A
NEXT: SJMP NEXT