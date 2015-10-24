;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 01:02:05 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:02:07 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _ft_isupper
	extern _ft_islower
	global _ft_isalpha

_ft_isalpha:
	call	_ft_isupper
	cmp		rax, 1
	je		isalpha
	call	_ft_islower
	cmp		rax, 1
	je		isalpha
	mov		rax, 0
	ret

isalpha:
	mov		rax, 1
	ret
