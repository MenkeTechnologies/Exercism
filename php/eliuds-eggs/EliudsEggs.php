<?php

declare(strict_types=1);

class EliudsEggs
{
    public function eggCount(int $displayValue): int
    {
        $cnt = 0;
        while ($displayValue > 0) {
            $cnt += $displayValue & 1;
            $displayValue >>= 1;
        }

        return $cnt;
    }
}

