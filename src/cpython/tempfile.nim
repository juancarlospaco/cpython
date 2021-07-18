## * https://docs.python.org/3.10/library/tempfile.html
import nimpy
template X(simbol):          auto = nimpy.pyImport("tempfile").simbol().to(type(result))
template X(simbol; a, b):    auto = nimpy.pyImport("tempfile").simbol(a, b).to(type(result))
template X(simbol; a, b, c): auto = nimpy.pyImport("tempfile").simbol(a, b, c).to(type(result))
proc mkdtemp*():                            string = X mkdtemp
proc mkdtemp*(suffix, prefix: string):      string = X mkdtemp, suffix, prefix
proc mkdtemp*(suffix, prefix, dir: string): string = X mkdtemp, suffix, prefix, dir
proc mktemp*():                             string = X mktemp
proc mktemp*(suffix, prefix: string):       string = X mktemp, suffix, prefix
proc mktemp*(suffix, prefix, dir: string):  string = X mktemp, suffix, prefix, dir
proc gettempdir*():                         string = X gettempdir
proc gettempdirb*():                        string = X gettempdirb
proc gettempprefix*():                      string = X gettempprefix
proc gettempprefixb*():                     string = X gettempprefixb
