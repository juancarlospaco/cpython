## * https://upbge.org/#/documentation/docs/latest/api/bge.render.html
import nimpy

template X(simbol; a): auto = nimpy.pyImport("bge.render").simbol(a).to(type(result))
template X(simbol; a, b, c) = discard nimpy.pyImport("bge.render").simbol(a, b, c)
template X(simbol): auto =
  when declared result: nimpy.pyImport("bge.render").simbol().to(type(result)) else: discard nimpy.pyImport("bpy.app.translations").simbol()
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("bge.render").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("bpy.app.translations").simbol(a, b)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("bge.render").simbol(a).to(type(result)) else: discard nimpy.pyImport("bpy.app.translations").simbol(a)
template `:=`(simbol; tipe: typedesc) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("bge.render").simbol.to(tipe)

KX_TEXFACE_MATERIAL          := int
KX_BLENDER_MULTITEX_MATERIAL := int
KX_BLENDER_GLSL_MATERIAL     := int
VSYNC_OFF                    := int
VSYNC_ON                     := int
VSYNC_ADAPTIVE               := int
LEFT_EYE                     := int
RAS_MIPMAP_NONE              := int
RAS_MIPMAP_NEAREST           := int
RAS_MIPMAP_LINEAR            := int

proc getWindowWidth*():                 int                         = X getWindowWidth
proc getWindowHeight*():                int                         = X getWindowHeight
proc getFullScreen*():                  int                         = X getFullScreen
proc getDisplayDimensions*(): array[2, int]                         = X getDisplayDimensions
proc getEyeSeparation*():             float                         = X getEyeSeparation
proc getFocalLength*():               float                         = X getFocalLength
proc getStereoEye*():                string                         = X getStereoEye
proc getAnisotropicFiltering*():        int                         = X getAnisotropicFiltering
proc getMipmapping*(): int                                          = X getMipmapping
proc setMousePosition*(x, y: int)                                   = X setMousePosition, x, y
proc setWindowSize*(width, height: int)                             = X setWindowSize, width, height
proc setFullScreen*(enable: bool)                                   = X setFullScreen, enable
proc makeScreenshot*(filename: string)                              = X makeScreenshot, filename
proc showMouse*(visible: bool)                                      = X showMouse, visible
proc enableVisibility*(visible: bool) {.deprecated.}                = X enableVisibility, visible
proc setBackgroundColor*(rgba: auto)                                = X setBackgroundColor, rgba
proc setEyeSeparation*(eyesep: float)                               = X setEyeSeparation, eyesep
proc setFocalLength*(focallength: float)                            = X setFocalLength, focallength
proc setMaterialMode*(mode: auto)                                   = X setMaterialMode, mode
proc setGLSLMaterialSetting*(setting: auto; enable: bool)           = X setGLSLMaterialSetting, setting, enable
proc setAnisotropicFiltering*(level: 1 .. 16)                       = X setAnisotropicFiltering, level
proc setMipmapping*(value: int)                                     = X setMipmapping, value
proc enableMotionBlur*(factor: 0.0 .. 1.0)                          = X enableMotionBlur, factor
proc drawLine*(fromVec, toVec: array[3, int]; color: array[4, int]) = X drawLine, fromVec, toVec, color
proc disableMotionBlur*()                                           = X disableMotionBlur
proc showFramerate*(enable: bool)                                   = X showFramerate, enable
proc showProfile*(enable: bool)                                     = X showProfile, enable
proc showProperties*(enable: bool)                                  = X showProperties, enable
proc autoDebugList*(enable: bool)                                   = X autoDebugList, enable
proc clearDebugList*()                                              = X clearDebugList
proc setVsync*(value: int)                                          = X setVsync, value
proc getVsync*(): int                                               = X getVsync
