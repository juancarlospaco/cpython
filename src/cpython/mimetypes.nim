## * https://docs.python.org/3.10/library/mimetypes.html
import nimpy
template X(simbol)          = discard nimpy.pyImport("mimetypes").simbol()
template X(simbol; a)       = discard nimpy.pyImport("mimetypes").simbol(a)
template X(simbol; a, b, c) = discard nimpy.pyImport("mimetypes").simbol(a, b, c)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("mimetypes").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("mimetypes").simbol(a, b)
proc init*(files: seq[string])                                     = X init, files
proc init*()                                                       = X init
proc read_mime_types*(filename: string)                            = X read_mime_types, filename
proc add_type*(tipe, ext: string; strict=true)                     = X add_type, tipe, ext, strict
proc read_windows_registry*(strict = true)                         = X read_windows_registry, strict
proc read*(filename: string; strict = true)                        = X read, filename, strict
proc guess_type*(url: string; strict=true):            string      = X guess_type, url, strict
proc guess_all_extensions*(tipe: string; strict=true): seq[string] = X guess_all_extensions, tipe, strict
proc guess_extension*(tipe: string; strict=true):      string      = X guess_extension, tipe, strict
