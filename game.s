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
	.file	"game.c"
	.text
	.align	2
	.global	updateGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawGame, .-drawGame
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #31
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #120
	ldr	r4, .L6
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	drawRect
	.size	drawBar, .-drawBar
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #10
	ldr	r4, .L12
	ldr	r5, .L12+4
	ldr	r8, .L12+8
	ldr	r7, .L12+12
	add	r6, r4, #220
.L9:
	str	r9, [r4, #24]
	str	r9, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r2, #1
	mov	ip, #31744
	mov	r1, #0
	smull	r3, lr, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, lr, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r2
	ldr	r3, [r4]
	add	r0, r0, #10
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	strh	ip, [r4, #32]	@ movhi
	str	r1, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L9
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	balls
	.word	rand
	.word	156180629
	.word	2114445439
	.size	initBalls, .-initBalls
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	initBalls
	mov	r2, #5
	ldr	r3, .L16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	ballsRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0]
	cmp	r2, #0
	ldr	ip, [r0, #16]
	ble	.L20
	ldr	r3, [r0, #24]
	add	r3, r2, r3
	cmp	r3, #120
	ble	.L21
.L20:
	rsb	ip, ip, #0
	str	ip, [r0, #16]
.L21:
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ldr	r1, [r0, #20]
	ble	.L29
	str	lr, [sp, #-4]!
	ldr	lr, [r0, #28]
	add	lr, r3, lr
	cmp	lr, #239
	rsbgt	r1, r1, #0
	add	r2, r2, ip
	add	r3, r3, r1
	stm	r0, {r2, r3}
	strgt	r1, [r0, #20]
	ldr	lr, [sp], #4
	bx	lr
.L29:
	rsb	r1, r1, #0
	add	r2, r2, ip
	add	r3, r3, r1
	stm	r0, {r2, r3}
	str	r1, [r0, #20]
	bx	lr
	.size	updateBall, .-updateBall
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L37
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L38
.L35:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L38:
	str	r3, [sp]
	ldr	r5, .L39
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L35
.L37:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L39
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L35
.L40:
	.align	2
.L39:
	.word	drawRect
	.size	drawBall, .-drawBall
	.comm	ballsRemaining,4,4
	.comm	balls,220,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
