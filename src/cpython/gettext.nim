## * https://docs.python.org/3.10/library/gettext.html
import nimpy
template X(simbol):          auto = discard nimpy.pyImport("gettext").simbol()
template X(simbol; a, b)          = discard nimpy.pyImport("gettext").simbol(a, b)
template X(simbol; a, b, c): auto = nimpy.pyImport("gettext").simbol(a, b, c).to(type(result))
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("gettext").simbol(a).to(type(result)) else: discard nimpy.pyImport("gettext").simbol(a)
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
