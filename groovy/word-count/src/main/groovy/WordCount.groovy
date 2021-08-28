class WordCount {

    def map = [:]
    def l = []

    WordCount(String s) {
        l = s.toLowerCase().replaceAll("(?!\\w|'t\\b).", " ").split()

        l.each {
            if (map[it]) {
                map[it] += 1
            } else {
                map[it] = 1
            }
        }

    }

    def countWords() {
        map.sort { -it.value }.each {
            println("$it.key: $it.value")
        }
    }
}
