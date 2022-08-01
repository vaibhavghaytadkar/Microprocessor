;Add two 16-bit number stored in ROM
;from 0050H and store result in int.
;RAM from 70H

;-------PART-1-------------------
;Copy the data from int. ROM to
;internal RAM for use by other op.
		ORG 0050H
		DB 1AH, 2BH, 3CH, 4DH
		ORG 0000H
		MOV DPTR, #0050H
		MOV R0, #60H
		MOV R1, #04
loop:	CLR A
		MOVC A, @A+DPTR
		MOV @R0, A
		INC DPTR
		INC R0
		DJNZ R1, loop

;-------PART-2---------------
;Adding two-16 bit data
		CLR A
		MOV R0, #61H ;1st-number-LSB
		MOV A, 63H 	;2nd-number-LSB
		ADD A, @R0
		MOV 71H, A	;LSB of Result
		MOV A, 62H	;2nd-number-MSB
		DEC R0		;1st-number-MSB
		ADDC A, @R0
		MOV 70H, A	;MSB of Result
here:	SJMP here
		
		 


