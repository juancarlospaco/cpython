## * https://docs.python.org/3.10/library/timeit.html
import nimpy
const module = "timeit"
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
proc timeit*(stmts="pass", setup="pass") = X timeit, stmts, setup
proc repeat*(stmts="pass", setup="pass") = X repeat, stmts, setup
