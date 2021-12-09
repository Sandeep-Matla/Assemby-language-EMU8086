; Searching in an Array

include 'emu8086.inc'

lea si , arr
                     
print 'Enter eles to Arr'
printn

Arr_Read:
    
    cmp [si],'0'
        JE  read_exit;
    call scan_num
    printn
    mov [si],cl
    inc si
     
    jmp Arr_Read

read_exit:    

Ask_Again:
    print 'Enter num to check in Array : '
    
    cmp cl,'e' ; Ask again loop break;
        Je exit
    call scan_num 
    printn
    ;mov cl,12
    lea si , arr
     
    Search:
        cmp [si],'0'
            JE search_exit
        cmp [si],cl
            JE Found
        inc si 
        jmp Search
    
    Found:
        print 'ELement Found'
        jmp Ask_again
    search_exit:
        print 'Element Not found'
        jmp Ask_again

exit:
    RET 
RET
  

arr db 0,0,0,0,0,'0'    ; len = 10
;n db 0 

define_print_num
define_print_num_uns
Define_scan_num