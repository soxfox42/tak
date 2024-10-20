import "os" for Process

class Tak{
    static compute(x, y, z) {
        if (y < x) {
            return Tak.compute(
                Tak.compute(x - 1, y, z),
                Tak.compute(y - 1, z, x),
                Tak.compute(z - 1, x, y)
            )
        }
        return z
    }
}

var args = Process.arguments

var x = Num.fromString(args[0])
var y = Num.fromString(args[1])
var z = Num.fromString(args[2])

System.print(Tak.compute(x, y, z))

