## * https://docs.python.org/3.10/library/glob.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("glob").simbol(a).to(type(result))

proc glob*(pathname: string):   seq[string] = X glob,   pathname
proc escape*(pathname: string): string      = X escape, pathname
