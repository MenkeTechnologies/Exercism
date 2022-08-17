import spock.lang.*

class PangramSpec extends Specification {

    def "Empty sentence"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence || expected
        ''       || false
    }

    
    def "Perfect lower case"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                     || expected
        'abcdefghijklmnopqrstuvwxyz' || true
    }

    
    def "Only lower case"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                      || expected
        'the quick brown fox jumps over the lazy dog' || true
    }

    
    def "Missing the letter 'x'"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                                      || expected
        'a quick movement of the enemy will jeopardize five gunboats' || false
    }

    
    def "Missing the letter 'h'"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                 || expected
        'five boxing wizards jump quickly at it' || false
    }

    
    def "With underscores"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                      || expected
        'the_quick_brown_fox_jumps_over_the_lazy_dog' || true
    }

    
    def "With numbers"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                           || expected
        'the 1 quick brown fox jumps over the 2 lazy dogs' || true
    }

    
    def "Missing letters replaced by numbers"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                      || expected
        '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog' || false
    }

    
    def "Mixed case and punctuation"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                   || expected
        '"Five quacking Zephyrs jolt my wax bed."' || true
    }

    
    def "Case insensitive"() {
        expect:
        Pangram.isPangram(sentence) == expected

        where:
        sentence                                      || expected
        'the quick brown fox jumps over with lazy FX' || false
    }

}