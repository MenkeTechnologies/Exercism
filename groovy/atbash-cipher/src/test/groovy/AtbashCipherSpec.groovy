import spock.lang.*

class AtbashCipherSpec extends Specification {

    def "Encode yes"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase || expected
        'yes'  || 'bvh'
    }

    def "Encode no"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase || expected
        'no'   || 'ml'
    }

    def "Encode OMG"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase || expected
        'OMG'  || 'lnt'
    }

    def "Encode spaces"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase  || expected
        'O M G' || 'lnt'
    }

    def "Encode mindblowingly"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase          || expected
        'mindblowingly' || 'nrmwy oldrm tob'
    }

    def "Encode numbers"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase                    || expected
        'Testing,1 2 3, testing.' || 'gvhgr mt123 gvhgr mt'
    }

    def "Encode deep thought"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase              || expected
        'Truth is fiction.' || 'gifgs rhurx grlm'
    }

    def "Encode all the letters"() {
        expect:
        AtbashCipher.encode(phrase) == expected

        where:
        phrase                                         || expected
        'The quick brown fox jumps over the lazy dog.' || 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
    }

    def "Decode exercism"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase      || expected
        'vcvix rhn' || 'exercism'
    }

    def "Decode a sentence"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase                                  || expected
        'zmlyh gzxov rhlug vmzhg vkkrm thglm v' || 'anobstacleisoftenasteppingstone'
    }

    def "Decode numbers"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase                 || expected
        'gvhgr mt123 gvhgr mt' || 'testing123testing'
    }

    def "Decode all the letters"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase                                      || expected
        'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt' || 'thequickbrownfoxjumpsoverthelazydog'
    }

    def "Decode with too many spaces"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase           || expected
        'vc vix    r hn' || 'exercism'
    }

    def "Decode with no spaces"() {
        expect:
        AtbashCipher.decode(phrase) == expected

        where:
        phrase                            || expected
        'zmlyhgzxovrhlugvmzhgvkkrmthglmv' || 'anobstacleisoftenasteppingstone'

    }

}