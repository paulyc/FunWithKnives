section	.text
global	start

start:
	mov	rax, 0x02000004 ; write
	mov	rdi, 1		; stdout
	mov	rsi, msg
	mov	rdx, msg.len
	syscall

	mov	rax, 0x07
	cpuid

	mov	rax, 0x02000001	; exit
	syscall

section	.data

msg:	db	"Hello, world!", 10
.len:	equ	$ - msg

; returned by cpuid when called with eax 0x07
; EBX
cpuid7ebxstrs:	db	"FSGSBASE. Supports RDFSBASE/RDGSBASE/WRFSBASE/WRGSBASE if 1.", 0, \
			"IA32_TSC_ADJUST MSR is supported if 1.", 0, \
			"SGX. Supports Intel® Software Guard Extensions (Intel® SGX Extensions) if 1.", 0, \
			"BMI1.", 0, \
			"HLE.", 0, \
			"AVX2.", 0, \
			"FDP_EXCPTN_ONLY. x87 FPU Data Pointer updated only on x87 exceptions if 1.", 0, \
			"SMEP. Supports Supervisor-Mode Execution Prevention if 1.", 0, \
			"BMI2.", 0, \
			"Supports Enhanced REP MOVSB/STOSB if 1.", 0, \
			"INVPCID. If 1, supports INVPCID instruction for system software that manages process-context identifiers.", 0, \
			"RTM.", 0, \
			"RDT-M. Supports Intel® Resource Director Technology (Intel® RDT) Monitoring capability if 1.", 0, \
			"Deprecates FPU CS and FPU DS values if 1.", 0, \
			"MPX. Supports Intel® Memory Protection Extensions if 1.", 0, \
			"RDT-A. Supports Intel® Resource Director Technology (Intel® RDT) Allocation capability if 1.", 0, \
			"AVX512F.", 0, \
			"AVX512DQ.", 0, \
			"RDSEED.", 0, \
			"ADX.", 0, \
			"SMAP. Supports Supervisor-Mode Access Prevention (and the CLAC/STAC instructions) if 1.", 0, \
			"AVX512_IFMA.", 0, \
			"Reserved.", 0, \
			"CLFLUSHOPT.", 0, \
			"CLWB.", 0, \
			"Intel Processor Trace.", 0, \
			"AVX512PF. (Intel® Xeon Phi™ only.)", 0, \
			"AVX512ER. (Intel® Xeon Phi™ only.)", 0, \
			"AVX512CD.", 0, \
			"SHA. supports Intel® Secure Hash Algorithm Extensions (Intel® SHA Extensions) if 1.", 0, \
			"AVX512BW.", 0, \
			"AVX512VL.", 0

; ECX
cpuid7ecxstrs: 	db	"PREFETCHWT1. (Intel® Xeon Phi™ only.)", 0, \
			"AVX512_VBMI.", 0, \
			"UMIP. Supports user-mode instruction prevention if 1.", 0, \
			"PKU. Supports protection keys for user-mode pages if 1.", 0, \
			"OSPKE. If 1, OS has set CR4.PKE to enable protection keys (and the RDPKRU/WRPKRU instructions).", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"The value of MAWAU used by the BNDLDX and BNDSTX instructions in 64-bit mode.", 0, \
			"The value of MAWAU used by the BNDLDX and BNDSTX instructions in 64-bit mode.", 0, \
			"The value of MAWAU used by the BNDLDX and BNDSTX instructions in 64-bit mode.", 0, \
			"The value of MAWAU used by the BNDLDX and BNDSTX instructions in 64-bit mode.", 0, \
			"The value of MAWAU used by the BNDLDX and BNDSTX instructions in 64-bit mode.", 0, \
			"RDPID and IA32_TSC_AUX are available if 1.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"Reserved.", 0, \
			"SGX_LC. Supports SGX Launch Configuration if 1.", 0, \
			"Reserved.", 0
