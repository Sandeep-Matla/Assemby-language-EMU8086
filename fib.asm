;Fibonocci

include 'emu8086.inc'

mov al,1
mov bl,0

print '0'
printn
print '1'
printn 

mov cx,10

add al,bl
mov bh,al 

call print_num
printn

loopSt:
    
    mov bl,bh
    mov bh,al
    add al,bl
     
    
    call print_num
    printn

    
    loop loopSt



define_print_num
define_print_num_uns