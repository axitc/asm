	LDX	#$08
DECREMENT:
	DEX
	STX	$0200
	CPX	#$03
	BNE	DECREMENT
	STX	$0201
	BRK
