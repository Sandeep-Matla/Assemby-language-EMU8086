; Sandeep matla
; Reverse of a number
include 'emu8086.inc'

org 100h

print 'Enter num : '
call scan_num 
printn
mov ax, cx
mov bl, 10     
mov cx, 0

check:
    CMP al , 0
    
    JLE LoopEnd

mov ah,0
div bl

mov bx,ax
mov al, 10
mul cl

mov cx,ax
add cl, bh

mov al ,bl

mov bl,10  

jmp check


LoopEnd:    
    print 'reveres of num : '
    mov ax,cx
    call print_num
    
define_print_num
define_print_num_uns                
define_scan_num

