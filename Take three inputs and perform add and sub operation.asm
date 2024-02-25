org 100h
    
    mov ah, 1h
    int 21h   ; taking first input
     
     sub al, '0'
     
    mov bl, al
    
    ; take the socond input
    int 21h
    
    sub al, '0'
    
    mov bh, al 
    
    ; take the third input
    int 21h
    sub al, '0'
    mov cl, al
    
    ; add the first two numbers
    
    add bl, bh  ; bl= bl+bh
    add bl, '0'
                         
                         
    ; sub the second  and the third number
    
    sub bh, cl 
    add bh, '0'
     
    ; printing the addition output
    mov ah, 2h   
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    
    int 21h
    
     mov dl, bl
     int 21h
    ; print the substraction
    
    mov dl, bh
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h 
    
    mov dl, bh
    int 21h

ret