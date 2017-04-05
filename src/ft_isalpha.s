; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:33 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:33 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_isalpha

segment .text

ft_isalpha :
	xor rax, rax
	cmp rdi, 'A'
	jl false
	cmp rdi, 'z'
	jg false
	cmp rdi, 'Z'
	jle true
	cmp rdi, 'a'
	jge true

false :
	ret

true :
	inc rax
	ret
