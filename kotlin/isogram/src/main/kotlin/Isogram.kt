object Isogram {

    fun isIsogram(input: String): Boolean {
        return input.toLowerCase().filter { it.isLetter() }.groupBy { it }.values.all { it.size == 1 }
    }


}
