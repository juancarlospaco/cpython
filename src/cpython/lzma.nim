## * https://docs.python.org/3.10/library/lzma.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
proc compress*(data: string, format=1, check = -1, preset: range[0..9] = 9): string = X compress, data, format, check, preset
proc compress*(data: string): string = X compress, data
proc decompress*(data: string; format: int; memlimit: int): string = X decompress, data, format, memlimit
proc decompress*(data: string; format = 0): string = X decompress, data, format
proc decompress*(data: string): string = X decompress, data
