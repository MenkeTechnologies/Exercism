class Anagram {

    private def subjectLC
    private def subjectList

    Anagram(String subject) {
        this.subjectLC = subject.toLowerCase()
        this.subjectList = subject.toLowerCase().chars().sorted().toArray()
    }

    def find(candidates) {

        def list = []

        for (String candidate in candidates) {
            def candList = candidate.toLowerCase().chars().sorted().toArray()
            if (candList == subjectList && candidate.toLowerCase() != subjectLC) {
                list << candidate
            }
        }

        list

    }

}