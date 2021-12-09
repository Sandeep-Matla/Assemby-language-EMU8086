;Sandeep Matla
; String reverse
include 'emu8086.inc'

lea si , str
; user input 

mov ah,1

input: 
     int 21h
     cmp al,'$'
        JE inp_end
     mov [si],al
     inc si
     jmp input
inp_end:
     mov [si],'$'
printn
;Reversal code

go_end:
    cmp [si],'$'
        JE str_end
     inc si
     jmp go_end
str_end:
    lea di,str
    dec si;   To exclude '$'
    print_reverse:
        cmp si,di
            JL exit  ; less than is to print first char|| char at di
        mov ah,2
        mov dl,[si]
        int 21h
        dec si
        jmp print_reverse
exit:
    RET
    
RET


str db "kiahfjhdkbabdfsibaufbgbafufglkbayuidfh$"