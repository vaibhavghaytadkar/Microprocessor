ORG 0
MOV SP,#70H
MOV R5,#66H
MOV R2,#7FH
MOV R7,#5DH
PUSH 5
PUSH 2
PUSH 7
CLR A
MOV R2,A
MOV R7,A
POP 2
POP 7 
POP 5