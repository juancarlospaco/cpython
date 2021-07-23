## * https://docs.python.org/3.10/library/pprint.html
import nimpy

template X(simbol; a, b, c, d): auto = nimpy.pyImport("pprint").simbol(a, b, c, d)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("pprint").simbol(a).to(type(result)) else: discard nimpy.pyImport("pprint").simbol(a)

proc pprint*(obj: auto)            = X pprint, obj
proc isreadable*(obj: auto):  bool = X isreadable, obj
proc isrecursive*(obj: auto): bool = X isrecursive, obj
proc saferepr*(obj: auto):  string = X saferepr, obj
proc pformat*(obj: auto; indent = 1; width = 80; depth = int.high): string = X pformat, obj, indent, width, depth
