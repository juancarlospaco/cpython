## * https://docs.python.org/3.10/library/gzip.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
proc compress*(data: string; compresslevel = 9) = X compress, data, compresslevel
proc decompress*(data: string)                  = X decompress, data
