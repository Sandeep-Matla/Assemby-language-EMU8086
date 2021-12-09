; Copying one array  to another

lea si,a
lea di,b

mov cx,4;

loopst:
    
    mov al,[si]
    mov [di],al
    
    inc si
    inc di
    
    loop loopst
    
ret

a db 10h,20h,30h,40h
b db 0,0,0,0