.model small
.stack 100h
.data
n1 dw 23bah,11f3h
n2 dw 2135h 
n3 dw  2 dup('0') 
n4 dw  3 dup('0') 
y dw 2 dup('0')
x  dw 3122h 
res dw 2dup('0')
.code
mov ax,@data
mov ds,ax
mov ax,n1
mul n2
mov n3+2,dx
mov n3,ax  
mov ax,n1+2
mul n2 
add ax,n3+2 
adc dx,00 
mov bx,n3
mov n4,bx
mov n4+2,ax
mov n4+4,dx 

mov ax,n4
mov dx,n4+2
div x

mov y,ax
mov y+2,dx
mov ax,n4+4
mov bx,x
div bl
add ax,n4
adc n4+2,00h  
mov dx,ax
mov res,dx

mov dx,n4+2
mov res+2,dx
   
mov ah,4ch
int 21h 
end
 