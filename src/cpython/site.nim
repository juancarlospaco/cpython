## * https://docs.python.org/3.10/library/site.html
import nimpy

template X(simbol; a, b) = discard nimpy.pyImport("site").simbol(a, b)
template X(simbol): auto =
  when declared result: nimpy.pyImport("site").simbol().to(type(result)) else: discard nimpy.pyImport("site").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("site").simbol(a).to(type(result)) else: discard nimpy.pyImport("site").simbol(a)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("site").simbol.to(tipe)

PREFIXES         := seq[string]
ENABLE_USER_SITE := bool
USER_SITE        := string
USER_BASE        := string

proc main*()                                                = X main
proc addsitedir*(sitedir: string)                           = X addsitedir, sitedir
proc addsitedir*(sitedir: string; known_paths: seq[string]) = X addsitedir, sitedir, known_paths
proc getsitepackages*():                        seq[string] = X getsitepackages
proc getuserbase*():                                 string = X getuserbase
proc getusersitepackages*():                         string = X getuserbase
