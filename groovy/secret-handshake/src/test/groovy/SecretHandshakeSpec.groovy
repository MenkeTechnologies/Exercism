import spock.lang.*

class SecretHandshakeSpec extends Specification {

    def "Wink for 1"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        1      || ['wink']
    }

    def "Double blink for 10"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        2      || ['double blink']
    }

    def "Close your eyes for 100"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        4      || ['close your eyes']
    }

    def "Jump for 1000"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        8      || ["jump"]
    }

    def "Combine two actions"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        3      || ['wink', 'double blink']
    }

    def "Reverse two actions"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        19     || ['double blink', 'wink']
    }

    def "Reversing one action gives the same action"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        24     || ['jump']
    }

    def "Reversing no actions still gives no actions"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        16     || []
    }

    def "All possible actions"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        15     || ['wink', 'double blink', 'close your eyes', 'jump']
    }

    def "Reverse all possible actions"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        31     || ['jump', 'close your eyes', 'double blink', 'wink']
    }

    def "Do nothing for zero"() {
        expect:
        SecretHandshake.commands(number) == expected

        where:
        number || expected
        0      || []
    }

}