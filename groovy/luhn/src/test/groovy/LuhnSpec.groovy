import spock.lang.Ignore
import spock.lang.Specification

class LuhnSpec extends Specification {

    def "Single digit strings can not be valid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        '1'   || false
    }

    def "A single zero is invalid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        '0'   || false
    }

    def "A simple valid SIN that remains valid if reversed"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        '059' || true
    }

    def "A simple valid SIN that becomes invalid if reversed"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        '59'  || true
    }

    def "A valid Canadian SIN"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value         || expected
        '055 444 285' || true
    }

    def "Invalid Canadian SIN"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value         || expected
        '055 444 286' || false
    }

    def "Invalid credit card"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value                 || expected
        '8273 1232 7352 0569' || false
    }

    def "Invalid long number with an even remainder"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value                        || expected
        '1 2345 6789 1234 5678 9012' || false
    }

    def "Valid number with an even number of digits"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value        || expected
        '095 245 88' || true
    }

    def "Valid number with an odd number of spaces"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value             || expected
        '234 567 891 234' || true
    }

    def "Valid strings with a non-digit added at the end become invalid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value  || expected
        '059a' || false
    }

    def "Valid strings with punctuation included become invalid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value         || expected
        '055-444-285' || false
    }

    def "Valid strings with symbols included become invalid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value           || expected
        '055# 444$ 285' || false
    }

    def "Single zero with space is invalid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        ' 0'  || false
    }

    def "More than a single zero is valid"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value    || expected
        '0000 0' || true
    }

    def "Input digit 9 is correctly converted to output digit 9"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        '091' || true
    }

    def "Using ascii value for non-doubled non-digit isn't allowed"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value          || expected
        '055b 444 285' || false
    }

    def "Using ascii value for doubled non-digit isn't allowed"() {
        expect:
        Luhn.valid(value) == expected

        where:
        value || expected
        ':9'  || false
    }

}