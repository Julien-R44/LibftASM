;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:45 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 07:08:14 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_strlen

_ft_strlen:
	mov		rcx, -1
	mov		al, 0
	cld
	repnz	scasb
	mov		rax, rcx
	neg		rax
	sub		rax, 2
	ret

is_null:
	mov		rax, 0
	ret
