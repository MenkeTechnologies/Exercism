object ResistorColorDuo {

    fun value(vararg colors: Color) =
        colors.take(2).map { it.ordinal }.joinToString("").toInt()
}
