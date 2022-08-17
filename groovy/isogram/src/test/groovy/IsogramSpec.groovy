import spock.lang.*

class IsogramSpec extends Specification {

    def "Empty string"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase || expected
        ''     || true
    }

    
    def "Isogram with only lower case characters"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase    || expected
        'isogram' || true
    }

    
    def "Word with one duplicated character"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase   || expected
        'eleven' || false
    }

    
    def "Word with one duplicated character from the end of the alphabet"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase  || expected
        'zzyzx' || false
    }

    
    def "Longest reported english isogram"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase              || expected
        'subdermatoglyphic' || true
    }

    
    def "Word with duplicated character in mixed case"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase     || expected
        'Alphabet' || false
    }

    
    def "Word with duplicated character in mixed case, lowercase first"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase     || expected
        'alphAbet' || false
    }

    
    def "Hypothetical isogrammic word with hyphen"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase                || expected
        'thumbscrew-japingly' || true
    }

    
    def "Hypothetical word with duplicated character following hyphen"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase                 || expected
        'thumbscrew-jappingly' || false
    }

    
    def "Isogram with duplicated hyphen"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase         || expected
        'six-year-old' || true
    }

    
    def "Made-up name that is an isogram"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase                    || expected
        'Emily Jung Schwartzkopf' || true
    }

    
    def "Duplicated character in the middle"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase     || expected
        'accentor' || false
    }

    
    def "Same first and last characters"() {
        expect:
        Isogram.isIsogram(phrase) == expected

        where:
        phrase   || expected
        'angola' || false
    }

}