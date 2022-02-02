abstract class Fighter {

    boolean isVulnerable() {
        return false;
    }

    abstract int damagePoints(Fighter fighter);

}

class Warrior extends Fighter {

    @Override
    public String toString() {
        return "Fighter is a Warrior";
    }

    @Override
    int damagePoints(Fighter wizard) {
        return wizard.isVulnerable() ? 10 : 6;
    }
}

class Wizard extends Fighter {

    boolean hasPreparedSpell = false;

    @Override
    boolean isVulnerable() {
        return !hasPreparedSpell;
    }

    @Override
    int damagePoints(Fighter warrior) {
        return hasPreparedSpell? 12 : 3;
    }

    void prepareSpell() {
        hasPreparedSpell = true;
    }

}
