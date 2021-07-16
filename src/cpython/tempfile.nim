## * https://docs.python.org/3.10/library/tempfile.html
import nimpy
const module = "tempfile"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc mkdtemp*():                            string = X mkdtemp
proc mkdtemp*(suffix, prefix: string):      string = X mkdtemp, suffix, prefix
proc mkdtemp*(suffix, prefix, dir: string): string = X mkdtemp, suffix, prefix, dir
proc gettempdir*():  string = X gettempdir
proc gettempdirb*(): string = X gettempdirb
proc gettempprefix*():  string = X gettempprefix
proc gettempprefixb*(): string = X gettempprefixb
proc mktemp*():                            string = X mktemp
proc mktemp*(suffix, prefix: string):      string = X mktemp, suffix, prefix
proc mktemp*(suffix, prefix, dir: string): string = X mktemp, suffix, prefix, dir
# TODO: Functions that return a File object ?.
