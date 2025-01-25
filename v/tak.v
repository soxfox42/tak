import os
import strconv

fn tak(x int, y int, z int) int {
	if y < x {
		return tak(
			tak(x - 1, y, z),
			tak(y - 1, z, x),
			tak(z - 1, x, y),
		)
	} else {
		return z
	}
}

fn main() {
	x := strconv.atoi(os.args[1])!
	y := strconv.atoi(os.args[2])!
	z := strconv.atoi(os.args[3])!
	println(tak(x, y, z))
}

