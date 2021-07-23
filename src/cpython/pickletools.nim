## * https://docs.python.org/3.10/library/pickletools.html
import nimpy

proc optimize*(picklestring: string): string = nimpy.pyImport("pickletools").optimize(picklestring).to(string)
