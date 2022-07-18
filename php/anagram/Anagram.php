<?php

declare(strict_types=1);

function detectAnagrams(string $word, array $candidates): array
{
    $word = mb_strtolower($word);
    $len = count_chars($word);
    return array_values(
        array_filter(
            $candidates, function ($candidate) use ($word, $len) {
                $lc= mb_strtolower($candidate);
                return $word !== $lc && $len === count_chars($lc);
            }
        )
    );
}
