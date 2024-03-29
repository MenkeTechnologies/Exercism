import spock.lang.*

class TriangleSpec extends Specification {

    def "All sides are equal for equilateral"() {
        expect:
        new Triangle(a, b, c).isEquilateral() == expected

        where:
        a | b | c || expected
        2 | 2 | 2 || true
    }

    
    def "Any side is unequal"() {
        expect:
        new Triangle(a, b, c).isEquilateral() == expected

        where:
        a | b | c || expected
        2 | 3 | 2 || false
    }

    
    def "No sides are equal for equilateral"() {
        expect:
        new Triangle(a, b, c).isEquilateral() == expected

        where:
        a | b | c || expected
        5 | 4 | 6 || false
    }

    
    def "All zero sides is not a triangle"() {
        expect:
        new Triangle(a, b, c).isEquilateral() == expected

        where:
        a | b | c || expected
        0 | 0 | 0 || false
    }

    
    def "Sides may be floats for equilateral"() {
        expect:
        new Triangle(a, b, c).isEquilateral() == expected

        where:
        a   | b   | c   || expected
        0.5 | 0.5 | 0.5 || true
    }

    
    def "Last two sides are equal"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        3 | 4 | 4 || true
    }

    
    def "First two sides are equal"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        4 | 4 | 3 || true
    }

    
    def "First and last sides are equal"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        4 | 3 | 4 || true
    }

    
    def "Equilateral triangles are also isosceles"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        4 | 4 | 4 || true
    }

    
    def "No sides are equal for isosceles"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        2 | 3 | 4 || false
    }

    
    def "First triangle inequality violation"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        1 | 1 | 3 || false
    }

    
    def "Second triangle inequality violation"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        1 | 3 | 1 || false
    }

    
    def "Third triangle inequality violation"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a | b | c || expected
        3 | 1 | 1 || false
    }

    
    def "Sides may be floats for isosceles"() {
        expect:
        new Triangle(a, b, c).isIsosceles() == expected

        where:
        a   | b   | c   || expected
        0.5 | 0.4 | 0.5 || true
    }

    
    def "No sides are equal for scalene"() {
        expect:
        new Triangle(a, b, c).isScalene() == expected

        where:
        a | b | c || expected
        5 | 4 | 6 || true
    }

    
    def "All sides are equal for scalene"() {
        expect:
        new Triangle(a, b, c).isScalene() == expected

        where:
        a | b | c || expected
        4 | 4 | 4 || false
    }

    
    def "Two sides are equal"() {
        expect:
        new Triangle(a, b, c).isScalene() == expected

        where:
        a | b | c || expected
        4 | 4 | 3 || false
    }

    
    def "May not violate triangle inequality"() {
        expect:
        new Triangle(a, b, c).isScalene() == expected

        where:
        a | b | c || expected
        7 | 3 | 2 || false
    }

    
    def "Sides may be floats for scalene"() {
        expect:
        new Triangle(a, b, c).isScalene() == expected

        where:
        a   | b   | c   || expected
        0.5 | 0.4 | 0.6 || true
    }

}
