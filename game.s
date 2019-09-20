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
	.global	drawBar
	.arch armv4t
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
	ldr	r4, .L4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawRect
	.size	drawBar, .-drawBar
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #140
	mov	r5, #1
	mov	r4, #10
	mov	lr, #5
	mov	r2, #118
	mov	ip, #992
	mov	r0, #20
	ldr	r3, .L8
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3]
	str	r1, [r3, #8]
	strh	ip, [r3, #28]	@ movhi
	str	r0, [r3, #32]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, lr}
	ldr	r4, .L12
	sub	sp, sp, #12
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r5, .L12+4
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r1, [r4]
	ldr	r2, [r4, #24]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	drawRect
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mvn	r1, #1
	mov	r4, #2
	mov	lr, #1
	mov	r2, #0
	mvn	ip, #32768
	ldr	r3, .L18
	add	r0, r3, #200
.L15:
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stm	r3, {r1, r2}
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L15
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L31
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L30
.L21:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L21
.L30:
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r4, .L31+4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #24]
	ldr	r6, [r4]
	add	ip, r0, r3, lsl #3
	add	lr, r2, r2, lsr #31
	str	r6, [r0, r3, lsl #3]
	ldr	r2, [r4, #4]
	ldr	r3, [ip, #24]
	add	r2, r2, lr, asr r5
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr r5
	str	r5, [ip, #32]
	str	r1, [ip, #36]
	str	r3, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	bullets
	.word	player
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L44+4
	bne	.L34
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4, #4]
	blt	.L34
.L35:
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #32]
	beq	.L43
	ldr	r2, .L44+12
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L38
.L43:
	add	r3, r3, #1
.L37:
	str	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L34:
	ldr	r3, .L44
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L35
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #24]
	rsb	r0, r1, #240
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4, #4]
	b	.L35
.L38:
	cmp	r3, #19
	ble	.L43
	bl	fireBullet
	mov	r3, #1
	b	.L37
.L45:
	.align	2
.L44:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	mov	r0, #0
	ldr	r3, .L53
	add	r1, r3, #200
.L49:
	ldr	r2, [r3, #32]
	cmp	r2, #1
	beq	.L52
.L47:
	str	r0, [r3, #32]
.L48:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L49
	pop	{r4, lr}
	bx	lr
.L52:
	ldr	ip, [r3]
	ldr	r2, [r3, #20]
	add	r2, ip, r2
	cmp	r2, #0
	ble	.L47
	ldr	r2, [r3, #16]
	add	ip, r2, ip
	str	ip, [r3]
	b	.L48
.L54:
	.align	2
.L53:
	.word	bullets
	.size	updateGame, .-updateGame
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #1
	beq	.L58
.L56:
	mov	r3, #0
	str	r3, [r0, #32]
	bx	lr
.L58:
	ldr	r2, [r0]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L56
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L63
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L64
.L61:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L64:
	str	r3, [sp]
	ldr	r5, .L65
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L61
.L63:
	mov	r2, #0
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L65
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L61
.L66:
	.align	2
.L65:
	.word	drawRect
	.size	drawBullet, .-drawBullet
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
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawPlayer
	mov	r3, #31
	ldr	r4, .L69
	mov	r2, #3
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #120
	mov	r3, #240
	ldr	r5, .L69+4
	mov	lr, pc
	bx	r5
	mov	r0, r4
	bl	drawBullet
	add	r0, r4, #40
	bl	drawBullet
	add	r0, r4, #80
	bl	drawBullet
	add	r0, r4, #120
	bl	drawBullet
	add	r0, r4, #160
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawBullet
.L70:
	.align	2
.L69:
	.word	bullets
	.word	drawRect
	.size	drawGame, .-drawGame
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
	ldr	r4, .L75
	ldr	r5, .L75+4
	ldr	r8, .L75+8
	ldr	r7, .L75+12
	add	r6, r4, #220
.L72:
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
	bne	.L72
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L76:
	.align	2
.L75:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #1
	mov	r3, #140
	mov	r5, #118
	mov	r10, #10
	mov	r9, #5
	mov	r8, #992
	mov	r7, #20
	mov	r4, r6
	mov	lr, #2
	mvn	r1, #1
	mov	r2, #0
	mvn	ip, #32768
	ldr	r0, .L81
	str	r3, [r0]
	str	r3, [r0, #8]
	ldr	r3, .L81+4
	str	r6, [r0, #16]
	str	r10, [r0, #20]
	str	r9, [r0, #24]
	strh	r8, [r0, #28]	@ movhi
	str	r7, [r0, #32]
	str	r5, [r0, #4]
	str	r5, [r0, #12]
	add	r0, r3, #200
.L78:
	str	lr, [r3, #20]
	str	r4, [r3, #24]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stm	r3, {r1, r2}
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L78
	bl	initBalls
	mov	r2, #5
	ldr	r3, .L81+8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
	.word	player
	.word	bullets
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
	ble	.L85
	ldr	r3, [r0, #24]
	add	r3, r2, r3
	cmp	r3, #120
	ble	.L86
.L85:
	rsb	ip, ip, #0
	str	ip, [r0, #16]
.L86:
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ldr	r1, [r0, #20]
	ble	.L94
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
.L94:
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
	bne	.L102
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L103
.L100:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L103:
	str	r3, [sp]
	ldr	r5, .L104
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L100
.L102:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L104
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
	b	.L100
.L105:
	.align	2
.L104:
	.word	drawRect
	.size	drawBall, .-drawBall
	.comm	ballsRemaining,4,4
	.comm	balls,220,4
	.comm	bullets,200,4
	.comm	player,36,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
