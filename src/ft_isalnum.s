;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:44:21 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 00:53:39 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _ft_isalpha
	extern _ft_isdigit
	global _ft_isalnum

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je		isalnum
	call	_ft_isdigit
	cmp		rax, 1
	je		isalnum
	mov		rax, 0
	ret

isalnum:
	mov		rax, 1
	ret
