        org 	100h

section	.text
        
        MOV byte CX, 4         
        MOV AL, 5              
        JMP iterar              
iterar:
        MOV BL, [num+DI]        
        MUL BL                 
        INC SI                  
        INC DI                  
        LOOP iterar 
exit:
        MOV word [20Ah], AX  

    	int	20h             

section .data
num DB  4,3,2,1,                
                                