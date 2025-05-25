; Calculate len

SECTION .data
msg     db      'Hello, brave new world!', 0Ah	; This string now can be modified
												; because the lenght is "autocalculated";

SECTION .text
global _start

_start:
	mov 	eax, msg							; Address of msg moved to eax;
	call 	strlen								; Call subroutine strlen;

	mov		edx, eax							; eax result;
	mov 	ecx, msg
	mov 	ebx, 1
	mov 	eax, 4
	int 	80h
 
	mov 	ebx, 0
	mov 	eax, 1
	int 	80h

strlen:
	push	ebx									; Push the value in ebx to the stack, so I can use ebx;
	mov 	ebx, eax 							; Adress in eax -> ebx. Both point to the same;

nextchar:
	cmp 	byte [eax], 0
	jz 		finished
	inc 	eax
	jmp 	nextchar

finished:
	sub 	eax, ebx
	pop 	ebx									; pop the value on the stack back into EBX;
	ret 										; return where function was called;
