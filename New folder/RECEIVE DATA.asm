 	MOV TMOD ,#20H
	MOV TH1,#-6
	MOV SCON,#50H
	SETB TRI
HERE:
	JNB RI,HERE
	MOV A,SBUF
	MOV P1,A
	CLR RI
	SJMP HERE
