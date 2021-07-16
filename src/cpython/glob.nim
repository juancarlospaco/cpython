## * https://docs.python.org/3.10/library/glob.html
import nimpy
const module = "glob"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc glob*(pathname: string):   seq[string] = X glob,   pathname
proc escape*(pathname: string): string      = X escape, pathname
