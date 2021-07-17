## * https://docs.python.org/3.10/library/getopt.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
proc getopt*(args: seq[string]; shortopts: string; longopts: seq[string]): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X getopt, args, shortopts, longopts
proc getopt*(args: seq[string]; shortopts: string): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X getopt, args, shortopts
proc gnu_getopt*(args: seq[string]; shortopts: string; longopts: seq[string]): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X gnu_getopt, args, shortopts, longopts
proc gnu_getopt*(args: seq[string]; shortopts: string): tuple[option: seq[tuple[key, value: string]], value: seq[string]] = X gnu_getopt, args, shortopts
