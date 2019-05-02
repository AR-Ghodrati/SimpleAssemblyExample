section .text
global _ReverseIntArray
_ReverseIntArray:

    enter 0d ,0d
    
    mov ebx , [esp + 8] ; get First Array Pointer
    mov ecx , [esp + 12] ; get Secend Array Size
    
    mov eax , 3d ; Get Last element Position
    mul ecx  ; Get Last element Position
    
    mov edx , ebx ; Get Last element Position
    add edx , eax ; Get Last element Position
    mov eax , edx ; Get Last element Position
    
    ; To Reverse: Iterate To size/2
    xor edx , edx
    
    push eax
    push ebx
    
    mov eax , ecx
    mov ebx , 2d
  
    div ebx    
    
    mov ecx , eax
    
    pop ebx
    pop eax
    
  
    
    _Loop:
          push ecx
          
          ; Swap
          mov edx , [ebx]
          mov ecx , [eax]
          mov [eax] , edx
          mov [ebx] , ecx
          
          add ebx , 4d
          sub eax , 4d
          
          pop ecx
    
    loop _Loop
    
   
    leave
    ret