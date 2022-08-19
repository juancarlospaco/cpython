## https://upbge.org/#/documentation/docs/latest/api/gpu_extras.presets.html
import nimpy

template X(simbol; a, b, c) = discard nimpy.pyImport("gpu_extras.presets").simbol(a, b, c)

proc draw_circle_2d*(position: array[2, int]; color: array[4, int]; radius: float) = X draw_circle_2d, position, color, radius
