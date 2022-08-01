org 70h
		db 02h

org 00h
		mov dptr, #0070h
		mov sp, 70h
		mov a, 70h
		mov r7, a
		clr a
		movc a, @a+dptr
		mov 70h, a
		lcall factorial
		mov 71h, r7
		mov 72h, a
here:
		sjmp here


factorial:
		mov r0, 70h
		mov a, r0
		jnz loop
		ret
loop:
		djnz r0, again
		ret
again:
		jb f0, next
		push acc
		push b
		mov b, r7
		mov a, r0
		inc a
		mul ab
		pop b
		add a, b
		mov r7, a
		pop acc
next:
		mov b, r0
		mul ab
		jnb ov, skip
		setb f0
skip:
		sjmp loop		
