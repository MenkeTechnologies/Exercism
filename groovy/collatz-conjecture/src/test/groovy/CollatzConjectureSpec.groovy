import spock.lang.*

class CollatzConjectureSpec extends Specification {

    def "Zero steps for one"() {
        expect:
        CollatzConjecture.steps(number) == expected

        where:
        number || expected
        1      || 0
    }

    def "Divide if even"() {
        expect:
        CollatzConjecture.steps(number) == expected

        where:
        number || expected
        16     || 4
    }

    def "Even and odd steps"() {
        expect:
        CollatzConjecture.steps(number) == expected

        where:
        number || expected
        12     || 9
    }

    def "Large number of even and odd steps"() {
        expect:
        CollatzConjecture.steps(number) == expected

        where:
        number  || expected
        1000000 || 152
    }

    def "Zero is an error"() {
        when:
        CollatzConjecture.steps(number)

        then:
        thrown(ArithmeticException)

        where:
        number = 0
    }

    def "Negative value is an error"() {
        when:
        CollatzConjecture.steps(number)

        then:
        thrown(ArithmeticException)

        where:
        number = -15
    }

}