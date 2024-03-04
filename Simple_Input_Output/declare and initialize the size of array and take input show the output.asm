org 100h 

    
    mov ah, 1h     ; initializing taking input
    int 21h        ; interupt to take input   
    mov num[0], al ; assining value of first input into  array element 1
    
    
    mov ah, 1h     ; initializing taking input
    int 21h        ; interupt to take input
    mov num[1], al ; assining value of second input into  array element 2
    
    
    mov ah, 1h     ; initializing taking input
    int 21h        ; interupt to take input
    mov num[2], al ; assining value of third input to  array element 3
    
   
    
    ; print on new line
     
    mov ah, 2h     ; initializing output
    mov dl, 10     ; mov the new line instruction to dl register
    int 21h        ; interupt to display the output
    mov dl, 13     ; carriage instruction to dl register
    int 21h        ; interupt to display the output
    
    ; Array Output
    
    MOV ah, 2h     ; initializing output
    mov dl, num[0] ; printing the first element of array
    int 21h        ; interupt to display the output
    
    MOV ah, 2h     ; initializing output
    mov dl, num[1] ; printing the second  element of array
    int 21h        ; interupt to display the output
    
     MOV ah, 2h    ; initializing output
    mov dl, num[2] ; printing the third  element of array
    int 21h        ; interupt to display the output
    
     
 
ret

num db 5 dup(?)    ; declaring and initializing the size of  array