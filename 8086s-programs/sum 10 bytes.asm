.model small
.stack 100h

.data
num1 DB 11h,11h,11h,11h,11h,11h,11h,11h,11h,11h
num2 DB 11h,11h,11h,11h,11h,11h,11h,11h,11h,11h
sum  DB 10 Dup('0') 

.code
mov ax,@data                                               

mov ds,ax

mov cl,10
lea si,num1  
lea di,num2
lea bx,sum 
repeating:
mov al,[si]   
add al,[di]
mov [bx],al
inc si
inc di
inc bx
dec cl
jnz repeating
mov ah,4ch
int 21h