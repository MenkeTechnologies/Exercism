using System;

public class Player
{
    private readonly Random r = new();

    public int RollDie() => r.Next(1, 18);

    public double GenerateSpellStrength() => r.NextDouble() * 100.0;
}
