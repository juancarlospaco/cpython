## * https://docs.python.org/3.10/library/winsound.html
import nimpy
template X(simbol)       = discard nimpy.pyImport("winsound").simbol()
template X(simbol; a)    = discard nimpy.pyImport("winsound").simbol(a)
template X(simbol; a, b) = discard nimpy.pyImport("winsound").simbol(a, b)
proc beep*(frequency, duration: int)       = X Beep, frequency, duration
proc playSound*(sound: string; flags: int) = X PlaySound, sound, flags
proc messageBeep*(tipe: int)               = X MessageBeep, tipe
proc messageBeep*()                        = X MessageBeep
