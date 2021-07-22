## * https://docs.python.org/3.10/library/curses.html
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("curses").simbol().to(type(result)) else: discard nimpy.pyImport("curses").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("curses").simbol(a).to(type(result)) else: discard nimpy.pyImport("curses").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("curses").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("curses").simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: nimpy.pyImport("curses").simbol(a, b, c).to(type(result)) else: discard nimpy.pyImport("curses").simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: nimpy.pyImport("curses").simbol(a, b, c, d).to(type(result)) else: discard nimpy.pyImport("curses").simbol(a, b, c, d)
template Z(simbol): auto = nimpy.pyImport("curses.ascii").simbol(c).to(type(result))
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("curses").simbol.to(tipe)

ERR          := int
OK           := int
version      := int
A_ALTCHARSET := int
A_BLINK      := int
A_BOLD       := int
A_DIM        := int
A_INVIS      := int
A_ITALIC     := int
A_NORMAL     := int
A_PROTECT    := int
A_REVERSE    := int
A_STANDOUT   := int
A_UNDERLINE  := int
A_HORIZONTAL := int
A_LEFT       := int
A_LOW        := int
A_RIGHT      := int
A_TOP        := int
A_VERTICAL   := int
A_CHARTEXT   := int
A_ATTRIBUTES := int
A_COLOR      := int
KEY_MIN      := int
KEY_BREAK    := int
KEY_DOWN     := int
KEY_UP       := int
KEY_LEFT     := int
KEY_RIGHT    := int
KEY_HOME     := int
KEY_BACKSPACE := int
KEY_F0       := int
KEY_Fn       := int
KEY_DL       := int
KEY_IL       := int
KEY_DC       := int
KEY_IC       := int
KEY_EIC      := int
KEY_CLEAR    := int
KEY_EOS      := int
KEY_EOL      := int
KEY_SF       := int
KEY_SR       := int
KEY_NPAGE    := int
KEY_PPAGE    := int
KEY_STAB     := int
KEY_CTAB     := int
KEY_CATAB    := int
KEY_ENTER    := int
KEY_SRESET   := int
KEY_RESET    := int
KEY_PRINT    := int
KEY_LL       := int
KEY_A1       := int
KEY_A3       := int
KEY_B2       := int
KEY_C1       := int
KEY_C3       := int
KEY_BTAB     := int
KEY_BEG      := int
KEY_CANCEL   := int
KEY_CLOSE    := int
KEY_COMMAND  := int
KEY_COPY     := int
KEY_CREATE   := int
KEY_END      := int
KEY_EXIT     := int
KEY_FIND     := int
KEY_HELP     := int
KEY_MARK     := int
KEY_MESSAGE  := int
KEY_MOVE     := int
KEY_NEXT     := int
KEY_OPEN     := int
KEY_OPTIONS  := int
KEY_PREVIOUS := int
KEY_REDO     := int
KEY_REFERENCE := int
KEY_REFRESH  := int
KEY_REPLACE  := int
KEY_RESTART  := int
KEY_RESUME   := int
KEY_SAVE     := int
KEY_SBEG     := int
KEY_SCANCEL  := int
KEY_SCOMMAND := int
KEY_SCOPY    := int
KEY_SCREATE  := int
KEY_SDC      := int
KEY_SDL      := int
KEY_SELECT   := int
KEY_SEND     := int
KEY_SEOL     := int
KEY_SEXIT    := int
KEY_SFIND    := int
KEY_SHELP    := int
KEY_SHOME    := int
KEY_SIC      := int
KEY_SLEFT    := int
KEY_SMESSAGE := int
KEY_SMOVE    := int
KEY_SNEXT    := int
KEY_SOPTIONS := int
KEY_SPREVIOUS := int
KEY_SPRINT   := int
KEY_SREDO    := int
KEY_SREPLACE := int
KEY_SRIGHT   := int
KEY_SRSUME   := int
KEY_SSAVE    := int
KEY_SSUSPEND := int
KEY_SUNDO    := int
KEY_SUSPEND  := int
KEY_UNDO     := int
KEY_MOUSE    := int
KEY_RESIZE   := int
KEY_MAX      := int
COLOR_BLACK  := int
COLOR_BLUE   := int
COLOR_CYAN   := int
COLOR_GREEN  := int
COLOR_MAGENTA := int
COLOR_RED    := int
COLOR_WHITE  := int
COLOR_YELLOW := int
ncurses_version := tuple[major, minor, patch: int]

