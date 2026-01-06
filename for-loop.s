.intel_syntax noprefix
.global _start


mov rdx,0
xor rax,rax
loop:
cmp rdx,rsi
jge loop_end
add rax,[rdi]
inc rdx
add rdi,8
jmp loop

loop_end:
xor rdx,rdx
div rsi
