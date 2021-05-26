import spock.lang.*

class DartsSpec extends Specification {

    def "Missed target"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x  | y || expected
        -9 | 9 || 0
    }

    def "On the outer circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x | y  || expected
        0 | 10 || 1
    }

    def "On the middle circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x  | y || expected
        -5 | 0 || 5
    }

    def "On the inner circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x | y  || expected
        0 | -1 || 10
    }

    def "Exactly on centre"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x | y || expected
        0 | 0 || 10
    }

    def "Near the centre"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x    | y    || expected
        -0.1 | -0.1 || 10
    }

    def "Just within the inner circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x   | y   || expected
        0.7 | 0.7 || 10
    }

    def "Just outside the inner circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x   | y    || expected
        0.8 | -0.8 || 5
    }

    def "Just within the middle circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x    | y   || expected
        -3.5 | 3.5 || 5
    }

    def "Just outside the middle circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x    | y    || expected
        -3.6 | -3.6 || 1
    }

    def "Just within the outer circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x    | y   || expected
        -7.0 | 7.0 || 1
    }

    def "Just outside the outer circle"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x   | y    || expected
        7.1 | -7.1 || 0
    }

    def "Asymmetric position between the inner and middle circles"() {
        expect:
        Darts.score(x, y) == expected

        where:
        x   | y  || expected
        0.5 | -4 || 5
    }
}