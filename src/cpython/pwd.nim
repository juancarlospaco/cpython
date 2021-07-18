## * https://docs.python.org/3.10/library/pwd.html
import nimpy
template X(simbol):    auto = nimpy.pyImport("pwd").simbol().to(type(result))
template X(simbol; a): auto = nimpy.pyImport("pwd").simbol(a).to(type(result))
proc getpwuid*(uid: int):     tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]  = X getpwuid, uid
proc getpwnam*(name: string): tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]  = X getpwnam, name
proc getpwall*():         seq[tuple[pw_name, pw_passwd: string, pw_uid, pw_gid: int, pw_gecos, pw_dir, pw_shell: string]] = X getpwall
