section .data
parent db 'Parent running..',10
lenp equ $ - parent
child db 'Child  Running ...',10
lenc equ $ - child

section .text
global _start
 _start:
mov rax,57
syscall
cmp rax,0
je child_process

