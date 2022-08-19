## https://upbge.org/#/documentation/docs/latest/api/gpu.state.html
import nimpy

template X(simbol): auto = nimpy.pyImport("gpu.state").simbol().to(type(result))
template X(simbol, a) = discard nimpy.pyImport("gpu.state").simbol(a)
template X(simbol, a, b, c, d) = discard nimpy.pyImport("gpu.state").simbol(a, b, c, d)

proc blend_get*():      string                   = X blend_get
proc depth_test_get*(): string                   = X depth_test_get
proc depth_mask_get*():   bool                   = X depth_mask_get
proc blend_set*(mode: string)                    = X blend_get, mode
proc depth_mask_set*(value: bool)                = X depth_mask_set, value
proc depth_test_set*(mode: string)               = X depth_test_set, mode
proc color_mask_set*(r, g, b, a: int)            = X color_mask_set, r, g, b, a
proc clip_distances_set*(distances_enabled: int) = X clip_distances_set, distances_enabled
proc face_culling_set*(culling: string)          = X face_culling_set, culling
proc front_facing_set*(invert: bool)             = X front_facing_set, invert
proc line_width_get*(): float                    = X line_width_get
proc line_width_set*(width: float)               = X line_width_set, width
proc point_size_set*(size: float)                = X point_size_set, size
proc program_point_size_set*(enable: bool)       = X program_point_size_set, enable
proc viewport_get*():  array[4, int]             = X viewport_get
proc viewport_set*(x, y, xsize, ysize: int)      = X viewport_set, x, y, xsize, ysize
