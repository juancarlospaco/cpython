## * https://docs.python.org/3.10/library/cmath.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
proc log*(x: int;   base: int): int         = X log, x, base
proc log*(x: float; base: int): float       = X log, x, base
proc polar*(x: int):   tuple[r, phi: int]   = X polar, x
proc polar*(x: float): tuple[r, phi: float] = X polar, x
proc isfinite*(x: float):   bool            = X isfinite, x
proc isclose*(a, b: float): bool            = X isclose, a, b
proc exp*(x: int):     int   = X exp,   x
proc exp*(x: float):   float = X exp,   x
proc log*(x: int):     int   = X log,   x
proc log*(x: float):   float = X log,   x
proc phase*(x: int):   int   = X phase, x
proc phase*(x: float): float = X phase, x
proc log10*(x: int):   int   = X log10, x
proc log10*(x: float): float = X log10, x
proc sqrt*(x: int):    int   = X sqrt,  x
proc sqrt*(x: float):  float = X sqrt,  x
proc acos*(x: int):    int   = X acos,  x
proc acos*(x: float):  float = X acos,  x
proc asin*(x: int):    int   = X asin,  x
proc asin*(x: float):  float = X asin,  x
proc atan*(x: int):    int   = X atan,  x
proc atan*(x: float):  float = X atan,  x
proc cos*(x: int):     int   = X cos,   x
proc cos*(x: float):   float = X cos,   x
proc sin*(x: int):     int   = X sin,   x
proc sin*(x: float):   float = X sin,   x
proc tan*(x: int):     int   = X tan,   x
proc tan*(x: float):   float = X tan,   x
proc acosh*(x: int):   int   = X acosh, x
proc acosh*(x: float): float = X acosh, x
proc asinh*(x: int):   int   = X asinh, x
proc asinh*(x: float): float = X asinh, x
proc atanh*(x: int):   int   = X atanh, x
proc atanh*(x: float): float = X atanh, x
proc cosh*(x: int):    int   = X cosh,  x
proc cosh*(x: float):  float = X cosh,  x
proc sinh*(x: int):    int   = X sinh,  x
proc sinh*(x: float):  float = X sinh,  x
proc tanh*(x: int):    int   = X tanh,  x
proc tanh*(x: float):  float = X tanh,  x
proc isinf*(x: float): bool  = X isinf, x
proc isnan*(x: float): bool  = X isnan, x
