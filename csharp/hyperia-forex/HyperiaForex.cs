using System;

public struct CurrencyAmount(decimal amount, string currency)
{
    private readonly decimal amount = amount;
    private readonly string currency = currency;

    private bool Equals(CurrencyAmount other) => currency == other.currency
        ? amount == other.amount
        : throw new ArgumentException("Currency types do not match in equals operation.");

    public static bool operator ==(CurrencyAmount lhs, CurrencyAmount rhs) => lhs.Equals(rhs);

    public static bool operator !=(CurrencyAmount lhs, CurrencyAmount rhs) => !lhs.Equals(rhs);

    public static bool operator <(CurrencyAmount lhs, CurrencyAmount rhs) => lhs.currency == rhs.currency
        ? lhs.amount < rhs.amount
        : throw new ArgumentException("Currency types do not match in less than operation.");

    public static bool operator >(CurrencyAmount lhs, CurrencyAmount rhs) => lhs.currency == rhs.currency
        ? lhs.amount > rhs.amount
        : throw new ArgumentException("Currency types do not match in greater than operation.");

    public static decimal operator +(CurrencyAmount lhs, CurrencyAmount rhs) => lhs.currency == rhs.currency
        ? lhs.amount + rhs.amount
        : throw new ArgumentException("Currency types do not match in addition operation.");

    public static decimal operator -(CurrencyAmount lhs, CurrencyAmount rhs) => lhs.currency == rhs.currency
        ? lhs.amount - rhs.amount
        : throw new ArgumentException("Currency types do not match in subtraction operation.");

    public static implicit operator decimal(CurrencyAmount other) => other.amount;
    public static implicit operator double(CurrencyAmount other) => (double)other.amount;
}
