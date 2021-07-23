## * https://docs.python.org/3.10/library/sys.html
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("sys").simbol().to(type(result)) else: discard nimpy.pyImport("sys").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("sys").simbol(a).to(type(result)) else: discard nimpy.pyImport("sys").simbol(a)
template X(simbol; a, b): auto = nimpy.pyImport("sys").simbol(a, b).to(type(result))
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("sys").simbol.to(tipe)

abiflags             := string
base_exec_prefix     := string
base_prefix          := string
byteorder            := string
copyright            := string
pycache_prefix       := string
exec_prefix          := string
executable           := string
float_repr_style     := string
platform             := string
platlibdir           := string
prefix               := string
ps1                  := string
ps2                  := string
version              := string
winver               := string
dllhandle            := int
hexversion           := int
maxunicode           := int
tracebacklimit       := int
api_version          := int
maxsize              := BiggestInt
dont_write_bytecode  := bool
builtin_module_names := seq[string]
argv                 := seq[string]
orig_argv            := seq[string]
path                 := seq[string]
flags                := tuple[debug, inspect, interactive, optimize, dont_write_bytecode, no_user_site, no_site, ignore_environment, verbose, bytes_warning, quiet, hash_randomization, isolated: int; dev_mode: bool; utf8_mode: int]
float_info           := tuple[max: float; max_exp, max_10_exp: int; min: float; min_exp, min_10_exp, dig, mant_dig: int; epsilon: float; radix, rounds: int]
hash_info            := tuple[width, modulus, inf, nan, imag: int; algorithm: string; hash_bits, seed_bits, cutoff: int]
int_info             := tuple[bits_per_digit, sizeof_digit: int]
thread_info          := tuple[name, lock, version: string]
version_info         := tuple[major, minor, micro: int; releaselevel: string; serial: int]

proc breakpointhook*()                           = X breakpointhook
proc displayhook*(value: auto)                   = X displayhook, value
proc exit*(arg = 0)                              = X exit
proc getallocatedblocks*():                  int = X getallocatedblocks
proc getandroidapilevel*():                  int = X getandroidapilevel
proc getdefaultencoding*():               string = X getdefaultencoding
proc getdlopenflags*():                      int = X getdlopenflags
proc getfilesystemencoding*():            string = X getfilesystemencoding
proc getfilesystemencodeerrors*():        string = X getfilesystemencodeerrors
proc getrefcount*(obj: auto):                int = X getrefcount, obj
proc getrecursionlimit*(obj: auto):          int = X getrecursionlimit, obj
proc getsizeof*(obj: auto):                  int = X getsizeof, obj
proc getsizeof*(obj: auto; default: int):    int = X getsizeof, obj, default
proc getswitchinterval*():                 float = X getswitchinterval
proc get_coroutine_origin_tracking_depth*(): int = X get_coroutine_origin_tracking_depth
proc intern*(str: string):                string = X intern, str
proc is_finalizing*():                      bool = X is_finalizing
proc setdlopenflags*(n: int)                     = X setdlopenflags, n
proc setrecursionlimit*(limit: int)              = X setrecursionlimit, limit
proc setswitchinterval*(interval: int)           = X setswitchinterval, interval
proc set_coroutine_origin_tracking_depth*(depth: int) = X set_coroutine_origin_tracking_depth, depth
