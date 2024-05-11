section	.data
	message1		db 	"Hello, World!", 10, 0
	message1Len	equ $-message1-1
	
	message2	db	"Alive and Kicking!", 10, 0
	message2Len	equ $-message2-1

	radius		dq	357
	pi			dq	3.141592	
	
section	.bss
section	.text
	global main

	main:
		; print message1
		push rbp
		mov	rbp, rsp
		mov	rax, 1
		mov	rdi, 1
		mov	rsi, message1
		mov rdx, message1Len
		syscall

		; print message2
		mov	rbp, rsp
		mov	rax, 1
		mov	rdi, 1
		mov	rsi, message2
		mov rdx, message2Len
		syscall

		; cleanup
		mov rbp, rsp
		pop rbp

	exit:
		; syscall exit with return code 0 (success)
		mov rax, 60
		mov rdi, 0
		syscall
