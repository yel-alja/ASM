.intel_syntax noprefix
.global _start

cmp rdi, 3
ja .default
jmp qword ptr [rsi + rdi *8]

.default:
jmp qword ptr [rsi + 4 *8]
