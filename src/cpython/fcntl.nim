## * https://docs.python.org/3.10/library/fcntl.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)
proc fcntl*(fd: int; cmd: string; arg=0): string = X fcntl, fd, cmd, arg
proc ioctl*(fd, request: int; arg=0; mutate_flag=true): string = X ioctl, fd, request, arg, mutate_flag
proc lockf*(fd: int; cmd: string; len=0, start=0, whence=0): string = X lockf, fd, cmd, len, start, whence
