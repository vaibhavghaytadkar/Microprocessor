;ADDTION OF 1-10
MOV R0,#0H
MOV R1,#0AH
LOOP : ADDC A,R0
		INC R0
		DJNZ R1,LOOP
MOV 80H,A