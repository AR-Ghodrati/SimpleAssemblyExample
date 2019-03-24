section .text
global _MUL7
_MUL7:

   push    ebp             ; create stack frame
   mov     ebp, esp

   cmp     edi, 0          ; Check if base is negative
   mov     eax, 0          ; and return 0 if so
   jl      end
   
   ; x = x << 3 - x ; -> *7
   mov eax , [esp + 8] ; get First Arguman
   mov ebx , eax
   
   shl eax , 3d
   sub eax , ebx ; Return Value in eax
   

  end:
   pop ebp
   ret