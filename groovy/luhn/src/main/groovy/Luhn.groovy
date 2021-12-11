class Luhn {


    static boolean valid(String value) {

        def digits = value.findAll{ !it.allWhitespace }.toList()

        if (digits.size() < 2 || digits.any { !it.number }) {
            return false
        }


        digits.reverse().collect { it as int }.withIndex().collect { ch, i ->
            def dbl = i % 2 == 1 ? ch * 2 : ch
            dbl > 9 ? dbl - 9 : dbl
        }.sum() % 10 == 0


    }

}
