; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:35 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:35 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_isascii

segment .text

ft_isascii:
	xor eax, eax
	cmp edi, 0
	jl false
	cmp edi, 127
	jg false
	inc eax

false:
	ret
