<?php
declare(strict_types=1);
class DndCharacter
{
    private const ABILITIES = [
        'strength',
        'dexterity',
        'constitution',
        'intelligence',
        'wisdom',
        'charisma'
    ];
    public int $ability;
    public int $strength;
    public int $dexterity;
    public int $constitution;
    public int $intelligence;
    public int $wisdom;
    public int $charisma;
    private const HITPOINTS = 10;
    private const THROWS = 3;
    private const MIN_SUM_DICES = 1 * self::THROWS;
    private const MAX_SUM_DICES = 6 * self::THROWS;
    public static function ability(): int
    {
        return self::throwAndSumDices();
    }
    public static function generate(): stdClass
    {
        $character = new stdClass();
        foreach (self::ABILITIES as $ability) {
            $character->{$ability} = self::throwAndSumDices();
        }
        $character->hitpoints = self::HITPOINTS + self::modifier($character->constitution);
        return $character;
    }
    public static function modifier(int $input): int
    {
        return (int) floor(($input - self::HITPOINTS) / 2);
    }
    private static function throwAndSumDices(): int
    {
        return random_int(self::MIN_SUM_DICES, self::MAX_SUM_DICES);
    }
}

