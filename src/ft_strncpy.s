; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                        :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:29 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:29 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strncpy
extern ft_memcpy

segment .text

ft_strncpy :
	call ft_memcpy
	ret
