;;Program to convert Binary to Gray
MOV A, #00101011B	;;Binary Number
MOV R0, A			;;Saving to R0
CLR C				;;Clearing C for Use in RRC
RRC A				;;General Formula
XRL A, R0
CLR C
here: SJMP here		