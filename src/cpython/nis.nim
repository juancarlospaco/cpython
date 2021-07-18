## * https://docs.python.org/3.10/library/nis.html
import nimpy
template X(simbol):       auto = nimpy.pyImport("nis").simbol().to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("nis").simbol(a, b).to(type(result))
proc match*(key, mapname: string): seq[string] = X match, key, mapname
proc get_default_domain*():        string      = X get_default_domain
