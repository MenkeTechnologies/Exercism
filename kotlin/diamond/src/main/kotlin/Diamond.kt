class DiamondPrinter {
    fun printToList(c: Char): List<String> {

        val alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

        val indexOf = alpha.indexOf(c)

        if (indexOf < 0) {
            return listOf()
        }

        val asc = 0..indexOf

        return (asc + asc.reversed().drop(1)).map {
            (asc.reversed() + asc.drop(1)).fold("") { acc, midOffset ->
                if (midOffset == it) {
                    acc + alpha[midOffset]
                } else {
                    "$acc "
                }
            }
        }.toList()

    }


}
