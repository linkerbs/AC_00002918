org 100h

        section .text
        xor AX, AX
        xor SI, SI
        xor BX, BX
        XOR CX, CX
        xor DX, DX

        MOV SI, 0  
        MOV DI, 0d

        MOV DH, 10  
        MOV DL, 20  
        MOV AH, 0h  
        MOV AL, 03h  
        INT 10h

    onenombre:
        MOV AH, 02h   
        MOV BH, 0h    
        INT 10h
        MOV CL, [primnombre+SI]  
        MOV AH, 0Ah  
        MOV AL, CL  
        MOV BH, 0h  
        MOV CX, 1h  
        INT 10h
        INC SI  
        INC DL  
        INC DI  
        CMP DI, 5d  
        JB onenombre  
        xor AX, AX
        xor SI, SI
        xor BX, BX
        XOR CX, CX
        xor DX, DX
        MOV SI, 0  
        MOV DI, 0d
        MOV DH, 12  
        MOV DL, 20  
twonombre:
        MOV AH, 02h  
        MOV BH, 0h    
        INT 10h
        MOV CL, [segnombre+SI]  
        MOV AH, 0Ah  
        MOV AL, CL  
        MOV BH, 0h  
        MOV CX, 1h  
        INT 10h
        INC SI  
        INC DL  
        INC DI  
        CMP DI, 7d  
        JB twonombre  
        xor AX, AX
        xor SI, SI
        xor BX, BX
        XOR CX, CX
        xor DX, DX
        MOV SI, 0  
        MOV DI, 0d
        MOV DH, 14  
        MOV DL, 20  
oneapell:
        MOV AH, 02h   
        MOV BH, 0h    
        INT 10h
        MOV CL, [primapell+SI]  
        MOV AH, 0Ah  
        MOV AL, CL  
        MOV BH, 0h  
        MOV CX, 1h  
        INT 10h
        INC SI  
        INC DL  
        INC DI  
        CMP DI, 7d  
        JB oneapell  
        xor AX, AX
        xor SI, SI
        xor BX, BX
        XOR CX, CX
        xor DX, DX
        MOV SI, 0  
        MOV DI, 0d
        MOV DH, 16  
        MOV DL, 20  

twoapell:
        MOV AH, 02h   
        MOV BH, 0h    
        INT 10h
        MOV CL, [segapell+SI]  
        MOV AH, 0Ah  
        MOV AL, CL  
        MOV BH, 0h  
        MOV CX, 1h  
        INT 10h
        INC SI  
        INC DL  
        INC DI  
        CMP DI, 8d  
        JB twoapell  
        jmp esperartecla  
    esperartecla:
        MOV AH, 00h  
        INT 16h
    exit:
        int 20h

    section .data

    primnombre DB 'Erick'
    segnombre DB 'Ricardo'
    primapell DB 'Bonilla'
    segapell DB 'Ascencio'