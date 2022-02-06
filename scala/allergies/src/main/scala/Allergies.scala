object Allergen extends Enumeration {
  val Eggs, Peanuts, Shellfish, Strawberries, Tomatoes, Chocolate, Pollen, Cats = Value
}

object Allergies {
  def list(mask: Int) = Allergen.values.toList.filter(allergicTo(_, mask))

  def allergicTo(allergen: Allergen.Value, mask: Int) =  (1 << allergen.id & mask)  > 0

}
