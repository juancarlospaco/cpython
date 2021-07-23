## * https://docs.python.org/3.10/library/subprocess.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("subprocess").simbol(a).to(type(result))
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("subprocess").simbol.to(tipe)

DEVNULL := int
PIPE    := int
STDOUT  := int

proc call(args: seq[string] or string):            int = X call, args
proc check_call(args: seq[string] or string):      int = X check_call, args
proc getoutput(args: seq[string] or string):    string = X getoutput, args
proc check_output(args: seq[string] or string): string = X check_output, args
proc getstatusoutput(args: seq[string] or string): tuple[exitcode: int; output: string] = X getstatusoutput, args
proc run*(args: seq[string] or string): tuple[args: seq[string], returncode: int, stdout: string, stderr: string] =
  let x = nimpy.pyImport("subprocess").run(args)
  result = (args: x.args.to(seq[string]), returncode: x.returncode.to(int), stdout: x.stdout.to(string), stderr: x.stderr.to(string))
