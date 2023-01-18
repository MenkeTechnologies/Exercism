<?php
function sieve(int $limit): array
{
    $lst = range($offset = 2, $limit);
    foreach ($lst as $value) {
        for ($i = ($value * 2) - $offset; $i <= $limit; $i += $value) {
            unset($lst[(int) $i]);
        }
    }
    return array_values($lst);
}

