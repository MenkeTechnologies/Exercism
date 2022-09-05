<?php

declare(strict_types=1);
function factors(int $number): array
{
    $factors = [];
    $divisor = 2;

    while ($number > 1) {
        while ($number % $divisor == 0){
            array_push($factors, $divisor);
            $number /= $divisor;
        }
        ++$divisor;
    }
    return $factors;
}

