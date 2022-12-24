%include 'in_out.asm'

SECTION .data
request: DB 'Введите значение х: ', 0
result: DB 'Результат: ', 0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, request
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x 
call atoi

xor edx,edx
sub eax, 1
mov edx, eax
mul edx
mov ebx, 5
mul ebx
mov edx, eax


mov eax, result
call sprint
mov eax,edx
call iprintLF 

call quit
