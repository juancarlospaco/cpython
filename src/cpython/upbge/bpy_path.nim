## * https://upbge.org/#/documentation/docs/latest/api/bpy.path.html (These are "optimized" for Blender/UPBGE)
import nimpy

template X(simbol; a):       auto = nimpy.pyImport("bpy.path").simbol(a).to(type(result))
template X(simbol; a, b):    auto = nimpy.pyImport("bpy.path").simbol(a, b).to(type(result))
template X(simbol; a, b, c): auto = nimpy.pyImport("bpy.path").simbol(a, b, c).to(type(result))

proc abspath*(path, start, library: string): string    = X abspath, path, start, library
proc abspath*(path, start: string): string             = X abspath, path, start
proc abspath*(path: string): string                    = X abspath, path
proc basename*(path: string): string                   = X basename, path
proc clean_name*(name: string; replace = "_"): string  = X clean_name, name, replace
proc display_name*(name: string): string               = X display_name, name
proc display_name_to_filepath*(name: string): string   = X display_name_to_filepath, name
proc display_name_from_filepath*(name: string): string = X display_name_from_filepath, name
proc is_subdir*(path, directory: string): bool         = X is_subdir, path, directory
proc native_pathsep*(path: string): string             = X native_pathsep, path
proc reduce_dirs*(dirs: seq[string]): seq[string]      = X reduce_dirs, dirs
proc relpath*(path, start: string): string             = X relpath, path, start
proc relpath*(path: string): string                    = X relpath, path
proc resolve_ncase*(path: string): string              = X resolve_ncase, path
proc module_names*(path: string; recursive = false):        seq[string] = X module_names, path, recursive
proc ensure_ext*(filepath, ext: string; case_sensitive = false): string = X ensure_ext, filepath, ext, case_sensitive
