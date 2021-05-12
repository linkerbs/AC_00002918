        org 	100h

section	.text
        MOV byte CX, 8          
        JMP iterar             
iterar:
        MOV AH, [carnet+DI]         
        ADD BH, AH              
        INC SI                  
        INC DI                  
        LOOP iterar 
exit:
        MOV AL,BH               
        XOR AH,AH             
        XOR BL,BL               
        MOV BH, 8               
        DIV BH                  
        mov BYTE[20Ah], AL      
        int	20h             

section .data
carnet DB  0,0,0,0,2,9,1,8      
