
example1.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b580      	push	{r7, lr}
   2:	b084      	sub	sp, #16
   4:	af00      	add	r7, sp, #0
   6:	230a      	movs	r3, #10
   8:	607b      	str	r3, [r7, #4]
   a:	230c      	movs	r3, #12
   c:	60bb      	str	r3, [r7, #8]
   e:	68b9      	ldr	r1, [r7, #8]
  10:	6878      	ldr	r0, [r7, #4]
  12:	f7ff fffe 	bl	24 <add>
  16:	60f8      	str	r0, [r7, #12]
  18:	2300      	movs	r3, #0
  1a:	4618      	mov	r0, r3
  1c:	3710      	adds	r7, #16
  1e:	46bd      	mov	sp, r7
  20:	bd80      	pop	{r7, pc}
  22:	bf00      	nop

00000024 <add>:
  24:	b480      	push	{r7}
  26:	b083      	sub	sp, #12
  28:	af00      	add	r7, sp, #0
  2a:	6078      	str	r0, [r7, #4]
  2c:	6039      	str	r1, [r7, #0]
  2e:	687a      	ldr	r2, [r7, #4]
  30:	683b      	ldr	r3, [r7, #0]
  32:	4413      	add	r3, r2
  34:	4618      	mov	r0, r3
  36:	370c      	adds	r7, #12
  38:	46bd      	mov	sp, r7
  3a:	f85d 7b04 	ldr.w	r7, [sp], #4
  3e:	4770      	bx	lr

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	5528203a 	strpl	r2, [r8, #-58]!	; 0xffffffc6
   8:	746e7562 	strbtvc	r7, [lr], #-1378	; 0xfffffa9e
   c:	694c2f75 	stmdbvs	ip, {r0, r2, r4, r5, r6, r8, r9, sl, fp, sp}^
  10:	6f72616e 	svcvs	0x0072616e
  14:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
  18:	312d312e 	teqcc	sp, lr, lsr #2
  1c:	75627536 	strbvc	r7, [r2, #-1334]!	; 0xfffffaca
  20:	3675746e 	ldrbtcc	r7, [r5], -lr, ror #8
  24:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  28:	00312e39 	eorseq	r2, r1, r9, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003441 	andeq	r3, r0, r1, asr #8
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000002a 	andeq	r0, r0, sl, lsr #32
  10:	412d3705 	teqmi	sp, r5, lsl #14
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	12040a02 	andne	r0, r4, #8192	; 0x2000
  20:	15011404 	strne	r1, [r1, #-1028]	; 0xfffffbfc
  24:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  28:	1a011901 	bne	46434 <add+0x46410>
  2c:	1c031b02 	stcne	11, cr1, [r3], {2}
  30:	22061e01 	andcs	r1, r6, #1, 28
  34:	Address 0x00000034 is out of bounds.

