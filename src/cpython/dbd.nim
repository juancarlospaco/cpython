## * https://docs.python.org/3.10/library/dbd.html
import nimpy

proc set_trace*() = discard nimpy.pyImport("dbd").set_trace()
