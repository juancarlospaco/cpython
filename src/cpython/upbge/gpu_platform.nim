## https://upbge.org/#/documentation/docs/latest/api/gpu.platform.html
import nimpy

template X(simbol): auto = nimpy.pyImport("gpu.platform").simbol().to(type(result))

proc renderer_get*(): string = X renderer_get
proc vendor_get*():   string = X vendor_get
proc version_get*():  string = X version_get
