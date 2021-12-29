## * https://docs.python.org/3.10/library/marshal.html
import nimpy

template X(simbol; a, b): auto = nimpy.pyImport("marshal").simbol(a, b).to(type(result))

proc dumps*(value: auto; version: range[0..4] = 4): string = X dumps, value, version
