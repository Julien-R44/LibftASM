;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 03:27:56 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

section .text
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy
	global _ft_strdup

_ft_strdup:
	push	rdi
	call	_ft_strlen
	mov		rdi, rax
	call	_malloc
	mov		rdi, rax
	pop		rsi
	call	_ft_strcpy
	ret
