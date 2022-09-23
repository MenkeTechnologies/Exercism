unit module ArmstrongNumbers;

sub is-armstrong-number ($n) is export {
    my $len = $n.chars;
    $n == $n.comb.map(* ** $len).sum
}

