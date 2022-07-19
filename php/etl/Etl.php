<?php

function transform(array $input): array
{
    $r = [];
    foreach ($input as $k => $values) {
        foreach ($values as $v) {
            $r[strtolower($v)] = $k;
        }
    }
    return $r;
}

