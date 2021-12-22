## * https://github.com/python/cpython/blob/main/Lib/ntpath.py
## * You may want to use this because in Python has faster performance compared to `os.path`.
import nimpy

template X(simbol; a): auto =
  nimpy.pyImport("ntpath").simbol(a).to(type(result))
template X(simbol; a, b): auto =
  nimpy.pyImport("ntpath").simbol(a, b).to(type(result))

proc normcase*(s: string):                       string = X normcase, s
proc isabs*(s: string):                            bool = X isabs, s
proc join*(a, b: string):                        string = X join, a, b
proc splitdrive*(s: string): tuple[drive, path: string] = X splitdrive, s
proc split*(s: string):       tuple[head, tail: string] = X split, s
proc basename*(s: string):                       string = X basename, s
proc dirname*(s: string):                        string = X basename, s
proc commonprefix*(s: seq[string]):              string = X commonprefix, s
proc getsize*(s: string):                           int = X getsize, s
proc getmtime*(s: string):                        float = X getmtime, s
proc getatime*(s: string):                        float = X getatime, s
proc getctime*(s: string):                        float = X getctime, s
proc islink*(s: string):                           bool = X islink, s
proc exists*(s: string):                           bool = X exists, s
proc lexists*(s: string):                          bool = X lexists, s
proc isdir*(s: string):                            bool = X isdir, s
proc isfile*(s: string):                           bool = X isfile, s
proc ismount*(s: string):                          bool = X ismount, s
proc expanduser*(s: string):                     string = X expanduser, s
proc expandvars*(s: string):                     string = X expandvars, s
proc normpath*(s: string):                       string = X normpath, s
proc abspath*(s: string):                        string = X abspath, s
proc samefile*(path1, path2: string):              bool = X samefile, path1, path2
proc relpath*(path, start: string):              string = X relpath, path, start
