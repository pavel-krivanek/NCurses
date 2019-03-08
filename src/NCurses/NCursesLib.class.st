"
http://pubs.opengroup.org/onlinepubs/7908799/xcurses/curses.h.html

DONE:

int    addch(const chtype);
int    mvaddch(int, int, const chtype);
int    mvwaddch(WINDOW *, int, int, const chtype);
int    waddch(WINDOW *, const chtype);
int    attroff(int);
int    attron(int);
int    attrset(int);
int    wattroff(WINDOW *, int);
int    wattron(WINDOW *, int);
int    wattrset(WINDOW *, int);
int    beep(void);
int    flash(void);
int    clear(void);
int    wclear(WINDOW *);
int    clrtobot(void);
int    wclrtobot(WINDOW *);
int    clrtoeol(void);
int    wclrtoeol(WINDOW *);
int    delch(void);
int    mvdelch(int, int);
int    mvwdelch(WINDOW *, int, int);
int    wdelch(WINDOW *);
int    erase(void);
int    werase(WINDOW *);
int    start_color(void);
int    curs_set(int);
int    move(int, int);
int    wmove(WINDOW *, int, int);
int    mvcur(int, int, int, int);
int    getch(void);
int    mvwgetch(WINDOW *, int, int);
int    cbreak(void); 
int    echo(void);
int    halfdelay(int);
int    intrflush(WINDOW *, bool);
int    keypad(WINDOW *, bool);
int    meta(WINDOW *, bool);
int    nl(void);
int    nocbreak(void);
int    nodelay(WINDOW *, bool);
int    noecho(void);
int    nonl(void);
void   noqiflush(void);
int    noraw(void);
int    notimeout(WINDOW *, bool);
void   qiflush(void);
int    raw(void);
void   timeout(int);
void   wtimeout(WINDOW *, int);
int    def_prog_mode(void);
int    def_shell_mode(void);
int    reset_prog_mode(void);
int    reset_shell_mode(void);
int    resetty(void);
int    savetty(void);
int    napms(int);
int    printw(char *, ...);
int    mvprintw(int, int, char *,  ...);
int    mvwprintw(WINDOW *, int, int, char *, ...);
int    doupdate(void);
int    refresh(void);
int    wrefresh(WINDOW *);
int    wnoutrefresh(WINDOW *);
bool   can_change_color(void);
void   filter(void);
bool   has_colors(void);
bool   has_ic(void);
bool   has_il(void);
void   use_env(bool);
int    clearok(WINDOW *, bool);
int    leaveok(WINDOW *, bool);
int    scrollok(WINDOW *, bool);
nt    setscrreg(int, int);
int    wsetscrreg(WINDOW *, int, int);
int    deleteln(void);
int    endwin(void);
char   erasechar(void);
int    flushinp(void);
chtype inch(void);
WINDOW *initscr(void);
int    standend(void);
int    standout(void);
char   *longname(void);

int    wstandend(WINDOW *);
int    wstandout(WINDOW *);
int    insertln(void);
int    winsertln(WINDOW *);
char   *termname(void);


--------------------------------------------------------------------

NOT COMPLETE:

int    addchstr(const chtype *);
int    addchnstr(const chtype *, int);
int    mvaddchstr(int, int, const chtype *);
int    mvaddchnstr(int, int, const chtype *, int);
int    mvwaddchstr(WINDOW *, int, int, const chtype *);
 int    mvwaddchnstr(WINDOW *, int, int, const chtype *, int);	
int    waddchstr(WINDOW *, const chtype *);
int    waddchnstr(WINDOW *, const chtype *, int);

NOT RESOLVED:

int    addnstr(const char *, int);
int    addnwstr(const wchar_t *, int);
int    addstr(const char *);
int    add_wch(const cchar_t *);
int    add_wchnstr(const cchar_t *, int);
int    add_wchstr(const cchar_t *);
int    addwstr(const wchar_t *);

int    attr_get(attr_t *, short *, void *);
int    attr_off(attr_t, void *);
int    attr_on(attr_t, void *);
int    attr_set(attr_t, short, void *);


int    bkgd(chtype);
void   bkgdset(chtype);
int    bkgrnd(const cchar_t *);
void   bkgrndset(const cchar_t *);
int    border(chtype, chtype, chtype, chtype, chtype, chtype, chtype,
              chtype);
int    border_set(const cchar_t *, const cchar_t *, const cchar_t *,
                  const cchar_t *, const cchar_t *, const cchar_t *,
                  const cchar_t *, const cchar_t *);
int    box(WINDOW *, chtype, chtype);
int    box_set(WINDOW *, const cchar_t *, const cchar_t *);


int    chgat(int, attr_t, short, const void *);


int    color_content(short, short *, short *, short *);
int    COLOR_PAIR(int);
int    color_set(short,void *);
int    copywin(const WINDOW *, WINDOW *, int, int, int, int, int, int,
               int);



int    delay_output(int);

void   delscreen(SCREEN *); 
int    delwin(WINDOW *);
WINDOW *derwin(WINDOW *, int, int, int, int);

WINDOW *dupwin(WINDOW *);

int    echochar(const chtype);
int    echo_wchar(const cchar_t *);


int    erasewchar(wchar_t *);



chtype getbkgd(WINDOW *);
int    getbkgrnd(cchar_t *);
int    getcchar(const cchar_t *, wchar_t *, attr_t *, short *, void *);

int    getnstr(char *, int);
int    getn_wstr(wint_t *, int);
int    getstr(char *);
int    get_wch(wint_t *);
WINDOW *getwin(FILE *);
int    get_wstr(wint_t *);


int    hline(chtype, int);
int    hline_set(const cchar_t *, int);
void   idcok(WINDOW *, bool);
int    idlok(WINDOW *, bool);
void   immedok(WINDOW *, bool);

int    inchnstr(chtype *, int);
int    inchstr(chtype *);

int    init_color(short, short, short, short);
int    init_pair(short, short, short);
int    innstr(char *, int);
int    innwstr(wchar_t *, int);
int    insch(chtype);
int    insdelln(int);

int    insnstr(const char *, int);
int    ins_nwstr(const wchar_t *, int);
int    insstr(const char *);
int    instr(char *);
int    ins_wch(const cchar_t *);
int    ins_wstr(const wchar_t *);

int    in_wch(cchar_t *);
int    in_wchnstr(cchar_t *, int);
int    in_wchstr(cchar_t *);
int    inwstr(wchar_t *);
bool   isendwin(void);
bool   is_linetouched(WINDOW *, int);
bool   is_wintouched(WINDOW *);
char   *keyname(int);
char   *key_name(wchar_t);

