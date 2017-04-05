; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:42 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:42 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_memset

ft_memset:
	push rdi
	xor rax, rax
	mov eax, esi	; second arg
	mov rcx, rdx	; third arg in rcx
	rep stosb
	pop rax
	ret
