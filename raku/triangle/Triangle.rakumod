sub is-triangle ( $a, $b, $c ) {
        $a + $b >= $c
    and $b + $c >= $a
    and $a + $c >= $b
    and (all $a, $b, $c) != 0
}
sub is-equilateral ( $a, $b, $c ) is export {
    is-triangle $a, $b, $c and (unique $a, $b, $c) == 1
}
sub is-isosceles ( $a, $b, $c ) is export {
    is-triangle $a, $b, $c and (unique $a, $b, $c) <= 2
}
sub is-scalene ( $a, $b, $c ) is export {
    is-triangle $a, $b, $c and (unique $a, $b, $c) == 3
}
