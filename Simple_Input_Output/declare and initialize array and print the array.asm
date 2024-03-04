 org 100h

    MOV ah, 2h     ; function to give output
    mov dl, num[0] ; printing the first element of array
    int 21h        ; interupt to give the output within the dl register
    
    MOV ah, 2h     ; function to give output
    mov dl, num[1] ; printing the second element of array
    int 21h        ; interupt to give the output within the dl register
    
    MOV ah, 2h     ; function to give output
    mov dl, num[2] ; printing the third  element of array
    int 21h        ; interupt to give the output within the dl register
    
    MOV ah, 2h     ; function to give output
    mov dl, num[3] ; printing the fourth element of array
    int 21h        ; interupt to give the output within the dl register
    
   
ret
num db '1', '2', '3', 0   ; declaring and initializing  array  ; 0 indicated the end of array