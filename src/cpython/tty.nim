## * https://docs.python.org/3.10/library/tty.html
import nimpy
const module = "tty"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc setraw*(fd: int)    = X setraw, fd
proc setcbreak*(fd: int) = X setcbreak, fd
