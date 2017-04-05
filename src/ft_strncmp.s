; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncmp.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rcherik <rcherik@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/04 16:03:01 by rcherik           ;+;    ;+;              ;
;    Updated: 2015/02/04 16:03:01 by rcherik          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strncmp

segment .text

ft_strncmp:
	xor rax, rax
	xor rbx, rbx
	cmp rdi, 0
	je end
	cmp rsi, 0
	je end
	cmp rdx, 0
	je end

loop:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, 0
	je diff
	cmp bl, 0
	je diff
	cmp al, bl
	jl lower
	jg greater
	inc rdi
	inc rsi
	dec edx
	cmp edx, 0
	je end
	jmp loop

diff:
	sub eax, ebx
	ret

end:
	mov rax, 0
	ret

lower:
	mov rax, '-1'
	ret

greater:
	mov rax, '1'
	ret
