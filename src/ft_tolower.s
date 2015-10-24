;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:05:59 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _ft_isupper
	global _ft_tolower

_ft_tolower:
	call	_ft_isupper
	cmp		rax, 1
	je		convert
	mov		rax, rdi
	ret

convert:
	add		edi, 32
	mov		rax, rdi
	ret
