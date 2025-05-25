;----------------------------------------
; int slen(String msg)					;
; String length calculation				;
slen:
	push 	ebx							; Save ebx in stack;
	mov 	ebx, eax					; ebx point to eax;

nextchar:
	cmp 	byte [eax], 0
	jz 		finished
	inc 	eax
	jmp 	nextchar

finished:
	sub 	eax, ebx
	pop 	ebx
	ret

;----------------------------------------
; void sprint(String msg)				;
; Print function						;
sprint:
	push 	edx							; Save edx in stack;
	push 	ecx							; Save ecx in stack;
	push	ebx
	push	eax
	call	slen

	mov		edx, eax
	pop		eax

	mov 	ecx, eax
	mov		ebx, 1
	mov 	eax, 4
	int 	80h

	pop 	ebx
	pop		ecx
	pop		edx
	ret

;----------------------------------------
; void exit()							;
; Exit the program						;
quit:
	mov		ebx, 0
	mov		eax, 1
	int		80h
	ret
