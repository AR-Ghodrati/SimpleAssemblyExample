section .text
global _FIND_PATTERN_1011
_FIND_PATTERN_1011:

   push    ebp             ; create stack frame
   mov     ebp, esp

   cmp     edi, 0          ; Check if base is negative
   mov     eax, 0          ; and return 0 if so
   jl      end
   
    mov esi , [esp + 8] ; get First Arguman
    mov ebx , esi
    ; Detect 1011
    mov ecx , 32d
    
    _Loop:
    and ebx , 1d ; get First Bit
    cmp ebx , 1d
    je stateOne
    shr esi , 1d ; Shift For Load New Bit
    mov ebx , esi
    Resume:
    loop _Loop
    
    
    mov eax , 0d
    jmp end
    
    
    stateOne:
    shr esi , 1d ; Shift For Load New Bit
    mov ebx , esi
    and ebx , 1d ; get First Bit
    cmp ebx , 1d
    je stateTwo
    jmp Resume
    
    
    stateTwo:
    shr esi , 1d ; Shift For Load New Bit
    mov ebx , esi
    and ebx , 1d ; get First Bit
    cmp ebx , 1d
    jl stateThree
    jmp Resume
    
    
    stateThree:
    shr esi , 1d ; Shift For Load New Bit
    mov ebx , esi
    and ebx , 1d ; get First Bit
    cmp ebx , 1d
    je End_True
    jmp Resume
    
    
    
    End_True:
    mov eax , 1d
    
    
    end:
    pop ebp
    ret     