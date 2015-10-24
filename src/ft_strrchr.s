;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strrchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 01:02:05 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/20 01:02:07 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section	.text
	extern _ft_strchr
	global _ft_strrchr


_ft_strrchr:
	xor		r10, r10

loop:
	cmp		byte[rdi], 0
	jz		zero
	cmp		byte[rdi], sil
	jz		save
	inc		rdi
	jmp		loop

save:
	mov		r10, rdi
	inc		rdi
	jmp		loop

zero:
	cmp		sil, 0
	jz		end
	cmp		r10, 0
	jnz		end2
	mov		rax, 0
	ret

end:
	mov		rax, rdi
	ret

end2:
	mov		rax, r10
	ret
