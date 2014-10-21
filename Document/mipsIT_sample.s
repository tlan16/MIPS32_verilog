.set noreorder 			# Avoid reordering instructions
.text 					# Start generating instructions
.globl start 			# This label should be globally known
.ent start 				# This label marks an entry point

start:
	ori $7, $7, 0x0		# a=0
	ori $8, $8, 0x2		# b=2
	ori $9, $9, 0x3		# c=3

loop:
	add $7, $7, $8		# a=a+b
	subu $9, $9, 0x0001	# c=c-1

bgtu $9, 0x0, loop		# branch if c>0

.end start				# end start
