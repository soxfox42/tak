# cython: boundscheck=False, wraparound=False
import sys
cimport cython

@cython.cfunc
@cython.locals(x=cython.int, y=cython.int, z=cython.int)
def tak(x, y, z):
    if y < x:
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        )
    else:
        return z

def main():
    cdef int x, y, z
    x = int(sys.argv[1])
    y = int(sys.argv[2])
    z = int(sys.argv[3])
    print(tak(x, y, z))

