## * https://docs.python.org/3.10/library/.html
from std/os import splitFile
import nimpy  # Nimpy wont take varargs nor openArray nor T for all arguments at the time of writing.
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

proc *() = X
