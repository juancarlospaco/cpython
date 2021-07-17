## * https://docs.python.org/3.10/library/math.html
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
proc ceil*(x: int or float):                  float = X ceil, x
proc comb*(n, k: int or float):               float = X comb, n, k
proc fabs*(x: int or float):                  float = X fabs, x
proc factorial*(x: int or float):             float = X factorial, x
proc floor*(x: int or float):                 float = X floor, x
proc fmod*(x, y: int or float):               float = X fmod, x, y
proc frexp*(x: int or float):                 float = X fmod, x
proc fsum*(iterable: seq[int] or seq[float]): float = X fsum, x
proc gcd*(integers: varargs[int]):            float = X gcd, integers
proc lcm*(integers: varargs[int]):            float = X lcm, integers
proc isclose*(a, b: int or float):            bool  = X isclose, a, b
proc isfinite*(x: int or float):              bool  = X isfinite, x
proc isnan*(x: int or float):                 bool  = X isnan, x
proc isinf*(x: int or float):                 bool  = X isinf, x
proc isqrt*(x: int or float):                 bool  = X isqrt, x
proc ldexp*(x, i: int or float):              float = X ldexp, x, i
proc modf*(x: int or float):                  float = X modf, x, i
proc nextafter*(x, y: int or float):          float = X nextafter, x, i
proc perm*(x, y: int):                        float = X perm, x, y
proc perm*(x: int):                           float = X perm, x
proc prod*(iterable: seq[int] or seq[float]): float = X prod, iterable
proc remainder*(x, y: int or float):          float = X remainder, x, i
proc trunc*(x: int or float):                 float = X trunc, x
proc ulp*(x: int or float):                   float = X ulp, x
proc exp*(x: int or float):                   float = X exp, x
proc expm1*(x: int or float):                 float = X expm1, x
proc log*(x: int or float):                   float = X log, x
proc log*(x: int or float; base: int):        float = X log, x, base
proc log1p*(x: int or float):                 float = X log1p, x
proc log2*(x: int or float):                  float = X log2, x
proc log10*(x: int or float):                 float = X log10, x
proc pow*(x, y: int or float):                float = X pow, x, y
proc sqrt*(x: int or float):                  float = X sqrt, x
proc acos*(x: int or float):                  float = X acos, x
proc asin*(x: int or float):                  float = X asin, x
proc atan*(x: int or float):                  float = X atan, x
proc atan2*(x, y: int or float):              float = X atan2, x, y
proc cos*(x: int or float):                   float = X cos, x
proc dist*(x, y: int or float):               float = X dist, x, y
proc hypot*(coordinates: varargs[float]):     float = X hypot, coordinates
proc sin*(x: int or float):                   float = X sin, x
proc tan*(x: int or float):                   float = X tan, x
proc degrees*(x: int or float):               float = X degrees, x
proc radians*(x: int or float):               float = X radians, x
proc acosh*(x: int or float):                 float = X acosh, x
proc asinh*(x: int or float):                 float = X asinh, x
proc atanh*(x: int or float):                 float = X atanh, x
proc cosh*(x: int or float):                  float = X cosh, x
proc sinh*(x: int or float):                  float = X sinh, x
proc tanh*(x: int or float):                  float = X tanh, x
proc erf*(x: int or float):                   float = X erf, x
proc erfc*(x: int or float):                  float = X erfc, x
proc gamma*(x: int or float):                 float = X gamma, x
proc lgamma*(x: int or float):                float = X lgamma, x
