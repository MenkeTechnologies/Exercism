<?php

function getClassification(int $n): string
{
    if ($n < 1) {
        throw new InvalidArgumentException('Only positive integers allowed.');
    }
    $sum = 0;
    $max = intdiv($n, 2);
    for ($i = 1; $i <= $max; $i++) {
        $sum += $n % $i == 0 ? $i : 0;
    }

    if ($sum === $n && $sum !== 1) {
        return 'perfect';
    }
    return $sum > $n ? 'abundant' : 'deficient';
}
