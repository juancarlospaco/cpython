## * https://docs.python.org/3.10/library/zlib.html
import nimpy
template X(simbol; a):       auto = nimpy.pyImport("zlib").simbol(a).to(type(result))
template X(simbol; a, b):    auto = nimpy.pyImport("zlib").simbol(a, b).to(type(result))
template X(simbol; a, b, c): auto = nimpy.pyImport("zlib").simbol(a, b, c).to(type(result))
proc adler32*(data: string; value: int):             string = X adler32, data, value
proc adler32*(data: string):                         string = X adler32, data
proc crc32*(data: string; value: int):               string = X crc32, data, value
proc crc32*(data: string):                           string = X crc32, data
proc compress*(data: string; level = 9):             string = X compress, data, level
proc compress*(data: string):                        string = X compress, data
proc decompress*(data: string; wbits, bufsize: int): string = X decompress, data, wbits, bufsize
proc decompress*(data: string):                      string = X decompress, data
