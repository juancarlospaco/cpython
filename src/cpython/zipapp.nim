## * https://docs.python.org/3.10/library/zipapp.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
proc create_archive*(source, target, interpreter, main: string) = X create_archive, source, target, interpreter, main
proc create_archive*(source, target, interpreter: string) = X create_archive, source, target, interpreter
proc create_archive*(source, target: string) = X create_archive, source, target
proc create_archive*(source: string) = X create_archive, source
proc get_interpreter*(archive: string): string = X get_interpreter, archive
