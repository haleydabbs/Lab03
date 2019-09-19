	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	ldr	r3, .L13
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r1, [r3]
	add	r3, r0, r2
	mov	r0, #0
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L10
.L8:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L8
.L10:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L7
.L5:
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldr	r2, .L19+4
	ldr	r1, [r3]
	sub	r3, r1, #2
	add	r2, r1, r2
.L16:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L16
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	76798
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L22:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L22
	mov	r2, #67108864
.L23:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L23
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #4]
	ldr	ip, [sp, #12]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r0
	ble	.L31
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L33
.L31:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L33:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L31
	add	r1, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r1, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
