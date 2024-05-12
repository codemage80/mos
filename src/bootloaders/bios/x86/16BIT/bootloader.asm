%include "header.asm"

org 0x7c00
main:
	mov ax, 0x7c0
	add ax, 544
	cli

	; ** SETUP TEMPORARY STACK **	
	mov ax, 0x00
	mov ss, ax
	mov ax, 0x7c0
	mov sp, ax	
	mov ss, ax
	mov sp, 4096
	sti

	; ** SETUP DATA SEGMENT **
	mov ax, 0x7c0
	mov ds, ax

	; Get boot drive number
	mov byte [bootdev], dl
	mov eax, 0


data:
	kernel		db	"KERNEL  BIN"							; Kernel file system entry
	diskerror	db 	"Storage error! Press any key...", 0	; Storage error message
	fnfmsg		db	"kernel.bin not found!", 0				; Kernel not found
	bootdev		db	0x00									; Boot disk

padding:
	times 510-($-$$) db 0
	dw 0xAA55


