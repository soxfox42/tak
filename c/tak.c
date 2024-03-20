#include <stdio.h>
#include <stdlib.h>

int tak(int x, int y, int z) {
    if (y < x) {
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y)
        );
    }
    return z;
}

int main(int argc, char **argv) {
    int x = atoi(argv[1]), y = atoi(argv[2]), z = atoi(argv[3]);
    printf("%d\n", tak(x, y, z));
}
