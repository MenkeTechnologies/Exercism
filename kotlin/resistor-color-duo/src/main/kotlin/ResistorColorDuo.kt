object ResistorColorDuo {

    fun value(vararg colors: Color): Int {

        var str = ""
        var cnt = 0

        for (color in colors) {
            str += color.ordinal

            if (cnt++ == 1) {
                break
            }
        }

        return str.toInt()

    }
}
