import spock.lang.*

class AllergiesSpec extends Specification {

    /*
    Given a number and a substance, indicate whether Tom is allergic
    to that substance.
    */

    def "Testing for eggs allergy"() {
        given:
        String substance = 'eggs'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        1     || true
        3     || true
        2     || false
        255   || true
    }

    def "Testing for peanuts allergy"() {
        given:
        String substance = 'peanuts'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        2     || true
        7     || true
        5     || false
        255   || true
    }

    def "Testing for shellfish allergy"() {
        given:
        String substance = 'shellfish'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        4     || true
        14    || true
        10    || false
        255   || true
    }

    def "Testing for strawberries allergy"() {
        given:
        String substance = 'strawberries'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        8     || true
        28    || true
        20    || false
        255   || true
    }

    def "Testing for tomatoes allergy"() {
        given:
        String substance = 'tomatoes'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        16    || true
        56    || true
        40    || false
        255   || true
    }

    def "Testing for chocolate allergy"() {
        given:
        String substance = 'chocolate'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        32    || true
        112   || true
        80    || false
        255   || true
    }

    def "Testing for pollen allergy"() {
        given:
        String substance = 'pollen'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        64    || true
        224   || true
        260   || false
        255   || true
    }

    def "Testing for cats allergy"() {
        given:
        String substance = 'cats'

        expect:
        new Allergies(score).allergicTo(substance) == expected

        where:
        score || expected
        0     || false
        128   || true
        192   || true
        64    || false
        255   || true
    }

    // Given a number, list all things Tom is allergic to

    def "No allergies"() {
        given:
        int score = 0
        def allergies = new Allergies(score)

        expect:
        allergies.list() == []
    }

    def "Just eggs"() {
        given:
        int score = 1
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['eggs']
    }

    def "Just peanuts"() {
        given:
        int score = 2
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['peanuts']
    }

    def "Just strawberries"() {
        given:
        int score = 8
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['strawberries']
    }

    def "Eggs and peanuts"() {
        given:
        int score = 3
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['eggs', 'peanuts']
    }

    def "More than eggs but not peanuts"() {
        given:
        int score = 5
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['eggs', 'shellfish']
    }

    def "Lots of stuff"() {
        given:
        int score = 248
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['strawberries',
                             'tomatoes',
                             'chocolate',
                             'pollen',
                             'cats']
    }

    def "Everything"() {
        given:
        int score = 255
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['eggs',
                             'peanuts',
                             'shellfish',
                             'strawberries',
                             'tomatoes',
                             'chocolate',
                             'pollen',
                             'cats']
    }

    def "No allergen score parts"() {
        given:
        int score = 509
        def allergies = new Allergies(score)

        expect:
        allergies.list() == ['eggs',
                             'shellfish',
                             'strawberries',
                             'tomatoes',
                             'chocolate',
                             'pollen',
                             'cats']
    }

}