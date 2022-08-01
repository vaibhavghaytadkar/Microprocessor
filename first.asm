		Value1 EQU 01h
		Value2 EQU 0FFH
	
again:	
		setb p3.5
		lcall delay
		clr p3.5
		lcall delay
		sjmp repeat
delay:	
		mov r0, #Value1
loop: 	mov r1,#Value2
again:	djnz r1, again
		djnz r0,loop
		ret

