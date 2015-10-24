;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:43:40 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 05:41:45 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

%include "libfts.inc"

section .text
	global _ft_bzero

_ft_bzero:
	mov		rbx, rdi
	mov		rcx, 0

loop:
	cmp		rcx, rsi
	jz		end
	mov 	byte[rbx], 0x0
	inc		rbx
	inc		rcx
	jmp		loop

end:
	ret
