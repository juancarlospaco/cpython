## * https://docs.python.org/3.10/library/mimetypes.html
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
proc init*(files: seq[string]) = X init, files
proc init*() = X init
proc read_mime_types*(filename: string)                            = X read_mime_types, filename
proc add_type*(tipe, ext: string; strict=true)                     = X add_type, tipe, ext, strict
proc guess_type*(url: string; strict=true):            string      = X guess_type, url, strict
proc guess_all_extensions*(tipe: string; strict=true): seq[string] = X guess_all_extensions, tipe, strict
proc guess_extension*(tipe: string; strict=true):      string      = X guess_extension, tipe, strict
proc read_windows_registry*(strict = true)                         = X read_windows_registry, strict
proc read*(filename: string; strict = true)                        = X read, filename, strict
