object ResistorColorTrio {

    fun text(vararg input: Color): String {
        val raw = input.withIndex().map { (i,n) -> if (i < 2) n.ordinal.toString() else "0".repeat(n.ordinal) }.joinToString("")

        var prefix = raw.dropLastWhile { it == '0' }
        val zeroCnt = raw.takeLastWhile { it == '0' }.length
        prefix += "0".repeat(zeroCnt % 3)
        val unit = Unit.values()[zeroCnt / 3].toString().toLowerCase()

        return "$prefix $unit"
    }
}
