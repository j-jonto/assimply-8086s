org 100h
List db 80,81,78,65,23,45,89,90,10,99
Result db ?
mov al,list
lea si,list+1
MOV Cl,0Ah
Again: 
CMP AL,[SI]
JNC repeat     ;carry flag equal zero that means AL > [SI]
MOV AL,[SI]
repeat:
INC SI
dec cl
jnz again
MOV Result,AL
Ret