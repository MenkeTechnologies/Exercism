import java.util.Random;

class DnDCharacter {
    Random rand;
    private final int strength;
    private final int dexterity;
    private final int constitution;
    private final int intelligence;
    private final int wisdom;
    private final int charisma;

    public DnDCharacter() {
        rand = new Random();
        strength = ability();
        dexterity = ability();
        constitution = ability();
        intelligence = ability();
        wisdom = ability();
        charisma = ability();
    }

    int ability() {
        return rand.ints(4, 1, 7)
                .sorted().skip(1).sum();
    }

    public int getStrength() {
        return strength;
    }

    public int getDexterity() {
        return dexterity;
    }

    public int getConstitution() {
        return constitution;
    }

    public int getIntelligence() {
        return intelligence;
    }

    public int getWisdom() {
        return wisdom;
    }

    public int getCharisma() {
        return charisma;
    }

    int modifier(int input) {
        return Math.floorDiv(input - 10, 2);
    }

    public int getHitpoints() {
        return 10 + modifier(constitution);
    }
}
