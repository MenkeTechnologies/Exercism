import spock.lang.*

class RnaTranscriptionSpec extends Specification {

    def "Empty RNA sequence"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna || expected
        ''  || ''
    }

    def "RNA complement of cytosine is guanine"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna || expected
        'C' || 'G'
    }

    def "RNA complement of guanine is cytosine"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna || expected
        'G' || 'C'
    }

    def "RNA complement of thymine is adenine"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna || expected
        'T' || 'A'
    }

    def "RNA complement of adenine is uracil"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna || expected
        'A' || 'U'
    }

    def "RNA complement"() {
        expect:
        RnaTranscription.toRna(dna) == expected

        where:
        dna            || expected
        'ACGTGGTCTTAA' || 'UGCACCAGAAUU'
    }
}
