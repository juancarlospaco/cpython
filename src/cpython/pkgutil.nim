## * https://docs.python.org/3.10/library/pkgutil.html
import nimpy

proc extend_path*(path, name: string): string = nimpy.pyImport("pkgutil").extend_path(path, name).to(string)
