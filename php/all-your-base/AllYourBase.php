<?php
function rebase($from_base, $sequence, $to_base) {
    if ($sequence == [] || reset($sequence) == 0 || $from_base < 2 || $to_base < 2
        || count(array_filter($sequence, fn ($num) => $num < 0 || $num >= $from_base)) > 0) {
        return null;
    }

	$number = array_reduce($sequence, fn ($acc, $digit) => $acc * $from_base + $digit, 0);
    $result = [];
    while ($number) {

        array_unshift($result, $number % $to_base);
        $number = intdiv($number, $to_base);
    }
    return $result;

}
