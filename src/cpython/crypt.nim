## * https://docs.python.org/3.10/library/crypt.html
import nimpy
const module = "crypt"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: pyImport(module).simbol(a, b, c, d).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: pyImport(module).simbol(a, b, c, d, e, f).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d, e, f)
proc crypt*(word: string):       string = X crypt, word
proc crypt*(word, salt: string): string = X crypt, word, salt
proc mksalt*():                  string = X mksalt
