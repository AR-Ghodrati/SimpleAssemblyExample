;  arg0 = Value , arg1 = Pattern
%macro printf 2
 ; Save Last State of Regs
 push eax 
 push ebx
 
 ; Reset Regs
 xor eax , eax
 xor ebx , ebx
 
 mov eax , %1
 mov ebx , %2
 

 
 push eax
 push dword ebx
 call _printf ; Printf("str format" , ...values)
 
 pop ebx
 pop eax
 
 ; Restore Last State
 pop ebx
 pop eax
 


%endmacro


section .data

sumPattern dd `Sum Is : %d\n` , 0
subPattern dd `Sub Is : %d\n` , 0
mulPattern dd `Mul IS : %d\n` , 0
divPattern dd `Div IS : %d\n` , 0
newline db 10,0

arg0 dd 0d
arg1 dd 0d
ResultBuffer dd 0x0


section .text

extern _printf

global _BASIC_TEST
_BASIC_TEST:

   push    ebp             ; create stack frame
   mov     ebp, esp

   cmp     edi, 0          ; Check if base is negative
   mov     eax, 0          ; and return 0 if so
   jl      end
   
   

   
   mov eax , [esp + 8]  ; get First Arguman (int32)
   mov ebx , [esp + 12]  ; get Secent Arguman (int32)
   
   mov [arg0] , eax ; Save arg1
   mov [arg1] , ebx ; Save arg2
   
   add eax , ebx
   mov [ResultBuffer] , eax
   
   printf [ResultBuffer] , sumPattern ; Print Add Result
   
   
   
   mov eax , [arg0]
   sub eax , ebx
   mov [ResultBuffer] , eax
   
   printf [ResultBuffer] , subPattern ; Print Sub Result
   
   
   
   mov eax , [arg0]
   mul ebx
   mov [ResultBuffer] , eax
   
   printf [ResultBuffer] , mulPattern ; Print Mul Result
   
   
   
   xor edx , edx
   mov eax , [arg0]
   div ebx
   mov [ResultBuffer] , eax
   
   printf [ResultBuffer] , divPattern ; Print Div Result


end:
   xor eax , eax ; Return 0
   pop     ebp
   ret