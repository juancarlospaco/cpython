## * https://docs.python.org/3.10/library/compileall.html
import nimpy
const module = "compileall"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: pyImport(module).simbol(a, b, c, d).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: pyImport(module).simbol(a, b, c, d, e, f).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d, e, f)
proc compile_dir*(dir: string; maxlevels: int; ddir: string; force=false): bool = X compile_dir, dir, maxlevels, ddir, force
proc compile_dir*(dir: string): bool                                            = X compile_dir, dir
proc compile_file*(fullname: string; ddir: string; force=false): bool = X compile_file, fullname, ddir, force
proc compile_file*(fullname: string): bool                            = X compile_file, fullname
proc compile_path*(skip_curdir=true, maxlevels=0, force=false, quiet=0, legacy=false, optimize= -1): bool = X compile_path, skip_curdir, maxlevels, force, quiet, legacy, optimize
