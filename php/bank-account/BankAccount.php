<?php

declare(strict_types=1);

class BankAccount
{
    public bool $opened = false;
    public int $balance = 0;

    public function open()
    {
        if ($this->opened) throw new Exception("account already open");
        $this->opened = true;
        $this->balance = 0;
    }

    public function close()
    {
        if (!$this->opened) throw new Exception("account not open");
        $this->opened = false;
    }

    public function balance(): int
    {
        if (!$this->opened) throw new Exception("account not open");
        return $this->balance;
    }

    public function deposit(int $amt)
    {
        if (!$this->opened) throw new Exception("account not open");
        if ($amt < 1) throw new InvalidArgumentException("amount must be greater than 0");

        $this->balance += $amt;
    }

    public function withdraw(int $amt)
    {
        if (!$this->opened) throw new Exception("account not open");
        if ($amt < 1) throw new InvalidArgumentException("amount must be greater than 0");
        if ($this->balance < $amt) throw new InvalidArgumentException("amount must be less than balance");
        $this->balance -= $amt;
    }
}
