## * https://docs.python.org/3.10/library/curses.html
import nimpy

template X(simbol)                      = discard nimpy.pyImport("re").simbol()
template X(simbol; a):             auto = nimpy.pyImport("re").simbol(a).to(type(result))
template X(simbol; a, b, c):       auto = nimpy.pyImport("re").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):    auto = nimpy.pyImport("re").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e): auto = nimpy.pyImport("re").simbol(a, b, c, d, e).to(type(result))

proc split*(pattern, str: string; maxsplit = 0, flags = 0): seq[string] = X split, pattern, str, maxsplit, flags
proc findall*(pattern, str: string; flags = 0): seq[string] = X findall, pattern, str, flags
proc sub*(pattern, repl, str: string, count=0, flags=0): string = X sub, pattern, repl, str, count, flags
proc subn*(pattern, replacement: string; count=0, flags=0): tuple[new_string: string, number_of_subs_made: int] = X subn, pattern, replacement, count, flags
proc escape*(pattern: string): string = X escape, pattern
proc purge*() = X purge
