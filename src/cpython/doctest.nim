## * https://docs.python.org/3.10/library/doctest.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
proc testmod*(): tuple[failure_count, test_count: int] = X testmod
proc testfile*(filename: string; module_relative: bool; name, package: string): tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name, package
proc testfile*(filename: string; module_relative: bool; name: string):          tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name
proc testfile*(filename: string; module_relative: bool):                        tuple[failure_count, test_count: int] = X testfile, filename, module_relative
proc testfile*(filename: string):                                               tuple[failure_count, test_count: int] = X testfile, filename
proc run_docstring_examples*(f: string):                                        tuple[failure_count, test_count: int] = X run_docstring_examples, f
proc script_from_examples*(examples: string): string = X script_from_examples, examples
proc debug_src*(sources: string; pm=false):   string = X debug_src, sources, pm
