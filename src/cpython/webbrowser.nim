## * https://docs.python.org/3.10/library/webbrowser.html
import nimpy
const module = "webbrowser"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
proc open_new*(url: string)     = X open_new, url
proc open_new_tab*(url: string) = X open_new_tab, url
