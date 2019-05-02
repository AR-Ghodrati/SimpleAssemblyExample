section .text
global _DivisibilityCounter
_DivisibilityCounter:

    enter 0d , 0d ; Working With Stack Frame

    xor eax , eax ; Reset eax
    mov ebx , [esp + 8] ; get Array Poiter (arg0)
    mov ecx , [esp + 12] ; get Array Size  (arg1)
    mov edx , [esp + 16] ; get Check Value Size (arg2)
    
    dec edx ; For Example : Divisibility by 8 -> and with 7
    
    _Loop:
          push ecx ; To Use ecx
          
          mov ecx , [ebx]
          and ecx , edx ; To Divisibility Check
          cmp ecx , 0d  ; To Divisibility Check
          
          jne Skip ; Jump To Next Wihout ++
          inc eax
 
          Skip:
          add ebx , 4d ; Itration to Next element
          pop ecx
    loop _Loop
    
    ; return Value in eax
    
    leave   ; Working With Stack Frame
    ret