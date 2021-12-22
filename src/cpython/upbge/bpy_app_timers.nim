## * https://upbge.org/api/bpy.app.timers.html
import nimpy

template X(simbol; a, b, c) = discard nimpy.pyImport("bpy.app.timers").simbol(a, b, c)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("bpy.app.timers").simbol(a).to(type(result)) else: discard nimpy.pyImport("bpy.app.timers").simbol(a)

proc is_registered*(function: auto): bool = X is_registered, function
proc register*(function: auto; first_interval = 0; persistent = false) = X register, function, first_interval, persistent
proc unregister*(function: auto) = X unregister, function
