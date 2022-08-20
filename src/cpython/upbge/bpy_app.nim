## https://upbge.org/#/documentation/docs/latest/api/bpy.app.html
import nimpy

template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("bpy.app").simbol.to(tipe)

autoexec_fail                  := bool
autoexec_fail_quiet            := bool
debug                          := bool
debug_depsgraph                := bool
debug_depsgraph_build          := bool
debug_depsgraph_eval           := bool
debug_depsgraph_pretty         := bool
debug_depsgraph_tag            := bool
debug_depsgraph_time           := bool
debug_events                   := bool
debug_ffmpeg                   := bool
debug_freestyle                := bool
debug_handlers                 := bool
debug_io                       := bool
debug_python                   := bool
debug_simdata                  := bool
debug_wm                       := bool
use_event_simulate             := bool
use_userpref_skip_save_on_exit := bool
background                     := bool
factory_startup                := bool
autoexec_fail_message          := string
tempdir                        := string
debug_value                    := int
render_icon_size               := int
render_preview_size            := int
build_branch                   := string
build_cflags                   := string
build_commit_date              := string
build_commit_time              := string
build_cxxflags                 := string
build_date                     := string
build_hash                     := string
build_linkflags                := string
build_platform                 := string
build_system                   := string
build_time                     := string
build_type                     := string
build_commit_timestamp         := int
binary_path                    := string
version_char                   := string
version_cycle                  := string
version_string                 := string

proc is_job_running*(job_type: string): bool = nimpy.pyImport("bpy.app").is_job_running(job_type).to(bool)
