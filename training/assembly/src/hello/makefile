# makefile for hello.asm
SHELL = /bin/bash
CC = gcc
AS = nasm


hello: hello.o
	$(CC) -o hello hello.o -no-pie

hello.o: hello.asm
	$(AS) -f elf64 -g -F dwarf hello.asm -l hello.lst

clean:
	-rm -f *.o *.lst
	-rm -f hello

