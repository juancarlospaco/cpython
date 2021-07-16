## * https://docs.python.org/3.10/library/binhex.html
import nimpy
const module = "binhex"
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
proc binhex*(input, output: string) = X binhex, input, output
proc hexbin*(input, output: string) = X hexbin, input, output
