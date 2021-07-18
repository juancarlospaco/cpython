## * https://docs.python.org/3.10/library/ensurepip.html
import nimpy
template X(simbol): auto =
  when declared result: nimpy.pyImport("ensurepip").simbol().to(type(result)) else: discard nimpy.pyImport("ensurepip").simbol()
template X(simbol; a, b, c, d, e, f) = discard nimpy.pyImport("ensurepip").simbol(a, b, c, d, e, f)
proc version*(): string = X version
proc bootstrap*(root: string; upgrade=false; user=false; altinstall=false; default_pip=false; verbosity=0) = X bootstrap, root, upgrade, user, altinstall, default_pip, verbosity
proc bootstrap*() = X bootstrap
