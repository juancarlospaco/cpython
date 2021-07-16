## * https://docs.python.org/3.10/library/pwd.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
proc getpwuid*(uid: int):     tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]  = X getpwuid, uid
proc getpwnam*(name: string): tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]  = X getpwnam, name
proc getpwall*():         seq[tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]] = X getpwall
