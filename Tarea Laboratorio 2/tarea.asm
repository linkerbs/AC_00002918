        MOV byte[200h], "E" 
        MOV byte[201h], "R" 
        MOV byte[202h], "B" 
        MOV byte[203h], "A" 

        MOV AX, [200h]

        MOV BX, 201h
        MOV CL, [BX]

        MOV BX, 202h
        MOV DL, [BX+SI]

        MOV DI, [SI+203h]
        
        
        int 20h

        
