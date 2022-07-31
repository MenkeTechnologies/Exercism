<?php

function acronym(string $input): string
{
    $subject = preg_replace('/([a-z])([A-Z])/', '$1 $2', $input);
    preg_match_all("/\w+/u", $subject, $matches);
    $acronyms = array_map(fn($s) => mb_strtoupper(mb_substr($s, 0, 1)), $matches[0]);
    return count($acronyms) > 1 ? implode('', $acronyms) : '';
}
