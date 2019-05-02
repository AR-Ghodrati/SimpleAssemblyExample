section .text
global _Counter1bit
_Counter1bit:
   
   enter 0d , 0d
   
   xor eax , eax ; Reset Counter
   mov ebx , [ebp + 8] ; get Number (arg0)
   mov ecx , [ebp + 12] ; get Register Size (arg1)
   
 
   _Loop:
         shl ebx , 1d   ; Shift left to Add Last bit To CF
         adc eax , 0d   ; eax = eax + CF + 0d
   loop _Loop
   
   ; return Value in eax
 
   leave
   ret