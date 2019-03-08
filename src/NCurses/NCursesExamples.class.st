Class {
	#name : #NCursesExamples,
	#superclass : #Object,
	#pools : [
		'NCursesConstants'
	],
	#category : 'NCurses'
}

{ #category : #examples }
NCursesExamples class >> background [

	<example>
	| lib localWin win |

	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	
	lib bkgdset: ($. asInteger ).
	lib clear.
	lib refresh.
	
	lib print: 'press any key'.
		
	localWin := lib newwin_lines: 5 cols: 15 y: 5 x: 5.

	lib border: localWin.
	lib print: 'local window' at: 2@2 on: localWin.

	lib refresh: localWin.
	
	self waitForInput.

	lib delwin: localWin.
	lib bkgdset: (Character space asInteger ).
	


	lib endwin.
]

{ #category : #examples }
NCursesExamples class >> colors [

	<example>
	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	
	lib start_color.
	
	0 to: 7 do: [ :i |		
				lib init_pair: i foreground: i background: i+1\\7.
		].	
					
	lib clear.
		
	
		1 to: 8 do: [ :i |		
				lib attron: (lib color_pair: i-1).	
				lib print: ('color pair ', i asString) at: 1@(i).
				lib attroff: (lib color_pair: i).
		].

	lib refresh.
	
	self waitForInput.
	
		lib init_pair: 1 foreground: COLOR_YELLOW background: COLOR_BLACK.
		lib init_pair: 2 foreground: COLOR_RED background: COLOR_BLACK.	
	
	0 to: 7 do: [ :i |		
				lib init_pair: i foreground: i background: 7-i+1\\7.
		].	

		
  lib refresh.
	self waitForInput.
	
	lib endwin.
	

]

{ #category : #examples }
NCursesExamples class >> input [

	<example>
	| lib win stringPointer s |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
		
	lib print: 'Enter string:'.
	lib addch: Character lf.
	
	stringPointer := FFITypeArray ofType: 'char *' size: 1.
	s := stringPointer new.
	
	lib instr: s.
	
	stringPointer inspect.

	lib print: (stringPointer).

	lib refresh.
	self waitForInput.

	lib endwin.
	

]

{ #category : #examples }
NCursesExamples class >> mouse [

	<example>
	| lib key win evt |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	lib keypad: true on: win.
	
	lib print: 'To exit press any key.'.
	lib refresh.
	
	lib mousemask: (ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION) old: 0.
		
	lib timeout: 0.
	
		NCursesLib uniqueInstance flushinp.
	[
		key := lib getch.
		(key = KEY_MOUSE)
			ifTrue: [ 
				evt := NCursesMouseEvent new.
				evt pin.
				lib getmouse: evt.
				lib moveAt: 1@3. 
				lib deleteln.
				lib print: 'position: ', (evt x asString), '@', (evt y asString).].
			
	((key = -1) or: [(key = KEY_MOUSE)])] whileTrue: [ 10 milliSecond wait. Processor yield. ]. 
		NCursesLib uniqueInstance flushinp.

	lib endwin.
	^ evt
]

{ #category : #examples }
NCursesExamples class >> panelsSimple [

	<example>
	| lines cols y x lib panelLib wins panels |

	lines := 10.
	cols := 40.
	y := 2.
	x := 4.
	lib := NCursesLib uniqueInstance.
	panelLib := PanelLib uniqueInstance.
	lib initscr.
	"lib cbreak.
	lib noecho."
	wins := {(lib
		newwin_lines: lines
		cols: cols
		y: y
		x: x).
	(lib
		newwin_lines: lines
		cols: cols
		y: y + 1
		x: x + 5).
	(lib
		newwin_lines: lines
		cols: cols
		y: y + 2
		x: x + 10)}.
	wins do: [ :win | lib box: win v: 0 h: 0 ].
	panels := wins collect: [ :win | panelLib new_panel: win ].
	panelLib update_panels.
	lib doupdate.
	lib flash.
	
	self waitForInput.
	lib endwin
]

{ #category : #support }
NCursesExamples class >> pangrams [
	<example>
	^ OrderedCollection new
		add: 'English' -> 'the quick brown fox jumps over the lazy dog';
		add: 'Czech' -> 'Příliš žluťoučký kůň úpěl ďábelské ódy.';
		add: 'Chinese' -> '視野無限廣，窗外有藍天
    微風迎客，軟語伴茶';
		add: 'French' -> 'Voix ambiguë d''un cœur qui au zéphyr préfère les jattes de kiwis';
		add: 'German' -> 'Zwölf Boxkämpfer jagen Viktor quer über den großen Sylter Deich';
		add: 'Greek' -> 'Θέλει αρετή και τόλμη η ελευθερία. (Ανδρέας Κάλβος)';
		add: 'Hebrew' -> 'דג סקרן שט לו בים זך אך לפתע פגש חבורה נחמדה שצצה כך';
		add: 'Japanese' -> 'いろはにほへと ちりぬるを わかよたれそ つねならむ うゐのおくやま けふこえて あさきゆめみし ゑひもせす';
		add: 'Korean' -> '다람쥐 헌 쳇바퀴에 타고파';
		add: 'Russian' -> 'Съешь ещё этих мягких французских булок да выпей же чаю';
		yourself
]

{ #category : #examples }
NCursesExamples class >> print [

	<example>
	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib start_color.
	lib clear.
		
	{A_ALTCHARSET. A_ATTRIBUTES. A_BLINK. A_BOLD. A_CHARTEXT. A_COLOR. A_DIM. A_INVIS. A_PROTECT. A_REVERSE. A_STANDOUT. A_UNDERLINE} do: [ :attr |
		lib addch: (($B asInteger bitOr: attr)). ].
	
	lib addch: Character lf.

	lib init_pair: 2 foreground: COLOR_BLACK background: 154.
	lib attron: (lib color_pair: 2).
	
	lib attron: A_BOLD.
	lib print: 'bold'.
	lib attroff: A_BOLD.
	lib print: ' normal'.

	self pangrams withIndexDo: [ :pangram :i | 
		lib print: (pangram value asUTF8Bytes, #[0]) at: i@(i+2).
	].
	lib refresh.
	self waitForInput.

	lib endwin.
	

]

{ #category : #examples }
NCursesExamples class >> terminalCapabilities [

	<example>
	| lib screen str |

	lib := NCursesLib uniqueInstance.
	screen := lib initscr.
	lib clear.
	
	str := String streamContents: [ :s |
		s << 'hasColors: ' << lib hasColors asString ; lf.
		s << 'hasIC: ' << lib hasIC asString ; lf.
		s << 'hasIL: ' << lib hasIL asString ; lf.
		s << 'baudrate: ' << lib baudrate asString ; lf.
		s << 'termname: ' << lib termname asString ; lf.
		s << 'longname: ' << lib longname asString ; lf.
	].
	
	lib print: str.
	lib refresh.
	self waitForInput.
	
	lib endwin.
	

]

{ #category : #support }
NCursesExamples class >> waitForInput [

	<example>
	| key |
	
	NCursesLib uniqueInstance flushinp.
	
	[key := NCursesLib uniqueInstance getch.
	key = -1] whileTrue: [ 
		"allow smalltalk interrupt"
		10 milliSecond wait. Processor yield. ].

	NCursesLib uniqueInstance flushinp.
]

{ #category : #examples }
NCursesExamples class >> windowsSimple [

	<example>
	| lib localWin win |

	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	
	lib print: 'press any key'.
	lib refresh.
		
	localWin := lib newwin_lines: 5 cols: 15 y: 5 x: 5.

	lib border: localWin.
	lib print: 'local window' at: 2@2 on: localWin.

	lib refresh: localWin.
	
	self waitForInput.

	lib delwin: localWin.

	lib endwin.
	

]
