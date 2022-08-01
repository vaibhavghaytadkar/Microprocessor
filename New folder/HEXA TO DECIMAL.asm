;convert hexadecimal to decimal
MOV A,#0CH
MOV B,#0AH
DIV AB
MOV R2,B
MOV B,#0AH
DIV AB
MOV R1,B
MOV R0,A