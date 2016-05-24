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
int    insertln(void);
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
char   *termname(void);
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
int    winsertln(WINDOW *);
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

int    wstandend(WINDOW *);
int    wstandout(WINDOW *);
void   wsyncup(WINDOW *);
void   wsyncdown(WINDOW *);

int    wtouchln(WINDOW *, int, int, int);
wchar_t *wunctrl(cchar_t *);
int    wvline(WINDOW *, chtype, int);
int    wvline_set(WINDOW *, const cchar_t *, int);