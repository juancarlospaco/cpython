## * https://docs.python.org/3.10/library/py_compile.html
import nimpy
const module = "py_compile"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c, d, e): auto =
  when declared result: pyImport(module).simbol(a, b, c, d, e).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d, e)
proc compile*(file, cfile, dfile: string; doraise=false; optimize= -1): string = X compile, file, cfile, dfile, doraise, optimize
proc compile*(file, cfile: string): string = X compile, file, cfile
proc compile*(file: string): string = X compile, file
