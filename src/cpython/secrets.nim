## * https://docs.python.org/3.10/library/secrets.html
import nimpy
const module = "secrets"

template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)

proc randbelow*(n: int): int = X randbelow, n
proc randbits*(k: int): int  = X randbits,  k
proc choice*(sequence: seq[int]):    int    = X choice, sequence
proc choice*(sequence: seq[char]):   char   = X choice, sequence
proc choice*(sequence: seq[bool]):   bool   = X choice, sequence
proc choice*(sequence: seq[float]):  float  = X choice, sequence
proc choice*(sequence: seq[string]): string = X choice, sequence
proc token_bytes*(number_of_bytes: int): string   = X token_bytes,   number_of_bytes
proc token_bytes*():                     string   = X token_bytes
proc token_hex*(number_of_bytes: int): string     = X token_hex,     number_of_bytes
proc token_hex*():                     string     = X token_hex
proc token_urlsafe*(number_of_bytes: int): string = X token_urlsafe, number_of_bytes
proc token_urlsafe*():                     string = X token_urlsafe
proc compare_digest*(digestA, digestB: string): bool = X compare_digest, digestA, digestB
