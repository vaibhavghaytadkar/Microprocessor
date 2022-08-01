;------delay block-------
		MOV R1, #180
next:	MOV R0, #0FFH
again:	DJNZ R0, again
		DJNZ R1, next
here:	SJMP here