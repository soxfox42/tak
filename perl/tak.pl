use v5.34;

sub tak {
  my ($x, $y, $z) = @_;
  return tak(
    tak($x - 1, $y, $z),
    tak($y - 1, $z, $x),
    tak($z - 1, $x, $y),
  ) if $y < $x;
  return $z;
}

my ($x, $y, $z) = @ARGV;
say tak($x, $y, $z);
