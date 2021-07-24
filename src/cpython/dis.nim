## * https://docs.python.org/3.10/library/dis.html
import nimpy

template X(simbol; a, b) = discard nimpy.pyImport("dis").simbol(a, b)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("dis").simbol(a).to(type(result)) else: discard nimpy.pyImport("dis").simbol(a)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("dis").simbol.to(tipe)

opname     := seq[string]
cmp_op     := seq[string]
hasconst   := seq[int]
hasfree    := seq[int]
hasname    := seq[int]
hasjrel    := seq[int]
hasjabs    := seq[int]
haslocal   := seq[int]
hascompare := seq[int]

proc code_info(obj: auto):      string = X code_info, obj
proc show_code(obj: auto)              = X show_code, obj
proc dis(obj: auto)                    = X dis, obj
proc disb(obj: auto)                   = X disb, obj
proc disassemble(obj: auto; lasti= -1) = X disassemble, obj, lasti
proc findlabels(obj: auto):   seq[int] = X findlabels, obj
