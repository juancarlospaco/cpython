## * https://upbge.org/#/documentation/docs/latest/api/bpy.msgbus.html
import nimpy

template X(simbol; a)             = discard nimpy.pyImport("bpy.msgbus").simbol(a)
template X(simbol; a, b, c, d)    = discard nimpy.pyImport("bpy.msgbus").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e) = discard nimpy.pyImport("bpy.msgbus").simbol(a, b, c, d, e)

proc clear_by_owner*(owner: auto)                            = X clear_by_owner, owner
proc publish_rna*(key: auto)                                 = X publish_rna, key
proc subscribe_rna*(key, owner, args, notify, options: auto) = X subscribe_rna, key, owner, args, notify, options
proc subscribe_rna*(key, owner, args, notify: auto)          = X subscribe_rna, key, owner, args, notify
