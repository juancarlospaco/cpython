## * https://docs.python.org/3.10/library/zipapp.html
import nimpy
template X(simbol; a, b)       = discard nimpy.pyImport("zipapp").simbol(a, b)
template X(simbol; a, b, c)    = discard nimpy.pyImport("zipapp").simbol(a, b, c)
template X(simbol; a, b, c, d) = discard nimpy.pyImport("zipapp").simbol(a, b, c, d)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("zipapp").simbol(a).to(type(result)) else: discard nimpy.pyImport("zipapp").simbol(a)
proc create_archive*(source, target, interpreter, main: string) = X create_archive, source, target, interpreter, main
proc create_archive*(source, target, interpreter: string) = X create_archive, source, target, interpreter
proc create_archive*(source, target: string) = X create_archive, source, target
proc create_archive*(source: string) = X create_archive, source
proc get_interpreter*(archive: string): string = X get_interpreter, archive
