## * https://docs.python.org/3.10/library/termios.html
import nimpy
const module = "termios"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
proc tcgetattr*(fd: int): tuple[iflag, oflag, cflag, lflag, ispeed, ospeed: int; cc: seq[string]] = X tcgetattr, fd
proc tcsendbreak*(fd, duration: int) = X tcsendbreak, fd, duration
proc tcdrain*(fd: int) = X tcdrain, fd
