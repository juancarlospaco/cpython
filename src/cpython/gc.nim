## * https://docs.python.org/3.10/library/gc.html
import nimpy

template X(simbol; a, b)    = discard nimpy.pyImport("gc").simbol(a, b)
template X(simbol; a, b, c) = discard nimpy.pyImport("gc").simbol(a, b, c)
template X(simbol): auto =
  when declared result: nimpy.pyImport("gc").simbol().to(type(result)) else: discard nimpy.pyImport("gc").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("gc").simbol(a).to(type(result)) else: discard nimpy.pyImport("gc").simbol(a)

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

template nogc*(code) =
  ## Temporarily disable the Python Garbage Collector,
  ## run your code, and enable Garbage Collector again.
  try:
    disable()
    code
  finally:
    enable()
