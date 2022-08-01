;Program to perform addition of two
;Signed digits
		MOV A, #-128	;Number1
		MOV R0, #-2		;Number2
		ADD A, R0		;Add
		JNB OV, next	;If OV=1
		CPL A			;1's compl
		INC A			;2's compl
next:	MOV R1, A		;Saving result