## * https://docs.python.org/3.10/library/getopt.html
import nimpy
template X(simbol; a, b):    auto = nimpy.pyImport("getopt").simbol(a, b).to(type(result))
template X(simbol; a, b, c): auto = nimpy.pyImport("getopt").simbol(a, b, c).to(type(result))
proc getopt*(args: seq[string]; shortopts: string; longopts: seq[string]): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X getopt, args, shortopts, longopts
proc getopt*(args: seq[string]; shortopts: string): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X getopt, args, shortopts
proc gnu_getopt*(args: seq[string]; shortopts: string; longopts: seq[string]): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X gnu_getopt, args, shortopts, longopts
proc gnu_getopt*(args: seq[string]; shortopts: string): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X gnu_getopt, args, shortopts
