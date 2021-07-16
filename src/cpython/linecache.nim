## * https://docs.python.org/3.10/library/linecache.html
import nimpy
const module = "linecache"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
proc getline*(filename: string; lineno: int): string = X getline, filename, lineno
proc clearcache*()                         = X clearcache
proc checkcache*(filename: string): string = X checkcache, filename
proc lazycache*(filename: string):  string = X lazycache, filename
