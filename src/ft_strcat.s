; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:02:42 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:02:42 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strcat

segment .text

ft_strcat :
	mov rax, rdi
	
s1:
	cmp byte[rdi], 0
	je s2
	inc rdi
	jmp s1

s2:
	cmp byte[rsi], 0
	je exit
;	mov bl, byte[rsi]
;	mov byte[rdi], bl
;	inc rsi
;	inc rdi
	movsb
	jmp s2

exit:
	mov byte[rdi], 0
	ret
