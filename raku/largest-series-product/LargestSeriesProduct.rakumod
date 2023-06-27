sub largest-product ($number, $span) is export {

    die "Invalid span" if $span < 0 || $span > $number.chars;
    return 1 if $span == 0;

    $number
        .comb
        .map(*.Int)
        .rotor($span => 1 - $span)
        .map(*.reduce(&infix:<*>))
        .max;
}
