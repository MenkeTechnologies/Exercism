object ResistorColorTrio {

    fun text(vararg input: Color): String {
        var res = ""

        for ((cnt, color) in input.withIndex()) {
            if (cnt < 2) {
                res += color.ordinal
            } else {
                res += "0".repeat(color.ordinal)
            }
        }

        var prefix = res.dropLastWhile { it == '0' }
        val zeroCnt = res.takeLastWhile { it == '0' }.length
        prefix += "0".repeat(zeroCnt % 3)
        val unit = Unit.values()[zeroCnt / 3].toString().toLowerCase()

        return "$prefix $unit"
    }
}
