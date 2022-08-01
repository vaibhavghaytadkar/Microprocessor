		MOV A, #00H		;Moving data to acc
		MOV 50H, #10	;Intialising loop variable
again: 	ADD A, #03		;Adding 3 to Acc
		DJNZ 50H, again	;Running loop