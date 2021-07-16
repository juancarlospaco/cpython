## * https://docs.python.org/3.10/library/colorsys.html
import nimpy
const module = "colorsys"
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc rgb_to_yiq*(red, green, blue: float): tuple[y, i, q: float]          = X rgb_to_yiq, red, green, blue
proc yiq_to_rgb*(y, i, q: float):          tuple[red, green, blue: float] = X yiq_to_rgb, y, i, q
proc rgb_to_hls*(red, green, blue: float):           tuple[hue, lightness, saturation: float] = X rgb_to_hls, red, green, blue
proc hls_to_rgb*(hue, lightness, saturation: float): tuple[red, green, blue: float]           = X hls_to_rgb, hue, lightness, saturation
proc rgb_to_hsv*(red, green, blue: float):       tuple[hue, saturation, value: float] = X rgb_to_hsv, red, green, blue
proc hsv_to_rgb*(hue, saturation, value: float): tuple[red, green, blue: float]       = X hsv_to_rgb, hue, saturation, value
