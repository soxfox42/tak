package main

import "core:fmt"
import "core:os"
import "core:strconv"

tak :: proc(x, y, z: int) -> int {
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

main :: proc() {
	x, _ := strconv.parse_int(os.args[1])
	y, _ := strconv.parse_int(os.args[2])
	z, _ := strconv.parse_int(os.args[3])
	fmt.println(tak(x, y, z))
}
