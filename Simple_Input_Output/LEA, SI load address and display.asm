org 100h   
    
    lea si, num    ; loads the effective address (address of memory location) of the 'num' array into the SI register
    
    mov ah, 1h     ; instruction to take input
    int 21h        ; interupt to take input
    mov [si], al   ; Store the first character read at the address pointed by SI
    inc si         ; Move SI to the next element of the array
    
    mov ah, 1h     ; instruction to take input
    int 21h        ; interupt to take input
    mov [si], al   ; Store the second character read at the next address pointed by SI   
    
    
     ; Display the contents of the num array
     
    mov ah, 2h     ; DOS function 2h - Display character in DL
    
    ; Display the first character
    mov dl, [si-1] ; Load the first character from the memory address before SI into DL
    int 21h        ; Display character
    
    ; Display a comma (if desired)
    mov dl, ','    ; Load ASCII value of comma into DL
    int 21h        ; Display comma
    
    ; Display the second character 
    
    mov dl, [si]   ; Load the second character from the memory address pointed by SI into DL
    int 21h        ; Display character
ret 

num db 2 dup(?)       ; declaring and initializing  array
