<?php

declare(strict_types=1);
class PhoneNumber
{
    public function __construct(string $user_entered)
    {
        $this->numbers = preg_replace('/[ +\-\(\).]/', '', $user_entered);
        $this->numbers = strlen($this->numbers) === 10 ? '1' . $this->numbers : $this->numbers;
        $err = match (true) {
            !!preg_match('/[A-Za-z]/', $this->numbers) => 'letters not permitted',
            !!preg_match('/[@:!]/', $this->numbers) => 'punctuations not permitted',
            strlen($this->numbers) < 11 => 'incorrect number of digits',
            strlen($this->numbers) > 11 => 'more than 11 digits',
            $this->numbers[0] !== '1' =>  '11 digits must start with 1',
            $this->numbers[1] === '0' => 'area code cannot start with zero',
            $this->numbers[1] === '1' => 'area code cannot start with one',
            $this->numbers[4] === '0' => 'exchange code cannot start with zero',
            $this->numbers[4] === '1' => 'exchange code cannot start with one',
            default => ''
        };
        if ($err) {
            throw new InvalidArgumentException($err);
        }
    }
    public function number(): string
    {
        return substr($this->numbers, 1);
    }
}
