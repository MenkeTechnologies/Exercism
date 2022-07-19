<?php

function nucleotideCount(string $input): array
{
    $dict = [
        'a' => 0,
        'c' => 0,
        't' => 0,
        'g' => 0,
    ];
    foreach ($dict as $nt => &$value) {
        $value = substr_count(strtolower($input), $nt);
    }
    return $dict;
}

