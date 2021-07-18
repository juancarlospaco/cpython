## * https://docs.python.org/3.10/library/warnings.html
import nimpy
template X(simbol) = discard nimpy.pyImport("warnings").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("warnings").simbol(a).to(type(result)) else: discard nimpy.pyImport("warnings").simbol(a)
proc warn*(message: string) = X warn, message
proc warn_explicit*(message: string) = X warn_explicit, message
proc formatwarning*(message: string): string = X formatwarning, message
proc resetwarnings*(message: string) = X resetwarnings
