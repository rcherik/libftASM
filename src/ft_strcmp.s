; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:01 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:01 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strcmp

segment .text

ft_strcmp:
	xor rax, rax
	xor rbx, rbx
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, 0
	je diff
	cmp bl, 0
	je diff
	cmp al, bl
	jne diff
	inc rdi
	inc rsi
	jmp ft_strcmp

diff:
	sub eax, ebx
	ret
