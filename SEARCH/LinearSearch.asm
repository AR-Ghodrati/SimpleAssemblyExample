section .text
global _LinearSearch
CMAIN:

    enter 0d , 0d
    
    xor eax , eax ; Reset eax
    mov ebx , [esp + 8] ; get Array Poiter (arg0)
    mov ecx , [esp + 12] ; get Array Size  (arg1)
    mov edx , [esp + 16] ; get Check Value Size (arg2)
    
    
    _Loop:
           push ecx ; To Use ecx
           xor ecx , ecx ; Reset ecx
           mov ecx , [ebx]
           
           cmp ecx , edx
           jne Skip ; Jump If Not Equal
           inc eax
       
           Skip:
           add ebx , 4d ; Next Iteration
           
           pop ecx
    loop _Loop
        
    ; return Value in eax
    
    leave
    ret