.text
_start:
	li $v0, 13 #opens the file,w rite if nit exustubg
	la $a0, address 
	li $a1, 9
	syscall
	
	move $t1, $v0 #stores file desc
	
	#writes
	move $a0, $t1 # gets file desc from memory
	la $a1, output
	li $a2, 30
	li $v0, 15
	syscall 
	
	#closes
	move $a0, $t1
	li $v0, 16
	syscall 
	
	
	li $v0, 10   # exit syntax 
	li $a0, 13        
	syscall 
	
	

.data
	address:
 	.asciiz "Test.txt"
 	
 	output:
 	.asciiz "I wrote this with assembly"
