## * https://docs.python.org/3.10/library/syslog.html
import nimpy
const module = "syslog"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc syslog*(message: string)           = X syslog, message
proc syslog*(priority, message: string) = X syslog, priority, message
proc openlog*()                                                 = X openlog
proc openlog*(idents: string)                                   = X openlog, idents
proc openlog*(idents: string; logoption: int)                   = X openlog, idents, logoption
proc openlog*(idents: string; logoption: int; facility: string) = X openlog, idents, logoption, facility
proc closelog*() = X closelog
