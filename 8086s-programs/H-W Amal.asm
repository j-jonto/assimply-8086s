.model small
.stack 100h

.data
num1 Dw 1111h,1111h,1111h,1111h
num2 Dw 1111h,1111h,1111h,1111h
sum  Dw 4 Dup(?) 

.code
mov ax,@data                                               
mov ds,ax

mov cl,0
lea si,num1  
lea di,num2
lea bx,sum 

repeating: mov ax,[si]   
add ax,[di]
mov [bx],ax
add si,2
add di,2
add bx,2
inc cl
cmp cl,4
jz ending 
jmp repeating

ending:
mov ah,4ch
int 21h 
end