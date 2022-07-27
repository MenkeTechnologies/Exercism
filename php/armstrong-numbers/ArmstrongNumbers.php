<?php

function isArmstrongNumber(int $number): bool
{
    $digits = str_split((string) $number);
    $mapped = array_map(fn ($digit) =>
      intVal($digit) ** count($digits)
    , $digits);

    return array_sum($mapped) === $number;
}
