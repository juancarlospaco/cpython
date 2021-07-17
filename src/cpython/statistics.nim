## * https://docs.python.org/3.10/library/statistics.html
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
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: module.simbol(a, b, c, d, e, f).to(type(result)) else: discard module.simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g)
template X(simbol; a, b, c, d, e, f, g, h): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g, h).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g, h)
proc median_low*(data: seq[int]):       int    = X median_low, data
proc median_low*(data: seq[float]):     float  = X median_low, data
proc median_high*(data: seq[int]):      int    = X median_high, data
proc median_high*(data: seq[float]):    float  = X median_high, data
proc mode*(sequence: seq[int]):         int    = X mode, sequence
proc mode*(sequence: seq[char]):        char   = X mode, sequence
proc mode*(sequence: seq[bool]):        bool   = X mode, sequence
proc mode*(sequence: seq[float]):       float  = X mode, sequence
proc mode*(sequence: seq[string]):      string = X mode, sequence
proc multimode*(sequence: seq[int]):    int    = X multimode, sequence
proc multimode*(sequence: seq[char]):   char   = X multimode, sequence
proc multimode*(sequence: seq[bool]):   bool   = X multimode, sequence
proc multimode*(sequence: seq[float]):  float  = X multimode, sequence
proc multimode*(sequence: seq[string]): string = X multimode, sequence
proc mean*(data: seq[int] or seq[float]):   float = X mean,  data
proc fmean*(data: seq[int] or seq[float]):  float = X fmean, data
proc median*(data: seq[int] or seq[float]): float = X median, data
proc pstdev*(data: seq[int] or seq[float]):      float = X pstdev, data
proc pvariance*(data: seq[int] or seq[float]):   float = X pvariance, data
proc stdev*(data: seq[int] or seq[float]):       float = X stdev, data
proc variance*(data: seq[int] or seq[float]):    float = X variance, data
proc quantiles*(data: seq[int] or seq[float]):   float = X quantiles, data
proc covariance*(data: seq[int] or seq[float]):  float = X covariance, data
proc correlation*(data: seq[int] or seq[float]): float = X correlation, data
proc geometric_mean*(data: seq[int] or seq[float]): float = X geometric_mean, data
proc harmonic_mean*(data: seq[int] or seq[float]):  float = X harmonic_mean, data
proc linear_regression*(data: seq[int] or seq[float]): tuple[slope, intercept: float] = X linear_regression, data
proc median_grouped*(data: seq[int] or seq[float]; interval = 1): float = X median_grouped, data, interval
proc harmonic_mean*(data: seq[int] or seq[float]; weights: seq[int]): float = X harmonic_mean, data, weights
