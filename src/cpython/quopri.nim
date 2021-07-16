## * https://docs.python.org/3.10/library/quopri.html
import nimpy
const module = "quopri"
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc decodestring*(s: string; header=false):                  string = X decodestring, s, header
proc encodestring*(s: string; quotetabs=false; header=false): string = X encodestring, s, quotetabs, header
