	ORG 0
	MOV DPTR,#300H
	MOV A,#0FFH
	MOV P1,A
START:
	MOV A,P1
	MOVC A,@A+DPTR
	MOV P2,A
	SJMP START

	ORG 300H
XSQR_TABLE:
	DB 0,1,4,9,16,25,36,49,64,81
	END