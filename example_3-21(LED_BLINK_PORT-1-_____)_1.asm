	MOV A,#00H
START:
	MOV P1,A
	ACALL DELAY
	CPL A
	SJMP START
DELAY:
	MOV R2,#7
LOOP1:
	MOV R1,#255
LOOP2:
	MOV R0,#255
LOOP3:
	DJNZ R0,LOOP3
	DJNZ R1,LOOP2
	DJNZ R1,LOOP1
	RET