char   killchar(void);
int    killwchar(wchar_t *);





int    mvaddnstr(int, int, const char *, int);
int    mvaddnwstr(int, int, const wchar_t *, int);
int    mvaddstr(int, int, const char *);
int    mvadd_wch(int, int, const cchar_t *);
int    mvadd_wchnstr(int, int, const cchar_t *, int);
int    mvadd_wchstr(int, int, const cchar_t *);
int    mvaddwstr(int, int, const wchar_t *);
int    mvchgat(int, int, int, attr_t, short, const void *);


int    mvderwin(WINDOW *, int, int);
int    mvgetch(int, int);
int    mvgetnstr(int, int, char *, int);
int    mvgetn_wstr(int, int, wint_t *, int);
int    mvgetstr(int, int, char *);
int    mvget_wch(int, int, wint_t *);
int    mvget_wstr(int, int, wint_t *);
int    mvhline(int, int, chtype, int);
int    mvhline_set(int, int, const cchar_t *, int);
chtype mvinch(int, int);
int    mvinchnstr(int, int, chtype *, int);
int    mvinchstr(int, int, chtype *);
int    mvinnstr(int, int, char *, int);
int    mvinnwstr(int, int, wchar_t *, int);
int    mvinsch(int, int, chtype);
int    mvinsnstr(int, int, const char *, int);
int    mvins_nwstr(int, int, const wchar_t *, int);
int    mvinsstr(int, int, const char *);
int    mvinstr(int, int, char *);
int    mvins_wch(int, int, const cchar_t *);
int    mvins_wstr(int, int, const wchar_t *);
int    mvin_wch(int, int, cchar_t *);
int    mvin_wchnstr(int, int, cchar_t *, int);
int    mvin_wchstr(int, int, cchar_t *);
int    mvinwstr(int, int, wchar_t *);

int    mvscanw(int, int, char *, ...);
int    mvvline(int, int, chtype, int);
int    mvvline_set(int, int, const cchar_t *, int);

int    mvwaddnstr(WINDOW *, int, int, const char *, int);
int    mvwaddnwstr(WINDOW *, int, int, const wchar_t *, int);
int    mvwaddstr(WINDOW *, int, int, const char *);
int    mvwadd_wch(WINDOW *, int, int, const cchar_t *);
int    mvwadd_wchnstr(WINDOW *, int, int, const cchar_t *, int);
int    mvwadd_wchstr(WINDOW *, int, int, const cchar_t *);
int    mvwaddwstr(WINDOW *, int, int, const wchar_t *);
int    mvwchgat(WINDOW *, int, int, int, attr_t, short, const void *);

int    mvwgetnstr(WINDOW *, int, int, char *, int);
int    mvwgetn_wstr(WINDOW *, int, int, wint_t *, int);
int    mvwgetstr(WINDOW *, int, int, char *);
int    mvwget_wch(WINDOW *, int, int, wint_t *);
int    mvwget_wstr(WINDOW *, int, int, wint_t *);
int    mvwhline(WINDOW *, int, int, chtype, int);
int    mvwhline_set(WINDOW *, int, int, const cchar_t *, int);
int    mvwin(WINDOW *, int, int);
chtype mvwinch(WINDOW *, int, int);
int    mvwinchnstr(WINDOW *, int, int, chtype *, int);
int    mvwinchstr(WINDOW *, int, int, chtype *);
int    mvwinnstr(WINDOW *, int, int, char *, int);
int    mvwinnwstr(WINDOW *, int, int, wchar_t *, int);
int    mvwinsch(WINDOW *, int, int, chtype);
int    mvwinsnstr(WINDOW *, int, int, const char *, int);
int    mvwins_nwstr(WINDOW *, int, int, const wchar_t *, int);
int    mvwinsstr(WINDOW *, int, int, const char *);
int    mvwinstr(WINDOW *, int, int, char *);
int    mvwins_wch(WINDOW *, int, int, const cchar_t *);
int    mvwins_wstr(WINDOW *, int, int, const wchar_t *);
int    mvwin_wch(WINDOW *, int, int, cchar_t *);
int    mvwin_wchnstr(WINDOW *, int, int, cchar_t *, int);
int    mvwin_wchstr(WINDOW *, int, int, cchar_t *);
int    mvwinwstr(WINDOW *, int, int, wchar_t *);
int    mvwscanw(WINDOW *, int, int, char *, ...);
int    mvwvline(WINDOW *, int, int, chtype, int);
int    mvwvline_set(WINDOW *, int, int, const cchar_t *, int);

WINDOW *newpad(int, int);
SCREEN *newterm(char *, FILE *, FILE *);
WINDOW *newwin(int, int, int, int);
int    overlay(const WINDOW *, WINDOW *);
int    overwrite(const WINDOW *, WINDOW *);
int    pair_content(short, short *, short *);
int    PAIR_NUMBER(int);
int    pechochar(WINDOW *, chtype);
int    pecho_wchar(WINDOW *, const cchar_t*);
int    pnoutrefresh(WINDOW *, int, int, int, int, int, int);
int    prefresh(WINDOW *, int, int, int, int, int, int);

int    putp(const char *);
int    putwin(WINDOW *, FILE *);


int    redrawwin(WINDOW *);



int    ripoffline(int, int (*)(WINDOW *, int));

int    scanw(char *, ...);
int    scr_dump(const char *);
int    scr_init(const char *);
int    scrl(int);
int    scroll(WINDOW *);

int    scr_restore(const char *);
int    scr_set(const char *);
int    setcchar(cchar_t*, const wchar_t*, const attr_t, short,
                const void*);
i
SCREEN *set_term(SCREEN *);
int    setupterm(char *, int, int *);
int    slk_attr_off(const attr_t, void *);
int    slk_attroff(const chtype);
int    slk_attr_on(const attr_t, void *);
int    slk_attron(const chtype);
int    slk_attr_set(const attr_t, short, void *);
int    slk_attrset(const chtype);
int    slk_clear(void);
int    slk_color(short);
int    slk_init(int);
char   *slk_label(int);
int    slk_noutrefresh(void);
int    slk_refresh(void);
int    slk_restore(void);
int    slk_set(int, const char *, int);
int    slk_touch(void);
int    slk_wset(int, const wchar_t *, int);


WINDOW *subpad(WINDOW *, int, int, int, int);
WINDOW *subwin(WINDOW *, int, int, int, int);
int    syncok(WINDOW *, bool);
chtype termattrs(void);
attr_t term_attrs(void);

int    tigetflag(char *);
int    tigetnum(char *);
char   *tigetstr(char *);

