## * https://docs.python.org/3.10/library/runpy.html
import nimpy
const module = "runpy"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc run_module*(module_name: string) = X run_module, module_name
proc run_path*(module_name: string)   = X run_path, module_name
