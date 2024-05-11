# Makefile for hello3.asm

SHELL = /bin/bash
CC = gcc
AS = nasm

build: clean hello3

hello3.o: hello3.asm
	$(AS) -f elf64 -g -F dwarf $*.asm -l $*.lst	

hello3: hello3.o
	$(CC) -o $@ $? -no-pie

clean:
	-rm -f *.o *.lst hello3