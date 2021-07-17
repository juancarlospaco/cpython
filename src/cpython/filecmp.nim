## * https://docs.python.org/3.10/library/filecmp.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
proc cmp*(f1, f2: string, shallow=true): bool = X cmp, f1, f2, shallow
proc cmpfiles*(dir1, dir2: string; common: seq[string]; shallow=true): tuple[match, mismatch, errors: seq[string]] = X cmpfiles, dir1, dir2, common, shallow
proc clear_cache*() = X clear_cache
