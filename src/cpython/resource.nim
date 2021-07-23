## * https://docs.python.org/3.10/library/resource.html
import nimpy

template X(simbol):       auto = nimpy.pyImport("resource").simbol().to(type(result))
template X(simbol; a):    auto = nimpy.pyImport("resource").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("resource").simbol(a, b).to(type(result))
template X(simbol; a, b, c)    = discard nimpy.pyImport("resource").simbol(a, b, c)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("resource").simbol.to(tipe)

RLIM_INFINITY     := int
RLIMIT_CORE       := int
RLIMIT_CPU        := int
RLIMIT_FSIZE      := int
RLIMIT_DATA       := int
RLIMIT_STACK      := int
RLIMIT_RSS        := int
RLIMIT_NPROC      := int
RLIMIT_NOFILE     := int
RLIMIT_OFILE      := int
RLIMIT_MEMLOCK    := int
RLIMIT_VMEM       := int
RLIMIT_AS         := int
RLIMIT_MSGQUEUE   := int
RLIMIT_NICE       := int
RLIMIT_RTPRIO     := int
RLIMIT_RTTIME     := int
RLIMIT_SIGPENDING := int
RLIMIT_SBSIZE     := int
RLIMIT_SWAP       := int
RLIMIT_NPTS       := int
RLIMIT_KQUEUES    := int
RUSAGE_SELF       := int
RUSAGE_CHILDREN   := int
RUSAGE_BOTH       := int
RUSAGE_THREAD     := int

proc getpagesize*():                                                int = X getpagesize
proc prlimit*(pid: int; resource: auto; limits: tuple[soft, hard: int]) = X prlimit, pid, resource, limits
proc prlimit*(pid: int; resource: auto)                                 = X prlimit, pid, resource
proc getrlimit*(resource: auto):                 tuple[soft, hard: int] = X getrlimit, resource
proc setrlimit*(resource: auto; limits: tuple[soft, hard: int])         = X setrlimit, resource, limits
proc getrusage*(who: int): tuple[ru_utime, ru_stime: float; ru_maxrss, ru_ixrss, ru_idrss, ru_isrss, ru_minflt, ru_majflt, ru_nswap, ru_inblock, ru_oublock, ru_msgsnd, ru_msgrcv, ru_nsignals, ru_nvcsw, ru_nivcsw: int] = X getrusage, who
