## * https://docs.python.org/3.10/library/tabnanny.html
import nimpy

template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("tabnanny").simbol.to(tipe)

verbose         := bool
filename_only   := bool

proc check*(file_or_dir: string) = discard nimpy.pyImport("tabnanny").check(file_or_dir)
