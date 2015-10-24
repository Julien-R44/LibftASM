;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 04:06:35 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 05:54:05 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

%include "libfts.inc"

global	_ft_cat

section	.data
	_buff:	db	0

section	.text

_ft_cat:
	push 	rdi
	mov 	r9, rdi
	jmp 	_loop

_loop:

	mov 	rax, READ
	mov 	rdi, r9 	;fd
	lea 	rsi, [rel _buff]
	mov 	rdx, 1
	syscall
	cmp 	rax, 1
	jne 	exit
	mov 	rax, WRITE

	mov 	rdi, STDOUT
	lea 	rsi, [rel _buff]
	mov 	rdx, 1
	syscall
	cmp 	rax, -1
	je 		exit
	jmp 	_loop

exit:
	pop 	rdi
	mov 	rax, 0
	ret
