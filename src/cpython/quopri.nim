## * https://docs.python.org/3.10/library/quopri.html
import nimpy

template X(simbol; a, b):    auto = nimpy.pyImport("py_compile").simbol(a, b).to(type(result))
template X(simbol; a, b, c): auto = nimpy.pyImport("py_compile").simbol(a, b, c).to(type(result))

proc decodestring*(s: string; header=false):                  string = X decodestring, s, header
proc encodestring*(s: string; quotetabs=false; header=false): string = X encodestring, s, quotetabs, header
