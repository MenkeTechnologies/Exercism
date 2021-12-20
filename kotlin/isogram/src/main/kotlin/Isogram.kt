object Isogram {

    fun isIsogram(input: String): Boolean {
        return input.toLowerCase().filter { it.isLetter() }.groupBy { it }.values.none { it.size > 1 }
    }


}
