## * https://docs.python.org/3.10/library/nis.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
proc match*(key, mapname: string): seq[string] = X match, key, mapname
proc get_default_domain*():        string      = X get_default_domain
