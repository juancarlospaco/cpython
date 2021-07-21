## * https://docs.python.org/3.10/library/faulthandler.html
import nimpy

template X(simbol; a):    auto = discard nimpy.pyImport("faulthandler").simbol(a)
template X(simbol; a, b): auto = discard nimpy.pyImport("faulthandler").simbol(a, b)
template X(simbol): auto =
  when declared result: nimpy.pyImport("faulthandler").simbol().to(type(result)) else: discard nimpy.pyImport("faulthandler").simbol()

proc dump_traceback*()        = X dump_traceback
proc enable*()                = X enable
proc disable*()               = X disable
proc is_enabled*():      bool = X is_enabled
proc register*(signum: int)   = X register, signum
proc unregister*(signum: int) = X unregister, signum
proc cancel_dump_traceback_later*() = X cancel_dump_traceback_later
proc dump_traceback_later*(timeout: int, repeat=false) = X dump_traceback_later, timeout, repeat
