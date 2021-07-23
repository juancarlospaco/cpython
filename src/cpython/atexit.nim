## * https://docs.python.org/3.10/library/atexit.html
import nimpy

template X(simbol; a) = discard nimpy.pyImport("atexit").simbol(a)

proc register*[T](function: T)   = X register, function
proc unregister*[T](function: T) = X unregister, function
