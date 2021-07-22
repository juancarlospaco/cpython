## * https://docs.python.org/3.10/library/logging.html
import nimpy

template X(simbol; a, b): auto = discard nimpy.pyImport("logging").simbol(a, b)
template X(simbol):       auto = discard nimpy.pyImport("logging").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("logging").simbol(a).to(type(result)) else: discard nimpy.pyImport("logging").simbol(a)
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("logging").simbol.to(tipe)

CRITICAL := int
ERROR    := int
WARNING  := int
INFO     := int
DEBUG    := int
NOTSET   := int

proc disable*(level: string or int)               = X disable, level
proc addLevelName*(level: int; levelName: string) = X addLevelName, level, levelName
proc getLevelName*(level: int): string            = X getLevelName, level
proc shutdown*()                                  = X shutdown
proc captureWarnings*(capture: bool)              = X captureWarnings, capture

when false:  # Nimpy does not like varargs ?.
  proc debug*(msg: string; args: varargs[auto])     = X debug, msg, args
  proc info*(msg: string; args: varargs[auto])      = X info, msg, args
  proc warning*(msg: string; args: varargs[auto])   = X warning, msg, args
  proc error*(msg: string; args: varargs[auto])     = X error, msg, args
  proc critical*(msg: string; args: varargs[auto])  = X critical, msg, args
  proc exception*(msg: string; args: varargs[auto]) = X exception, msg, args
  proc log*(msg: string; args: varargs[auto])       = X log, msg, args
