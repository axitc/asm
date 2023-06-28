;N-TH FIBONACCI NUMBER GENERATOR

	LDA	#$00
	STA	$0200	;nth number = (n-1)th + (n-2)th
	LDA	#$01
	STA	$0201	;(n-1)th
	LDA	#$00
	STA	$0202	;(n-2)th
	LDA	#$0A
	STA	$0203	;nth counter

LOOP:
	LDA	$0202
	ADC	$0201
	STA	$0200
	LDA	$0201
	STA	$0202
	LDA	$0200
	STA	$0201
	DEC	$0203
	LDA	$0203
	BNE	LOOP

	LDA	#$00
	STA	$0201
	STA	$0202
	LDA	$0200
	BRK