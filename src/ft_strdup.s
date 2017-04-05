; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:29 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:29 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strdup
extern ft_strlen
extern malloc

segment .text

ft_strdup :
	sub rsp, 16
	mov [rsp + 8], rdi
	call ft_strlen
	lea edi, [eax + 1]	; do an add and mov
	mov [rsp], rdi
	call malloc
	cmp rax, 0
	je end
	mov rcx, [rsp]		; strlen
	mov rsi, [rsp + 8]	; first strdup arg
	mov rdi, rax		; malloc ret
	rep movsb

end:
	add rsp, 16
	ret
