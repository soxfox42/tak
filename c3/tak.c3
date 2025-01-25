import std::io;

fn int tak(int x, int y, int z) {
    if (y < x) {
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        );
    } else {
        return z;
    }
}

fn void main(String[] args) {
    int! x = args[1].to_int();
    int! y = args[2].to_int();
    int! z = args[3].to_int();

    if (try result = tak(x, y, z)) {
        io::printn(result);
    }
}
