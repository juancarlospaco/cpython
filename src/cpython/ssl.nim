## * https://docs.python.org/3.10/library/ssl.html
import nimpy

template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("ssl").simbol.to(tipe)

SSL_ERROR_ZERO_RETURN        := int
SSL_ERROR_WANT_READ          := int
SSL_ERROR_WANT_WRITE         := int
SSL_ERROR_WANT_X509_LOOKUP   := int
SSL_ERROR_SYSCALL            := int
SSL_ERROR_SSL                := int
SSL_ERROR_WANT_CONNECT       := int
SSL_ERROR_EOF                := int
SSL_ERROR_INVALID_ERROR_CODE := int
OPENSSL_VERSION_NUMBER       := int
OPENSSL_VERSION              := string
