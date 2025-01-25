use v6;

sub tak(Int $x, Int $y, Int $z) {
  return tak(
    tak($x - 1, $y, $z),
    tak($y - 1, $z, $x),
    tak($z - 1, $x, $y),
  ) if $y < $x;
  return $z;
}

sub MAIN($x, $y, $z) {
  say tak($x, $y, $z);
}
