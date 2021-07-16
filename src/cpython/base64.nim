## * https://docs.python.org/3.10/library/base64.html
import nimpy
const module = "base64"
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
proc b64encode*(s, altchars: string):                 string = X b64encode, s, altchars
proc b64encode*(s: string):                           string = X b64encode, s
proc b64decode*(s, altchars: string; validate=false): string = X b64decode, s, altchars, validate
proc b64decode*(s: string):                           string = X b64decode, s
proc standard_b64encode*(s: string):                  string = X standard_b64encode, s
proc standard_b64decode*(s: string):                  string = X standard_b64decode, s
proc urlsafe_b64encode*(s: string):                   string = X urlsafe_b64encode, s
proc urlsafe_b64decode*(s: string):                   string = X urlsafe_b64decode, s
proc b32encode*(s: string):                           string = X b32encode, s
proc b32decode*(s: string; casefold=false):           string = X b32decode, s, casefold
proc b32hexencode*(s: string):                        string = X b32hexencode, s
proc b32hexdecode*(s: string; casefold=false):        string = X b32hexdecode, s, casefold
proc b16encode*(s: string):                           string = X b16encode, s
proc b16decode*(s: string; casefold=false):           string = X b16decode, s, casefold
proc a85encode*(s: string):                           string = X a85encode, s
proc a85decode*(s: string):                           string = X a85decode, s
proc b85encode*(s: string; pad=false):                string = X b85encode, s, pad
proc b85decode*(s: string):                           string = X b85decode, s
proc decodebytes*(s: string):                         string = X decodebytes, s
proc encodebytes*(s: string):                         string = X encodebytes, s
