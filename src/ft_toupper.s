; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mdufaud <mdufaud@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/01/28 20:21:49 by mdufaud           ;+;    ;+;              ;
;    Updated: 2015/01/28 20:25:20 by mdufaud          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_toupper

segment .text

ft_toupper :
	cmp edi, 'a'
	jl toexit
	cmp edi, 'z'
	jg toexit
	sub edi, 32

toexit :
	mov eax, edi
	ret
