## * https://docs.python.org/3.10/library/codeop.html
import nimpy

template X(simbol) = discard nimpy.pyImport("codeop").simbol(source, filename, symbol)

proc compile_command*(source: string, filename="<input>", symbol="single") = X compile_command
