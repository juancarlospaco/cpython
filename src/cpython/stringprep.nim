## https://docs.python.org/3.12/library/stringprep.html
import nimpy

template X(simbol): bool = nimpy.pyImport("stringprep").simbol(s).to(bool)

proc in_table_a1*(s: string): bool      = X in_table_a1
proc in_table_b1*(s: string): bool      = X in_table_b1
proc in_table_c11*(s: string): bool     = X in_table_c11
proc in_table_c12*(s: string): bool     = X in_table_c12
proc in_table_c11_c12*(s: string): bool = X in_table_c11_c12
proc in_table_c21*(s: string): bool     = X in_table_c21
proc in_table_c22*(s: string): bool     = X in_table_c22
proc in_table_c21_c22*(s: string): bool = X in_table_c21_c22
proc in_table_c3*(s: string): bool      = X in_table_c3
proc in_table_c4*(s: string): bool      = X in_table_c4
proc in_table_c5*(s: string): bool      = X in_table_c5
proc in_table_c6*(s: string): bool      = X in_table_c6
proc in_table_c7*(s: string): bool      = X in_table_c7
proc in_table_c8*(s: string): bool      = X in_table_c8
proc in_table_c9*(s: string): bool      = X in_table_c9
proc in_table_d1*(s: string): bool      = X in_table_d1
proc in_table_d2*(s: string): bool      = X in_table_d2
