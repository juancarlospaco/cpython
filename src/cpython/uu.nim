## * https://docs.python.org/3.10/library/uu.html
import nimpy

template X(simbol; a, b)       = discard nimpy.pyImport("uu").simbol(a, b)
template X(simbol; a, b, c, d) = discard nimpy.pyImport("uu").simbol(a, b, c, d)

proc encode*(in_file, out_file, name, mode: string)        = X encode, in_file, out_file, name, mode
proc encode*(in_file, out_file: string)                    = X encode, in_file, out_file
proc decode*(in_file, out_file, mode: string; quiet=false) = X decode, in_file, out_file, mode, quiet
proc decode*(in_file, out_file: string)                    = X decode, in_file, out_file
