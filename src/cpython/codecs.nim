## * https://docs.python.org/3.10/library/codecs.html
import nimpy
template X(simbol): auto = nimpy.pyImport("codecs").simbol(obj, encoding, errors).to(type(result))
proc encode*(obj: string; encoding = "utf-8", errors = "strict"): string = X encode
proc decode*(obj: string; encoding = "utf-8", errors = "strict"): string = X decode
