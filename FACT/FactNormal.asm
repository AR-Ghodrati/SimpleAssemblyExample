section .text
global _Factorial_Loop
Fact:

   enter 0 , 0
   
   mov ecx , [esp + 8]
   cmp ecx , 1d
   je end_factorial
   
   mov eax , 1d 
   
   _loop:
      mul ecx
   loop _loop
   
   end_factorial:
   leave
   ret 