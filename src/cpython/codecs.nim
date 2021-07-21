## * https://docs.python.org/3.10/library/codecs.html
import nimpy

template X(simbol): auto = nimpy.pyImport("codecs").simbol(obj, encoding, errors).to(type(result))
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("codecs").simbol.to(tipe)

BOM          := string
BOM_BE       := string
BOM_LE       := string
BOM_UTF8     := string
BOM_UTF16    := string
BOM_UTF16_BE := string
BOM_UTF16_LE := string
BOM_UTF32    := string
BOM_UTF32_BE := string
BOM_UTF32_LE := string

proc encode*(obj: string; encoding = "utf-8", errors = "strict"): string = X encode
proc decode*(obj: string; encoding = "utf-8", errors = "strict"): string = X decode
