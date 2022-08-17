import spock.lang.*

class ScrabbleScoreSpec extends Specification {

    def "Lowercase letter"() {
        expect:
        ScrabbleScore.scoreWord(word) == expected

        where:
        word || expected
        'a'  || 1
    }

    
    def "Uppercase letter"() {
        expect:
        ScrabbleScore.scoreWord(word) == expected

        where:
        word || expected
        'A'  || 1
    }

    
    def "Valuable letter"() {
        expect:
        ScrabbleScore.scoreWord(word) == expected

        where:
        word || expected
        'f'  || 4
    }

    
    def "Empty input"() {
        expect:
        ScrabbleScore.scoreWord(word) == expected

        where:
        word || expected
        ''   || 0
    }

    @Unroll
    
    def "Score for word #word should be #expected"() {
        expect:
        ScrabbleScore.scoreWord(word) == expected

        where:
        word                         || expected
        'at'                         || 2
        'zoo'                        || 12
        'street'                     || 6
        'quirky'                     || 22
        'OxyphenButazone'            || 41
        'pinata'                     || 8
        'abcdefghijklmnopqrstuvwxyz' || 87
    }

}
