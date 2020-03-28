.model small
.stack 100h
.data

x db 8 dup(' '),10,13,10,13,'$'
n db 255

.code
mov ax,@data
mov ds,ax
mov bx,1
gg:
lea si,x+7
mov cx,8
 
call calculate

call  print
dec n
cmp n,250
jnz gg
jmp end

calculate proc
mov al,n
cc:
shr al,1
jc aa
mov ah,0
or ah,30h    
mov [si],ah
jmp bb
aa:
mov ah,1
or ah,30h    
mov [si],ah
bb:
dec si
loop cc
ret
calculate endp

print proc 
mov ah,9
lea dx,x
int 21h
ret
print endp


end:
end                  