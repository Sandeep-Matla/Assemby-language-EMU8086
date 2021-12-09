;Sandeep Matla
;Program to concatinate strings

include 'emu8086.inc'  
lea si , s1
lea di , s2  
print 'Enter string 1 : '
input1:
    mov ah,1
    int 21h
    
    cmp al,'$'
        JE inp_end1
    mov [si],al
    inc si
    jmp input1
inp_end1:
mov [si],al

printn
print 'Enter String 2 : '
lea si,s2

input2:
    mov ah,1
    int 21h
    
    cmp al,'$'
        JE inp_end2
    mov [si],al
    inc si
    jmp input2
inp_end2:
mov [si],al

lea si,s1
lea di,s2

printn

lea si,s1
str1_end:
    cmp [si],'$'
        JE end
    inc si
    jmp str1_end
end:

lea di , s2
printn
concat:
    cmp [di],'$'
        JE concat_end
    mov al,[di]
    mov [si],al
    
    inc di
    inc si
    jmp concat
concat_end:
mov [si],'$'
;print 
printn
print 'Concatinated String : '
mov ah,9
mov dx , offset s1
int 21h

ret
s1 db 'jhkasdhg kahsd guahdhgfuiahgdf iafsdgiuadi$'
s2 db 'iugasdfiuasdgfiiag iugasdufiuaiudiuafguaids$'