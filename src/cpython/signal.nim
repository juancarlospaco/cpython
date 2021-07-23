## * https://docs.python.org/3.10/library/signal.html
import nimpy

template X(simbol)          = discard nimpy.pyImport("signal").simbol()
template X(simbol; a, b)    = discard nimpy.pyImport("signal").simbol(a, b)
template X(simbol; a, b, c) = discard nimpy.pyImport("signal").simbol(a, b, c)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("signal").simbol(a).to(type(result)) else: discard nimpy.pyImport("signal").simbol(a)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("signal").simbol.to(tipe)

NSIG           := int
ITIMER_REAL    := int
ITIMER_VIRTUAL := int
ITIMER_PROF    := int

proc alarm*(time: int)                         = X alarm, time
proc strsignal*(signalnum: int):        string = X strsignal, signalnum
proc pause*()                                  = X pause
proc raise_signal*(signum: int)                = X raise_signal, signum
proc pidfd_send_signal*(pidfd, sig: int)       = X pidfd_send_signal, pidfd, sig
proc pthread_kill*(thread_id, signalnum: int)  = X pthread_kill, thread_id, signalnum
proc pthread_sigmask*(how, mask: int)          = X pthread_sigmask, how, mask
proc set_wakeup_fd*(fd: int):              int = X set_wakeup_fd, fd
proc getitimer*(which: auto)                   = X getitimer, which
proc siginterrupt*(signalnum: int; flag: bool) = X siginterrupt, signalnum, flag
proc setitimer*(which: auto; seconds: int or float; interval: int or float = 0.0) = X setitimer, which, seconds, interval
