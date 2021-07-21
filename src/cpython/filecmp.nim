## * https://docs.python.org/3.10/library/filecmp.html
import nimpy

template X(simbol)                   = discard nimpy.pyImport("filecmp").simbol()
template X(simbol; a, b, c):    auto = nimpy.pyImport("filecmp").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d): auto = nimpy.pyImport("filecmp").simbol(a, b, c, d).to(type(result))

let DEFAULT_IGNORES*: seq[string] = nimpy.pyImport("filecmp").DEFAULT_IGNORES.to(seq[string])

proc clear_cache*() = X clear_cache
proc cmp*(f1, f2: string, shallow=true): bool = X cmp, f1, f2, shallow
proc cmpfiles*(dir1, dir2: string; common: seq[string]; shallow=true): tuple[match, mismatch, errors: seq[string]] = X cmpfiles, dir1, dir2, common, shallow
