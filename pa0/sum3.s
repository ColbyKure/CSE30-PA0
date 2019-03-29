	.cpu	cortex-a53
	.syntax	unified

	.global	sum3

	.section	.rodata
fmt:
	.asciz	"0x%08X\n"

	.data
c:	.byte	0xCC

	.align	1
s:	.hword	0x8581

	.align	2
i1:	.word	0x98765432
x:	.word	0x33331111

	.text
	.align 2

sum3:
	push	{fp, lr}
	add	fp, sp, 4

	ldr	r0, =x
	ldr	r1, =s

	ldrsh	r2, [r1]
	strb	r2, [r0, 1]
	lsr	r2, r2, 12
	strb	r2, [r0, 3]

	ldr	r1, [r0]
	ldr	r0, =fmt
	bl	printf

	ldr	r0, =i1
	ldr	r1, =c
	ldrb	r2, [r1]
	strh	r2, [r0, 2]
	strb	r2, [r0]
	ldr	r1, [r0]
	ldr	r0, =fmt
	bl	printf

	mov	r0, 0
	sub	sp, fp, 4
	pop	{fp, pc}


