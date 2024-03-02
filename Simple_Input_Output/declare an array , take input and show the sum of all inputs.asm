org 100h   

    mov bl, '0' ; initializing 0 into bl register
      
    ; Initializing taking input
    mov ah, 1h
    int 21h ; interrupt to take input 
    sub al, '0' ; converting ASCII to decimal
    mov num[0], al ; assigning value into num array [0]
    add bl, al ; add num[0] with bl
    
    ; Initializing taking input
    mov ah, 1h
    int 21h ; interrupt to take input
    sub al, '0' ; converting ASCII to decimal
    mov num[1], al ; assigning value into num array [1] 
    add bl, al ; add num[1] with bl
    
    ; Initializing taking input
    mov ah, 1h
    int 21h ; interrupt to take input
    sub al, '0' ; converting ASCII to decimal
    mov num[2], al ; assigning value into num array [2]
    add bl, al ; add num[2] with bl 
    
    ; Initializing taking input
    mov ah, 1h
    int 21h ; interrupt to take input 
    sub al, '0' ; converting ASCII to decimal
    mov num[3], al ; assigning value into num array [3]
    add bl, al ; add num[3] with bl
    
    ; Initializing taking input
    mov ah, 1h
    int 21h ; interrupt to take input 
    sub al, '0' ; converting ASCII to decimal
    mov num[4], al ; assigning value into num array [4]
    add bl, al ; add num[4] with bl
    
    
    ; print on new line 
    mov ah, 2h
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    ;print the output
    mov ah, 2h 
    mov dl, bl
    int 21h
    
    ret 

num db 5 dup(?) ; Declare an array of size 5
