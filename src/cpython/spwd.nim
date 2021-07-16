## * https://docs.python.org/3.10/library/spwd.html
import nimpy
const module = "spwd"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc getspnam*(name: string): tuple[sp_namp, sp_pwdp: string; sp_lstchg, sp_min, sp_max, sp_warn, sp_inact, sp_expire, sp_flag: int]  = X getspnam, name
proc getspall*():         seq[tuple[sp_namp, sp_pwdp: string; sp_lstchg, sp_min, sp_max, sp_warn, sp_inact, sp_expire, sp_flag: int]] = X getspall
