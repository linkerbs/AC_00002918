
                org     100h
                section .text
                MOV     BP, arrByte                      
                MOV     BH, 2h                          
                XOR     AX,AX                          
                JMP    main                              
        section .data
arrByte    db      2,2,3,3,4,4,5,5,6,6,0xA   
main:
                mov     AL, [BP+SI]                     
                cmp     AL, 0xA                         
                JE      end                            
                MOV     BL,AL                            
                DIV     BH                             
                cmp     AH, 0d                          
                JE      par
                cmp     AH, 1d                         
                JE      impar
par:
                MOV     BL,00d                          
                MOV     BL,[BP+SI]                       
                MOV     [0300H+SI], BL                  
                INC     SI                              
                XOR     AX,AX                          
                JMP     main                             
impar:
                MOV     BL,00d                               
                MOV     BL,[BP+SI] 
                MOV     [0320H+SI], BL                  
                INC     SI                              
                XOR     AX,AX                          
                JMP     main                             
end:
                int     20h                                     