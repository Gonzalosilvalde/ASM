%include		'functions.asm'								; include functions in functions.asm;
 
SECTION .text
global _start

	; To use this, when I have to call the program, i have to put the arguments: 
	; ./program "argument1" "argument2" 101 3.14

_start:

	pop		ecx												; First value on the stack is the number of arguments

nextArg:
	cmp		ecx, 0h											; Check if we have any arguments left;
	jz		noMoreArgs										; If there isn't any more areguments, jump to noMoreArgs;
	pop		eax												; Pop the next argument of the stack;
	call	sprintLF										; Call print function;
	dec		ecx												; Decrease ecx by 1;
	jmp 	nextArg											; Jump to nextArg; 

noMoreArgs:
	call quit
