## * https://docs.python.org/3.10/library/doctest.html
import nimpy

template X(simbol):             auto = nimpy.pyImport("doctest").simbol().to(type(result))
template X(simbol; a):          auto = nimpy.pyImport("doctest").simbol(a).to(type(result))
template X(simbol; a, b):       auto = nimpy.pyImport("doctest").simbol(a, b).to(type(result))
template X(simbol; a, b, c):    auto = nimpy.pyImport("doctest").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d): auto = nimpy.pyImport("doctest").simbol(a, b, c, d).to(type(result))
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("doctest").simbol.to(tipe)

DONT_ACCEPT_TRUE_FOR_1    := int
DONT_ACCEPT_BLANKLINE     := int
NORMALIZE_WHITESPACE      := int
ELLIPSIS                  := int
IGNORE_EXCEPTION_DETAIL   := int
SKIP                      := int
COMPARISON_FLAGS          := int
REPORT_UDIFF              := int
REPORT_CDIFF              := int
REPORT_NDIFF              := int
REPORT_ONLY_FIRST_FAILURE := int
FAIL_FAST                 := int
REPORTING_FLAGS           := int

proc testmod*(): tuple[failure_count, test_count: int] = X testmod
proc testfile*(filename: string; module_relative: bool; name, package: string): tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name, package
proc testfile*(filename: string; module_relative: bool; name: string):          tuple[failure_count, test_count: int] = X testfile, filename, module_relative, name
proc testfile*(filename: string; module_relative: bool):                        tuple[failure_count, test_count: int] = X testfile, filename, module_relative
proc testfile*(filename: string):                                               tuple[failure_count, test_count: int] = X testfile, filename
proc run_docstring_examples*(f: string):                                        tuple[failure_count, test_count: int] = X run_docstring_examples, f
proc script_from_examples*(examples: string): string = X script_from_examples, examples
proc debug_src*(sources: string; pm=false):   string = X debug_src, sources, pm
