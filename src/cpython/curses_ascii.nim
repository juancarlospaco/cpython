## * https://docs.python.org/3.10/library/curses.ascii.html
import nimpy
let module = nimpy.pyImport("curses.ascii")
template X(simbol; a): auto = module.simbol(a).to(type(result))
proc isalnum*(c: string or char):  bool = X isalnum,  c
proc isalpha*(c: string or char):  bool = X isalpha,  c
proc isascii*(c: string or char):  bool = X isascii,  c
proc isblank*(c: string or char):  bool = X isblank,  c
proc iscntrl*(c: string or char):  bool = X iscntrl,  c
proc isdigit*(c: string or char):  bool = X isdigit,  c
proc isgraph*(c: string or char):  bool = X isgraph,  c
proc islower*(c: string or char):  bool = X islower,  c
proc isprint*(c: string or char):  bool = X isprint,  c
proc ispunct*(c: string or char):  bool = X ispunct,  c
proc isspace*(c: string or char):  bool = X isspace,  c
proc isupper*(c: string or char):  bool = X isupper,  c
proc isxdigit*(c: string or char): bool = X isxdigit, c
proc isctrl*(c: string or char):   bool = X isctrl,   c
proc ismeta*(c: string or char):   bool = X ismeta,   c
proc ascii*(c: char or int):     string = X ascii,    c
proc ctrl*(c: char or int):      string = X ctrl,     c
proc alt*(c: char or int):       string = X alt,      c
proc unctrl*(c: char or int):    string = X unctrl,   c
