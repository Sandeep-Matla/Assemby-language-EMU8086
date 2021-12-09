; program to Sort an Array

include 'emu8086.inc'
lea si,arr
mov dl,6

Sort:
    lea si, arr
    pass:
        cmp [si+1],'0'
            JE pass_end
        mov al ,[si+1]
        cmp al,[si]
            JGE incrmnt
        swap:
            mov al,[si]
            mov bl,[si+1]
            mov [si+1],al
            mov [si],bl  
        incrmnt:
            inc si
            jmp pass
    pass_end:
        lea si,arr
    print_Arr: 
        dec dl
        cmp dl,0
            JE sort_end
        jmp sort
sort_end:
    lea si,arr
    printArr:
        cmp [si],'0'
            JE exit
        mov al,[si]
        call print_num
        print ','
        inc si
        jmp printArr
    exit:
        ret
    
ret

arr db 2,4,1,10,8,3,'0'

define_print_num
define_print_num_uns