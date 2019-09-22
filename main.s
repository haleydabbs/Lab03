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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L4
	push	{r4, lr}
	ldr	r0, .L4+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	ldr	r0, .L8+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	fillScreen
	.word	32736
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, .L17
	ldr	r4, .L17+4
	ldrh	r2, [r2]
	ldr	r3, [r4]
	tst	r2, #8
	add	r3, r3, #1
	str	r3, [r4]
	beq	.L10
	ldr	r3, .L17+8
	ldrh	r0, [r3]
	ands	r5, r0, #8
	beq	.L16
.L10:
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	mov	r0, r5
	ldr	r6, .L17+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	ldr	r0, [r4]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L17+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
	.word	oldButtons
	.word	seed
	.word	buttons
	.word	srand
	.word	initGame
	.word	fillScreen
	.word	state
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L21
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L21+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L22:
	.align	2
.L21:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L24
	ldr	r2, .L37+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L34
.L24:
	tst	r3, #2
	beq	.L26
	ldr	r3, .L37+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L35
.L26:
	ldr	r3, .L37+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L36
	pop	{r4, lr}
	bx	lr
.L36:
	mov	r1, #3
	ldr	r2, .L37+24
	mov	r0, #992
	ldr	r3, .L37+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L34:
	ldr	r3, .L37+28
	ldr	r0, .L37+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L37+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L35:
	mov	r1, #4
	ldr	r2, .L37+24
	mov	r0, #31
	ldr	r3, .L37+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	ballsRemaining
	.word	state
	.word	fillScreen
	.word	15855
	.size	game, .-game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L41
	ldr	r0, .L41+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L41+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	fillScreen
	.word	15855
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L55
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L44
	ldr	r2, .L55+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L53
.L44:
	tst	r3, #4
	beq	.L43
	ldr	r3, .L55+4
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L54
.L43:
	pop	{r4, lr}
	bx	lr
.L53:
	ldr	r3, .L55+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L55+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	ldr	r3, .L55+8
	ldr	r0, .L55+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.word	32736
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	push	{r4, lr}
	ldr	r2, .L59
	mov	r0, #992
	ldr	r3, .L59+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	state
	.word	fillScreen
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L71+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L70
	pop	{r4, lr}
	bx	lr
.L70:
	ldr	r3, .L71+8
	ldr	r0, .L71+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L84
	push	{r4, r7, fp, lr}
	ldr	r0, .L84+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L84+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L84+12
	ldr	fp, .L84+16
	str	r3, [r6]
	ldr	r5, .L84+20
	ldr	r10, .L84+24
	ldr	r9, .L84+28
	ldr	r8, .L84+32
	ldr	r7, .L84+36
	ldr	r4, .L84+40
.L74:
	ldrh	r3, [fp]
.L75:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L75
.L77:
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L76
	.word	.L76
.L76:
	mov	lr, pc
	bx	r7
.L81:
	ldr	r2, [r6]
	b	.L74
.L78:
	mov	lr, pc
	bx	r8
	b	.L81
.L79:
	mov	lr, pc
	bx	r9
	b	.L81
.L80:
	mov	lr, pc
	bx	r10
	b	.L81
.L85:
	.align	2
.L84:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, lr}
	ldr	r2, .L88
	mov	r0, #31
	ldr	r3, .L88+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	state
	.word	fillScreen
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
