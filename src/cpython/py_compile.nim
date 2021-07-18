## * https://docs.python.org/3.10/library/py_compile.html
import nimpy

template X(simbol; a):             auto = nimpy.pyImport("py_compile").simbol(a).to(type(result))
template X(simbol; a, b):          auto = nimpy.pyImport("py_compile").simbol(a, b).to(type(result))
template X(simbol; a, b, c, d, e): auto = nimpy.pyImport("py_compile").simbol(a, b, c, d, e).to(type(result))

proc compile*(file, cfile, dfile: string; doraise=false; optimize= -1): string = X compile, file, cfile, dfile, doraise, optimize
proc compile*(file, cfile: string): string = X compile, file, cfile
proc compile*(file: string): string = X compile, file
