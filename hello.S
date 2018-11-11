section	.text
global	start

start:
	mov	rax, 0x02000004 ; write
	mov	rdi, 1		; stdout
	mov	rsi, msg
	mov	rdx, msg.len
	syscall

	mov	rax, 0x02000001	; exit
	syscall

	; get cpuinfo
	;cpuinfo

section	.data

msg:	db	"Hello, world!", 10
.len:	equ	$ - msg
