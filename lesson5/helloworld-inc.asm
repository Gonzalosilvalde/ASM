%include		'functions.asm'								; include functions in functions.asm;
 
SECTION .data
msg1	db		'Hello, brave new world!', 0Ah				; first string;
msg2	db		'This is how we recycle in NASM.', 0Ah		; second string;
 
SECTION .text
global _start

_start:

	mov		eax, msg1		; move address of first string to eax
	call	sprint			; call printing function

	mov		eax, msg2		; move address of second string to eax
	call	sprint			; call our string printing functions

	call	quit			; call our quit function
