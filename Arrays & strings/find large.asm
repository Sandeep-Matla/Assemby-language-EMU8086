; find largest element in ana Array
include 'emu8086.inc'

print 'Enter eles into array :'
printn

lea si,a 
Arr_Read:
    
    cmp [si],'0'
        JE  read_exit;
    call scan_num
    printn
    mov [si],cl    
    inc si    
    sub bx,1     
    jmp Arr_Read

read_exit:    

lea si , a 
mov bx,0 ;max
check:
    cmp [si],'0'
        jE end
    mov al,[si]
    cmp bl,a
        JG greater
    inc si       
greater:
    mov bl,al
    inc si
    jmp check 
    
end:
    print 'Max in your array : '
    mov al,bl
    call print_num
       
ret   

a db 0,0,0,0,0,0,'0'

define_print_num
define_print_num_uns
Define_scan_num