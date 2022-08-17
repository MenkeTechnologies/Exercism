import spock.lang.*

class MatchingBracketsSpec extends Specification {

    def "Paired square brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '[]'  || true
    }

    
    def "Empty string"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        ''    || true
    }

    
    def "Unpaired brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '[['  || false
    }

    
    def "Wrong ordered brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '}{'  || false
    }

    
    def "Wrong closing bracket"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '{]'  || false
    }

    
    def "Paired with whitespace"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '{ }' || true
    }

    
    def "Partially paired brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value  || expected
        '{[])' || false
    }

    
    def "Simple nested brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value  || expected
        '{[]}' || true
    }

    
    def "Several paired brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value  || expected
        '{}[]' || true
    }

    
    def "Paired and nested brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value          || expected
        '([{}({}[])])' || true
    }

    
    def "Unopened closing brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value     || expected
        '{[)][]}' || false
    }

    
    def "Unpaired and nested brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value   || expected
        '([{])' || false
    }

    
    def "Paired and wrong nested brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value    || expected
        '[({]})' || false
    }

    
    def "Paired and incomplete brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '{}[' || false
    }

    
    def "Too many closing brackets"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value || expected
        '[]]' || false
    }

    
    def "Math expression"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value                             || expected
        '(((185 + 223.85) * 15) - 543)/2' || true
    }

    
    def "Complex latex expression"() {
        expect:
        MatchingBrackets.isPaired(value) == expected

        where:
        value = '\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)'
        expected = true
    }

}