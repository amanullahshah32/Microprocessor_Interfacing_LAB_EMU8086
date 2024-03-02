org 100h

    mov ah, 1h    ;instruction for taking input
    int 21h       ; interupt for input  
    
    mov var, al   ;mov the data from al to variable var 
    
    MOV ah, 2h    ;instruction for output
    mov dl, var   ; mov the var value to dl for output
    int 21h       ; interupt for showing the output
 
ret

var db ?  ;  declaring variable with uninitialized value