module tak.app;

import std.conv;
import std.stdio;

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


void main(string[] args) {
	writeln(tak(
		parse!int(args[1]),
		parse!int(args[2]),
		parse!int(args[3])
	));
}
