class DiamondPrinter {
    fun printToList(c: Char) =
            ((0..c - 'A') + (0..c - 'A').reversed().drop(1)).map {
                ((0..c - 'A').reversed() + (0..c - 'A').drop(1))
                        .fold("") { acc, midOffset ->
                            acc + if (midOffset == it) 'A' + midOffset else " "
                        }
            }.toList()

}
