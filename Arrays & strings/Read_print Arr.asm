;Read & print Array

include 'emu8086.inc' 

lea si , arr
;call scan_num 
mov cx,12
mov n,cl 
mov bx,5                         
                         
print 'Enter eles to Arr'
printn

Arr_Read:
    
    cmp bx,0
        JE  read_exit;
    call scan_num
    printn
    mov [si],cl    
    inc si    
    sub bx,1     
    jmp Arr_Read

read_exit:    

mov bx,5
lea si , arr 
print 'Your Array' 
    
print_arr:   

    cmp bx,0
        JE print_end
    mov al, [si]
    
    call print_num
    inc si
    sub bx,1
    
    jmp print_arr

print_end:
    RET    
 
RET

arr db 0,0,0,0,0 ; len=10   
n db 0 

define_print_num
define_print_num_uns
Define_scan_num