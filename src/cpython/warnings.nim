## * https://docs.python.org/3.10/library/warnings.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
proc warn*(message: string) = X warn, message
proc warn_explicit*(message: string) = X warn_explicit, message
proc formatwarning*(message: string): string = X formatwarning, message
proc resetwarnings*(message: string) = X resetwarnings
