using System;

public class BankAccount
{
    private decimal _balance;
    private readonly object _balanceLock = new();

    private bool Active { get; set; }

    public void Open()
    {
        Active = true;
        _balance = 0;
    }

    public void Close() => Active = false;
    public decimal Balance => !Active ? throw new InvalidOperationException() : _balance;

    public void UpdateBalance(decimal change)
    {
        lock (_balanceLock) _balance += change;
    }
}
