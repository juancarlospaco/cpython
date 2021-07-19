## * https://docs.python.org/3.10/library/sysconfig.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("sysconfig").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("sysconfig").simbol(a, b).to(type(result))
template X(simbol): auto =
  when declared result: nimpy.pyImport("sysconfig").simbol().to(type(result)) else: discard nimpy.pyImport("sysconfig").simbol()

proc get_config_vars*(value: varargs[string]): seq[string] = X get_config_vars, value
proc get_config_var*(value: string): string = X get_config_var, value
proc get_scheme_names*(): seq[string] = X get_scheme_names
proc get_default_scheme*(): string = X get_default_scheme
proc get_preferred_scheme*(key: string): string = X get_preferred_scheme, key
proc get_path_names*(): seq[string] = X get_path_names
proc get_path*(name, scheme: string): string = X get_path, name, scheme
proc get_path*(name: string): string = X get_path, name
proc get_python_version*(): string = X get_python_version
proc get_platform*(): string = X get_platform
proc is_python_build*(): bool = X is_python_build
proc get_config_h_filename*(): string = X get_config_h_filename
proc get_makefile_filename*(): string = X get_makefile_filename
