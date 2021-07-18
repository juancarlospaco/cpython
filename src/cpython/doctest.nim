## * https://docs.python.org/3.10/library/doctest.html
import nimpy
template X(simbol):             auto = nimpy.pyImport("doctest").simbol().to(type(result))
template X(simbol; a):          auto = nimpy.pyImport("doctest").simbol(a).to(type(result))
template X(simbol; a, b):       auto = nimpy.pyImport("doctest").simbol(a, b).to(type(result))
template X(simbol; a, b, c):    auto = nimpy.pyImport("doctest").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d): auto = nimpy.pyImport("doctest").simbol(a, b, c, d).to(type(result))
proc testmod*(): tuple[failure_count, test_count: int] = X testmod
proc testfile*(filename: string; module_relative: bool; name, package: string): tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name, package
proc testfile*(filename: string; module_relative: bool; name: string):          tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name
proc testfile*(filename: string; module_relative: bool):                        tuple[failure_count, test_count: int] = X testfile, filename, module_relative
proc testfile*(filename: string):                                               tuple[failure_count, test_count: int] = X testfile, filename
proc run_docstring_examples*(f: string):                                        tuple[failure_count, test_count: int] = X run_docstring_examples, f
proc script_from_examples*(examples: string): string = X script_from_examples, examples
proc debug_src*(sources: string; pm=false):   string = X debug_src, sources, pm
