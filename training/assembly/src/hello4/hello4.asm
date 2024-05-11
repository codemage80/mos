; hello4.asm
section .extern
	extern	printf			; External function printf
	
section .data
	fmtstr		db	"This is our string: %s", 10, 0
	message1	db	"Hello, World!", 0

section .bss
section .text
	global main
	main:
		; print string using printf
		push rbp
		mov rbp, rsp
		mov rdi, fmtstr
		mov rsi, message1
		call printf

	exit:
		; cleanup stack
		mov rsp, rbp
		pop rbp
		; syscall exit with return code 0
		mov rax, 60
		mov rdi, 0
		syscall
