class Isogram {
    static boolean isIsogram(String phrase) {

        def collect = phrase.toLowerCase().chars().filter(ch -> ch != ' ' && ch != '-').collect()

        def unique = collect.toUnique().collect()

        def diff = collect.size() - unique.size()

        if (diff == 0) {
            return true
        }

        return false


    }
}