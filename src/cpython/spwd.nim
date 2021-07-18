## * https://docs.python.org/3.10/library/spwd.html
import nimpy

template X(simbol):    auto = nimpy.pyImport("runpy").simbol().to(type(result))
template X(simbol; a): auto = nimpy.pyImport("runpy").simbol(a).to(type(result))

proc getspnam*(name: string): tuple[sp_namp, sp_pwdp: string; sp_lstchg, sp_min, sp_max, sp_warn, sp_inact, sp_expire, sp_flag: int]  = X getspnam, name
proc getspall*():         seq[tuple[sp_namp, sp_pwdp: string; sp_lstchg, sp_min, sp_max, sp_warn, sp_inact, sp_expire, sp_flag: int]] = X getspall
