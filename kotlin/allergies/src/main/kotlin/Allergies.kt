class Allergies(private val score: Int) {

    fun getList() = Allergen.values().filter { isAllergicTo(it) }.toList()

    fun isAllergicTo(allergen: Allergen) = score and allergen.score > 0
}
