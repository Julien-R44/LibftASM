;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:44:36 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 07:03:47 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	global _ft_strcat

_ft_strcat:
	mov		rax, rdi

loop:
	cmp		byte[rdi], 0
	jz		cpy
	inc		rdi
	jmp		loop

cpy:
	cmp		byte[rsi], 0
	jz		end
	movsb
	jmp		cpy

end:
	mov		byte[rdi], 0x0
	ret
