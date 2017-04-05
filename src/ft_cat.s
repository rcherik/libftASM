; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:28 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:28 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_cat

%macro ft_call_sys 3
	push rdi
	mov rdx, %2						; third param len
	mov rdi, %1						; first param fd
	mov rax, %3						; 64 bit call for write on darwin
	syscall
	pop rdi
	jc gtfo							; jump carrier if flag == 1
%endmacro

segment .data

buffer: times 4096 db 0
len: equ $ - buffer

segment .text

ft_cat:
	cmp rdi, 0
	jl gtfo
	lea rsi, [rel buffer]			; second param str

ft_read:
	ft_call_sys rdi, len, 0x2000003
	cmp rax, 0
	jle gtfo

ft_write:
	ft_call_sys 1, rax, 0x2000004
	jmp ft_read

gtfo:
	ret
