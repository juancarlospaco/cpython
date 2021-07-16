## * https://docs.python.org/3.10/library/keyword.html
import nimpy
const module = "keyword"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc iskeyword*(simbol: string): bool = X iskeyword, simbol
proc issoftkeyword*(simbol: string): bool = X issoftkeyword, simbol