int    touchline(WINDOW *, int, int);
int    touchwin(WINDOW *);
char   *tparm(char *, long, long, long, long, long, long, long, long,
              long);
int    typeahead(int);
int    ungetch(int);
int    unget_wch(const wchar_t);
int    untouchwin(WINDOW *);

int    vid_attr(attr_t, short, void *);
int    vidattr(chtype);
int    vid_puts(attr_t, short, void *, int (*)(int));
int    vidputs(chtype, int (*)(int));
int    vline(chtype, int);
int    vline_set(const cchar_t *, int);
int    vwprintw(WINDOW *, char *, va_list *);
int    vw_printw(WINDOW *, char *, va_list *);
int    vwscanw(WINDOW *, char *, va_list *);
int    vw_scanw(WINDOW *, char *, va_list *);

int    waddnstr(WINDOW *, const char *, int);
int    waddnwstr(WINDOW *, const wchar_t *, int);
int    waddstr(WINDOW *, const char *);
int    wadd_wch(WINDOW *, const cchar_t *);
int    wadd_wchnstr(WINDOW *, const cchar_t *, int);
int    wadd_wchstr(WINDOW *, const cchar_t *);
int    waddwstr(WINDOW *, const wchar_t *);
int    wattr_get(WINDOW *, attr_t *, short *, void *);
int    wattr_off(WINDOW *, attr_t, void *);
int    wattr_on(WINDOW *, attr_t, void *);
int    wattr_set(WINDOW *, attr_t, short, void *);
int    wbkgd(WINDOW *, chtype);
void   wbkgdset(WINDOW *, chtype);
int    wbkgrnd(WINDOW *, const cchar_t *);
void   wbkgrndset(WINDOW *, const cchar_t *);
int    wborder(WINDOW *, chtype, chtype, chtype, chtype, chtype, chtype,
               chtype, chtype);
int    wborder_set(WINDOW *, const cchar_t *, const cchar_t *,
                  const cchar_t *, const cchar_t *, const cchar_t *,
                  const cchar_t *, const cchar_t *, const cchar_t *);
int    wchgat(WINDOW *, int, attr_t, short, const void *);
void   wcursyncup(WINDOW *);
int    wcolor_set(WINDOW *, short, void *);
int    wdeleteln(WINDOW *);
int    wechochar(WINDOW *, const chtype);
int    wecho_wchar(WINDOW *, const cchar_t *);

int    wgetbkgrnd(WINDOW *, cchar_t *);
int    wgetch(WINDOW *);
int    wgetnstr(WINDOW *, char *, int);
int    wgetn_wstr(WINDOW *, wint_t *, int);
int    wgetstr(WINDOW *, char *);
int    wget_wch(WINDOW *, wint_t *);
int    wget_wstr(WINDOW *, wint_t *);
int    whline(WINDOW *, chtype, int);
int    whline_set(WINDOW *, const cchar_t *, int);
chtype winch(WINDOW *);
int    winchnstr(WINDOW *, chtype *, int);
int    winchstr(WINDOW *, chtype *);
int    winnstr(WINDOW *, char *, int);
int    winnwstr(WINDOW *, wchar_t *, int);
int    winsch(WINDOW *, chtype);
int    winsdelln(WINDOW *, int);

int    winsnstr(WINDOW *, const char *, int);
int    wins_nwstr(WINDOW *, const wchar_t *, int);
int    winsstr(WINDOW *, const char *);
int    winstr(WINDOW *, char *);
int    wins_wch(WINDOW *, const cchar_t *);
int    wins_wstr(WINDOW *, const wchar_t *);
int    win_wch(WINDOW *, cchar_t *);
int    win_wchnstr(WINDOW *, cchar_t *, int);
int    win_wchstr(WINDOW *, cchar_t *);
int    winwstr(WINDOW *, wchar_t *);

int    wprintw(WINDOW *, char *, ...);
int    wredrawln(WINDOW *, int, int);

int    wscanw(WINDOW *, char *, ...);
int    wscrl(WINDOW *, int);


void   wsyncup(WINDOW *);
void   wsyncdown(WINDOW *);

int    wtouchln(WINDOW *, int, int, int);
wchar_t *wunctrl(cchar_t *);
int    wvline(WINDOW *, chtype, int);
int    wvline_set(WINDOW *, const cchar_t *, int);
"
Class {
	#name : #NCursesLib,
	#superclass : #FFILibrary,
	#classVars : [
		'TypeMap'
	],
	#pools : [
		'NCursesConstants'
	],
	#category : 'NCurses'
}

