;to toggle all the bits of P0, P1, 
;and P2 every 1/4 of a second
;------Main Program---------------
again:	MOV A, #0FFH
		CPL A
		MOV P0, A
		MOV P1, A
		MOV P2, A
		ACALL delay
		SJMP again

;------Delay Block: 250ms---------
delay:	MOV R0, #02
L1:		MOV R1, #225
L2:		MOV R2, #0FFH
L3:		DJNZ R2, L3
		DJNZ R1, L2
		DJNZ R0, L1
		RET