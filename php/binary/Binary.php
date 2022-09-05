<?php
declare(strict_types=1);

function parse_binary(string $s): int
{
    if (preg_match("/[^01]/", $s)) {
        throw new InvalidArgumentException('Not a binary string.');
    }

    $sum = 0;
    foreach (str_split($s) as $c) {
        $sum = $sum * 2 + (ord($c) - ord('0'));
    }
    return $sum;
}

