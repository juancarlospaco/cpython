## * https://docs.python.org/3.10/library/random.html
import nimpy
const module = "random"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc seed*() = X seed
proc seed*(a: int; version=2) = X seed, a, version
proc randbytes*(n: int): string = X randbytes
proc randrange*(stop: int):              int = X randrange, stop
proc randrange*(start, stop: int):       int = X randrange, start, stop
proc randrange*(start, stop, step: int): int = X randrange, start, stop, step
proc randint*(a, b: int):                int = X randint, a, b
proc getrandbits*(k: int):               int = X getrandbits, k
proc choice*(sequence: seq[int]):    int    = X choice, sequence  # Wont take auto nor T.
proc choice*(sequence: seq[char]):   char   = X choice, sequence
proc choice*(sequence: seq[bool]):   bool   = X choice, sequence
proc choice*(sequence: seq[float]):  float  = X choice, sequence
proc choice*(sequence: seq[string]): string = X choice, sequence
proc sample*(sequence: seq[int];    length: int): seq[int]    = X sample, sequence, length
proc sample*(sequence: seq[char];   length: int): seq[char]   = X sample, sequence, length
proc sample*(sequence: seq[bool];   length: int): seq[bool]   = X sample, sequence, length
proc sample*(sequence: seq[float];  length: int): seq[float]  = X sample, sequence, length
proc sample*(sequence: seq[string]; length: int): seq[string] = X sample, sequence, length
proc random*(): float = X random
proc uniform*(a, b: float): float = X uniform, a, b
proc uniform*(a, b: int):   float = X uniform, a, b
proc triangular*(lo, hi, mode: float): float = X triangular, lo, hi, mode
proc triangular*(lo, hi, mode: int):   float = X triangular, lo, hi, mode
proc betavariate*(alpha, beta: float): range[0.0 .. 1.0] = X betavariate, alpha, beta
proc betavariate*(alpha, beta: int):   range[0.0 .. 1.0] = X betavariate, alpha, beta
proc expovariate*(lambd: float):         float = X expovariate, lambd
proc expovariate*(lambd: int):           float = X expovariate, lambd
proc gammavariate*(alpha, beta: float):  float = X gammavariate, alpha, beta
proc gammavariate*(alpha, beta: int):    float = X gammavariate, alpha, beta
proc gauss*(mu, sigma: float):           float = X gammavariate, mu, sigma
proc gauss*(mu, sigma: int):             float = X gammavariate, mu, sigma
proc lognormvariate*(mu, sigma: float):  float = X lognormvariate, mu, sigma
proc lognormvariate*(mu, sigma: int):    float = X lognormvariate, mu, sigma
proc normalvariate*(mu, sigma: float):   float = X normalvariate, mu, sigma
proc normalvariate*(mu, sigma: int):     float = X normalvariate, mu, sigma
proc vonmisesvariate*(mu, kappa: float): float = X vonmisesvariate, mu, kappa
proc vonmisesvariate*(mu, kappa: int):   float = X vonmisesvariate, mu, kappa
proc paretovariate*(alpha: float):       float = X paretovariate, alpha
proc paretovariate*(alpha: int):         float = X paretovariate, alpha
proc weibullvariate*(alpha: float):      float = X weibullvariate, alpha
proc weibullvariate*(alpha: int):        float = X weibullvariate, alpha
