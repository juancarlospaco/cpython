## https://docs.python.org/3.12/library/bisect.html
import nimpy

template X(simbol; a, b, c): int = nimpy.pyImport("bisect").simbol(a, b, c).to(int)

proc bisect*(a, x: auto; lo: int = 0):       int = X bisect, a, x, lo
proc bisect_left*(a, x: auto; lo: int = 0):  int = X bisect_left, a, x, lo
proc bisect_right*(a, x: auto; lo: int = 0): int = X bisect_right, a, x, lo
proc insort*(a, x: auto; lo: int = 0):       int = X insort, a, x, lo
proc insort_left*(a, x: auto; lo: int = 0):  int = X insort_left, a, x, lo
proc insort_right*(a, x: auto; lo: int = 0): int = X insort_right, a, x, lo
