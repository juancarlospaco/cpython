## * https://docs.python.org/3.10/library/hashlib.html
from std/os import splitFile
import nimpy
let module = nimpy.pyImport(static(currentSourcePath().splitFile.name))

template X(simbol; a): auto =
  when declared result: module.simbol(a).to(type(result)) else: discard module.simbol(a)
template X(simbol; a, b, c, d): auto =
  when declared result: module.simbol(a, b, c, d).to(type(result)) else: discard module.simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: module.simbol(a, b, c, d, e).to(type(result)) else: discard module.simbol(a, b, c, d, e)

proc sha3_512*(data: string):   string = X sha3_512, data
proc shake_256*(data: string):  string = X shake_256, data
proc shake_128*(data: string):  string = X shake_128, data
proc md5*(data: string):        string = X md5, data
proc sha512_224*(data: string): string = X sha512_224, data
proc mdc2*(data: string):       string = X mdc2, data
proc sha3_384*(data: string):   string = X sha3_384, data
proc md4*(data: string):        string = X md4, data
proc sha3_256*(data: string):   string = X sha3_256, data
proc blake2b*(data: string):    string = X blake2b, data
proc sha512*(data: string):     string = X sha512, data
proc sha224*(data: string):     string = X sha224, data
proc blake2s*(data: string):    string = X blake2s, data
proc sha512_256*(data: string): string = X sha512_256, data
proc whirlpool*(data: string):  string = X whirlpool, data
proc ripemd160*(data: string):  string = X ripemd160, data
proc sha384*(data: string):     string = X sha384, data
proc sha1*(data: string):       string = X sha1, data
proc sha256*(data: string):     string = X sha256, data
proc sm3*(data: string):        string = X sm3, data
proc sha3_224*(data: string):   string = X sha3_224, data

proc pbkdf2_hmac*(hash_name, password, salt: string; iterations, dklen: int): string = X pbkdf2_hmac, hash_name, password, salt, iterations, dklen
proc pbkdf2_hmac*(hash_name, password, salt: string; iterations: int): string = X pbkdf2_hmac, hash_name, password, salt, iterations


# scrypt(password, *, salt, n, r, p, maxmem=0, dklen=64

# blake2b(data=b'', *, digest_size=64, key=b'', salt=b'', person=b'', fanout=1, depth=1, leaf_size=0, node_offset=0, node_depth=0, inner_size=0, last_node=False, usedforsecurity=True)
# blake2s(data=b'', *, digest_size=32, key=b'', salt=b'', person=b'', fanout=1, depth=1, leaf_size=0, node_offset=0, node_depth=0, inner_size=0, last_node=False, usedforsecurity=True)¶


# TODO: finish
