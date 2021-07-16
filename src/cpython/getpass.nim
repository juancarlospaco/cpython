## * https://docs.python.org/3.10/library/getpass.html
import nimpy
const module = "getpass"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc getpass*(prompt = "Password: "): string = X getpass, prompt
proc getuser*(): string = X getuser
