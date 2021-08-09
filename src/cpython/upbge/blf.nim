## * https://upbge.org/api/blf.html
import nimpy

template X(simbol):                auto = nimpy.pyImport("blf").simbol().to(type(result))
template X(simbol; a, b, c)             = discard nimpy.pyImport("blf").simbol(a, b, c)
template X(simbol; a, b, c, d)          = discard nimpy.pyImport("blf").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e)       = discard nimpy.pyImport("blf").simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f)    = discard nimpy.pyImport("blf").simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g) = discard nimpy.pyImport("blf").simbol(a, b, c, d, e, f, g)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("blf").simbol(a).to(type(result)) else: discard nimpy.pyImport("blf").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("blf").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("blf").simbol(a, b)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("blf").simbol.to(tipe)

CLIPPING        := int
KERNING_DEFAULT := int
MONOCHROME      := int
ROTATION        := int
SHADOW          := int
WORD_WRAP       := int

proc load*(filename: string): int = X load, filename
proc dimensions*(fontid: int; text: string): tuple[width, height: float] = X dimensions, fontid, text
proc unload*(filename: string) = X unload, filename
proc aspect*(fontid: int; aspect: float) = X aspect, fontid, aspect
proc clipping*(fontid: int; xmin, ymin, xmax, ymax: float) = X clipping, fontid, xmin, ymin, xmax, ymax
proc color*(fontid: int; r, g, b, a: float) = X color, fontid, r, g, b, a
proc disable*(fontid, option: int) = X disable, fontid, option
proc enable*(fontid, option: int) = X enable, fontid, option
proc draw*(fontid: int; text: string) = X draw, fontid, text
proc position*(fontid: int; x, y, z: float) = X position, fontid, x, y, z
proc rotation*(fontid: int; angle: float) = X rotation, fontid, angle
proc shadow*(fontid: int; level: 0..5; r, g, b, a: 0.0..1.0) = X shadow, fontid, level, r, g, b, a
proc shadow_offset*(fontid: int; x, y: float) = X shadow_offset, fontid, x, y
proc size*(fontid, size, dpi: int) = X size, fontid, size, dpi
proc word_wrap*(fontid, wrap_width: int) = X word_wrap, fontid, wrap_width
