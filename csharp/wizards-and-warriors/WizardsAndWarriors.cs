using System;

abstract class Character
{

    private string characterType;

    protected Character(string characterType)
    {
        this.characterType = characterType;
    }

    public abstract int DamagePoints(Character target);

    public virtual bool Vulnerable() => false;

    public override string ToString() => $"Character is a {characterType}";
}

class Warrior : Character
{
    public Warrior() : base("Warrior")
    {
    }

    public override int DamagePoints(Character target) => target.Vulnerable() ? 10 : 6;
}

class Wizard : Character
{
    private bool spellPrepared = false;

    public Wizard() : base("Wizard")
    {
    }

    public override int DamagePoints(Character target) => spellPrepared ? 12 : 3;

    public override bool Vulnerable() => !spellPrepared;

    public void PrepareSpell()
    {
        spellPrepared = true;
    }
}
