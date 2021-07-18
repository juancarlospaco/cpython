## * https://docs.python.org/3.10/library/syslog.html
import nimpy

template X(simbol)          = discard nimpy.pyImport("syslog").simbol()
template X(simbol; a)       = discard nimpy.pyImport("syslog").simbol(a)
template X(simbol; a, b)    = discard nimpy.pyImport("syslog").simbol(a, b)
template X(simbol; a, b, c) = discard nimpy.pyImport("syslog").simbol(a, b, c)

proc closelog*()                        = X closelog
proc openlog*()                         = X openlog
proc syslog*(message: string)           = X syslog, message
proc syslog*(priority, message: string) = X syslog, priority, message
proc openlog*(idents: string)                                   = X openlog, idents
proc openlog*(idents: string; logoption: int)                   = X openlog, idents, logoption
proc openlog*(idents: string; logoption: int; facility: string) = X openlog, idents, logoption, facility
