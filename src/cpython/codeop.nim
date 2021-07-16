## * https://docs.python.org/3.10/library/codeop.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
proc compile_command*(source: string, filename="<input>", symbol="single") = X compile_command, source, filename, symbol
