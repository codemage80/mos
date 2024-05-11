# Makefile for alive.asm
SHELL = /bin/bash
CC = gcc
AS = nasm


build: clean alive

alive: alive.o
	$(CC) -o $@ $? -no-pie

alive.o: alive.asm
	$(AS) -f elf64 -g -F dwarf $*.asm -l $*.lst


clean:
	-rm -f *.o *.lst alive
