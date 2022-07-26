<?php

declare(strict_types=1);

function isValid(string $number): bool
{
    $number = str_replace(' ', '', $number);

    if (!preg_match('/^[0-9]+$/', $number) || strlen($number) < 2) {
        return false;
    }

    $values = array_reverse(str_split($number));

    array_walk($values, function(&$n, $i) {
        $n = (int) $n;
        if ($i % 2 == 0) {
            return;
        }
        $n *= 2;
        if ($n > 9) {
            $n -= 9;
        }
    });
    return array_sum($values) % 10 == 0;
}

