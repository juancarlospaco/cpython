## https://docs.python.org/3.12/library/tomllib.html
import nimpy

proc loads*(s: string): Table[string, string] = nimpy.pyImport("tomllib").loads(s).to(type(result))
