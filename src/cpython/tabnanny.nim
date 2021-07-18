## * https://docs.python.org/3.10/library/tabnanny.html
import nimpy

proc check*(file_or_dir: string) = discard nimpy.pyImport("tabnanny").check(file_or_dir)
