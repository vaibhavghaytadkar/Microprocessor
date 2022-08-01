;; Program to complement A 700 times		
		CLR A			;Clear A
		MOV A, #55H		;Moving value in A
		MOV R0, #10		;Intialising outer loop register R0 with 10
loop1: 	MOV R1, #70		;Intialising inner loop register R1 with 70
loop2:	CPL A			;Complement A
		DJNZ R1, loop2
		DJNZ R0, loop1

;;Running outer loop = 10times
;;Running inner loop = 70times
;;Total Running loop = 700 times	