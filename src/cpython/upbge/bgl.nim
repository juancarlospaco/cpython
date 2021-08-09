## * https://upbge.org/api/mathutils.noise.html
import nimpy

template X(simbol):                      auto = nimpy.pyImport("mathutils.noise").simbol().to(type(result))
template X(simbol; a, b):                auto = nimpy.pyImport("mathutils.noise").simbol(a, b).to(type(result))
template X(simbol; a, b, c):             auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):          auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e):       auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e).to(type(result))
template X(simbol; a, b, c, d, e, f):    auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e, f).to(type(result))
template X(simbol; a, b, c, d, e, f, g): auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e, f, g).to(type(result))
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("mathutils.noise").simbol(a).to(type(result)) else: discard nimpy.pyImport("mathutils.noise").simbol(a)

proc random*(): float = X random




