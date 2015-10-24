;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 00:49:25 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_islower

_ft_islower:
	cmp		edi, 'a'
	jl		notlower
	cmp		edi, 'z'
	jg		notlower
	mov		rax, 1
	ret

notlower:
	mov		rax, 0
	ret
