## * https://docs.python.org/3.10/library/fnmatch.html
import nimpy
const module = "fnmatch"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
proc fnmatch*(filename, pattern: string):          bool        = X fnmatch, filename, pattern
proc fnmatchcase*(filename, pattern: string):      bool        = X fnmatchcase, filename, pattern
proc filter*(names: seq[string]; pattern: string): seq[string] = X filter, names, pattern
proc translate*(pattern: string):                  string      = X translate, pattern
