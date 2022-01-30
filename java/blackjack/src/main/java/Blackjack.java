import java.util.Map;
import java.util.stream.Stream;

public class Blackjack {
    private static final Map<String, Integer> CARDS = Map.ofEntries(
            Map.entry("ace", 11),
            Map.entry("two", 2),
            Map.entry("three", 3),
            Map.entry("four", 4),
            Map.entry("five", 5),
            Map.entry("six", 6),
            Map.entry("seven", 7),
            Map.entry("eight", 8),
            Map.entry("nine", 9),
            Map.entry("ten", 10),
            Map.entry("jack", 10),
            Map.entry("queen", 10),
            Map.entry("king", 10)
    );
    private final String STAND = "S";
    private final String HIT = "H";
    private final String SPLIT = "P";
    private final String AUTOMATICALLY_WIN = "W";

    public int parseCard(String card) {
        if (!CARDS.containsKey(card)) throw new IllegalArgumentException(String.format("Unknown card '%s'", card));
        return CARDS.get(card);
    }

    public boolean isBlackjack(String card1, String card2) {
        return Stream.of(card1, card2).mapToInt(this::parseCard).sum() == 21;
    }

    public String largeHand(boolean isBlackjack, int dealerScore) {
        return !isBlackjack ? SPLIT : dealerScore < 10 ? AUTOMATICALLY_WIN : STAND;
    }

    public String smallHand(int handScore, int dealerScore) {
        return handScore >= 17 ? STAND : handScore <= 11 ? HIT : dealerScore >= 7 ? HIT :
                STAND;
    }

    public String firstTurn(String card1, String card2, String dealerCard) {
        int handScore = parseCard(card1) + parseCard(card2);
        int dealerScore = parseCard(dealerCard);

        return handScore > 20 ? largeHand(isBlackjack(card1, card2), dealerScore) :
                smallHand(handScore, dealerScore);
    }
}
