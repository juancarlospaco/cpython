## * https://docs.python.org/3.10/library/grp.html
import nimpy
template X(simbol):    auto =  nimpy.pyImport("grp").simbol( ).to(type(result))
template X(simbol; a): auto =  nimpy.pyImport("grp").simbol(a).to(type(result))
proc getgrgid*(gid: int): tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]]     = X getgrgid, gid
proc getgrnam*(name: string): tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]] = X getgrnam, name
proc getgrall*(): seq[tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]]]        = X getgrall
