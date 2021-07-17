## * https://docs.python.org/3.10/library/hashlib.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))

template X(simbol): auto = module.simbol(data).hexdigest().to(string)

template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b): auto =
  when declared result: module.simbol(a, b).to(type(result)) else: discard module.simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: module.simbol(a, b, c).to(type(result)) else: discard module.simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: module.simbol(a, b, c, d, e, f).to(type(result)) else: discard module.simbol(a, b, c, d, e, f)
template X(simbol; a, b, c, d, e, f, g): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g)
template X(simbol; a, b, c, d, e, f, g, h): auto =
  when declared result: module.simbol(a, b, c, d, e, f, g, h).to(type(result)) else: discard module.simbol(a, b, c, d, e, f, g, h)

proc sha3_512*(data: string):   string = X sha3_512
proc shake_256*(data: string):  string = X shake_256
proc shake_128*(data: string):  string = X shake_128
proc md5*(data: string):        string = X md5
proc sha512_224*(data: string): string = X sha512_224
proc mdc2*(data: string):       string = X mdc2
proc sha3_384*(data: string):   string = X sha3_384
proc md4*(data: string):        string = X md4
proc sha3_256*(data: string):   string = X sha3_256
proc blake2b*(data: string):    string = X blake2b
proc sha512*(data: string):     string = X sha512
proc sha224*(data: string):     string = X sha224
proc blake2s*(data: string):    string = X blake2s
proc sha512_256*(data: string): string = X sha512_256
proc whirlpool*(data: string):  string = X whirlpool
proc ripemd160*(data: string):  string = X ripemd160
proc sha384*(data: string):     string = X sha384
proc sha1*(data: string):       string = X sha1
proc sha256*(data: string):     string = X sha256
proc sm3*(data: string):        string = X sm3
proc sha3_224*(data: string):   string = X sha3_224

proc pbkdf2_hmac*(hash_name, password, salt: string; iterations, dklen: int): string = X pbkdf2_hmac, hash_name, password, salt, iterations, dklen
proc pbkdf2_hmac*(hash_name, password, salt: string; iterations: int): string = X pbkdf2_hmac, hash_name, password, salt, iterations


scrypt(password, *, salt, n, r, p, maxmem=0, dklen=64

blake2b(data=b'', *, digest_size=64, key=b'', salt=b'', person=b'', fanout=1, depth=1, leaf_size=0, node_offset=0, node_depth=0, inner_size=0, last_node=False, usedforsecurity=True)
blake2s(data=b'', *, digest_size=32, key=b'', salt=b'', person=b'', fanout=1, depth=1, leaf_size=0, node_offset=0, node_depth=0, inner_size=0, last_node=False, usedforsecurity=True)¶


TODO: finish
