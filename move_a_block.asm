;ADDTION OF 1-10
ORG 00H
MOV R0,#40H
MOV R1,#20H
MOV R2,#0AH
RPT:MOV A,@R0
	INC R0
	MOV @R1,A
	INC R1
	DJNZ R2,RPT
HERE: SJMP HERE
	 END2