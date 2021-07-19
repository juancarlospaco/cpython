## * https://docs.python.org/3.10/library/sys.html
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("sys").simbol().to(type(result)) else: discard nimpy.pyImport("sys").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("sys").simbol(a).to(type(result)) else: discard nimpy.pyImport("sys").simbol(a)
template X(simbol; a, b): auto = nimpy.pyImport("sys").simbol(a, b).to(type(result))

proc breakpointhook*() = X breakpointhook
proc displayhook*(value: auto) = X displayhook, value
proc exit*(arg = 0) = X exit
proc getallocatedblocks*(): int = X getallocatedblocks
proc getandroidapilevel*(): int = X getandroidapilevel
proc getdefaultencoding*(): string = X getdefaultencoding
proc getdlopenflags*(): int = X getdlopenflags
proc getfilesystemencoding*(): string = X getfilesystemencoding
proc getfilesystemencodeerrors*(): string = X getfilesystemencodeerrors
proc getrefcount*(obj: auto): int = X getrefcount, obj
proc getrecursionlimit*(obj: auto): int = X getrecursionlimit, obj
proc getsizeof*(obj: auto): int = X getsizeof, obj
proc getsizeof*(obj: auto; default: int): int = X getsizeof, obj, default
proc getswitchinterval*(): float = X getswitchinterval
proc get_coroutine_origin_tracking_depth*(): int = X get_coroutine_origin_tracking_depth
proc intern*(str: string): string = X intern, str
proc is_finalizing*(): bool = X is_finalizing
proc setdlopenflags*(n: int) = X setdlopenflags, n
proc setrecursionlimit*(limit: int) = X setrecursionlimit, limit
proc setswitchinterval*(interval: int) = X setswitchinterval, interval
proc set_coroutine_origin_tracking_depth*(depth: int) = X set_coroutine_origin_tracking_depth, depth
