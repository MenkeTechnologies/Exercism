import spock.lang.*

class ReverseStringSpec extends Specification {

    def "An empty string"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value || expected
        ''    || ''
    }

    def "A word"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value   || expected
        'robot' || 'tobor'
    }

    def "A capitalized word"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value   || expected
        'Ramen' || 'nemaR'
    }

    def "A sentence with punctuation"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value         || expected
        "I'm hungry!" || "!yrgnuh m'I"
    }

    def "A palindrome"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value     || expected
        'racecar' || 'racecar'
    }

    def "An even-sized word"() {
        expect:
        ReverseString.reverse(value) == expected

        where:
        value    || expected
        'drawer' || 'reward'
    }
}