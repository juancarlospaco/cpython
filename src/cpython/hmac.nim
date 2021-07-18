## * https://docs.python.org/3.10/library/hmac.html
import nimpy

proc compare_digest*(a, b: string): bool = nimpy.pyImport("hmac").compare_digest(a, b).to(bool)
