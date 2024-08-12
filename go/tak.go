package main

import (
	"fmt"
	"os"
	"strconv"
)

func tak(x, y, z int) int {
	if y < x {
		return tak(
			tak(x-1, y, z),
			tak(y-1, z, x),
			tak(z-1, x, y),
		)
	} else {
		return z
	}
}

func main() {
	x, _ := strconv.Atoi(os.Args[1])
	y, _ := strconv.Atoi(os.Args[2])
	z, _ := strconv.Atoi(os.Args[3])
	fmt.Printf("%d\n", tak(x, y, z))
}
