
ORG 0000H
MOV TMOD,#01H
UP: 
	SETB P3.2
	LCALL DELAY
	CLR P3.2
	LCALL DELAY
	SJMP UP
DELAY:
	MOV TH0,#0FEH
	MOV TL0,#0CH
	CLR TF0
	SETB TR0

HERE:JNB TF0,HERE
RET
END