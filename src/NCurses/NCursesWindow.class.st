"
96	0
NCURSES_SIZE_T	_cury	2	
NCURSES_SIZE_T	_curx	2	
NCURSES_SIZE_T	_maxy	2	
NCURSES_SIZE_T	_maxx	2	
NCURSES_SIZE_T	_begy	2	
NCURSES_SIZE_T	_begx	2	
short	_flags	2	
		2	
attr_t	_attrs	8	
chtype	_bkgd	8	
bool	_notimeout	1	
bool	_clear	1	
bool	_leaveok	1	
bool	_scroll	1	
bool	_idlok	1	
bool	_idcok	1	
bool	_immed	1	
bool	_sync	1	
bool	_use_keypad	1	
		3	
int	_delay	4	
struct ldat	*_line	8	
NCURSES_SIZE_T	_regtop	2	
NCURSES_SIZE_T	_regbottom	2	
int	_parx	4	
int	_pary	4	
		4	
WINDOW	*_parent	8	
NCURSES_SIZE_T	_pad_y	2	
NCURSES_SIZE_T	_pad_x	2	
NCURSES_SIZE_T	_pad_top	2	
NCURSES_SIZE_T	_pad_left	2	
NCURSES_SIZE_T	_pad_bottom	2	
NCURSES_SIZE_T	_pad_right	2	
NCURSES_SIZE_T	_yoffset	2	
		2	

"
Class {
	#name : #NCursesWindow,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'Byte8',
		'Offset2',
		'Offset3',
		'Offset4'
	],
	#pools : [
		'NCursesConstants'
	],
	#category : 'NCurses'
}

{ #category : #'as yet unclassified' }
NCursesWindow class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
short _cury;
short _curx;
short _maxy;
short _maxx;
short _begy;
short _beg;
short _flags;

"Offset2 __offset1;"

Byte8 _attrs;
Byte8 _bkgd;
bool _notimeout;
bool _clear;
bool _leaveok;
bool _scroll;
bool _idlok;
bool _idcok;
bool _immed;
bool _sync;
bool _use_keypad;

"Offset3 __offset2;"

int _delay;
void *_line;
short _regtop;
short _regbottom;
int _parx;
int _pary;

"Offset4 __offse3;"

NCursesWindow *_parent;
short _pad_y;
short _pad_x;
short _pad_top;
short _pad_left;
short _pad_bottom;
short _pad_right;
short _yoffset; 

"Offset2 __offset4;"
 
	)
]

