
lea si,inp

mov al,[si] ;[sl] = value at address si
inc si
mov bl,[si]

mov cl,[si+1]




ret 

; Storing array
; alloctes contigious mem allcations store the values

inp db 10h,20h,30h,40h   
                            