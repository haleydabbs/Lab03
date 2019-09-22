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
	ldr	r3, .L20
	ldr	r2, .L20+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L19
	pop	{r4, lr}
	bx	lr
.L19:
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L20+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L20+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	oldButtons
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
	ldr	r3, .L24
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L24+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L40+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L37
.L27:
	tst	r3, #2
	beq	.L29
	ldr	r3, .L40+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L38
.L29:
	ldr	r3, .L40+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L39
	pop	{r4, lr}
	bx	lr
.L39:
	mov	r1, #3
	ldr	r2, .L40+24
	mov	r0, #992
	ldr	r3, .L40+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L37:
	ldr	r3, .L40+28
	ldr	r0, .L40+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L40+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	mov	r1, #4
	ldr	r2, .L40+24
	mov	r0, #31
	ldr	r3, .L40+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
	ldr	r0, .L44+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L44+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L58
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L47
	ldr	r2, .L58+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L56
.L47:
	tst	r3, #4
	beq	.L46
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L57
.L46:
	pop	{r4, lr}
	bx	lr
.L56:
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L58+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	ldr	r3, .L58+8
	ldr	r0, .L58+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r2, .L62
	mov	r0, #992
	ldr	r3, .L62+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L73
	pop	{r4, lr}
	bx	lr
.L73:
	ldr	r3, .L74+8
	ldr	r0, .L74+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r2, .L87
	push	{r4, r7, fp, lr}
	ldr	r0, .L87+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L87+12
	ldr	fp, .L87+16
	str	r3, [r6]
	ldr	r5, .L87+20
	ldr	r10, .L87+24
	ldr	r9, .L87+28
	ldr	r8, .L87+32
	ldr	r7, .L87+36
	ldr	r4, .L87+40
.L77:
	ldrh	r3, [fp]
.L78:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L78
.L80:
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L79
	.word	.L79
.L79:
	mov	lr, pc
	bx	r7
.L84:
	ldr	r2, [r6]
	b	.L77
.L81:
	mov	lr, pc
	bx	r8
	b	.L84
.L82:
	mov	lr, pc
	bx	r9
	b	.L84
.L83:
	mov	lr, pc
	bx	r10
	b	.L84
.L88:
	.align	2
.L87:
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
	ldr	r2, .L91
	mov	r0, #31
	ldr	r3, .L91+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	.global	seed
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	seed, %object
	.size	seed, 4
seed:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
