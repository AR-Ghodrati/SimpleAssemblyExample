section .text
global FIND_PATTERN_1011
FIND_PATTERN_1011:

   push    ebp             ; create stack frame
   mov     ebp, esp

   cmp     edi, 0          ; Check if base is negative
   mov     eax, 0          ; and return 0 if so
   jl      end
   
   mov eax , [esp + 8] ; get First Arguman
   
   
   
   
   end:
    pop  ebp
    ret