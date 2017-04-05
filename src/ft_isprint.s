; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:38 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:38 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_isprint

segment .text

ft_isprint :
	xor rax, rax
	cmp rdi, ' '
	jl false
	cmp rdi, '~'
	jg false
	inc rax

false :
	ret
