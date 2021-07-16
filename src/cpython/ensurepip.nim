## * https://docs.python.org/3.10/library/ensurepip.html
import nimpy
const module = "ensurepip"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: pyImport(module).simbol(a, b, c, d, e, f).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d, e, f)
proc version*(): string = X version
proc bootstrap*(root: string; upgrade=false; user=false; altinstall=false; default_pip=false; verbosity=0) = X bootstrap, root, upgrade, user, altinstall, default_pip, verbosity
proc bootstrap*() = X bootstrap
