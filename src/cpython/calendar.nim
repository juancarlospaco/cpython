## https://docs.python.org/3.12/library/calendar.html
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("calendar").simbol().to(type(result)) else: discard nimpy.pyImport("calendar").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("calendar").simbol(a).to(type(result)) else: discard nimpy.pyImport("calendar").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("calendar").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("calendar").simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: nimpy.pyImport("calendar").simbol(a, b, c).to(type(result)) else: discard nimpy.pyImport("calendar").simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: nimpy.pyImport("calendar").simbol(a, b, c, d).to(type(result)) else: discard nimpy.pyImport("calendar").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: nimpy.pyImport("calendar").simbol(a, b, c, d, e).to(type(result)) else: discard nimpy.pyImport("calendar").simbol(a, b, c, d, e)

template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("calendar").simbol.to(tipe)

MONDAY    := int
TUESDAY   := int
WEDNESDAY := int
THURSDAY  := int
FRIDAY    := int
SATURDAY  := int
SUNDAY    := int

proc setfirstweekday*(weekday: Natural)                            = X setfirstweekday, weekday
proc firstweekday*():                                          int = X firstweekday
proc isleap*(year: Positive):                                 bool = X isleap, year
proc leapdays*(y1, y2: Natural):                               int = X leapdays, y1, y2
proc weekday*(year: Positive; month: 1..12; day: 1..31):       int = X weekday, year, month, day
proc weekheader*(n: Positive): string                              = X weekheader, n
proc monthrange*(year: Positive; month: 1..12):      array[2, int] = X monthrange, year, month
proc monthcalendar*(year: Positive; month: 1..12):   seq[seq[int]] = X monthcalendar, year, month
proc prmonth*(year: Positive; month: 1..12; w = 0, l = 0)          = X prmonth, year, month, w, l
proc month*(year: Positive; month: 1..12; w = 0, l = 0):    string = X month, year, month, w, l
proc prcal*(year: Positive; w = 0, l = 0, c = 6, m = 3)            = X prcal, year, w, l, c, m
proc calendar*(year: Positive; w = 2, l = 1, c = 6, m = 3): string = X calendar, year, w, l, c, m
