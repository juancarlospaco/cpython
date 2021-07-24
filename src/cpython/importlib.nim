## * https://docs.python.org/3.10/library/importlib.html
import nimpy

template X(simbol; a, b, c): auto = nimpy.pyImport("importlib").simbol(a, b, c).to(type(result))
template X(simbol; a, b)          = discard nimpy.pyImport("importlib").simbol(a, b)
template X(simbol; a)             = discard nimpy.pyImport("importlib").simbol(a)
template Z(simbol; a, b):    auto = nimpy.pyImport("importlib.resources").simbol(a, b).to(type(result))
template Y(simbol):          auto = nimpy.pyImport("importlib.machinery").simbol().to(type(result))
template V(simbol; a):       auto = nimpy.pyImport("importlib.util").simbol(a).to(type(result))
template V(simbol; a, b):    auto = nimpy.pyImport("importlib.util").simbol(a, b).to(type(result))
template X(simbol): auto =
  when declared result: nimpy.pyImport("importlib").simbol().to(type(result)) else: discard nimpy.pyImport("importlib").simbol()
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("importlib.machinery").simbol.to(tipe)

SOURCE_SUFFIXES             := seq[string]
DEBUG_BYTECODE_SUFFIXES     := seq[string]
OPTIMIZED_BYTECODE_SUFFIXES := seq[string]
BYTECODE_SUFFIXES           := seq[string]
EXTENSION_SUFFIXES          := seq[string]

proc import_module*(name, package: string)        = X import_module, name, package
proc import_module*(name: string)                 = X import_module, name
proc invalidate_caches*()                         = X invalidate_caches
proc reload*(module: auto)                        = X reload, module
proc is_resource*(package, name: string):    bool = Z is_resource, package, name
proc all_suffixes*():                 seq[string] = Y all_suffixes
proc cache_from_source*(path: string):     string = V cache_from_source, path
proc source_from_cache*(path: string):     string = V source_from_cache, path
proc decode_source*(path: string):         string = V decode_source, path
proc resolve_name*(name, package: string): string = V resolve_name, name, package
proc source_hash*(source_bytes: string):   string = V source_hash, source_bytes
