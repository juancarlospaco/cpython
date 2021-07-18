## * https://docs.python.org/3.10/library/imp.html
import nimpy

template X(simbol; a, b): auto = nimpy.pyImport("imp").simbol(a, b).to(type(result))
template X(simbol; a, b, c, d) = discard nimpy.pyImport("imp").simbol(a, b, c, d)
template X(simbol): auto =
  when declared result: nimpy.pyImport("imp").simbol().to(type(result)) else: discard nimpy.pyImport("imp").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("imp").simbol(a).to(type(result)) else: discard nimpy.pyImport("imp").simbol(a)

proc get_magic*(): string = X get_magic
proc get_suffixes*(): seq[tuple[suffix, mode, tipe: string]] = X get_suffixes
proc find_module*(name, path: string): tuple[file, pathname, description: string] = X find_module, name, path
proc find_module*(name: string): tuple[file, pathname, description: string] = X find_module, name
proc load_module*(name, file, pathname, description: string) = X load_module, name, file, pathname, description
proc reload*(module: string) = X reload, module
proc cache_from_source*(path: string): string = X cache_from_source, path
proc source_from_cache*(path: string): string = X source_from_cache, path
proc lock_held*(): bool = X lock_held
proc acquire_lock*() = X acquire_lock
proc release_lock*() = X release_lock
