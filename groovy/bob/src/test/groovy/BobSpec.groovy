import spock.lang.*

class BobSpec extends Specification {

    def "Stating something"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                     || expected
        'Tom-ay-to, tom-aaaah-to.' || 'Whatever.'
    }

    def "Shouting"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob       || expected
        'WATCH OUT!' || 'Whoa, chill out!'
    }

    def "Shouting gibberish"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob       || expected
        'FCECDFCAAB' || 'Whoa, chill out!'
    }

    def "Asking a question"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                          || expected
        'Does this cryogenic chamber make me look fat?' || 'Sure.'
    }

    def "Asking a numeric question"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                    || expected
        'You are, what, like 15?' || 'Sure.'
    }

    def "Asking gibberish"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob        || expected
        'fffbbcbeab?' || 'Sure.'
    }

    def "Talking forcefully"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob      || expected
        'Hi there!' || 'Whatever.'
    }

    def "Using acronyms in regular speech"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                             || expected
        'It\'s OK if you don\'t want to go work for NASA.' || 'Whatever.'
    }

    def "Forceful question"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob              || expected
        'WHAT\'S GOING ON?' || 'Calm down, I know what I\'m doing!'
    }

    def "Shouting numbers"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob        || expected
        '1, 2, 3 GO!' || 'Whoa, chill out!'
    }

    def "No letters"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob    || expected
        '1, 2, 3' || 'Whatever.'
    }

    def "Question with no letters"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob || expected
        '4?'   || 'Sure.'
    }

    def "Shouting with special characters"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                          || expected
        'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!' || 'Whoa, chill out!'
    }

    def "Shouting with no exclamation mark"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob               || expected
        'I HATE THE DENTIST' || 'Whoa, chill out!'
    }

    def "Statement containing question mark"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                            || expected
        'Ending with ? means a question.' || 'Whatever.'
    }

    def "Non-letters with question"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob || expected
        ':) ?' || 'Sure.'
    }

    def "Prattling on"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                   || expected
        'Wait! Hang on. Are you going to be OK?' || 'Sure.'
    }

    def "Silence"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob || expected
        ''     || 'Fine. Be that way!'
    }

    def "Prolonged silence"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob       || expected
        '          ' || 'Fine. Be that way!'
    }

    def "Alternate silence"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                 || expected
        '\t\t\t\t\t\t\t\t\t\t' || 'Fine. Be that way!'
    }

    def "Multiple line question"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                                 || expected
        '\nDoes this cryogenic chamber make me look fat?\nNo.' || 'Whatever.'
    }

    def "Starting with whitespace"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                 || expected
        '         hmmmmmmm...' || 'Whatever.'
    }

    def "Ending with whitespace"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                       || expected
        'Okay if like my  spacebar  quite a bit?   ' || 'Sure.'
    }

    def "Other whitespace"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob    || expected
        '\n\r \t' || 'Fine. Be that way!'
    }

    def "Non-question ending with whitespace"() {
        expect:
        Bob.response(heyBob) == expected

        where:
        heyBob                                             || expected
        'This is a statement ending with whitespace      ' || 'Whatever.'
    }

}