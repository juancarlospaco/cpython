## * https://docs.python.org/3.10/library/bz2.html
import nimpy
template X(simbol; a):    auto = nimpy.pyImport("bz2").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("bz2").simbol(a, b).to(type(result))
proc compress*(data: string; compresslevel = 9): string = X compress, data, compresslevel
proc decompress*(data: string): string                  = X decompress, data
