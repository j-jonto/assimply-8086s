org 100h
.data 
x dd 31fc10aah
y dd 0b132f45fh
res dd 00h
.code
mov ax,@data
mov ds,ax

mov ax,word ptr x
mov cx,word ptr x+2
mov bx,word ptr y
mov dx,word ptr y+2  
add ax,bx
adc cx,dx
mov word ptr res,ax 
mov word ptr res+2,cx 

end 