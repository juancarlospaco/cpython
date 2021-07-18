## * https://docs.python.org/3.10/library/tty.html
import nimpy
template X(simbol) = discard nimpy.pyImport("tty").simbol(fd)
proc setraw*(fd: int)    = X setraw
proc setcbreak*(fd: int) = X setcbreak
