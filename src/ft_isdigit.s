;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:05:34 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp		edi, '0'
	jl		isnotdigit
	cmp		edi, '9'
	jg		isnotdigit
	mov		rax, 1
	ret

isnotdigit:
	mov		rax, 0
	ret
