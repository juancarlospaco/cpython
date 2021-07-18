## * https://docs.python.org/3.10/library/webbrowser.html
import nimpy

template X(simbol) = discard nimpy.pyImport("webbrowser").simbol(url)

proc open_new*(url: string)     = X open_new
proc open_new_tab*(url: string) = X open_new_tab
