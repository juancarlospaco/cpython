## * https://docs.python.org/3.10/library/gettext.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))
template X(simbol): auto =
  when declared result: module.simbol().to(type(result)) else: discard module.simbol()
template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
proc bindtextdomain*(domain, localedir: string)           = X bindtextdomain, domain, localedir
proc bindtextdomain*(domain: string)                      = X bindtextdomain, domain
proc bind_textdomain_codeset*(domain, codeset: string)    = X bind_textdomain_codeset, domain, codeset
proc bind_textdomain_codeset*(domain: string)             = X bind_textdomain_codeset, domain
proc textdomain*(domain: string)                          = X textdomain, domain
proc textdomain*()                                        = X textdomain
proc gettext*(message: string):                    string = X gettext, message
proc ngettext*(singular, plural: string; n: int):  string = X ngettext, singular, plural, n
proc lgettext*(message: string):                   string = X lgettext, message
proc lngettext*(singular, plural: string; n: int): string = X lngettext, singular, plural, n
