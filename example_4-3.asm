	SETB P0.1
	MOV P1,#0FFH
AGAIN:
	JNB P0.1,AGAIN
	MOV A,P1
	CLR P0.2
	SETB P0.2   