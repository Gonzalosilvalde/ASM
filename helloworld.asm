; Hello world
; nasm -f elf helloworld.asm


SECTION .data
msg		db		'Hello World!', 0Ah		; Everything with h at the end is hexadeximal, 
										; in this case A -> 10 in decimal. In ASCII 
										; this mean \n; 
SECTION .text
global _start

_start:

	mov		edx, 13						; Number of bytes to write, Hello World! 12 characters
										; +1 of 0Ah;
	mov		ecx, msg					; Move the memory address of msg into ecx;
	mov 	ebx, 1						; Write to STDOUT file;
	mov		eax, 4						; invoke SYS_write (kernel opcode 4);
	int 	80h							; 'int' is a software interrupt
