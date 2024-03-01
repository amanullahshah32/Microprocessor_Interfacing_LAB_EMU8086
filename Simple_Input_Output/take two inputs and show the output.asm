.model small
.stack 100h
.code
main proc
    mov ah, 1  ;this function works for taking input
    int 21h    ;this int 21h is the interuption to take input from the keyboard
    mov bl, al ;our first input data was stored in 'al', and by calling the mov bl, al we are moving the data from al to bl
    
    mov ah,1   ;this function works for taking input
    int 21h    ;this int 21h is the interuption to take input from the keyboard
    mov bh,al  ;our second  input data was automatically stored in 'al', and by calling the mov bh, al we are moving the data from al to bl
    
    
    mov ah,2   ;this function works for giving the output
    mov dl, bl ;moving data from bl to dl for showing the output
    int 21h    ;this time int 21h works for displaying the output by seeing the function mov ah,2 (here its instruct to show the output)
    
    
    mov ah,2   ;this function works for giving the output
    mov dl, bh ;moving data from bh to dl for showing the output
    int 21h    ;;this time int 21h works for displaying the output by seeing the function mov ah,2 (here its instruct to show the output)
    
    
    exit:  
    mov ah, 4ch
    int 21h
    main endp
end main