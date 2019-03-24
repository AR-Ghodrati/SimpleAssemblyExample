section .text
global _REVERSE
_REVERSE:

    push    ebp             ; create stack frame
    mov     ebp , esp  
    cmp     edi, 0          ; Check if base is negative
    jl      end


   mov esi , [esp + 8] ; get First Arguman Pointer
   mov edx , [esp + 12] ; get Secend Arguman Pointer
   
   mov eax , 4d
   mul edx      ; Find Last Element Address
   
   mov ebx , esi
   add ebx , eax
   sub ebx , 4d
   
   
   
    mov edx , 0d
    Swap_Loop:
        cmp ebx, esi
        jle end
        
        mov eax, [esi]
        mov edx, [ebx]
        mov [ebx], eax
        mov [esi], edx
        
        sub ebx, 4d
        add esi, 4d
        jmp Swap_Loop
  

end: 
    xor eax , eax ; Return 0
    pop ebp
    ret