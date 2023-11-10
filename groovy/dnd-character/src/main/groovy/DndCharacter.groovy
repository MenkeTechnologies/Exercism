class DndCharacter {
    def rand = new Random()
    def strength
    def dexterity
    def constitution
    def intelligence
    def wisdom
    def charisma
    def hitpoints

    DndCharacter() {
        strength = ability()
        dexterity = ability()
        constitution = ability()
        intelligence = ability()
        wisdom = ability()
        charisma = ability()
        hitpoints = 10 + modifier(constitution)
    }

    int ability() {
        rand.ints(4, 1, 7).sorted().skip(1).sum()
    }

    static int modifier(int input) {
        Math.floorDiv(input - 10, 2)
    }

}
