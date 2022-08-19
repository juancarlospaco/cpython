## https://upbge.org/#/documentation/docs/latest/api/imbuf.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("imbuf").simbol(a).to(type(result))
template X(simbol; a, b)    = discard nimpy.pyImport("imbuf").simbol(a, b)

type ImBuf* = nimpy.PyObject  ## https://upbge.org/#/documentation/docs/latest/api/imbuf.types.html

proc loadImBuf*(filepath: string):    ImBuf = X load, filepath
proc newImBuf*(size: array[2, int]):  ImBuf = X new, size
proc write*(image: ImBuf; filepath: string) = X write, image, filepath
