;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 06:48:59 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _ft_islower
	global _ft_toupper

_ft_toupper:
	call	_ft_islower
	cmp		rax, 1
	je		convert
	mov		rax, rdi
	ret

convert:
	sub		edi, 32
	mov		rax, rdi
	ret
