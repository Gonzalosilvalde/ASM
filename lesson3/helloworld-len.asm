; Calculate len

SECTION .data
msg     db      'Hello, brave new world!', 0Ah	; This string now can be modified
												; because the lenght is "autocalculated";

SECTION .text
global _start

_start:
	mov 	ebx, msg							; Addres of msg moved to ebx;
	mov		eax, ebx							; ebx and eax both point to the same memory segment;

												; All this nextchar thing work similar to a while loop;

nextchar:										; This is similar as declare a "function";
	cmp		byte [eax], 0						; Compare the actual byte against zero, beign zero
												; the end of a string;
	jz 		finished							; If is equal to zero, jump to the "function" finished;
	inc		eax									; Increment eax by one;eax+=1;
	jmp 	nextchar							; Jump to nextchar function;

finished:
	sub		eax, ebx							; Substract ebx address from eax address;
	mov		edx, eax							; eax now is equal the number of bytes in msg
	mov 	ecx, msg
	mov 	ebx, 1
	mov 	eax, 4
	int 	80h

	mov 	ebx, 0
	mov 	eax, 1
	int 	80h	
