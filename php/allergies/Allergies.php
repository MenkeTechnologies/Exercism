<?php

class Allergen
{
    public const EGGS = 1;
    public const PEANUTS = 2;
    public const SHELLFISH = 4;
    public const STRAWBERRIES = 8;
    public const TOMATOES = 16;
    public const CHOCOLATE = 32;
    public const POLLEN = 64;
    public const CATS = 128;

    public function __construct(private int $score)
    {
    }
    public static function allergenList(): array
    {
        return array_map(static fn ($allergen) => new Allergen($allergen),
            (new ReflectionClass(__CLASS__))->getConstants());
    }
    public function getScore(): int
    {
        return $this->score;
    }
}

class Allergies
{
    public function __construct(private int $mask)
    {
    }

    public function isAllergicTo(Allergen $allergen): bool
    {
        return $this->mask & $allergen->getScore();
    }
    public function getList(): array
    {
        return array_filter(Allergen::allergenList(), fn ($allergen) => $this->isAllergicTo($allergen));
    }
}

