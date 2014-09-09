	.file	1 "Source.c"

 # -G value = 8, Cpu = 3000, ISA = 1
 # GNU C version cygnus-2.7.2-970404 (mips-mips-ecoff) compiled by GNU C version cygnus-2.7.2-970404.
 # options passed:  -msoft-float
 # options enabled:  -fpeephole -ffunction-cse -fkeep-static-consts
 # -fpcc-struct-return -fcommon -fverbose-asm -fgnu-linker -msoft-float
 # -meb -mcpu=3000

gcc2_compiled.:
__gnu_compiled_c:
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,104,$31		# vars= 80, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	move	$fp,$sp
	jal	__main
	sw	$0,44($fp)
	li	$2,2			# 0x00000002
	sw	$2,16($fp)
	li	$2,2			# 0x00000002
	sw	$2,20($fp)
	li	$2,1			# 0x00000001
	sw	$2,48($fp)
	li	$2,2			# 0x00000002
	sw	$2,52($fp)
	li	$2,3			# 0x00000003
	sw	$2,56($fp)
	li	$2,4			# 0x00000004
	sw	$2,60($fp)
	li	$2,2			# 0x00000002
	sw	$2,24($fp)
	li	$2,2			# 0x00000002
	sw	$2,28($fp)
	li	$2,1			# 0x00000001
	sw	$2,64($fp)
	li	$2,1			# 0x00000001
	sw	$2,68($fp)
	li	$2,1			# 0x00000001
	sw	$2,72($fp)
	li	$2,1			# 0x00000001
	sw	$2,76($fp)
	sw	$0,32($fp)
$L2:
	lw	$2,32($fp)
	lw	$3,16($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L5
	j	$L3
$L5:
	sw	$0,36($fp)
$L6:
	lw	$2,36($fp)
	lw	$3,28($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L9
	j	$L4
$L9:
	sw	$0,40($fp)
$L10:
	lw	$2,40($fp)
	lw	$3,24($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L13
	j	$L11
$L13:
	lw	$2,32($fp)
	move	$3,$2
	sll	$2,$3,3
	addu	$4,$fp,16
	addu	$3,$2,$4
	addu	$2,$3,32
	lw	$3,40($fp)
	move	$4,$3
	sll	$3,$4,2
	addu	$2,$3,$2
	lw	$3,40($fp)
	move	$4,$3
	sll	$3,$4,3
	addu	$5,$fp,16
	addu	$4,$3,$5
	addu	$3,$4,48
	lw	$4,36($fp)
	move	$5,$4
	sll	$4,$5,2
	addu	$3,$4,$3
	lw	$2,0($2)
	lw	$3,0($3)
	mult	$2,$3
	lw	$2,44($fp)
	mflo	$6
	addu	$3,$2,$6
	sw	$3,44($fp)
$L12:
	lw	$2,40($fp)
	addu	$3,$2,1
	sw	$3,40($fp)
	j	$L10
$L11:
	lw	$2,32($fp)
	move	$3,$2
	sll	$2,$3,3
	addu	$4,$fp,16
	addu	$3,$2,$4
	addu	$2,$3,64
	lw	$3,36($fp)
	move	$4,$3
	sll	$3,$4,2
	addu	$2,$3,$2
	lw	$3,44($fp)
	sw	$3,0($2)
	sw	$0,44($fp)
$L8:
	lw	$2,36($fp)
	addu	$3,$2,1
	sw	$3,36($fp)
	j	$L6
$L7:
$L4:
	lw	$2,32($fp)
	addu	$3,$2,1
	sw	$3,32($fp)
	j	$L2
$L3:
	move	$2,$0
	j	$L1
$L1:
	move	$sp,$fp			# sp not trusted here
	lw	$31,100($sp)
	lw	$fp,96($sp)
	addu	$sp,$sp,104
	j	$31
	.end	main
