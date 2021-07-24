## * https://docs.python.org/3.10/library/html.entities.html
import std/tables
import nimpy

template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("html.entities").simbol.to(tipe)

html5          := Table[string, string]
entitydefs     := Table[string, string]
name2codepoint := Table[string, int]
codepoint2name := Table[int, string]
