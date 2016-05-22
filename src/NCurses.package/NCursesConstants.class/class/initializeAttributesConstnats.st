as yet unclassified
initializeAttributesConstnats

	"  
	  A_NORMAL        Normal display (no highlight)
    A_STANDOUT      Best highlighting mode of the terminal.
    A_UNDERLINE     Underlining
    A_REVERSE       Reverse video
    A_BLINK         Blinking
    A_DIM           Half bright
    A_BOLD          Extra bright or bold
    A_PROTECT       Protected mode
    A_INVIS         Invisible or blank mode
    A_ALTCHARSET    Alternate character set
    A_CHARTEXT      Bit-mask to extract a character
    COLOR_PAIR(n)   Color-pair number n 
"

	A_ALTCHARSET := 16r400000.
	A_ATTRIBUTES := 16rFFFFFF00.
	A_BLINK := 16r80000.
	A_BOLD := 16r200000.
	A_CHARTEXT := 16rFF.
	A_COLOR := 16rFF00.
	A_DIM := 16r100000.
	A_INVIS := 16r800000.
	A_PROTECT := 16r1000000.
	A_REVERSE := 16r40000.
	A_STANDOUT := 16r10000.
	A_UNDERLINE := 16r20000.
	
	WA_ALTCHARSET := 16r400000.
	WA_BLINK := 16r80000.
	WA_BOLD := 16r200000.
	WA_DIM := 16r100000.
	WA_HORIZONTAL := 16r2000000.
	WA_INVIS := 16r800000.
	WA_LEFT := 16r4000000.
	WA_LOW := 16r8000000.
	WA_PROTECT := 16r1000000.
	WA_REVERSE := 16r40000.
	WA_RIGHT := 16r10000000.
	WA_STANDOUT := 16r10000.
	WA_TOP := 16r20000000.
	WA_UNDERLINE := 16r20000.
	WA_VERTICAL := 16r40000000.
