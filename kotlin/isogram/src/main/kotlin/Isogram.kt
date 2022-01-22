object Isogram {

    fun isIsogram(input: String) =
        input.toLowerCase().filter { it.isLetter() }.groupBy { it }.values.all { it.size == 1 }

}