{ #category : #'as yet unclassified' }
NCursesWindow class >> initialize [ 

"self initialize"

	Byte8 := FFITypeArray ofType: 'byte' size: 8.
	Offset2 := FFITypeArray ofType: 'byte' size: 2.
	Offset3 := FFITypeArray ofType: 'byte' size: 3.
	Offset4 := FFITypeArray ofType: 'byte' size: 4.
	
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offse3 [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 4) fromHandle: (handle copyFrom: 65 to: 68)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offse3: anObject [
	"This method was automatically generated"
	handle replaceFrom: 65 to: 68 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset1 [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 2) fromHandle: (handle copyFrom: 15 to: 16)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset1: anObject [
	"This method was automatically generated"
	handle replaceFrom: 15 to: 16 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset2 [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 3) fromHandle: (handle copyFrom: 42 to: 44)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset2: anObject [
	"This method was automatically generated"
	handle replaceFrom: 42 to: 44 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset4 [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 2) fromHandle: (handle copyFrom: 87 to: 88)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> __offset4: anObject [
	"This method was automatically generated"
	handle replaceFrom: 87 to: 88 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _attrs [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 8) fromHandle: (handle copyFrom: 15 to: 22)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _attrs: anObject [
	"This method was automatically generated"
	handle replaceFrom: 15 to: 22 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _beg [
	"This method was automatically generated"
	^handle signedShortAt: 11
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _beg: anObject [
	"This method was automatically generated"
	handle signedShortAt: 11 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _begy [
	"This method was automatically generated"
	^handle signedShortAt: 9
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _begy: anObject [
	"This method was automatically generated"
	handle signedShortAt: 9 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _bkgd [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 8) fromHandle: (handle copyFrom: 23 to: 30)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _bkgd: anObject [
	"This method was automatically generated"
	handle replaceFrom: 23 to: 30 with: anObject startingAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _clear [
	"This method was automatically generated"
	^handle booleanAt: 32
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _clear: anObject [
	"This method was automatically generated"
	handle booleanAt: 32 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _curx [
	"This method was automatically generated"
	^handle signedShortAt: 3
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _curx: anObject [
	"This method was automatically generated"
	handle signedShortAt: 3 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _cury [
	"This method was automatically generated"
	^handle signedShortAt: 1
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _cury: anObject [
	"This method was automatically generated"
	handle signedShortAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _delay [
	"This method was automatically generated"
	^handle signedLongAt: 41
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _delay: anObject [
	"This method was automatically generated"
	handle signedLongAt: 41 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _flags [
	"This method was automatically generated"
	^handle signedShortAt: 13
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _flags: anObject [
	"This method was automatically generated"
	handle signedShortAt: 13 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _idcok [
	"This method was automatically generated"
	^handle booleanAt: 36
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _idcok: anObject [
	"This method was automatically generated"
	handle booleanAt: 36 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _idlok [
	"This method was automatically generated"
	^handle booleanAt: 35
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _idlok: anObject [
	"This method was automatically generated"
	handle booleanAt: 35 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _immed [
	"This method was automatically generated"
	^handle booleanAt: 37
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _immed: anObject [
	"This method was automatically generated"
	handle booleanAt: 37 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _leaveok [
	"This method was automatically generated"
	^handle booleanAt: 33
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _leaveok: anObject [
	"This method was automatically generated"
	handle booleanAt: 33 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _line [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 45) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _line: anObject [
	"This method was automatically generated"
	handle pointerAt: 45 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _maxx [
	"This method was automatically generated"
	^handle signedShortAt: 7
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _maxx: anObject [
	"This method was automatically generated"
	handle signedShortAt: 7 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _maxy [
	"This method was automatically generated"
	^handle signedShortAt: 5
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _maxy: anObject [
	"This method was automatically generated"
	handle signedShortAt: 5 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _notimeout [
	"This method was automatically generated"
	^handle booleanAt: 31
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _notimeout: anObject [
	"This method was automatically generated"
	handle booleanAt: 31 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_bottom [
	"This method was automatically generated"
	^handle signedShortAt: 73
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_bottom: anObject [
	"This method was automatically generated"
	handle signedShortAt: 73 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_left [
	"This method was automatically generated"
	^handle signedShortAt: 71
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_left: anObject [
	"This method was automatically generated"
	handle signedShortAt: 71 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_right [
	"This method was automatically generated"
	^handle signedShortAt: 75
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_right: anObject [
	"This method was automatically generated"
	handle signedShortAt: 75 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_top [
	"This method was automatically generated"
	^handle signedShortAt: 69
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_top: anObject [
	"This method was automatically generated"
	handle signedShortAt: 69 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_x [
	"This method was automatically generated"
	^handle signedShortAt: 67
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_x: anObject [
	"This method was automatically generated"
	handle signedShortAt: 67 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_y [
	"This method was automatically generated"
	^handle signedShortAt: 65
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pad_y: anObject [
	"This method was automatically generated"
	handle signedShortAt: 65 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _parent [
	"This method was automatically generated"
	^NCursesWindow fromHandle: (handle pointerAt: 61)
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _parent: anObject [
	"This method was automatically generated"
	handle pointerAt: 61 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _parx [
	"This method was automatically generated"
	^handle signedLongAt: 53
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _parx: anObject [
	"This method was automatically generated"
	handle signedLongAt: 53 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pary [
	"This method was automatically generated"
	^handle signedLongAt: 57
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _pary: anObject [
	"This method was automatically generated"
	handle signedLongAt: 57 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _regbottom [
	"This method was automatically generated"
	^handle signedShortAt: 51
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _regbottom: anObject [
	"This method was automatically generated"
	handle signedShortAt: 51 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _regtop [
	"This method was automatically generated"
	^handle signedShortAt: 49
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _regtop: anObject [
	"This method was automatically generated"
	handle signedShortAt: 49 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _scroll [
	"This method was automatically generated"
	^handle booleanAt: 34
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _scroll: anObject [
	"This method was automatically generated"
	handle booleanAt: 34 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _sync [
	"This method was automatically generated"
	^handle booleanAt: 38
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _sync: anObject [
	"This method was automatically generated"
	handle booleanAt: 38 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _use_keypad [
	"This method was automatically generated"
	^handle booleanAt: 39
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _use_keypad: anObject [
	"This method was automatically generated"
	handle booleanAt: 39 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _yoffset [
	"This method was automatically generated"
	^handle signedShortAt: 77
]

{ #category : #'accessing structure variables' }
NCursesWindow >> _yoffset: anObject [
	"This method was automatically generated"
	handle signedShortAt: 77 put: anObject
]
