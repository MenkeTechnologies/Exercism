<?php
declare(strict_types=1);
class Strain
{
    public function keep(array $lst, callable $predicate): array
    {
        $kept = [];
        foreach ($lst as $item) {
            if ($predicate($item)) {
                $kept[] = $item;
            }
        }

        return $kept;
    }
    public function discard(array $lst, callable $predicate): array
    {
        $kept = [];
        foreach ($lst as $item) {
            if (!$predicate($item)) {
                $kept[] = $item;
            }
        }

        return $kept;
    }
}

