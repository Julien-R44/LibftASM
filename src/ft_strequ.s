;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 01:02:05 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:02:07 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_strequ

_ft_strequ:
loop:
	cmp		dil, sil
	jne		notequ
	cmp		dil, 0
	je		isequ
	inc		dil
	inc		sil
	jmp		loop

isequ:
	mov		rax, 1
	ret

notequ:
	mov		rax, 0
	ret