proc isalnum*(c: string or char):  bool = Z isalnum
proc isalpha*(c: string or char):  bool = Z isalpha
proc isascii*(c: string or char):  bool = Z isascii
proc isblank*(c: string or char):  bool = Z isblank
proc iscntrl*(c: string or char):  bool = Z iscntrl
proc isdigit*(c: string or char):  bool = Z isdigit
proc isgraph*(c: string or char):  bool = Z isgraph
proc islower*(c: string or char):  bool = Z islower
proc isprint*(c: string or char):  bool = Z isprint
proc ispunct*(c: string or char):  bool = Z ispunct
proc isspace*(c: string or char):  bool = Z isspace
proc isupper*(c: string or char):  bool = Z isupper
proc isZdigit*(c: string or char): bool = Z isZdigit
proc isctrl*(c: string or char):   bool = Z isctrl
proc ismeta*(c: string or char):   bool = Z ismeta
proc ascii*(c: char or int):     string = Z ascii
proc ctrl*(c: char or int):      string = Z ctrl
proc alt*(c: char or int):       string = Z alt
proc unctrl*(c: char or int):    string = Z unctrl
proc baudrate*()                        = X baudrate
proc beep*()                            = X beep
proc can_change_color*():          bool = X can_change_color
proc cbreak*()                          = X cbreak
proc def_prog_mode*()                   = X def_prog_mode
proc def_shell_mode*()                  = X def_shell_mode
proc delay_output*(ms: int)             = X delay_output, ms
proc doupdate*()                        = X doupdate
proc endwin*()                          = X endwin
proc erasechar*():               string = X erasechar
proc filter*()                          = X filter
proc flash*()                           = X flash
proc flushinp*()                        = X flushinp
proc has_ic*():                    bool = X has_ic
proc has_il*():                    bool = X has_il
proc has_key*(ch: string or char): bool = X has_key, ch
proc has_colors*():                bool = X has_colors
proc isendwin*()                        = X isendwin
proc keyname*(k: int)                   = X keyname, k
proc killchar*():                string = X killchar
proc longname*():                string = X longname
proc meta*(flag: bool)                  = X meta
proc getsyx*():        tuple[y, x: int] = X getsyx
proc napms*(ms: int)                    = X napms
proc nl*()                              = X nl
proc nocbreak*()                        = X nocbreak
proc noecho*()                          = X noecho
proc nonl*()                            = X nonl
proc noqiflush*()                       = X noqiflush
proc noraw*()                           = X noraw
proc mouseinterval*(interval: int): int = X mouseinterval, interval
proc putp*(str: string)                 = X putp, str
proc qiflush*(flag: bool)               = X qiflush, flag
proc qiflush*()                         = X qiflush
proc raw*()                             = X raw
proc reset_prog_mode*()                 = X reset_prog_mode
proc reset_shell_mode*()                = X reset_shell_mode
proc resetty*()                         = X resetty
proc halfdelay*(tenths: range[1..255])  = X halfdelay, tenths
proc savetty*()                         = X savetty
proc get_escdelay*():               int = X get_escdelay
proc resize_term*(nlines, ncols: int)   = X resize_term, nlines, ncols
proc set_escdelay*(ms: int)             = X set_escdelay
proc get_tabsize*():                int = X get_tabsize
proc set_tabsize*(size: int):       int = X set_tabsize, size
proc setsyx*(y, x: int):            int = X setsyx, y, x
proc setupterm*(term: string; fd = -1)  = X setupterm, term, fd
proc start_color*()                     = X start_color
proc termattrs*():                  int = X termattrs
proc termname*():                string = X termname
proc tigetflag*(capname: int):      int = X tigetflag, capname
proc tigetnum*(capname: int):       int = X tigetnum, capname
proc tigetstr*(capname: string):    int = X tigetstr, capname
proc typeahead*(fd: int)                = X typeahead, fd
proc update_lines_cols*()               = X update_lines_cols
proc unget_wch*(ch: char or string)     = X unget_wch, ch
proc use_env*(flag: bool)               = X use_env, flag
proc use_default_colors*()              = X use_default_colors
proc unctrl*(ch: char or string): string = X unctrl, ch
proc ungetch*(ch: char or string): string = X ungetch, ch
proc color_content*(color_number: int): tuple[red, green, blue: int] = X color_content, color_number
proc color_pair*(pair_number: int): string = X color_pair, pair_number
proc getmouse*(): tuple[id, x, y, z, bstate: int] = X getmouse
proc has_extended_color_support*(): bool = X has_extended_color_support
proc init_color*(color_number, r, g, b: range[0..1000]) = X init_color, color_number, r, g, b
proc is_term_resized*(nlines, ncols: int) = X is_term_resized, nlines, ncols
proc pair_content*(pair_number: int): tuple[fg, bg: int] = X pair_content, pair_number
