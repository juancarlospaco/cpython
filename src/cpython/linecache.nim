## * https://docs.python.org/3.10/library/linecache.html
import nimpy
template X(simbol):       auto = discard nimpy.pyImport("linecache").simbol()
template X(simbol; a):    auto = nimpy.pyImport("linecache").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("linecache").simbol(a, b).to(type(result))
proc getline*(filename: string; lineno: int): string = X getline, filename, lineno
proc clearcache*()                         = X clearcache
proc checkcache*(filename: string): string = X checkcache, filename
proc lazycache*(filename: string):  string = X lazycache, filename
