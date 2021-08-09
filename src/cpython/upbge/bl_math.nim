## * https://upbge.org/api/bl_math.html
import nimpy

template X(simbol; a, b, c): auto = nimpy.pyImport("bl_math").simbol(a, b, c).to(type(result))

proc clamp*(value: float, min = 0.0, max = 1.0): float = X clamp, value, min, max
proc lerp*(frm, to, factor: float):              float = X lerp, frm, to, factor
proc smoothstep*(frm, to, factor: float):        float = X smoothstep, frm, to, factor
