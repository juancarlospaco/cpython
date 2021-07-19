## * https://docs.python.org/3.10/library/unicodedata.html
import nimpy

template X(simbol; a):    auto = nimpy.pyImport("unicodedata").simbol(a).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("unicodedata").simbol(a, b).to(type(result))

proc lookup*(name: string or char):          string = X lookup, name
proc name*(chr: string or char):             string = X name, chr
proc decimal*(chr: string or char):          string = X decimal, chr
proc digit*(chr: string or char):            string = X digit, chr
proc numeric*(chr: string or char):          string = X numeric, chr
proc category*(chr: string or char):         string = X category, chr
proc bidirectional*(chr: string or char):    string = X bidirectional, chr
proc combining*(chr: string or char):           int = X combining, chr
proc east_asian_width*(chr: string or char): string = X east_asian_width, chr
proc mirrored*(chr: string or char):            int = X mirrored, chr
proc decomposition*(chr: string or char):    string = X decomposition, chr
proc normalize*(form, unistr: string):       string = X normalize, form, unistr
proc is_normalized*(form, unistr: string):     bool = X is_normalized, form, unistr
proc numeric*(chr: string or char; default: string): string = X numeric, chr, default
proc digit*(chr: string or char; default: string):   string = X digit, chr, default
proc decimal*(chr: string or char; default: string): string = X decimal, chr, default
proc name*(chr: string or char; default: string):    string = X name, chr, default
