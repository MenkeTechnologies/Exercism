<?php

declare(strict_types=1);

function find(int $search, array $lst): int
{
    $lo = 0;
    $hi = count($lst);

    while($lo < $hi) {

        $mid = intdiv($lo + $hi, 2);
        $val = $lst[$mid];

        if ($search > $val) {
            $lo = $mid + 1;
        } else if ($search < $val) {
            $hi = $mid;
        } else {
            return $mid;
        }
    }
    return -1;
}

