## * https://docs.python.org/3.10/library/crypt.html
import nimpy

template X(simbol):       auto = nimpy.pyImport("crypt").simbol().to(type(result))
template X(simbol; a):    auto = nimpy.pyImport("crypt").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("crypt").simbol(a, b).to(type(result))

proc crypt*(word: string):       string = X crypt, word
proc crypt*(word, salt: string): string = X crypt, word, salt
proc mksalt*():                  string = X mksalt
