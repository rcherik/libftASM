; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:12 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:18 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strlen

segment .text

ft_strlen :
	xor	ecx, ecx		; ecx = 0
	xor	al, al			; cause cmp to al in repne scasb, al = NULL
	not	ecx				; ecx = max value -1 or 4 294 967 295 so repne doesnt stop cause of ecx
	cld					; clear direction flags so repne scasb goes right way
	repne scasb			; REPeat while Not Equal SCan a string inc ecx and inc edi stopping at either edi == al or ecx == 0
	not	ecx				; -strlen - 2 -> strlen + 1
	dec	ecx				; strlen
	mov eax, ecx
	ret
