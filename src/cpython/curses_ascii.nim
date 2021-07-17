## * https://docs.python.org/3.10/library/curses.ascii.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
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
