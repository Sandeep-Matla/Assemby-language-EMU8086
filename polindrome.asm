; polyndrome
include 'emu8086.inc'

org 100h

;call scan_num

mov cx,727

mov n,cx

mov p,cx
 
mov cx,0

Check:
    cmp n,0
    
     JE checkPoly
     
    mov ax,n
    mov bx,10
    div bx
    
    
    mov n,ax
    mov bx,dx
    
    mov ax,10
    
    mul cx
    mov cx,ax
    
    mov dx,bx
    add cx,dx
    
    mov dx,0
    
    jmp Check

checkPoly:
    
    cmp cx,p
     
     JE poly
    
    print 'It is not a Ployndrome'
    RET
    
poly:
    
    print 'It is a polyndrome'
    RET


n dw 0
p dw 0

define_print_num
define_print_num_uns
define_scan_num