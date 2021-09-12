class MatchingBrackets {

    static Boolean isPaired(String value) {

        def stack = new Stack()
        def map = ["[": "]", "{": "}", "(": ")"]


        for (it in value.split("")) {

            if (map.containsKey(it)) {
                stack.push(it)
            } else if (map.values().contains(it)) {
                if (stack.isEmpty() || map[stack.pop()] != it) {
                    return false
                }
            }

        }

        stack.isEmpty()


    }
}
