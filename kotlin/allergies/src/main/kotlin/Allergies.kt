class Allergies(private val score: Int) {

    fun getList() = Allergen.values().flatMap { if (isAllergicTo(it)) listOf(it) else listOf() }.toList()

    fun isAllergicTo(allergen: Allergen) = score and allergen.score > 0
}
