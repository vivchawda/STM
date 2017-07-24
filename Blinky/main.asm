stm8/

;	Simple BLINK step-through program for STM8S
;	Stuff needed:
; STM8S Minimum dev board
;	STM-Link programmer
; LED/Oscilloscope/DMM/Toungue to test the pin output
; 
;	Connections:
;	STM-link to Dev board
; GND to GND
; NRS to NRST
;	SWM to SWIM
; 3V3 to 3V3

	segment 'rom'
	
	bset $500C, #7	; Set DDR high for Pin 7 of PORT C
	bset $500D, #7
	bset $500E, #7
loop_forever
	ldw X,#$F
loop_delay	
	nop
	nop
	nop
	nop
	nop
	decw X
	jrne loop_delay
	bcpl $500A, #7	;	Toggle Bit 7 in the ODR for PORT C
	jra loop_forever
	
	end
	