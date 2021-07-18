## * https://docs.python.org/3.10/library/fnmatch.html
import nimpy
template X(simbol; a):    auto = nimpy.pyImport("fnmatch").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("fnmatch").simbol(a, b).to(type(result))
proc fnmatch*(filename, pattern: string):          bool        = X fnmatch, filename, pattern
proc fnmatchcase*(filename, pattern: string):      bool        = X fnmatchcase, filename, pattern
proc filter*(names: seq[string]; pattern: string): seq[string] = X filter, names, pattern
proc translate*(pattern: string):                  string      = X translate, pattern
