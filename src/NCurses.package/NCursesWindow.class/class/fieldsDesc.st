as yet unclassified
fieldsDesc
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