	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, r5, lr}

	subs	r4, r0, #0
	ble	.L3

	cmp	r4, #1
	beq	.L4

	subs	r3, r4, #1
	mov 	r5, #0
	mov	r6, #1
loop:
	adds	r7, r5, r6
	mov	r5, r6
	mov	r6, r7

	subs	r3, r3, #1	@loop 
	bne 	loop

	mov r0, r7

	pop {r3, r4, r5, pc}		@EPILOG


.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
