.model small
.stack 100h
.data 
msg db 'the factorial='
binary db 8 dup(' '), '$'
fact db ?
.code
mov ax,@data
mov ds,ax
les si,binary+7
call calculate
mov fact,al
call convert
call display
mov ah,4ch
int 21h
calculate proc
    mov dl,5
    mov al,5
    mov cx,4
b:   mul cx
    add dl,0
    cmp cx,1 
    jz end
    loopne b
    
    end:
    ret
calculate endp 

convert proc
    mov cx,8
 aa:mov bx,2
    div bx
    
    mov [si],ah
    or ah,30h
    dec si
    mov ah,00
    loop aa
    ret
    convert endp
display proc
    mov ah,9h
    lea dx,msg
    int 21h   
    ret 
    display endp
        
    

