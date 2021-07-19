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


proc *() = X




