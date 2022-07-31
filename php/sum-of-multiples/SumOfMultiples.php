<?php

function sumOfMultiples(int $number, array $multiples): int
{
    return array_sum(array_filter(
        range(1, $number - 1),
        function ($potentialMultiple) use ($multiples) {
            foreach($multiples as $multiple) {
                if ($multiple !== 0 && $potentialMultiple % $multiple === 0) {
                    return true;
                }
            }
            return false;
        },
        )
    );
}

