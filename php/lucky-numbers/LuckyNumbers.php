<?php
class LuckyNumbers {
    public function sumUp(array $digitsOfNumber1, array $digitsOfNumber2): int {
        return intval(implode('', $digitsOfNumber1)) + intval(implode($digitsOfNumber2));
    }
    public function isPalindrome(int $number): bool {
        return intval(strrev(strval($number))) === $number;
    }
    public function validate(string $input): string {
        if ($input === '')
            return 'Required field';
        if (!is_numeric(intval($input)) || intval($input) <= 0)
            return 'Must be a whole number larger than 0';
        return '';
    }
}
