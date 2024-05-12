# Makefile for x86 16BIT BootLoader
SHELL = /bin/bash
CC = gcc
AS = nasm
ASFLAGS = -f bin -g -l $*.lst $*.asm 


build: clean bootloader
	-dd if=bootloader.bin of=floppy-boot.img bs=512 count=1 conv=notrunc 
	
bootloader:
	$(AS) -f bin -l $@.lst $@.asm  -o $@.bin

clean:
	-rm -f *.o *.lst bootloader bootloader.bin
