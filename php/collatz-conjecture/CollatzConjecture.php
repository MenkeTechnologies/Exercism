<?php

declare(strict_types=1);

function steps(int $n): int
{
    if ($n <= 0) {
        throw new InvalidArgumentException('Only positive numbers are allowed');
    }
    $step = 0;
    while ($n > 1) {
        $n = $n % 2 === 0 ? $n / 2 : 3 * $n + 1;
        ++$step;
    }
    return $step;
}
