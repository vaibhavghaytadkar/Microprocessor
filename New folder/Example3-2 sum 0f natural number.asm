	mov r3,#10
	clr a
	mov r6,a
	mov r1,#1
loop:
	add a,r1
	jnc next
	inc r6
next:
	inc r1
	djnz r3,loop
mov r7,a