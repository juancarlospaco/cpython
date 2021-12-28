## * https://docs.python.org/3.10/library/decimal.html
import nimpy

type PyDecimal* = nimpy.PyObject

template X(simbol):      auto = nimpy.pyBuiltinsModule().simbol(self).to(type(result))
template O(simbol):      auto = nimpy.pyImport("operator").simbol(a, b).to(type(result))
template Z(simbol): PyDecimal = nimpy.pyImport("operator").simbol(a).to(PyDecimal)

proc `'PyD`*(value: string):                   PyDecimal = nimpy.pyImport("decimal").Decimal(value)
proc newDecimal*(value: SomeNumber or string): PyDecimal = nimpy.pyImport("decimal").Decimal(value)
proc prec*(value: int) = nimpy.pyImport("decimal").getcontext().prec = value
proc toFloat*(self: PyDecimal):   BiggestFloat = X `float`
proc toInt*(self: PyDecimal):     BiggestInt   = X `int`
proc toUint*(self: PyDecimal):    BiggestUInt  = X `int`
proc toString*(self: PyDecimal):  string       = X `str`
proc `-`*(a: PyDecimal): PyDecimal = Z neg
proc `+`*(a: PyDecimal): PyDecimal = Z pos
proc `<`*(a, b: PyDecimal):   bool    = O lt
proc `<=`*(a, b: PyDecimal):  bool    = O le
proc `==`*(a, b: PyDecimal):  bool    = O eq
proc `>`*(a, b: PyDecimal):   bool    = O gt
proc `>=`*(a, b: PyDecimal):  bool    = O ge
proc `!=`*(a, b: PyDecimal):  bool    = O ne
proc `+`*(a, b: PyDecimal):   PyDecimal = O add
proc `-`*(a, b: PyDecimal):   PyDecimal = O sub
proc `*`*(a, b: PyDecimal):   PyDecimal = O mul
proc `div`*(a, b: PyDecimal): PyDecimal = O truediv
proc `**`*(a, b: PyDecimal):  PyDecimal = O pow
proc `shl`*(a, b: PyDecimal): PyDecimal = O lshift
proc `shr`*(a, b: PyDecimal): PyDecimal = O rshift
proc `+=`*(a, b: PyDecimal):  PyDecimal = O iadd
proc inc*(a, b: PyDecimal):   PyDecimal = O iadd
proc `-=`*(a, b: PyDecimal):  PyDecimal = O isub
proc dec*(a, b: PyDecimal):   PyDecimal = O isub
proc `*=`*(a, b: PyDecimal):  PyDecimal = O imul
proc `/=`*(a, b: PyDecimal):  PyDecimal = O itruediv
proc `//=`*(a, b: PyDecimal): PyDecimal = O ifloordiv
proc `&=`*(a, b: PyDecimal):  PyDecimal = O iand
proc `<<=`*(a, b: PyDecimal): PyDecimal = O ilshift
proc `>>=`*(a, b: PyDecimal): PyDecimal = O irshift
proc `%=`*(a, b: PyDecimal):  PyDecimal = O imod
proc `@=`*(a, b: PyDecimal):  PyDecimal = O imatmul
proc `|=`*(a, b: PyDecimal):  PyDecimal = O ior
proc `**=`*(a, b: PyDecimal): PyDecimal = O ipow
proc `^=`*(a, b: PyDecimal):  PyDecimal = O ixor
proc low*(self: PyDecimal):   PyDecimal = nimpy.pyImport("decimal").MIN_EMIN
proc high*(self: PyDecimal):  PyDecimal = nimpy.pyImport("decimal").MAX_EMAX

runnableExamples:
  import nimpy
  let x: PyDecimal = newDecimal"999999999999999999999999999999999999999.999999999999999999999999999999999999999"
  let y: PyDecimal = -999999999999999999999999999999999999999.999999999999999999999999999999999999999'PyD
  let z: PyDecimal = newDecimal BiggestUInt.high
  echo toString(x * y + z - z)
