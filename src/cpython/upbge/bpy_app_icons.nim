## * https://upbge.org/#/documentation/docs/latest/api/bpy.app.icons.html
import nimpy

template X(simbol; a, b, c): auto = nimpy.pyImport("bpy.app.icons").simbol(a, b, c).to(type(result))
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("bpy.app.icons").simbol(a).to(type(result)) else: discard nimpy.pyImport("bpy.app.icons").simbol(a)

proc release*(icon_id: int)                          = X release, icon_id
proc new_triangles*(rang, coords, colors: auto): int = X new_triangles, rang, coords, colors
proc new_triangles_from_file*(filename: string): int = X new_triangles_from_file, filename
