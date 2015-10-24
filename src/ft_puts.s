;  **************************************************************************  ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: y0ja <y0ja@student.42.fr>                  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 00:42:18 by y0ja              #+#    #+#              ;
;    Updated: 2015/03/21 06:53:15 by y0ja             ###   ########.fr        ;
;                                                                              ;
;  **************************************************************************  ;

%include "libfts.inc"

section .data
data:
	.null:		db	"(null)", 10

section .text
	extern _ft_strlen
	global _ft_puts

_ft_puts:
	cmp		rdi, 0
	je		_null
	lea		rsi, [rel rdi] ; string
	call	_ft_strlen
	mov		rdi, 1 ; file descriptor
	mov		rdx, rax ; size_t
	push	rdx ; save len to ret
	mov		rax, WRITE ; syscall nb
	syscall

newline:
	mov		rax, WRITE
	mov		rdi, 1
	mov		byte[r9], 10
	lea		rsi, [rel r9]
	mov		rdx, 1
	syscall
	pop		rax
	ret

_null:
	lea		rsi, [rel data.null]
	mov		rdi, 1
	mov		rdx, 8
	mov		rax, WRITE
	syscall
	ret
