; hello2.asm

section	.data
	msg		db	"Hello, World!", 0xa, 0	; Message to be printed
	nl		db	0xa,0xa						; Newline character	

section.bss

section	.text
	global main

	main:
		mov rax, 1						; syscall (write = 1)
		mov	rdi, 1						; syscall write( arg1 = stdout)
		mov rsi, msg 					; syscall write( arg2 = ptr to msg)
		mov	rdx, 32						; syscall write( arg3 = length of string excluding terminator)
		syscall							; display the message

		mov	rax, 1						; syscall (write = 1)
		mov rdi, 1 				; syscall write (arg1 = STDOUT)
		mov rsi, nl 					; syscall write (arg 2 = ptr to nl)
		mov rdx, 2						; syscall write (arg 3 = length of string excluding terminator)
		syscall							; display the message

	exit:
		mov	rax, 60						; syscall (exit = 60)
		mov	rdi, 0						; syscall exit(arg1 = exit code (0 => success))
		syscall							; exit application

