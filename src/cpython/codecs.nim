## * https://docs.python.org/3.10/library/codecs.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
proc encode*(obj: string; encoding="utf-8", errors="strict"): string = X encode, obj, encoding, errors
proc decode*(obj: string; encoding="utf-8", errors="strict"): string = X decode, obj, encoding, errors
