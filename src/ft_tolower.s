; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mdufaud <mdufaud@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/01/31 22:09:00 by mdufaud           ;+;    ;+;              ;
;    Updated: 2015/01/31 22:09:00 by mdufaud          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_tolower

segment .text

ft_tolower :
	cmp edi, 'A'
	jl toexit
	cmp edi, 'Z'
	jg toexit
	add edi, 32

toexit :
	mov eax, edi
	ret
