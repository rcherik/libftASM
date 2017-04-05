; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:29 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:29 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strcpy
extern ft_strlen
extern ft_memcpy
extern ft_bzero

segment .text

ft_strcpy :
	push rsi
	push rdi
	call ft_strlen
	mov rsi, rax
	pop rdi
	push rdi
	call ft_bzero
	pop rsi
	pop rdi
	push rsi
	push rdi
	call ft_strlen
	pop rsi
	pop rdi
	mov rdx, rax
	call ft_memcpy
	ret
