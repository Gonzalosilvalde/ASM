%include		'functions.asm'

SECTION .text
global _start

_start:

	mov 	ecx, 0		;Register initialized to 0

nextNumber:

	inc 	ecx			; Increment ecx by 1

	mov 	eax, ecx	; Move the address of the integer to eax
	add 	eax, 48 	; add 48 to the number to get the ASCII for printing
	push	eax			; Push eax to Stack
	mov 	eax, esp	; Get the address of the character on the Stack
	call	sprintLF	

	pop 	eax			; Clean the Stack
	cmp 	ecx, 10		; Compare the number with 10
	jne 	nextNumber	; If NOT equal, restart the loop

	call	quit
