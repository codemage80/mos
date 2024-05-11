# Makefile for hello4.asm
SHELL = /bin/bash
CC = gcc
AS = nasm

build: clean hello4

hello4: hello4.o
	$(CC) -o $@ $? -no-pie



hello4.o: hello4.asm
	$(AS) -f elf64 -g -F dwarf $*.asm -l $*.lst



clean:
	-rm -f *.o *.lst hello4