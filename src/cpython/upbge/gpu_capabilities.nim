## https://upbge.org/#/documentation/docs/latest/api/gpu_extras.presets.html
import nimpy

template X(simbol): auto = nimpy.pyImport("gpu.capabilities").simbol().to(type(result))

proc extensions_get*(): seq[string] = X extensions_get
proc max_batch_indices_get*():  int = X max_batch_indices_get
proc max_batch_vertices_get*(): int = X max_batch_vertices_get
proc max_texture_layers_get*(): int = X max_texture_layers_get
proc max_texture_size_get*():   int = X max_texture_size_get
proc max_textures_frag_get*():  int = X max_textures_frag_get
proc max_textures_geom_get*():  int = X max_textures_geom_get
proc max_textures_get*():       int = X max_textures_get
proc max_textures_vert_get*():  int = X max_textures_vert_get
proc max_uniforms_frag_get*():  int = X max_uniforms_frag_get
proc max_varying_floats_get*(): int = X max_varying_floats_get
proc max_vertex_attribs_get*(): int = X max_vertex_attribs_get
