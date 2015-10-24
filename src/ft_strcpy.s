;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 05:11:01 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 03:28:50 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _ft_strlen
	global _ft_strcpy

_ft_strcpy:
	push	rdi
	call	get_len
	pop		rdi
	mov		rax, rdi
	mov		rcx, r9
	cld
	rep 	movsb
	ret

get_len:
	mov		rdi, rsi
	call	_ft_strlen
	mov		r9, rax
	inc		r9
	ret

