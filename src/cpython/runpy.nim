## * https://docs.python.org/3.10/library/runpy.html
import nimpy
template X(simbol) = discard nimpy.pyImport("runpy").simbol(module_name)
proc run_module*(module_name: string) = X run_module
proc run_path*(module_name: string)   = X run_path
