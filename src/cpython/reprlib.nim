## * https://docs.python.org/3.10/library/reprlib.html
import nimpy

proc repr*(obj: auto): string = nimpy.pyImport("reprlib").repr(obj).to(string)
