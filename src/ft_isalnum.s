; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:30 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:30 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_isalnum
extern ft_isdigit
extern ft_isalpha

segment .text

ft_isalnum:
	xor rax, rax
	push rdi
	call ft_isdigit
	pop rdi
	cmp rax, 1
	je exit
	call ft_isalpha

exit:
	ret
