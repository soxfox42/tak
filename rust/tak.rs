use std::env;

fn tak(x: i32, y: i32, z: i32) -> i32 {
    if y < x {
        return tak(tak(x - 1, y, z), tak(y - 1, z, x), tak(z - 1, x, y));
    }
    z
}

fn main() {
    let args: Vec<String> = env::args().collect();

    let x: i32 = args[1].parse().unwrap();
    let y: i32 = args[2].parse().unwrap();
    let z: i32 = args[3].parse().unwrap();

    println!("{}", tak(x, y, z));
}
