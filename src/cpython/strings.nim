## https://docs.python.org/3.12/library/string.html
import nimpy

type Template* = nimpy.PyObject

template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("string").simbol.to(tipe)

ascii_letters   := string
ascii_lowercase := string
ascii_uppercase := string
digits          := string
hexdigits       := string
octdigits       := string
punctuation     := string
printable       := string
whitespace      := string

proc newTemplate*(s: string): Template = nimpy.pyImport("string").Template(s)


runnableExamples:
  let s = newTemplate("$who likes $what")
  echo s.substitute(who = "Everybody", what = "cats")       # "Everybody likes cats"
  echo s.safe_substitute(who = "Everybody", what = "cats")  # "Everybody likes cats"
