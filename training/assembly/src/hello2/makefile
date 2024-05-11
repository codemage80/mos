# Makefile for hello2.asm

SHELL = /bin/bash
CC = gcc
AS = nasm


build: clean hello2

hello2: hello2.o
	$(CC) -o $@ $? -no-pie	

hello2.o: hello2.asm
	$(AS) -f elf64 -g -F dwarf $*.asm -l $*.lst

clean:
	-rm -f *.o *.lst hello2

