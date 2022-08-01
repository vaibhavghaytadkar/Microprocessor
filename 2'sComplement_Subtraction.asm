;Program to perform subtraction using 
;2's complement method
		MOV A, #12H	;Subtrahend
		CPL A		;1's comp
		INC A		;2's comp
		ADD A, #27H ;Adding to minuend
		CPL C		;Invert C
		JNC next
		CPL A
		INC A
next:	MOV R0, A


