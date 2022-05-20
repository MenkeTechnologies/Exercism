using System;
using System.Linq;

public class DndCharacter
{
    
    private readonly static Random rng = new Random(DateTime.Now.Millisecond);

    public int Strength { get; }
    public int Dexterity { get; }
    public int Constitution { get; }
    public int Intelligence { get; }
    public int Wisdom { get; }
    public int Charisma { get; }
    public int Hitpoints { get; }

    private DndCharacter(int strength, int dexterity, int constitution, int intelligence, int wisdom, int charisma)
    {
        Strength = strength;
        Dexterity = dexterity;
        Constitution = constitution;
        Intelligence = intelligence;
        Wisdom = wisdom;
        Charisma = charisma;
        Hitpoints = 10 + Modifier(constitution);
    }

    public static int Modifier(int score) => (int)Math.Floor((score - 10) * 0.5);
    
    private static int RollDie() => rng.Next(1, 7);

    public static int Ability() =>
        new[] { RollDie(), RollDie(), RollDie(), RollDie() }
            .OrderByDescending(v => v)
            .Take(3)
            .Sum();

    public static DndCharacter Generate() =>
        new(
            Ability(), Ability(),
            Ability(), Ability(),
            Ability(), Ability()
        );
}
