; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:37 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:37 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;


global ft_isdigit

segment .text

ft_isdigit :
	xor rax, rax
	cmp rdi, '0'
	jl exit
	cmp rdi, '9'
	jg exit
	inc rax

exit :
	ret
