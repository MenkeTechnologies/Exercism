<?php

function encode(string $input): string
{
    $alphabet = implode('', range('a', 'z'));
    $ciphers = strrev($alphabet);
    $input = preg_replace('/\W/', '', strtolower($input));
    $translation = strtr($input, $alphabet, $ciphers);
    return wordwrap($translation, 5, ' ', true);
}

