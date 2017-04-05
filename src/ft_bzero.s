; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 15:55:25 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 15:55:25 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_bzero

segment .text

ft_bzero :
	cmp esi, 0
	je exit
	mov byte[rdi], 0
	inc rdi
	dec esi
	jmp ft_bzero

exit :
	ret
