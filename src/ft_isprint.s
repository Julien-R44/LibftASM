;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 01:15:22 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:24:53 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_isprint

_ft_isprint:
	mov		rax, 1
	cmp		edi, 31
	jle		notprintable
	cmp		edi, 126
	jg		notprintable
	ret

notprintable:
	mov		rax, 0
	ret
