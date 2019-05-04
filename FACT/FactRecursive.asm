SECTION  .text
GLOBAL _RecursiveFactorial

_RecursiveFactorial: 
        enter 0 , 0
        
        mov  eax , [ebp+8]      
        cmp  eax , 1d     
        je end_factorial
        
        dec  eax                
        push eax            
        call _RecursiveFactorial 
        
        mov  ebx , [ebp+8]      
        mul  ebx           

end_factorial: 
        leave
        ret                                