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
	mov	r0, #0
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r2, .L12+4
	ldr	r3, .L12+8
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	fillScreen
	.word	seed
	.word	srand
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L20:
	.align	2
.L19:
	.word	buttons
	.word	initGame
	.size	start.part.0, .-start.part.0
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
	@ link register save eliminated.
	ldr	r2, .L23
	ldr	r1, .L23+4
	ldr	r3, [r2]
	ldrh	r1, [r1]
	add	r3, r3, #1
	tst	r1, #8
	str	r3, [r2]
	bxeq	lr
	b	start.part.0
.L24:
	.align	2
.L23:
	.word	seed
	.word	oldButtons
	.size	start, .-start
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
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L26
	ldr	r2, .L39+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L26:
	tst	r3, #2
	beq	.L28
	ldr	r3, .L39+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L37
.L28:
	ldr	r3, .L39+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L38
	pop	{r4, lr}
	bx	lr
.L38:
	mov	r1, #3
	ldr	r2, .L39+24
	mov	r0, #992
	ldr	r3, .L39+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L36:
	ldr	r3, .L39+28
	ldr	r0, .L39+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L39+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	mov	r1, #4
	ldr	r2, .L39+24
	mov	r0, #31
	ldr	r3, .L39+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L43
	ldr	r0, .L43+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L43+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r3, .L60
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L60+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L58
.L46:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L60+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #4
	beq	.L59
	pop	{r4, lr}
	bx	lr
.L58:
	b	goToGame
.L59:
	ldr	r3, .L60+8
	ldr	r0, .L60+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
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
	ldr	r2, .L64
	mov	r0, #992
	ldr	r3, .L64+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L75
	pop	{r4, lr}
	bx	lr
.L75:
	ldr	r3, .L76+8
	ldr	r0, .L76+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r2, .L90
	push	{r4, r7, fp, lr}
	ldr	r0, .L90+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L90+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r6, .L90+12
	ldr	fp, .L90+16
	str	r2, [r6]
	ldrh	r0, [fp]
	ldr	r5, .L90+20
	ldr	r8, .L90+24
	ldr	r10, .L90+28
	ldr	r9, .L90+32
	ldr	r7, .L90+36
	ldr	r4, .L90+40
.L80:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L87
.L82:
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L81
	.word	.L81
.L81:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L80
.L83:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L80
.L84:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L80
.L85:
	ldr	ip, [r8]
	tst	r0, #8
	add	r0, ip, #1
	str	r0, [r8]
	beq	.L87
	ldr	r3, .L90+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L80
.L87:
	mov	r0, r3
	b	.L80
.L91:
	.align	2
.L90:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.word	buttons
	.word	oldButtons
	.word	seed
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	start.part.0
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
	ldr	r2, .L94
	mov	r0, #31
	ldr	r3, .L94+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L95:
	.align	2
.L94:
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
