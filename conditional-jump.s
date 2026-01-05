.intel_syntax noprefix
.global _start

cmp dword ptr [rdi],0x7f454c46
jne notequal
mov eax,[rdi+4]
add eax,[rdi+8]
add eax,[rdi+12]
jmp done

notequal:
cmp dword ptr [rdi],0x00005a4d
jne nn
mov eax,[rdi+4]
sub eax,[rdi+8]
sub eax,[rdi+12]
jmp done
nn:
mov eax,[rdi+4]
mul dword ptr [rdi+8]
mul dword ptr [rdi+12]
done:
