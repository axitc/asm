	INP
	STA	A
LOOP	LDA	A
	OUT
	SUB	ONE
	STA	A
	BRZ	END
	BRA	LOOP
END	LDA	A
	SUB	A
	OUT
	HLT
A	DAT
ONE	DAT	1
