## * https://docs.python.org/3.10/library/fcntl.html
import nimpy
template X(simbol; a, b, c):       auto = nimpy.pyImport("fcntl").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):    auto = nimpy.pyImport("fcntl").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e): auto = nimpy.pyImport("fcntl").simbol(a, b, c, d, e).to(type(result))
proc fcntl*(fd: int; cmd: string; arg=0):                    string = X fcntl, fd, cmd, arg
proc ioctl*(fd, request: int; arg=0; mutate_flag=true):      string = X ioctl, fd, request, arg, mutate_flag
proc lockf*(fd: int; cmd: string; len=0, start=0, whence=0): string = X lockf, fd, cmd, len, start, whence
