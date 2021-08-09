## * OpenGL 4.5+ https://upbge.org/api/bgl.html
import nimpy

template X(simbol; a)                      = discard nimpy.pyImport("bgl").simbol(a)
template X(simbol; a, b)                   = discard nimpy.pyImport("bgl").simbol(a, b)
template X(simbol; a, b, c)                = discard nimpy.pyImport("bgl").simbol(a, b, c)
template X(simbol; a, b, c, d)             = discard nimpy.pyImport("bgl").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e)          = discard nimpy.pyImport("bgl").simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f)       = discard nimpy.pyImport("bgl").simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g)    = discard nimpy.pyImport("bgl").simbol(a, b, c, d, e, f, g)
template X(simbol; a, b, c, d, e, f, g, h) = discard nimpy.pyImport("bgl").simbol(a, b, c, d, e, f, g, h)
template X(simbol): auto =
  when declared result: nimpy.pyImport("bgl").simbol().to(type(result)) else: discard nimpy.pyImport("bgl").simbol()

proc glBindTexture*(target: int; texture: uint) = X glBindTexture, target, texture
proc glBlendFunc*(sfactor, dfactor: int) = X glBlendFunc, sfactor, dfactor
proc glClear*(mask: int) = X glClear, mask
proc glClearColor*(red, green, blue, alpha: int) = X glClearColor, red, green, blue, alpha
proc glClearDepth*(depth: int) = X glClearDepth, depth
proc glClearStencil*(s: int) = X glClearStencil, s
proc glClipPlane*(plane: int; equation: auto) = X glClipPlane, plane, equation
proc glColor*(red, green, blue, alpha: int) = X glColor, red, green, blue, alpha
proc glColorMask*(red, green, blue, alpha: int) = X glColorMask, red, green, blue, alpha
proc glCopyTexImage2D*(target, level, internalformat, x, y, width, height, border: int) = X glCopyTexImage2D, target, level, internalformat, x, y, width, height, border
proc glCullFace*(mode: int) = X glCullFace, mode
proc glDeleteTextures*(n: int; textures: auto) = X glDeleteTextures, n, textures
proc glDepthFunc*(fun: int) = X glDepthFunc, fun
proc glDepthMask*(flag: int or bool) = X glDepthMask, flag
proc glDepthRange*(zNear, zFar: int) = X glDepthRange, zNear, zFar
proc glDisable*(cap: int) = X glDisable, cap
proc glDrawBuffer*(mode: int) = X glDrawBuffer, mode
proc glEdgeFlag*(flag: int) = X glEdgeFlag, flag
proc glEnable*(cap: int) = X glEnable, cap
proc glEvalCoord*(u, v: auto) = X glEvalCoord, u, v
proc glEvalMesh*(mode, i1, i2: int) = X glEvalMesh, mode, i1, i2
proc glEvalPoint*(i, j: int) = X glEvalPoint, i, j
proc glFeedbackBuffer*(size, tipe: int; buffer: auto) = X glFeedbackBuffer, size, tipe, buffer
proc glFinish*() = X glFinish
proc glFlush*() = X glFlush
proc glFog*(pname: int; param: auto) = X glFog, pname, param
proc glFrontFace*(mode: int) = X glFrontFace, mode
proc glGenTextures*(n: int; textures: auto) = X glGenTextures, n, textures
proc glGet*(pname: int; param: auto) = X glGet, pname, param
proc glGetError*(): int = X glGetError
proc glGetLight*(light, pname: int; params: auto) = X glGetLight, light, pname, params
proc glGetMap*(target, query: int; v: auto) = X glGetMap, target, query, v
proc glGetString*(name: string): string = X glGetString, name
proc glGetTexLevelParameter*(target, level, pname: int; params: auto) = X glGetTexLevelParameter, target, level, pname, params
proc glHint*(target, mode: int) = X glHint, target, mode
proc glIsEnabled*(cap: int): bool = X glIsEnabled, cap
proc glIsTexture*(texture: uint): bool = X glIsTexture, texture
proc glLight*(light, pname: int; param: auto) = X glLight, light, pname, param
proc glLightModel*(pname: int; param: auto) = X glLightModel, pname, param
proc glLineWidth*(width: float) = X glLineWidth, width
proc glLoadMatrix*(m: auto) = X glLoadMatrix, m
proc glLogicOp*(opcode: int) = X glLogicOp, opcode




















