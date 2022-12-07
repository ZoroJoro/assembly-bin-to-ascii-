
.MODEL SMALL
 .STACK 100H 
 
 .DATA
    INPUT DB  "ENTER AN ASCII CHARACTER: $"  
    output DB 10, 13, "BINARY EQUIVALENT: $"    
 
 .CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV DX, OFFSET input
    MOV AH ,09H
    INT 21H
 
 
    MOV AH,01H
    INT 21H
 
    MOV BL,AL
 
    MOV DX, OFFSET output
    MOV AH ,09H
    INT 21H
    
    
    MOV CX, 8
    
    
    BIN_EQUIV:
        SHL BL, 1
        JC PRINTONE
        
        
        PRINTZERO:
            MOV DL, 30H
            JMP PRINT
        
        PRINTONE:
            MOV DL,31H
            
            
        PRINT:
            MOV AH, 02H
            INT 21H
            
        LOOP BIN_EQUIV
        
   MOV AH, 4CH
   INT 21H   
   
   
   
   END
 
   






