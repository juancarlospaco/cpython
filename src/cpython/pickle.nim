## * https://docs.python.org/3.10/library/pickle.html
import nimpy

template X(simbol; a):    auto = nimpy.pyImport("pickle").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("pickle").simbol(a, b).to(type(result))
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("pickle").simbol.to(tipe)

HIGHEST_PROTOCOL := int
DEFAULT_PROTOCOL := int

proc dumps*(obj: auto): string = X dumps, obj
proc loads*(bytes_object: string; output_type: typedesc): auto = nimpy.pyImport("pickle").loads(bytes_object).to(output_type)
