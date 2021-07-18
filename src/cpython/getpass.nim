## * https://docs.python.org/3.10/library/getpass.html
import nimpy
template X(simbol):    auto = nimpy.pyImport("getpass").simbol().to(type(result))
template X(simbol; a): auto = nimpy.pyImport("getpass").simbol(a).to(type(result))
proc getpass*(prompt = "Password: "): string = X getpass, prompt
proc getuser*(): string = X getuser
