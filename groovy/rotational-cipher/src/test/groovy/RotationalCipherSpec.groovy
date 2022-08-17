import spock.lang.*

class RotationalCipherSpec extends Specification {

    def "Rotate a by 0, same output as input"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text || expected
        0        | 'a'  || 'a'
    }

    
    def "Rotate a by 1"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text || expected
        1        | 'a'  || 'b'
    }

    
    def "Rotate a by 26, same output as input"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text || expected
        26       | 'a'  || 'a'
    }

    
    def "Rotate m by 13"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text || expected
        13       | 'm'  || 'z'
    }

    
    def "Rotate n by 13 with wrap around alphabet"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text || expected
        13       | 'n'  || 'a'
    }

    
    def "Rotate capital letters"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text  || expected
        5        | 'OMG' || 'TRL'
    }

    
    def "Rotate spaces"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text    || expected
        5        | 'O M G' || 'T R L'
    }

    
    def "Rotate numbers"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text                    || expected
        4        | 'Testing 1 2 3 testing' || 'Xiwxmrk 1 2 3 xiwxmrk'
    }

    
    def "Rotate punctuation"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text                  || expected
        21       | "Let's eat, Grandma!" || "Gzo'n zvo, Bmviyhv!"
    }

    
    def "Rotate all letters"() {
        expect:
        new RotationalCipher(shiftKey).rotate(text) == expected

        where:
        shiftKey | text                                           || expected
        13       | 'The quick brown fox jumps over the lazy dog.' || 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
    }

}
