object ResistorColorTrio {

    fun text(vararg input: Color): String {
        var res = ""
        var cnt = 0

        for (color in input) {
            if (cnt < 2) {
                res += color
            } else {

            }
            ++cnt
        }

        return res
    }
}
