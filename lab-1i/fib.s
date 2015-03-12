	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push	{r3, r4, r5, lr}
	cmp	r0, #1
	it	le			@ if r0 == 1 || r0 ==0
	pople	{r3, r4, r5, pc}	@ return r0
	
	subs	r3, r0, #1		@ begin with r0 == 2
	mov	r4, #0			@ r4 initialize to 0
	mov	r5, #1			@ r5 initialize to 1
loop:
	adds	r6, r4, r5		@ r6 is result , r4 + r5 are sum of previos addition.
	mov	r4, r5			@ shift r5 to r4
	mov	r5, r6			@ shift r6 to r5

	subs	r3, r3, #1		@ loop variable
	bne	loop			@ brench instruction
	mov 	r0, r6			@ result r0 = r6
	pop	{r3, r4, r5, pc}	@ return result

	.size fibonacci, .-fibonacci
	.end
