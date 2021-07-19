## * https://docs.python.org/3.10/library/uuid.html
import nimpy

template X(simbol):       auto = nimpy.pyBuiltinsModule().str(nimpy.pyImport("unicodedata").simbol()).to(type(result))
template X(simbol; a, b): auto = nimpy.pyBuiltinsModule().str(nimpy.pyImport("unicodedata").simbol(a, b)).to(type(result))

proc uuid1*(): string = X uuid1
proc uuid4*(): string = X uuid4
proc uuid3*(namespace, name: string): string = X uuid3, namespace, name
proc uuid5*(namespace, name: string): string = X uuid5, namespace, name
