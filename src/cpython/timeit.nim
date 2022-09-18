## * https://docs.python.org/3.10/library/timeit.html
import nimpy

template X(simbol; a, b) = discard nimpy.pyImport("timeit").simbol(a, b)

proc timeit*(stmts = "pass", setup = "pass") = X timeit, stmts, setup
proc repeat*(stmts = "pass", setup = "pass") = X repeat, stmts, setup
