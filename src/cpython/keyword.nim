## * https://docs.python.org/3.10/library/keyword.html
import nimpy

template X(simbol): auto = nimpy.pyImport("keyword").simbol(symbol).to(type(result))
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("keyword").simbol.to(tipe)

kwlist     := seq[string]
softkwlist := seq[string]

proc iskeyword*(symbol: string):     bool = X iskeyword
proc issoftkeyword*(symbol: string): bool = X issoftkeyword
