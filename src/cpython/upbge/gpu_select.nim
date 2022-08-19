## https://upbge.org/#/documentation/docs/latest/api/gpu.select.html
import nimpy

proc load_id*(id: uint32) = discard nimpy.pyImport("gpu.select").load_id(id)
