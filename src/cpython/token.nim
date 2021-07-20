## * https://docs.python.org/3.10/library/token.html
import nimpy

template X(simbol): auto = nimpy.pyImport("token").simbol(x).to(type(result))

proc ISTERMINAL*(x: auto):    bool = X ISTERMINAL
proc ISNONTERMINAL*(x: auto): bool = X ISNONTERMINAL
proc ISEOF*(x: auto):         bool = X ISEOF
