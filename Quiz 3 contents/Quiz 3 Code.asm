section .data
    x dd 10
    y dd 25
    z dd 15

section .bss
    result resd 1

section .text
    global _start

add_three_numbers:
    push ebp
    mov ebp, esp
    
    add eax, ebx
    add eax, ecx
    
    mov esp, ebp
    pop ebp
    ret

_start:
    mov eax, [x]
    mov ebx, [y]
    mov ecx, [z]
    
    call add_three_numbers
    
    mov [result], eax
    
    mov eax, 1
    mov ebx, 0
    int 0x80
