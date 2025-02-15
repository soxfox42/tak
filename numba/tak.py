from numba import jit
import sys


@jit
def tak(x, y, z):
    if y < x:
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        )
    else:
        return z


x, y, z = int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3])
print(tak(x, y, z))
