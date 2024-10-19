function tak(x, y, z) {
    if (y < x) {
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y)
        );
    } else {
        return z;
    }
}

// Get arguments from the command line
const [_, x, y, z] = scriptArgs.map(Number);

console.log(tak(x, y, z));

