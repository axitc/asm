;loading the data
;10 numbers
	LDA	#$A2
	STA	$0200
	LDA	#$58
	STA	$0201
	LDA	#$B5
	STA	$0202
	LDA	#$EE
	STA	$0203
	LDA	#$0C
	STA	$0204
	LDA	#$00
	STA	$0205
	LDA	#$47
	STA	$0206
	LDA	#$EF
	STA	$0207
	LDA	#$04
	STA	$0208
	LDA	#$CD
	STA	$0209

	LDX	#$00		;initialize with first index position
	LDY	$0200,X		;store the max number seen yet

LOOP:
	LDA	X
	CMP	#$0A
	BEQ	EXIT
	LDA	$0200,X
	CMP	Y
	LDA	$0200,X		;BEWARE - BUG LIKELY
	INX
	BMI	LOOP
	LDY	A
	JMP	LOOP

EXIT:
	STY	$0220
	BRK
