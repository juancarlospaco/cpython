## * https://docs.python.org/3.10/library/keyword.html
import nimpy

template X(simbol): auto = nimpy.pyImport("keyword").simbol(symbol).to(type(result))

proc iskeyword*(symbol: string):     bool = X iskeyword
proc issoftkeyword*(symbol: string): bool = X issoftkeyword
