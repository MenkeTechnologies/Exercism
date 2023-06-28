sub series ($string, $length where 1..$string.chars) is export {
    $string.comb.rotor($length => 1 - $length).map(*.join);
}

