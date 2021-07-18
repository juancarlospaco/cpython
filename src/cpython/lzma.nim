## * https://docs.python.org/3.10/library/lzma.html
import nimpy

template X(simbol; a):          auto = nimpy.pyImport("lzma").simbol(a).to(type(result))
template X(simbol; a, b):       auto = nimpy.pyImport("lzma").simbol(a, b).to(type(result))
template X(simbol; a, b, c):    auto = nimpy.pyImport("lzma").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d): auto = nimpy.pyImport("lzma").simbol(a, b, c, d).to(type(result))

proc compress*(data: string, format=1, check = -1, preset: range[0..9] = 9): string = X compress, data, format, check, preset
proc compress*(data: string): string = X compress, data
proc decompress*(data: string; format: int; memlimit: int): string = X decompress, data, format, memlimit
proc decompress*(data: string; format = 0): string = X decompress, data, format
proc decompress*(data: string): string = X decompress, data
