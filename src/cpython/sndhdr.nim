## * https://docs.python.org/3.10/library/sndhdr.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("sndhdr").simbol(a).to(type(result))

proc what*(filename: string):    tuple[filetype: string; framerate, nchannels, nframes, sampwidth: int] = X what, filename
proc whathdr*(filename: string): tuple[filetype: string; framerate, nchannels, nframes, sampwidth: int] = X whathdr, filename
