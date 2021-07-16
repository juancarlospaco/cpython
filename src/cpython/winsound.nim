## * https://docs.python.org/3.10/library/winsound.html
from std/os import splitFile
import nimpy  # Nimpy wont take varargs nor openArray nor T for all arguments at the time of writing.
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
proc beep*(frequency, duration: int)       = X Beep, frequency, duration
proc playSound*(sound: string; flags: int) = X PlaySound, sound, flags
proc messageBeep*(tipe: int)               = X MessageBeep, tipe
proc messageBeep*()                        = X MessageBeep
