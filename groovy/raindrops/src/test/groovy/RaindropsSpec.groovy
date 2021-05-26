import spock.lang.*

class RaindropsSpec extends Specification {

    @Shared
    def raindrops = new Raindrops()

    def "The sound for 1 is 1"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        1      || '1'
    }

    def "The sound for 3 is Pling"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        3      || 'Pling'
    }

    def "The sound for 5 is Plang"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        5      || 'Plang'
    }

    def "The sound for 7 is Plong"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        7      || 'Plong'
    }

    def "The sound for 6 is Pling as it has a factor 3"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        6      || 'Pling'
    }

    def "2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        8      || '8'
    }

    def "The sound for 9 is Pling as it has a factor 3"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        9      || 'Pling'
    }

    def "The sound for 10 is Plang as it has a factor 5"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        10     || 'Plang'
    }

    def "The sound for 14 is Plong as it has a factor of 7"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        14     || 'Plong'
    }

    def "The sound for 15 is PlingPlang as it has factors 3 and 5"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        15     || 'PlingPlang'
    }

    def "The sound for 21 is PlingPlong as it has factors 3 and 7"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        21     || 'PlingPlong'
    }

    def "The sound for 25 is Plang as it has a factor 5"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        25     || 'Plang'
    }

    def "The sound for 27 is Pling as it has a factor 3"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        27     || 'Pling'
    }

    def "The sound for 35 is PlangPlong as it has factors 5 and 7"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        35     || 'PlangPlong'
    }

    def "The sound for 49 is Plong as it has a factor 7"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        49     || 'Plong'
    }

    def "The sound for 52 is 52"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        52     || '52'
    }

    def "The sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        105    || 'PlingPlangPlong'
    }

    def "The sound for 3125 is Plang as it has a factor 5"() {
        expect:
        raindrops.convert(number) == expected

        where:
        number || expected
        3125   || 'Plang'
    }

}
