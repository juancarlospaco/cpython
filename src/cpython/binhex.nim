## * https://docs.python.org/3.10/library/binhex.html
import nimpy
template X(simbol) = discard nimpy.pyImport("binhex").simbol(input, output)
proc binhex*(input, output: string) = X binhex
proc hexbin*(input, output: string) = X hexbin
