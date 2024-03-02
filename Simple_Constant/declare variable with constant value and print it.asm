org 100h
   
    MOV ah, 2h    ; instruction to give output
    mov dl, var   ; mov var data to dl register  
    int 21h       ; interupt for display the output
 
ret

var equ '5'