## * https://upbge.org/#/documentation/docs/latest/api/bpy.utils.units.html
import nimpy

template X(simbol; a, b, c):          auto = nimpy.pyImport("bpy.utils.units").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):       auto = nimpy.pyImport("bpy.utils.units").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e, f): auto = nimpy.pyImport("bpy.utils.units").simbol(a, b, c, d, e, f).to(type(result))

proc to_string*(unit_system, unit_category: string; value: float; precision=3; split_unit=false, compatible_unit=false): string = X to_string, unit_system, unit_category, value, precision, split_unit, compatible_unit
proc to_value*(unit_system, unit_category, str_input, str_ref_unit: string): float = X to_value, unit_system, unit_category, str_input, str_ref_unit
proc to_value*(unit_system, unit_category, str_input: string): float = X to_value, unit_system, unit_category, str_input
