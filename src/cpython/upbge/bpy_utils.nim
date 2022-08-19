## * https://upbge.org/#/documentation/docs/latest/api/bpy.utils.html
import nimpy

template X(simbol; a, b, c):                      auto = nimpy.pyImport("bpy.utils").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):                   auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e):                auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d, e).to(type(result))
template X(simbol; a, b, c, d, e, f):             auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d, e, f).to(type(result))
template X(simbol; a, b, c, d, e, f, g):          auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d, e, f, g).to(type(result))
template X(simbol; a, b, c, d, e, f, g, h):       auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d, e, f, g, h).to(type(result))
template X(simbol; a, b, c, d, e, f, g, h, i, j): auto = nimpy.pyImport("bpy.utils").simbol(a, b, c, d, e, f, g, h, i, j).to(type(result))
template X(simbol): auto =
  when declared result: nimpy.pyImport("bpy.utils").simbol().to(type(result)) else: discard nimpy.pyImport("bpy.utils").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("bpy.utils").simbol(a).to(type(result)) else: discard nimpy.pyImport("bpy.utils").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("bpy.utils").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("bpy.utils").simbol(a, b)

proc blend_paths*(absolute = false, packed = false, local = false):           seq[string] = X blend_paths, absolute, packed, local
proc escape_identifier*(str: string): string                                              = X escape_identifier, str
proc unescape_identifier*(str: string): string                                            = X unescape_identifier, str
proc register_class*(class: auto)                                                         = X register_class, class
proc resource_path*(tipe: string; major: int; minor: string): string                      = X resource_path, tipe, major, minor
proc resource_path*(tipe: string; major: int): string                                     = X resource_path, tipe, major
proc resource_path*(tipe: string): string                                                 = X resource_path, tipe
proc unregister_class*(class: auto)                                                       = X unregister_class, class
proc keyconfig_init*()                                                                    = X keyconfig_init
proc keyconfig_set*(filepath: string)                                                     = X keyconfig_set, filepath
proc load_scripts*(reload_scripts = false, refresh_scripts = false)                       = X load_scripts, reload_scripts, refresh_scripts
proc preset_paths*(subdir: string): seq[string]                                           = X preset_paths, subdir
proc refresh_script_paths*()                                                              = X refresh_script_paths
proc register_manual_map*(manual_hook: auto)                                              = X register_manual_map, manual_hook
proc unregister_manual_map*(manual_hook: auto)                                            = X unregister_manual_map, manual_hook
proc register_tool*(tool_cls: auto)                                                       = X register_tool, tool_cls
proc unregister_tool*(tool_cls: auto)                                                     = X unregister_tool, tool_cls
proc make_rna_paths*(struct_name, prop_name, enum_name: string): (string, string, string) = X make_rna_paths, struct_name, prop_name, enum_name
proc script_path_user*(): string                                                          = X script_path_user
proc script_path_pref*(): string                                                          = X script_path_pref
proc smpte_from_frame*(frame, fps, fps_base: int or float): string                        = X smpte_from_frame, frame, fps, fps_base
proc smpte_from_frame*(frame, fps: int or float): string                                  = X smpte_from_frame, frame, fps
proc smpte_from_frame*(frame: int or float): string                                       = X smpte_from_frame, frame
proc smpte_from_seconds*(frame, fps, fps_base: int or float): string                      = X smpte_from_seconds, frame, fps, fps_base
proc smpte_from_seconds*(frame, fps: int or float): string                                = X smpte_from_seconds, frame, fps
proc smpte_from_seconds*(frame: int or float): string                                     = X smpte_from_seconds, frame
proc user_resource*(resource_type: string, path = ""; create = false):             string = X user_resource, resource_type, path, create
proc execfile*(filepath: string)                                                          = X execfile, filepath
proc script_paths*(subdir: string; user_pref = true, check_all = false, use_user = true): seq[string] = X script_paths, subdir, user_pref, check_all, use_user
proc preset_find*(name, preset_path: string, display_name = false, ext = ".py"): seq[string] = X preset_find, name, preset_path, display_name, ext
