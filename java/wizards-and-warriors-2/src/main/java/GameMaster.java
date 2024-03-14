public class GameMaster {

    public String describe(Character c) {
        return "You're a level %d %s with %d hit points.".formatted(c.getLevel(), c.getCharacterClass(), c.getHitPoints());
    }

    public String describe(Destination d) {
        return "You've arrived at %s, which has %d inhabitants.".formatted(d.getName(), d.getInhabitants());
    }

    public String describe(TravelMethod tm) {
        return "You're traveling to your destination %s.".formatted(tm == TravelMethod.WALKING ? "by walking" : "on horseback");
    }

    public String describe(Character c, Destination d, TravelMethod tm) {
        return "%s %s %s".formatted(describe(c), describe(tm), describe(d));
    }

    public String describe(Character c, Destination d) {
        return "%s %s %s".formatted(describe(c), describe(TravelMethod.WALKING), describe(d));
    }
}
