.model small
.stack 100h
.data 
x DB 23,40,11,10,7
sum DB ?

.code
mov ax,@data
mov ds,ax
lea si,x
mov cl,5
mov ax,00
back:
add al,[si]
inc si
dec cl
jnz back

mov sum,al
mov ah,4ch
int 21h