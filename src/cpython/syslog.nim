## * https://docs.python.org/3.10/library/syslog.html
import nimpy

template X(simbol)          = discard nimpy.pyImport("syslog").simbol()
template X(simbol; a)       = discard nimpy.pyImport("syslog").simbol(a)
template X(simbol; a, b)    = discard nimpy.pyImport("syslog").simbol(a, b)
template X(simbol; a, b, c) = discard nimpy.pyImport("syslog").simbol(a, b, c)
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("syslog").simbol.to(tipe)

LOG_EMERG    := int
LOG_ALERT    := int
LOG_CRIT     := int
LOG_ERR      := int
LOG_WARNING  := int
LOG_NOTICE   := int
LOG_INFO     := int
LOG_DEBUG    := int
LOG_USER     := int
LOG_MAIL     := int
LOG_DAEMON   := int
LOG_AUTH     := int
LOG_LPR      := int
LOG_NEWS     := int
LOG_UUCP     := int
LOG_CRON     := int
LOG_SYSLOG   := int
LOG_LOCAL0   := int
LOG_LOCAL7   := int
LOG_AUTHPRIV := int
LOG_PID      := int
LOG_CONS     := int
LOG_NDELAY   := int
LOG_ODELAY   := int
LOG_NOWAIT   := int
LOG_PERROR   := int

proc closelog*()                        = X closelog
proc openlog*()                         = X openlog
proc syslog*(message: string)           = X syslog, message
proc syslog*(priority, message: string) = X syslog, priority, message
proc openlog*(idents: string)                                   = X openlog, idents
proc openlog*(idents: string; logoption: int)                   = X openlog, idents, logoption
proc openlog*(idents: string; logoption: int; facility: string) = X openlog, idents, logoption, facility
