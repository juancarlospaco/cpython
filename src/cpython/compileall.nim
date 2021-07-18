## * https://docs.python.org/3.10/library/compileall.html
import nimpy
template X(simbol; a):                auto = nimpy.pyImport("compileall").simbol(a).to(type(result))
template X(simbol; a, b, c):          auto = nimpy.pyImport("compileall").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):       auto = nimpy.pyImport("compileall").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e, f): auto = nimpy.pyImport("compileall").simbol(a, b, c, d, e, f).to(type(result))
proc compile_dir*(dir: string; maxlevels: int; ddir: string; force=false): bool = X compile_dir, dir, maxlevels, ddir, force
proc compile_dir*(dir: string): bool                                            = X compile_dir, dir
proc compile_file*(fullname: string; ddir: string; force=false): bool = X compile_file, fullname, ddir, force
proc compile_file*(fullname: string): bool                            = X compile_file, fullname
proc compile_path*(skip_curdir=true, maxlevels=0, force=false, quiet=0, legacy=false, optimize= -1): bool = X compile_path, skip_curdir, maxlevels, force, quiet, legacy, optimize
