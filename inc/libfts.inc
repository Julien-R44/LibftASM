%ifndef LIBFTS_INC
 %define LIBFTS_INC

 ; %ifdef LINUX
	; %define READ				0
	; %define WRITE				1
 ; %endif

; %ifdef OSX
	%define READ				0x2000003
	%define WRITE				0x2000004
; %endif

 %define BUFF_SIZE	1024
 %define STDOUT		1

%endif