{ #category : #'as yet unclassified' }
NCursesLib class >> ffiBindingOf: aTypeName [
	^ TypeMap at: aTypeName ifAbsent: [ super ffiBindingOf: aTypeName ]
]

{ #category : #'as yet unclassified' }
NCursesLib class >> initialize [

	"self initialize"
	self initializeTypeMap

]

{ #category : #'as yet unclassified' }
NCursesLib class >> initializeTypeMap [

	"self initializeTypeMap"

	TypeMap := Dictionary newFromPairs: #(
		window FFIOpaqueObject
		panel FFIOpaqueObject
	)
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes [

	"The addch(), mvaddch(), mvwaddch() and waddch() functions place ch into the current or specified window at the current or specified position, and then advance the window's cursor position. These functions perform wrapping. These functions perform special-character processing."
	
	^self ffiCall: #(int addch:(ulong charWithAttributes) )
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes at: aPoint [ 
	
	^ self addch: charWithAttributes atY: (aPoint y-1) x: (aPoint x-1)
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes at: aPoint on: aWindow [
		
	^ self addch: charWithAttributes atY:  (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes atY: y x: x [

	"The addch(), mvaddch(), mvwaddch() and waddch() functions place ch into the current or specified window at the current or specified position, and then advance the window's cursor position. These functions perform wrapping. These functions perform special-character processing."
	
	^self ffiCall: #(int mvaddch(int y, int x, ulong charWithAttributes) )
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes atY: y x: x on: aWindow [

	"The addch(), mvaddch(), mvwaddch() and waddch() functions place ch into the current or specified window at the current or specified position, and then advance the window's cursor position. These functions perform wrapping. These functions perform special-character processing."

	^self ffiCall: #(int mvwaddch(window * aWindow, int y, int x, ulong charWithAttributes) )
]

{ #category : #'printing - characters' }
NCursesLib >> addch: charWithAttributes on: aWindow [

	"The addch(), mvaddch(), mvwaddch() and waddch() functions place ch into the current or specified window at the current or specified position, and then advance the window's cursor position. These functions perform wrapping. These functions perform special-character processing."

	^self ffiCall: #(int waddch(window * aWindow, ulong charWithAttributes) )
]

{ #category : #'printing - attributes' }
NCursesLib >> attroff: attrs [

	"The attroff() and wattroff() functions turn off attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int attroff(int attrs))
]

{ #category : #'printing - attributes' }
NCursesLib >> attroff: attrs on: aWindow [

	"The attroff() and wattroff() functions turn off attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattroff(window * aWindow, int attrs))
]

{ #category : #'printing - attributes' }
NCursesLib >> attron: attrs [

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int attron(int attrs))
]

{ #category : #'printing - attributes' }
NCursesLib >> attron: attrs on: aWindow [

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattron(window * aWindow, int attrs))
]

{ #category : #'printing - attributes' }
NCursesLib >> attrset: attrs [

	"The attrset() and wattrset() functions set the background attributes of the current or specified window to attrs."
	
	^self ffiCall: #(int attrset(int attrs))
]

{ #category : #'printing - attributes' }
NCursesLib >> attrset: attrs on: aWindow [

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattrset(window * aWindow, int attrs))
]

{ #category : #'terminal capabilities' }
NCursesLib >> baudrate [

	"get output speed of the terminal in bits per second."
	
	^self ffiCall: #(int baudrate())
]

{ #category : #signals }
NCursesLib >> beep [

	"audible signal"
	
	^self ffiCall: #(int beep(void) )
]

{ #category : #background }
NCursesLib >> bkgdset: charWithAttributes [

	^self ffiCall: #(void bkgdset(ulong charWithAttributes) )
]

{ #category : #background }
NCursesLib >> bkgdset: charWithAttributes on: aWindow [

	^self ffiCall: #(void wbkgdset(window * aWindow, ulong charWithAttributes) )
]

{ #category : #background }
NCursesLib >> bkgrnd: charWithAttributes [

	" turn off the previous background attributes, OR the requested attributes into the window rendition, and set the background property of the current or specified window and then apply this setting to every character position in that window:
	- The rendition of every character on the screen is changed to the new window rendition.
	- Wherever the former background character appears, it is changed to the new background character.
If charWithAttributes refers to a non-spacing complex character for bkgrnd(), bkgrndset(), wbkgrnd() and wbkgrndset(), then charWithAttributes is added to the existing spacing complex character that is the background character. If charWithAttributes refers to a multi-column character, the results are unspecified."
	
	^self ffiCall: #(void bkgrnd(ulong charWithAttributes) )
]

{ #category : #background }
NCursesLib >> bkgrnd: charWithAttributes on: aWindow [

	" turn off the previous background attributes, OR the requested attributes into the window rendition, and set the background property of the current or specified window and then apply this setting to every character position in that window:
	- The rendition of every character on the screen is changed to the new window rendition.
	- Wherever the former background character appears, it is changed to the new background character.
If charWithAttributes refers to a non-spacing complex character for bkgrnd(), bkgrndset(), wbkgrnd() and wbkgrndset(), then charWithAttributes is added to the existing spacing complex character that is the background character. If charWithAttributes refers to a multi-column character, the results are unspecified."
	
	^self ffiCall: #(void wbkgrnd(window * aWindow, ulong charWithAttributes) )
]

{ #category : #border }
NCursesLib >> border: aWindow [ 

	^ self border: aWindow ls: 0 rs: 0 ts: 0 bs: 0 tl: 0 tr: 0 bl: 0 br: 0
]

{ #category : #border }
NCursesLib >> border: aWindow ls: ls rs: rs ts: ts bs: bs tl: tl tr: tr bl: bl br: br [
	^ self
		ffiCall: #(int wborder (window * aWindow , ulong ls , ulong rs , ulong ts , ulong bs , ulong tl , ulong bl , ulong br))
]

{ #category : #border }
NCursesLib >> box: aWindow ls: ls rs: rs ts: ts bs: bs tl: tl tr: tr bl: bl br: br [
	^ self
		ffiCall: #(int wborder (window * aWindow , ulong ls , ulong rs , ulong ts , ulong bs , ulong tl , ulong trNCursesLib g bl , ulong br))
]

{ #category : #borders }
NCursesLib >> box: aWindow v: v h: h [
	^ self wborder: aWindow ls: v rs: v ts: h bs: h tl: 0 tr: 0 bl: 0 br: 0
]

{ #category : #'terminal capabilities' }
NCursesLib >> can_change_color [

	"indicates whether the terminal is a colour terminal on which colours can be redefined."
	
	^self ffiCall: #(bool can_change_color())
]

{ #category : #modes }
NCursesLib >> cbreak [

	"sets the input mode for the current terminal to cbreak mode and overrides a call to raw()."
	
	^self ffiCall: #(int cbreak(void) )
]

{ #category : #clearing }
NCursesLib >> clear [

	"clear every position in the current window. Achieve the same effect as calling clearok(), so that the window is cleared completely on the next call to wrefresh() for the window and is redrawn in its entirety."
	
	^self ffiCall: #(int clear(void) )
]

{ #category : #clearing }
NCursesLib >> clear: aWindow [

	"clear every position in the specified window. Achieve the same effect as calling clearok(), so that the window is cleared completely on the next call to wrefresh() for the window and is redrawn in its entirety."
	
	^self ffiCall: #(int wclear(window * aWindow) )
]

{ #category : #'terminal output control' }
NCursesLib >> clearok: aBoolean on: aWindow [

	"assigns the value of aBoolean to an internal flag in the specified window that governs clearing of the screen during a refresh. If, during a refresh operation on the specified window, the flag in curscr is TRUE or the flag in the specified window is TRUE, then the implementation clears the screen, redraws it in its entirety, and sets the flag to FALSE in curscr and in the specified window. The initial state is unspecified."
	
	^self ffiCall: #(int clearok(window * aWindow, bool aBoolean) )
]

{ #category : #clearing }
NCursesLib >> clrtobot [

	"erase all lines following the cursor in the current window, and erase the current line from the cursor to the end of the line, inclusive. These functions do not update the cursor."
	
	^self ffiCall: #(int clrtobot(void) )
]

{ #category : #clearing }
NCursesLib >> clrtobot: aWindow [

	"erase all lines following the cursor in the specified window, and erase the current line from the cursor to the end of the line, inclusive. These functions do not update the cursor."
	
	^self ffiCall: #(int wclrtobot(window * aWindow) )
]

{ #category : #clearing }
NCursesLib >> clrtoeol [

	" erase the current line from the cursor to the end of the line, inclusive, in the current window. Do not update the cursor."
	
	^self ffiCall: #(int clrtoeol(void) )
]

{ #category : #clearing }
NCursesLib >> clrtoeol: aWindow [

	"erase the current line from the cursor to the end of the line, inclusive, in the specified window. Do not update the cursor."
	
	^self ffiCall: #(int wclrtoeol(window * aWindow) )
]

{ #category : #colors }
NCursesLib >> color_content: color red: red green: green blue: blue [

	"TODO"
	

]

{ #category : #colors }
NCursesLib >> color_pair: n [

		"returns the value of colour pair n. This value is the colour attribute as it would be extracted from a chtype. Conversely, the macro PAIR_NUMBER(value) returns the colour pair number associated with the colour attribute value."
		
		^ 256 * n

	

]

{ #category : #colors }
NCursesLib >> color_pairs [

	^ (ExternalAddress loadSymbol: #'COLOR_PAIRS' from: self class) integerAt: 1
]

{ #category : #colors }
NCursesLib >> colors [

	^ (ExternalAddress loadSymbol: #'COLORS' from: self class) integerAt: 1
]

{ #category : #cursor }
NCursesLib >> curs_set: visibility [

	"sets the appearance of the cursor based on the value of visibility:
	0 - Invisible
	1 - Terminal-specific normal mode
	2	- Terminal-specific high visibility mode"

	^self ffiCall: #(int curs_set(int visibility) )
]

{ #category : #'modes - program' }
NCursesLib >> def_prog_mode [

	"saves the current terminal modes as the program (in Curses) state for use by reset_prog_mode."
	
	^self ffiCall: #(int def_prog_mode(void) )
]

{ #category : #'modes - program' }
NCursesLib >> def_shell_mode [

	"saves the current terminal modes as the shell (not in Curses) state for use by reset_shell_mode."
	
	^self ffiCall: #(int def_shell_mode(void) )
]

{ #category : #'claring - characters' }
NCursesLib >> delch [

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int delch(void))
]

{ #category : #'claring - characters' }
NCursesLib >> delch: aWindow [

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int wdelch(window * aWindow))
]

{ #category : #'claring - characters' }
NCursesLib >> delchAt: aPoint [ 

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^ self delchY: (Point y-1) x: (Point x-1)
]

{ #category : #'claring - characters' }
NCursesLib >> delchAt: aPoint on: aWindow [

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^ self delchY: (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #'claring - characters' }
NCursesLib >> delchY: y x: x [ 

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int mvdelch(inx y, int x))
]

{ #category : #'claring - characters' }
NCursesLib >> delchY: y x: x on: aWindow [

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int mvwdelch(window * aWindow, inx y, int x))
]

{ #category : #clearing }
NCursesLib >> deleteln [

	"The deleteln() and wdeleteln() functions delete the line containing the cursor in the current or specified window and move all lines following the current line one line toward the cursor. The last line of the window is cleared. The cursor position does not change."
	
	^self ffiCall: #(int deleteln(void) )
]

{ #category : #clearing }
NCursesLib >> deleteln: aWindow [

	"The deleteln() and wdeleteln() functions delete the line containing the cursor in the current or specified window and move all lines following the current line one line toward the cursor. The last line of the window is cleared. The cursor position does not change."
	
	^self ffiCall: #(int wdeleteln(window * aWindow) )
]

{ #category : #windows }
NCursesLib >> delwin: aWindow [ 

	^ self ffiCall: #(int delwin (window * aWindow))
]

{ #category : #refreshing }
NCursesLib >> doupdate [

	"sends to the terminal the commands to perform any required changes."
	
	^self ffiCall: #(int doupdate(void) )
]

{ #category : #modes }
NCursesLib >> echo [

	"enables Echo mode for the current screen."
	
	^self ffiCall: #(int echo(void) )
]

{ #category : #windows }
NCursesLib >> endwin [
	^self ffiCall: #(int endwin(void) )
]

{ #category : #clearing }
NCursesLib >> erase [

	"clear every position in the current window."
	
	^self ffiCall: #(int erase(void) )
]

{ #category : #clearing }
NCursesLib >> erase: aWindow [

	"clear every position in the specified window."
	
	^self ffiCall: #(int werase(window * aWindow) )
]

{ #category : #clearing }
NCursesLib >> erasechar [

	"function returns the current erase character"
	
	^self ffiCall: #(char erasechar(void) )
]

{ #category : #'terminal capabilities' }
NCursesLib >> filter [

	"changes the algorithm for initialising terminal capabilities that assume that the terminal has more than one line. A subsequent call to initscr() or newterm() performs the following additional actions:
	- Disable use of clear, cud, cud1, cup, cuu1 and vpa.
	- Set the value of the home string to the value of the cr. string
	- Set lines equal to 1.
	Any call to filter() must precede the call to initscr() or newterm()."
	
	^self ffiCall: #(void filter(void))
]

{ #category : #signals }
NCursesLib >> flash [

	"flash the screen"
	
	^self ffiCall: #(int flash(void) )
]

{ #category : #'keyboard input' }
NCursesLib >> flushinp [

	"discards (flushes) any characters in the input buffer associated with the current screen."
	
	^self ffiCall: #(int flushinp(void) )
]

{ #category : #background }
NCursesLib >> getbkgrnd: charWithAttributes [ 

	"TODO"
	
]

{ #category : #background }
NCursesLib >> getbkgrnd: charWithAttributes on: aWindow [

	"TODO"
	
]

{ #category : #'keyboard input' }
NCursesLib >> getch [

	"read a single-byte character from the terminal associated with the current or specified window. The results are unspecified if the input is not a single-byte character. If keypad() is enabled, these functions respond to the pressing of a function key by returning the corresponding KEY_ value defined in <curses.h>."
	
	^self ffiCall: #(int getch(void) )
]

{ #category : #'keyboard input' }
NCursesLib >> getch: aWindow [

	"read a single-byte character from the terminal associated with the current or specified window. The results are unspecified if the input is not a single-byte character. If keypad() is enabled, these functions respond to the pressing of a function key by returning the corresponding KEY_ value defined in <curses.h>."
	
	^self ffiCall: #(int wgetch(window * aWindow) )
]

{ #category : #keyboard }
NCursesLib >> getchOn: aWindow [
	^self ffiCall: #(int wgetch(window * aWindow) )
]

{ #category : #'keyboard input' }
NCursesLib >> getchatAt: aPoint on: aWindow [

	^self getchatAtY: (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #'keyboard input' }
NCursesLib >> getchatAtY: y x: x [ 

	"read a single-byte character from the terminal associated with the current or specified window. The results are unspecified if the input is not a single-byte character. If keypad() is enabled, these functions respond to the pressing of a function key by returning the corresponding KEY_ value defined in <curses.h>."
	
	^self ffiCall: #(int mvgetch(int y, int x) )
]

{ #category : #'keyboard input' }
NCursesLib >> getchatAtY: y x: x on: aWindow [

	"read a single-byte character from the terminal associated with the current or specified window. The results are unspecified if the input is not a single-byte character. If keypad() is enabled, these functions respond to the pressing of a function key by returning the corresponding KEY_ value defined in <curses.h>."
	
	^self ffiCall: #(int mvwgetch(window * aWindow, int y, int x) )
]

{ #category : #mouse }
NCursesLib >> getmouse: aMouseEvent [

	"TODO: comment"
	
	^self ffiCall: #(int getmouse(NCursesMouseEvent * aMouseEvent) )
]

{ #category : #modes }
NCursesLib >> halfdelay: tenths [

	"sets the input mode for the current window to Half-Delay Mode and specifies tenths tenths of seconds as the half-delay interval. The tenths argument must be in a range from 1 up to and including 255."
	
	^self ffiCall: #(int halfdelay(int tenths) )
]

{ #category : #'terminal capabilities' }
NCursesLib >> hasColors [

	"indicate whether terminal supports colours"
	
	^self ffiCall: #(bool has_colors())
]

{ #category : #'terminal capabilities' }
NCursesLib >> hasIC [

	"indicates whether the terminal has insert- and delete-character capabilities"
	
	^self ffiCall: #(bool has_ic())
]

{ #category : #'terminal capabilities' }
NCursesLib >> hasIL [

	"indicates whether the terminal has insert- and delete-line capabilities, or can simulate them using scrolling regions."
	
	^self ffiCall: #(bool has_il())
]

{ #category : #mouse }
NCursesLib >> hasMouse [

	"TODO: comment"

	^self ffiCall: #(bool has_mouse(void) )
]

{ #category : #'terminal output control' }
NCursesLib >> idlok: aBoolean on: aWindow [

	" enable or disable use of terminal insert- and delete-line features"
	
	^self ffiCall: #(int idlok(window * aWindow, bool aBoolean) )
]

{ #category : #'char at cursor' }
NCursesLib >> inch [
	^self ffiCall: #(ulong inch(void) )
]

{ #category : #'char at cursor' }
NCursesLib >> inchAt: aPoint [ 
	^self inchAtY: (aPoint y-1) x: (aPoint x-1)
]

{ #category : #'char at cursor' }
NCursesLib >> inchAt: aPoint on: aWindow [
	^self inchAtY: (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #'char at cursor' }
NCursesLib >> inchAtY: y x: x [
	^self ffiCall: #(ulong mvinch(int y, int x) )
]

{ #category : #'char at cursor' }
NCursesLib >> inchAtY: y x: x on: aWindow [
	^self ffiCall: #(ulong mvwinch(window * aWindow, int y, int x) )
]

{ #category : #'char at cursor' }
NCursesLib >> inchOn: aWindow [
	^self ffiCall: #(ulong winch(window * aWindow) )
]

{ #category : #colors }
NCursesLib >> init_pair: pair foreground: f background: b [

	
		"defines or redefines colour-pair number pair to have foreground colour f and background colour b. Calling init_pair() changes any characters that were displayed in the colour pair's old definition to the new definition and refreshes the screen."
		
		^self ffiCall: #(int init_pair(short pair, short f, short b))

	

]

{ #category : #windows }
NCursesLib >> initscr [ 
	^self ffiCall: #(window* initscr(void) )
]

{ #category : #printing }
NCursesLib >> input [
]

{ #category : #printing }
NCursesLib >> insertln [

	" insert a blank line before the current line in the current or specified window. The bottom line is no longer displayed. The cursor position does not change."
	
	^self ffiCall: #(int insertln(void))
]

{ #category : #printing }
NCursesLib >> insertln: aWindow [

	" insert a blank line before the current line in the current or specified window. The bottom line is no longer displayed. The cursor position does not change."
	
	^self ffiCall: #(int winsertln(window * aWindow))
]

{ #category : #'keyboard input' }
NCursesLib >> instr: str [

	"input a multi-byte character string from the current window"
	
	^self ffiCall: #(int instr(char * str) )
]

{ #category : #modes }
NCursesLib >> intrflush: aBoolean on: aWindow [

	"specifies whether pressing an interrupt key (interrupt, suspend or quit) will flush the input buffer associated with the current screen. If the value of aBoolean is TRUE, then flushing of the output buffer associated with the current screen will occur when an interrupt key (interrupt, suspend, or quit) is pressed. If the value of aBoolean is FALSE then no flushing of the buffer will occur when an interrupt key is pressed The default for the option is inherited from the display driver settings. The aWindow argument is ignored."
	
	^self ffiCall: #(int intrflush(window * aWindow, bool aBoolean) )
]

{ #category : #refreshing }
NCursesLib >> isendwin [

	"indicates whether the screen has been refreshed since the last call to endwin()."
	
	^self ffiCall: #(bool isendwin(void))
]

{ #category : #modes }
NCursesLib >> keypad: aBoolean on: aWindow [

	"The keypad() function controls keypad translation. If aBoolean is TRUE, keypad translation is turned on. If aBoolean is FALSE, keypad translation is turned off. The initial state is FALSE.
This function affects the behaviour of any function that provides keyboard input.

If the terminal in use requires a command to enable it to transmit distinctive codes when a function key is pressed, then after keypad translation is first enabled, the implementation transmits this command to the terminal before an affected input function tries to read any characters from that terminal."

	^self ffiCall: #(int keypad(window * aWindow, bool aBoolean) )
]

{ #category : #clearing }
NCursesLib >> killchar [

	"returns the current line kill character."
	
	^self ffiCall: #(char killchar(void) )
]

{ #category : #'terminal output control' }
NCursesLib >> leaveok: aBoolean on: aWindow [

	"controls the cursor position after a refresh operation. If aBoolean is TRUE, refresh operations on the specified window may leave the terminal's cursor at an arbitrary position. If aBoolean is FALSE, then at the end of any refresh operation, the terminal's cursor is positioned at the cursor position contained in the specified window. The initial state is FALSE."
	
	^self ffiCall: #(int leaveok(window * aWindow, bool aBoolean) )
]

{ #category : #'terminal capabilities' }
NCursesLib >> longname [

	"generates a verbose description of the current terminal. The maximum length of a verbose description is 128 bytes. It is defined only after the call to initscr() or newterm()."
	
	^self ffiCall: #(char * longname(void))
]

{ #category : #modes }
NCursesLib >> meta: aBoolean on: aWindow [

	"Initially, whether the terminal returns 7 or 8 significant bits on input depends on the control mode of the display driver (see the XBD specification, General Terminal Interface). To force 8 bits to be returned, invoke meta(win, TRUE). To force 7 bits to be returned, invoke meta(win, FALSE). The aWindow argument is always ignored. If the terminfo capabilities smm (meta_on) and rmm (meta_off) are defined for the terminal, smm is sent to the terminal when meta(win, TRUE) is called and rmm is sent when meta(win, FALSE) is called."
	
	^self ffiCall: #(int meta(window * aWindow, bool aBoolean) )
]

{ #category : #mouse }
NCursesLib >> mousemask: newMask old: oldMask [

	"TODO: comment"

	^self ffiCall: #(ulong mousemask(ulong newMask, ulong * oldMask) )
]

{ #category : #cursor }
NCursesLib >> moveAt: aPoint [

	^ self moveY: (aPoint y-1) x: (aPoint x-1)
]

{ #category : #cursor }
NCursesLib >> moveAt: aPoint on: aWindow [

	^ self moveY: (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #cursor }
NCursesLib >> moveY: y x: x [

	"move the cursor associated with the current or specified window to (y, x) relative to the window's origin. This function does not move the terminal's cursor until the next refresh operation."
	
	^self ffiCall: #(int move(int y, int x) )
]

{ #category : #cursor }
NCursesLib >> moveY: y x: x on: aWindow [

	"move the cursor associated with the current or specified window to (y, x) relative to the window's origin. This function does not move the terminal's cursor until the next refresh operation."
	
	^self ffiCall: #(int wmove(window * aWindow, int y, int x) )
]

{ #category : #cursor }
NCursesLib >> movecur_oldrow: oldrow oldcol: oldcol newrow: newrow newcol: newcol [

	"output cursor movement commands to the terminal"

	^self ffiCall: #(int movecur(oldrow, oldcol, newrow, newcol) )
]

{ #category : #cursor }
NCursesLib >> mvcur_oldrow: oldrow oldcol: oldcol newrow: newrow newcol: newcol [

	"output cursor movement commands to the terminal"

	^self ffiCall: #(int mvcur(oldrow, oldcol, newrow, newcol) )
]

{ #category : #other }
NCursesLib >> napms: ms [

	"suspend the calling process. Takes at least ms milliseconds to return."
	
	^self ffiCall: #(int napms(int ms) )
]

{ #category : #windows }
NCursesLib >> newwin_lines: lines cols: cols y: y x: x [
	
	^ self ffiCall: #(window * newwin #(int lines, int cols, int y, int x))
]

{ #category : #modes }
NCursesLib >> nl [

	"enables a mode in which carriage return is translated to newline on input. The nonl() function disables the above translation. Initially, the above translation is enabled."
	
	^self ffiCall: #(int nl(void) )
]

{ #category : #modes }
NCursesLib >> nobreak [
	^self ffiCall: #(int nocbreak(void) )
]

{ #category : #modes }
NCursesLib >> nocbreak [

	"sets the input mode for the current terminal to Cooked Mode without changing the state of ISIG and IXON."
	
	^self ffiCall: #(int nocbreak(void) )
]

{ #category : #modes }
NCursesLib >> nodelay: aBoolean on: aWindow [

	" specifies whether Delay Mode or No Delay Mode is in effect for the screen associated with the specified window. If aBoolean is TRUE, this screen is set to No Delay Mode. If aBoolean is FALSE, this screen is set to Delay Mode. The initial state is FALSE."
	
	^self ffiCall: #(int nodelay(window * aWindow, bool aBoolean) )
]

{ #category : #modes }
NCursesLib >> noecho [

	"disables Echo mode for the current screen"
	
	^self ffiCall: #(int noecho(void) )
]

{ #category : #modes }
NCursesLib >> nonl [

	"disables a mode in which carriage return is translated to newline on input. The nonl() function disables the above translation. Initially, the above translation is enabled."
	
	^self ffiCall: #(int nonl(void) )
]

{ #category : #modes }
NCursesLib >> noqiflush [

	"causes all output in the display driver queue to be flushed whenever an interrupt key (interrupt, suspend, or quit) is pressed. The noqiflush() causes no such flushing to occur. The default for the option is inherited from the display driver settings."
	
	^self ffiCall: #(void noqiflush(void) )
]

{ #category : #modes }
NCursesLib >> noraw [

	"sets the input mode for the current terminal to Cooked Mode and sets the ISIG and IXON flags."
	
	^self ffiCall: #(int noraw(void) )
]

{ #category : #modes }
NCursesLib >> notimeout: aBoolean on: aWindow [

	"specifies whether Timeout Mode or No Timeout Mode is in effect for the screen associated with the specified window. If aBoolean is TRUE, this screen is set to No Timeout Mode. If aBoolean is FALSE, this screen is set to Timeout Mode. The initial state is FALSE."
	
	^self ffiCall: #(int notimeout(window * aWindow, bool aBoolean) )
]

{ #category : #colors }
NCursesLib >> pair_content: color foreground: foreground background: background [

	"TODO"
	

]

{ #category : #printing }
NCursesLib >> print: aString [
	^self ffiCall: #(int printw(char * aString) )
]

{ #category : #printing }
NCursesLib >> print: aString at: aPoint [
	
	^ self print: aString atY: (aPoint y-1) x: (aPoint x-1).
]

{ #category : #printing }
NCursesLib >> print: aString at: aPoint on: aWindow [
	
	^ self print: aString atY: (aPoint y-1) x: (aPoint x-1) on: aWindow
]

{ #category : #printing }
NCursesLib >> print: aString atY: y x: x [
	^self ffiCall: #(int mvprintw(int y, int x, char * aString) )
]

{ #category : #printing }
NCursesLib >> print: aString atY: y x: x on: aWindow [
	^self ffiCall: #(int mvwprintw(window * aWindow, int y, int x, char * aString) )
]

{ #category : #printing }
NCursesLib >> print: aString atY: y x: x to: aWindow [
	^self ffiCall: #(int mvwprintw(window * aWindow, int y, int x, char * aString) )
]

{ #category : #printing }
NCursesLib >> print: aString on: aWindow [

	^self ffiCall: #(bool has_colors())
]

{ #category : #printing }
NCursesLib >> print: aString to: aWindow [
	^self ffiCall: #(int wprintw(window * aWindow, char * aString) )
]

{ #category : #modes }
NCursesLib >> qiflush [

	"enable queue flushing"
	
	^self ffiCall: #(void qiflush(void) )
]

{ #category : #modes }
NCursesLib >> raw [

	"sets the input mode for the current terminal to Raw Mode."
	
	^self ffiCall: #(int raw(void) )
]

{ #category : #refreshing }
NCursesLib >> refresh [

	"refresh the current window. The function positions the terminal's cursor at the cursor position of the window, except that if the leaveok() mode has been enabled, it may leave the cursor at an arbitrary position."
	
	^self ffiCall: #(int refresh(void) )
]

{ #category : #refreshing }
NCursesLib >> refresh: aWindow [

	"refresh the specified window. The function positions the terminal's cursor at the cursor position of the window, except that if the leaveok() mode has been enabled, it may leave the cursor at an arbitrary position."
	
	^self ffiCall: #(int wrefresh(window * aWindow) )
]

{ #category : #'modes - program' }
NCursesLib >> reset_prog_mode [

	"restores the terminal to the program (in Curses) state."
	
	^self ffiCall: #(int reset_prog_mode(void) )
]

{ #category : #'modes - program' }
NCursesLib >> reset_shell_mode [

	"restores the terminal to the shell (not in Curses) state."
	
	^self ffiCall: #(int reset_shell_mode(void) )
]

{ #category : #'modes - program' }
NCursesLib >> resetty [

	"restores the program mode as of the most recent call to savetty()."
	
	^self ffiCall: #(int resetty(void) )
]

{ #category : #'modes - program' }
NCursesLib >> savetty [

	"saves the state that would be put in place by a call to reset_prog_mode()."
	
	^self ffiCall: #(int savetty(void) )
]

{ #category : #'terminal output control' }
NCursesLib >> scrollok: aBoolean on: aWindow [

	"controls the use of scrolling. If aBoolean is TRUE, then scrolling is enabled for the specified window, with the consequences discussed in Truncation, Wrapping and Scrolling . If aBoolean is FALSE, scrolling is disabled for the specified window. The initial state is FALSE."
	
	^self ffiCall: #(int scrollok(window * aWindow, bool aBoolean) )
]

{ #category : #'terminal output control' }
NCursesLib >> setscrreg_top: top bot: bottom [

	"define a software scrolling region in the current window. The top and bot arguments are the line numbers of the first and last line defining the scrolling region. (Line 0 is the top line of the window.) If this option and scrollok() are enabled, an attempt to move off the last line of the margin causes all lines in the scrolling region to scroll one line in the direction of the first line. Only characters in the window are scrolled. If a software scrolling region is set and scrollok() is not enabled, an attempt to move off the last line of the margin does not reposition any lines in the scrolling region."
	
	^self ffiCall: #(int setscrreg(int top, int bot) )
]

{ #category : #'terminal output control' }
NCursesLib >> setscrreg_top: top bot: bottom on: aWindow [

	"define a software scrolling region in the specified window. The top and bot arguments are the line numbers of the first and last line defining the scrolling region. (Line 0 is the top line of the window.) If this option and scrollok() are enabled, an attempt to move off the last line of the margin causes all lines in the scrolling region to scroll one line in the direction of the first line. Only characters in the window are scrolled. If a software scrolling region is set and scrollok() is not enabled, an attempt to move off the last line of the margin does not reposition any lines in the scrolling region."
	
	^self ffiCall: #(int wsetscrreg(window * aWindow, int top, int bot) )
]

{ #category : #'printing - attributes' }
NCursesLib >> standend [

	"Turn off all attributes of the current or specified window."
	
	^self ffiCall: #(int standend(void))
]

{ #category : #'printing - attributes' }
NCursesLib >> standend: aWindow [

	"Turn off all attributes of the current or specified window."
	
	^self ffiCall: #(int wstandend(window * aWindow))
]

{ #category : #'printing - attributes' }
NCursesLib >> standout [

	"set and clear window attributes. Same as attron(A_STANDOUT)"
	
	^self ffiCall: #(int standout(void))
]

{ #category : #'printing - attributes' }
NCursesLib >> standout: aWindow [

	"set and clear window attributes. Same as attron(A_STANDOUT)"
	
	^self ffiCall: #(int wstandout(window * aWindow))
]

{ #category : #colors }
NCursesLib >> start_color [

	"must be called in order to enable use of colours and before any colour manipulation function is called. The function initialises eight basic colours (black, blue, green, cyan, red, magenta, yellow, and white) that can be specified by the colour macros (such as COLOR_BLACK) defined in <curses.h>. The initial appearance of these eight colours is not specified."

	^self ffiCall: #(int start_color(void) )
]

{ #category : #'terminal capabilities' }
NCursesLib >> termname [

	"obtains the terminal name as recorded by setupterm()."
	
	^self ffiCall: #(char * termname(void))
]

{ #category : #modes }
NCursesLib >> timeout: delay [
	^self ffiCall: #(void timeout(int delay) )
]

{ #category : #modes }
NCursesLib >> timeout: delay on: aWindow [
	^self ffiCall: #(void wtimeout(window * aWindow, int delay) )
]

{ #category : #modes }
NCursesLib >> typehead: fd [

	"TODO"
	
	^self ffiCall: #(int typehead(int fd) )
]

{ #category : #library }
NCursesLib >> unixModuleName [
	^ './i386-linux-gnu/libncurses.so.5.9'
]

{ #category : #'terminal capabilities' }
NCursesLib >> use_env: aBoolean [

	" specifies the technique by which the implementation determines the size of the screen. If aBoolean is FALSE, the implementation uses the values of lines and columns specified in the terminfo database. If aBoolean is TRUE, the implementation uses the and environment variables. The initial value is TRUE."
	
	^self ffiCall: #(void use_env(bool aBoolean))
]

{ #category : #borders }
NCursesLib >> wborder: aWindow ls: ls rs: rs ts: ts bs: bs tl: tl tr: tr bl: bl br: br [
	^ self
		ffiCall:
			#(#int #wborder #(#window #* #aWindow #, #ulong #ls #, #ulong #rs #, #ulong #ts #, #ulong #bs #, #ulong #tl #, #ulong #tr #, #ulong #bl #, #ulong #br))
]

{ #category : #clearing }
NCursesLib >> wclrtoeol: aWindow [

	"erase the current line from the cursor to the end of the line, inclusive, in the specified window. Do not update the cursor."
	
	^self ffiCall: #(int wclrtoeol(window * aWindow) )
]

{ #category : #refreshing }
NCursesLib >> wnoutrefresh: aWindow [

	"determines which parts of the terminal may need updating."
	
	^self ffiCall: #(int wnoutrefresh(window * aWindow) )
]
