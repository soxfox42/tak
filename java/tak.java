class Tak {
    static int tak(int x, int y, int z) {
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

    public static void main(String[] args) {
        int x = Integer.parseInt(args[0]);
        int y = Integer.parseInt(args[1]);
        int z = Integer.parseInt(args[2]);

        System.out.println(tak(x, y, z));
    }
}
