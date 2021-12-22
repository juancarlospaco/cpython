## * https://docs.python.org/3.10/library/builtins.html
## * https://docs.python.org/3/library/stdtypes.html
import nimpy

template X(simbol; a, b, c):    auto = nimpy.pyImport("builtins").simbol(a, b, c).to(type(result))
template X(simbol; a, b): auto = nimpy.pyImport("builtins").simbol(a, b).to(type(result))
template X(simbol; a, b, c, d, e, f) = discard nimpy.pyImport("builtins").simbol(a, b, c, d, e, f)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("builtins").simbol(a).to(type(result)) else: discard nimpy.pyImport("builtins").simbol(a)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("builtins").simbol.to(tipe)

copyright := string
credits   := string
license   := string

proc abs*(x: int):                              int = X abs, x
proc abs*(x: float):                          float = X abs, x
proc all*(iterable: seq[auto]):                bool = X all, iterable
proc ascii*(obj: auto):                      string = X ascii, x
proc bin*(x: int):                           string = X bin, x
proc callable*(obj: auto):                     bool = X callable, obj
proc chr*(i: int):                           string = X chr, i
proc delattr*(obj: auto; name: string)              = X delattr, obj, name
proc dir*(obj: auto):                   seq[string] = X dir, obj
proc eval*(expression: string)                      = X eval, expression
proc exec*(obj: auto)                               = X exec, obj
proc hasattr*(obj: auto; name: string):        bool = X hasattr, obj, name
proc hash*(obj: auto):                          int = X hash, obj
proc help*(obj: auto)                               = X help, obj
proc hex*(obj: auto):                        string = X hex, obj
proc id*(obj: auto):                            int = X id, obj
proc input*(prompt: string):                 string = X input, prompt
proc oct*(x: int):                           string = X oct, x
proc pow*(x, y, z: int):                        int = X pow, x, y, z
proc pow*(x, y, z: float):                    float = X pow, x, y, z
proc pow*(x, y: int): int                           = X pow, x, y
proc pow*(x, y: float):                       float = X pow, x, y
proc print*(obj: auto; sep = ' '; ends = '\n')      = X print, sep, ends
proc repr*(obj: auto): string                       = X repr, obj
proc round*(number: float; ndigits: int):     float = X round, number, ndigits
proc setattr*(obj: auto; name: string; value: auto) = X setattr, obj, name, value
proc sorted*(iterable: seq[int]):       seq[int]    = X sorted, iterable
proc sorted*(iterable: seq[char]):      seq[char]   = X sorted, iterable
proc sorted*(iterable: seq[bool]):      seq[bool]   = X sorted, iterable
proc sorted*(iterable: seq[float]):     seq[float]  = X sorted, iterable
proc sorted*(iterable: seq[string]):    seq[string] = X sorted, iterable
proc sum*(iterable: seq[int]):                  int = X sorted, iterable
proc sum*(iterable: seq[float]):              float = X sorted, iterable
proc bit_length*(x: int):                       int = X bit_length, x
proc bit_count*(x: int):                        int = X bit_count, x
proc as_integer_ratio*(x: int or float):   seq[int] = X as_integer_ratio, x
proc is_integer*(x: float):                    bool = X is_integer, x
proc to_bytes*(x: int; length: int; byteorder: string): string = X to_bytes, x, length, byteorder
proc format*(value: auto; format_spec: string ): string = X format, value, format_spec
proc divmod*(a, b: int):   tuple[quotient, remainder: int]   = X divmod, a, b
proc divmod*(a, b: float): tuple[quotient, remainder: float] = X divmod, a, b
proc compile*(source, filename, mode: string; flags = 0; dont_inherit = false; optimize = -1) = X compile, source, filename, mode, flags, dont_inherit, optimize
