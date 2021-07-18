## * https://docs.python.org/3.10/library/binascii.html
import nimpy
template X(simbol; a):          auto = nimpy.pyImport("binascii").simbol(a).to(type(result))
template X(simbol; a, b):       auto = nimpy.pyImport("binascii").simbol(a, b).to(type(result))
template X(simbol; a, b, c):    auto = nimpy.pyImport("binascii").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d): auto = nimpy.pyImport("binascii").simbol(a, b, c, d).to(type(result))
proc hexlify*(data: string):        string = X hexlify, data
proc a2b_hex*(data: string):        string = X a2b_hex, data
proc unhexlify*(data: string):      string = X unhexlify, data
proc b2a_hex*(data: string):        string = X b2a_hex, data
proc a2b_uu*(s: string):            string = X a2b_uu, s
proc b2a_uu*(s: string):            string = X b2a_uu, s
proc a2b_base64*(s: string):        string = X a2b_base64, s
proc b2a_base64*(s: string):        string = X b2a_base64, s
proc a2b_hqx*(s: string):           string = X a2b_hqx, s
proc rledecode_hqx*(s: string):     string = X rledecode_hqx, s
proc rlecode_hqx*(s: string):       string = X rlecode_hqx, s
proc b2a_hqx*(s: string):           string = X b2a_hqx, s
proc crc_hqx*(data, value: string): string = X crc_hqx, data, value
proc crc32*(data, value: string):   string = X crc32, data, value
proc crc32*(data: string):          string = X crc32, data
proc a2b_qp*(s: string; header=false): string = X a2b_qp, s, header
proc b2a_hex*(data: string; sep: char; bytes_per_sep = 1): string = X b2a_hex, data, sep, bytes_per_sep
proc hexlify*(data: string; sep: char; bytes_per_sep = 1): string = X hexlify, data, sep, bytes_per_sep
proc b2a_qp*(s: string; quotetabs=false; istext=true, header=false): string = X b2a_qp, s, quotetabs, istext, header
