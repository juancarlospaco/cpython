## * https://docs.python.org/3.10/library/zlib.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
proc adler32*(data: string; value: int):             string = X adler32, data, value
proc adler32*(data: string):                         string = X adler32, data
proc crc32*(data: string; value: int):               string = X crc32, data, value
proc crc32*(data: string):                           string = X crc32, data
proc compress*(data: string; level = 9):             string = X compress, data, level
proc compress*(data: string):                        string = X compress, data
proc decompress*(data: string; wbits, bufsize: int): string = X decompress, data, wbits, bufsize
proc decompress*(data: string):                      string = X decompress, data
