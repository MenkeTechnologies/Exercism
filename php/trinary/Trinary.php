<?php

function toDecimal(string $input): int
{
    if (preg_match('/[^0-2]/', $input)) {
        return 0;
    }
    $sum = 0;
    $ary = str_split($input);
    foreach ($ary as $value) {
        $sum = $sum * 3 + $value;
    }
    return $sum;
}

