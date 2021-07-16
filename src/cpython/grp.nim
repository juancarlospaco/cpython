## * https://docs.python.org/3.10/library/grp.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
proc getgrgid*(gid: int): tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]]     = X getgrgid, gid
proc getgrnam*(name: string): tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]] = X getgrnam, name
proc getgrall*(): seq[tuple[gr_name, gr_passwd: string, gr_gid: int, gr_mem: seq[string]]]        = X getgrall
