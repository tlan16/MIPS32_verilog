# Laboratory Exercise 8_1
# Based on code written by Jan Eric Larsson, 27 October 1998

.set noreorder 			# Avoid reordering instructions
.text 					# Start generating instructions
.globl start 			# This label should be globally known
.ent start 				# This label marks an entry point

start:
		li $8, 0x1		 # Load the value 1
		li $9, 0x2		 # Load the value 2
		add $10, $8, $9  # Add the values
		
infinite:
	b infinite 	# an infinite loop so that the
				# computer will not execute code
				# past the end of the program
	nop 		# all branch and lw, sw must
				# be followed by a nop
				
.end start 		# Marks the end of the program

# Laboratory Exercise 8_2 
# Written by Jan Eric Larsson, 27 October 1998 

.set noreorder			 # Avoid reordering instructions
.text					 # Start generating instructions 
.globl start			 # This label should be globally known
.ent start				 # This label marks an entry point

start:
	lui $9, 0xbf90   	 # Load upper half of port address 
						 # Lower half is filled with zeros 
repeat: 
	lbu $8, 0x0($9)    	 # Read from the input port 
	nop           	  	 # Needed after load 
	ori $8, $8, 0xc0	 # Force firt tow LED on, by OR itself by 1100,0000
	andi $8, $8, 0xcf	 # Force 3rd and 4th LED off, by add itself by 1100,1111
	
	sb $8, 0x0($9)    	 # Write to the output port 
	b repeat     	     # Repeat the read and write cycle 
	nop         		 # Needed after branch 
	li $8, 0       		 # Clear the register 
	
.end start       	  	 # Marks the end of the program