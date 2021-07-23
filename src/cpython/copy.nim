## * https://docs.python.org/3.10/library/copy.html
import nimpy

template X(simbol): auto = nimpy.pyImport("copy").simbol(x).to(type(x))

proc deepcopy*(x: auto): auto = X deepcopy
proc copy*(x: auto):     auto = X copy
