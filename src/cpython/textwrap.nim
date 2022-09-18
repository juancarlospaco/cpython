## * https://docs.python.org/3.10/library/textwrap.html
import nimpy

type TextWrapper* = nimpy.PyObject

template X(simbol; a):    auto = nimpy.pyImport("textwrap").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("textwrap").simbol(a, b).to(type(result))

proc wrap*(text: string; width = 70): string = X wrap, text, width
proc fill*(text: string; width = 70): string = X fill, text, width
proc dedent*(text: string):         string = X dedent, text
proc indent*(text, prefix: string): string = X indent, text, prefix
proc indent*(text: string):         string = X indent, text
proc shorten*(text: string; width: int): string = X shorten, text, width

proc newTextWrapper*(): TextWrapper = nimpy.pyImport("textwrap").TextWrapper()
