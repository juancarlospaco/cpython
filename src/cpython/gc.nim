## * https://docs.python.org/3.10/library/gc.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: module.simbol(a, b, c, d, e, f).to(type(result)) else: discard module.simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g)
template X(simbol; a, b, c, d, e, f, g, h): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g, h).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g, h)
proc enable*()                         = X enable
proc disable*()                        = X disable
proc freeze*()                         = X freeze
proc unfreeze*()                       = X unfreeze
proc collect*()                        = X collect
proc collect*(generation: range[0..2]) = X collect, generation
proc set_debug*(flags: int)            = X set_debug, flags
proc isenabled*():                bool = X isenabled
proc get_debug*():                int  = X get_debug
proc is_tracked*(objeto: auto):   bool = X is_tracked, objeto
proc is_finalized*(objeto: auto): bool = X is_finalized, objeto
proc get_freeze_count*():         int  = X get_freeze_count
proc set_threshold*(threshold0, threshold1, threshold2: int) = X set_threshold, threshold0, threshold1, threshold2
proc set_threshold*(threshold0, threshold1: int) = X set_threshold, threshold0, threshold1
proc set_threshold*(threshold0: int) = X set_threshold, threshold0
proc get_count*(): tuple[count0, count1, count2: int] = X get_count
proc get_threshold*(): tuple[threshold0, threshold1, threshold2: int] = X get_threshold
