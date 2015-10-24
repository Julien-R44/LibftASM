;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 01:02:05 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:02:07 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section	.text
	global _ft_strchr

_ft_strchr:
	mov		rax, rdi

loop:
	cmp		byte[rdi], 0
	jz		end
	cmp		byte[rdi], sil
	jz		find
	inc		rdi
	jmp		loop

find:
	mov		rax, rdi
	ret

end:
	cmp		sil, 0
	jz		find
	mov		rax, 0
	ret
