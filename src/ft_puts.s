; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:44 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:44 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_puts
extern ft_strlen

%macro call_write 2
	lea rsi, [rel %1]				; second param str
	mov edx, %2						; third param len
	mov rdi, 1						; first param fd
	mov eax, 0x2000004				; 64 bit call for write on darwin
	;mov eax, 1						; 64 bit call for write on unix
	syscall
	jc error						; jump carrier if flag == 1
%endmacro

segment .rodata

CarriageReturn: db `\n`
NullStr: db `(null)\0`

segment .text

ft_puts:
	cmp dil, 0
	jne puts
	lea rdi, [rel NullStr]

puts:
	push rdi
	call ft_strlen
	pop rdi
	call_write rdi, eax
	call_write CarriageReturn, 1	; \n
	xor rax, rax
	mov al, [rel CarriageReturn]
	ret

error:
	mov eax, -1
	ret
