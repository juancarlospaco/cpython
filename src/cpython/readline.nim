## * https://docs.python.org/3.10/library/readline.html
import nimpy

template X(simbol)                   = discard nimpy.pyImport("readline").simbol()
template X(simbol; a, b, c):    auto = nimpy.pyImport("readline").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d, e, f) = discard nimpy.pyImport("readline").simbol(a, b, c, d, e, f)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("readline").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("readline").simbol(a, b)
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("readline").simbol(a).to(type(result)) else: discard nimpy.pyImport("readline").simbol(a)

proc redisplay*()                                  = X redisplay
proc get_line_buffer*():                    string = X get_line_buffer
proc parse_and_bind*(str: string)                  = X parse_and_bind, str
proc read_init_file*(filename: string)             = X parse_and_bind, filename
proc insert_text*(str: string)                     = X insert_text, str
proc read_history_file*(filename: string)          = X read_history_file, filename
proc write_history_file*(filename: string)         = X write_history_file, filename
proc get_history_length*(): int                    = X get_history_length
proc set_history_length*(length: int)              = X set_history_length, length
proc clear_history*()                              = X clear_history
proc get_current_history_length*():            int = X get_current_history_length
proc get_history_item*(index: int):         string = X get_history_item, index
proc remove_history_item*(pos: int):        string = X remove_history_item, pos
proc replace_history_item*(pos: int; line: string) = X replace_history_item, pos, line
proc add_history*(line: string)                    = X add_history, line
proc set_auto_history*(enabled: bool)              = X set_auto_history, enabled
proc set_startup_hook*(function: auto)             = X set_startup_hook, function
proc set_pre_input_hook*(function: auto)           = X set_pre_input_hook, function
proc set_completer*(function: auto)                = X set_completer, function
proc get_completion_type*():                   int = X get_completion_type
proc get_begidx*():                            int = X get_begidx
proc get_endidx*():                            int = X get_endidx
proc set_completer_delims*(str: string)            = X set_completer_delims, str
proc get_completer_delims*():               string = X get_completer_delims
proc append_history_file*(nelements: seq[string])  = X append_history_file, nelements
proc set_completion_display_matches_hook*(function: auto)  = X set_completion_display_matches_hook, function
proc append_history_file*(nelements: seq[string]; filename: string) = X append_history_file, nelements, filename
