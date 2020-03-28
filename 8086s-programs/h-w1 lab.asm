org 100h
.data              

A  DW 345FH,0B315H,262CH  
B  DW 0F3B2H,1121H,0FBCDH  
C  DW 3564H,0F2EDH,11CBH  
Equ  DW 3 DUP('0')

.code
mov ax,@data
mov ds,ax

mov ax,[324fh]
add ax,[3211h]
mov bx,A
adc bx,B
mov Equ,bx
mov bx,A+2
adc bx,B+2
mov Equ+2,bx
mov bx,A+4
adc bx,B+4
mov Equ+4,bx
clc
mov bx,C
sub Equ,bx
mov bx,C+2
sbb Equ+2,bx
mov bx,C+4
sbb Equ+4,bx

sub Equ,ax

mov ah,4ch
int 21h
end