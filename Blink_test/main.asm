stm8/

	segment 'rom'
	
start
	bset $500C, #7
loop forever
	ldw X,#$FFFF
loop delay
	nop
	decw X
	jrne loop_delay
	bcpl $500A, #7
	jra loop_forever
	
	end
	