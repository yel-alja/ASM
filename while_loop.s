.intel_syntax noprefix
.global _start


mov rax,0
cmp rdi,0
je loop_end
loop:
cmp byte ptr [rdi],0
je loop_end
inc rax
inc rdi
jmp loop

loop_end:
