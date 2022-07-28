<?php

function square(int $n): string
{
    if ($n < 1 || $n > 64) throw new \InvalidArgumentException("$n is not on board [1..64]");
    return sprintf("%lu", 2 ** ($n - 1));
}

function total(): string
{
    return sprintf("%lu", (1 << 64) - 1);
}

