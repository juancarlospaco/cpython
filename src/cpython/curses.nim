## * https://docs.python.org/3.10/library/curses.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: module.simbol(a, b, c, d, e, f).to(type(result)) else: discard module.simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g)
template X(simbol; a, b, c, d, e, f, g, h): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g, h).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g, h)
template Z(simbol): auto = nimpy.pyImport("curses.ascii").simbol(c).to(type(result))

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
proc curs_set*(visibility: range[0..2]) = X curs_set, visibility
proc initscr*()                         = X initscr
proc mousemask*(mousemask: int):    int = X mousemask, mousemask
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

proc color_content*(color_number: int): tuple[red, green, blue: int] = X color_content, color_number
proc color_pair*(pair_number: int): string = X color_pair, pair_number
proc getmouse*(): tuple[id, x, y, z, bstate: int] = X getmouse
proc has_extended_color_support*(): bool = X has_extended_color_support
proc init_color*(color_number, r, g, b: range[0..1000]) = X init_color, color_number, r, g, b
proc is_term_resized*(nlines, ncols: int) = X is_term_resized, nlines, ncols
proc pair_content*(pair_number: int): tuple[fg, bg: int] = X pair_content, pair_number













proc *() = X




