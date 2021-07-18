## * https://docs.python.org/3.10/library/imghdr.html
import nimpy

proc what*(file: string):    string = nimpy.pyImport("imghdr").what(file   ).to(string)
proc what*(file, h: string): string = nimpy.pyImport("imghdr").what(file, h).to(string)
