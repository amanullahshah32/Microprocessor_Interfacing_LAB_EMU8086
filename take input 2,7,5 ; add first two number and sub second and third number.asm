org 100h
           ;take the first input
           
    mov ah, 1h  ;initializing to take input
    int 21h   ; taking first input
    sub al, '0' ;subtracting the main value with coresponding '0' asci value to get the original numeric value
     
    mov bl, al  ; moving the value of al register to bl register
         
         
         ; take the socond input   
                                                             
    mov ah, 1h  ;initializing to take input                     
    int 21h   ; taking the second input
    
    sub al, '0'    ;subtracting the main value with coresponding '0' asci value to get the original numeric value    
    mov bh, al      ; moving the value of al register to bh register
    
    ; take the third input   
    mov ah, 1h  ; initializing to take input
    int 21h     ;taking the third input
    sub al, '0' ; subtracting the main value with cresponding '0' ascii value to get the original numeric value
    mov cl, al  ; moving the value of al register to cl register
                                                                
                                                                
    ; add the first two numbers
    
    add bl, bh  ; bl= bl+bh
    add bl, '0' ; adding the addition with corresponding '0' ascii value to get the original numeric value
                         
                         
    ; sub the second  and the third number
    
    sub bh, cl   ; bh= bh-cl
    add bh, '0'  ; adding the subtrction with corresponding '0' ascii value to ger the original numeric value
     
    ; printing the addition output
    mov ah, 2h  ; initializing to give output 
    
    mov dl, 10  ;print new line character (10)
    int 21h     ; print new line
    
    mov dl, 13  ;carriage return character (13)
    
    int 21h     ;print the carriage
    
     mov dl, bl ; mov bl to dl, in bl there is the addition of two numberts. 
     int 21h    ;print the addition
     
    ; print the substraction
    
    mov ah, 2h  ; initializing to give output 
    
    mov dl, 10  ;print new line character (10)
    int 21h     ; print new line
    
    mov dl, 13  ;carriage return character (13)
    int 21h     ; taking interupt
    mov dl, bh  ; mov bh to dl, in bh there is the substraction of two numbers
    int 21h     ;print the subtraction

ret