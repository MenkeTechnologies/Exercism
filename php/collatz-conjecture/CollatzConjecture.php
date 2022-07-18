<?php

declare(strict_types=1);

function steps(int $n): int
{
    if ($n <= 0) {
        throw new InvalidArgumentException('Only positive numbers are allowed');
    }
    for ($step = 0; $n !== 1; ++$step) {
        $n = $n % 2 === 0 ? $n / 2 : 3 * $n + 1;
    }
    return $step;
}
