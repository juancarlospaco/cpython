## * https://docs.python.org/3.10/library/struct.html
import nimpy

template X(simbol; a):          auto = nimpy.pyImport("struct").simbol(a).to(type(result))
template X(simbol; a, b):       auto = nimpy.pyImport("struct").simbol(a, b).to(type(result))
template X(simbol; a, b, c):    auto = discard nimpy.pyImport("struct").simbol(a, b, c)
template X(simbol; a, b, c, d): auto = discard nimpy.pyImport("struct").simbol(a, b, c, d)

proc calcsize*(format: string):                       int = X calcsize, format
proc unpack*(format, buffer: string):              string = X unpack, format, buffer
proc unpack_from*(format, buffer: string; offset=0)       = X unpack_from, format, buffer, offset
proc pack*(format: string; values: varargs[auto]): string = X pack, format, values
proc pack_into*(format: string; buffer: var string; offset: int; values: varargs[auto]) = X pack_into, format, buffer, offset, values
