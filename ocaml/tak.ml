let rec tak x y z =
  if y < x then
    tak (tak (x - 1) y z)
        (tak (y - 1) z x)
        (tak (z - 1) x y)
  else
    z

let () =
  let x = int_of_string Sys.argv.(1)
  and y = int_of_string Sys.argv.(2)
  and z = int_of_string Sys.argv.(3) in
  print_int (tak x y z);
  print_newline ()

