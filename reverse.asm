; Reverse of a number
include 'emu8086.inc'

org 100h

mov al, 123
mov bl, 10     
mov cl, 0

check:
    CMP al , 0
    
    JLE LoopEnd


div bl

mov bx,ax
mov al, 10
mul cl

mov cl,al
add cl, bh

mov al ,bl

mov bl,10  

jmp check


LoopEnd:
    mov ax,cx
    call print_num
    
define_print_num
define_print_num_uns                


