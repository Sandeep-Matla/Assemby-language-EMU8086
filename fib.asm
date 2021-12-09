;Sandeep Matla
;Fibonocci

include 'emu8086.inc'

mov al,1
mov bl,0

print ' Fibanocci Series is : '
printn
print '0 ,'

print ' 1 ,' 

mov cx,10

add al,bl
mov bh,al 

call print_num
print  ' , '

loopSt:
    
    mov bl,bh
    mov bh,al
    add al,bl
     
    
    call print_num
    print ' , '

    
    loop loopSt



define_print_num
define_print_num_uns