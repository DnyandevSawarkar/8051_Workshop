ORG 00H
SETB P2.0
MAIN: SETB P2.0
      CLR P2.1
ACALL DELAY
     CLR P2.0
     SETB P2.1
ACALL DELAY
SJMP MAIN
DELAY: MOV R4,#0FH
WAIT1: MOV R3,#00H
WAIT2: MOV R2,#00H
WAIT3: DJNZ R2,WAIT3
DJNZ R3,WAIT2
DJNZ R4,WAIT1
RET
END
