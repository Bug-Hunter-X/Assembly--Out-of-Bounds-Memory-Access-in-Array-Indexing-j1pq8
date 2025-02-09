mov ecx, [array_size]
; Check array bounds
cmp ecx, 0
je error_handling
; Get user input for index
; ... (code to obtain index into edx) ...
; Check index boundaries
cmp edx, ecx
jl error_handling
mov eax, [ebx+edx*4]
jmp end
error_handling:
; Handle out-of-bounds error
; ... (code to handle the error) ...
jmp end
end:
; ... (rest of the program) ...