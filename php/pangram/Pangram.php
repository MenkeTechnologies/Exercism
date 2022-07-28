<?php

function isPangram(string $s): bool
{
    return empty(array_diff(range('a', 'z'),
        str_split(strtolower($s))));
}
