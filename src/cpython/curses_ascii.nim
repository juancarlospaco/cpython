## * https://docs.python.org/3.10/library/curses.ascii.html
import nimpy

template X(simbol): auto = nimpy.pyImport("curses.ascii").simbol(c).to(type(result))

proc isalnum*(c: string or char):  bool = X isalnum
proc isalpha*(c: string or char):  bool = X isalpha
proc isascii*(c: string or char):  bool = X isascii
proc isblank*(c: string or char):  bool = X isblank
proc iscntrl*(c: string or char):  bool = X iscntrl
proc isdigit*(c: string or char):  bool = X isdigit
proc isgraph*(c: string or char):  bool = X isgraph
proc islower*(c: string or char):  bool = X islower
proc isprint*(c: string or char):  bool = X isprint
proc ispunct*(c: string or char):  bool = X ispunct
proc isspace*(c: string or char):  bool = X isspace
proc isupper*(c: string or char):  bool = X isupper
proc isxdigit*(c: string or char): bool = X isxdigit
proc isctrl*(c: string or char):   bool = X isctrl
proc ismeta*(c: string or char):   bool = X ismeta
proc ascii*(c: char or int):     string = X ascii
proc ctrl*(c: char or int):      string = X ctrl
proc alt*(c: char or int):       string = X alt
proc unctrl*(c: char or int):    string = X unctrl
