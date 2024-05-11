; hello3.asm
section .data
	message	db	"Hello, World!", 10, 0

section .bss
section .text
	global main

	main:
		; syscall print string to stdout
		mov rax, 1
		mov rdi, 1
		mov rsi, message
		mov rdx, 14
		syscall

		jmp exit

	exit:
		; syscall exit with return code 0
		mov rax, 60
		mov rdi, 0
		syscall
