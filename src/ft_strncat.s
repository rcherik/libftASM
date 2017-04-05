; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncat.s                                        :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:02:42 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:02:42 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strncat

segment .text

ft_strncat :
	mov rax, rdi
	
s1:
	cmp byte[rdi], 0
	je s2
	inc rdi
	jmp s1

s2:
	cmp byte[rsi], 0
	je exit
	movsb
	dec edx
	cmp edx, 0
	je exit
	jmp s2

exit:
	mov byte[rdi], 0
	ret
