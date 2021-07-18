## * https://docs.python.org/3.10/library/cmath.html
import nimpy

template X(simbol):       auto = nimpy.pyImport("cmath").simbol(x).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("cmath").simbol(a, b).to(type(result))

proc exp*(x: int):     int   = X exp
proc exp*(x: float):   float = X exp
proc log*(x: int):     int   = X log
proc log*(x: float):   float = X log
proc phase*(x: int):   int   = X phase
proc phase*(x: float): float = X phase
proc log10*(x: int):   int   = X log10
proc log10*(x: float): float = X log10
proc sqrt*(x: int):    int   = X sqrt
proc sqrt*(x: float):  float = X sqrt
proc acos*(x: int):    int   = X acos
proc acos*(x: float):  float = X acos
proc asin*(x: int):    int   = X asin
proc asin*(x: float):  float = X asin
proc atan*(x: int):    int   = X atan
proc atan*(x: float):  float = X atan
proc cos*(x: int):     int   = X cos
proc cos*(x: float):   float = X cos
proc sin*(x: int):     int   = X sin
proc sin*(x: float):   float = X sin
proc tan*(x: int):     int   = X tan
proc tan*(x: float):   float = X tan
proc acosh*(x: int):   int   = X acosh
proc acosh*(x: float): float = X acosh
proc asinh*(x: int):   int   = X asinh
proc asinh*(x: float): float = X asinh
proc atanh*(x: int):   int   = X atanh
proc atanh*(x: float): float = X atanh
proc cosh*(x: int):    int   = X cosh
proc cosh*(x: float):  float = X cosh
proc sinh*(x: int):    int   = X sinh
proc sinh*(x: float):  float = X sinh
proc tanh*(x: int):    int   = X tanh
proc tanh*(x: float):  float = X tanh
proc isinf*(x: float): bool  = X isinf
proc isnan*(x: float): bool  = X isnan
proc polar*(x: int):   tuple[r, phi: int]   = X polar
proc polar*(x: float): tuple[r, phi: float] = X polar
proc isfinite*(x: float):              bool = X isfinite
proc log*(x: int;   base: int): int         = X log, x, base
proc log*(x: float; base: int): float       = X log, x, base
proc isclose*(a, b: float): bool            = X isclose, a, b
