## * https://docs.python.org/3.10/library/tabnanny.html
import nimpy
const module = "tabnanny"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc check*(file_or_dir: string) = X check, file_or_dir
