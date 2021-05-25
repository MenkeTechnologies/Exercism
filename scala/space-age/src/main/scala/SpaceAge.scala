
object SpaceAge {

  val SecondsPerEarthYear = 31557600

  val Periods = Map(
    "Earth" -> 1.0,
    "Mercury" -> 0.2408467,
    "Venus" -> 0.61519726,
    "Mars" -> 1.8808158,
    "Jupiter" -> 11.862615,
    "Saturn" -> 29.447498,
    "Uranus" -> 84.016846,
    "Neptune" -> 164.79132)

  def onEarth(n: Double): Double =
    n / SecondsPerEarthYear

  def onMercury(n: Double): Double =
    onEarth(n) / Periods("Mercury")

  def onVenus(n: Double): Double =
    onEarth(n) / Periods("Venus")

  def onMars(n: Double): Double =
    onEarth(n) / Periods("Mars")

  def onJupiter(n: Double): Double =
    onEarth(n) / Periods("Jupiter")

  def onSaturn(n: Double): Double =
    onEarth(n) / Periods("Saturn")

  def onUranus(n: Double): Double =
    onEarth(n) / Periods("Uranus")

  def onNeptune(n: Double): Double =
    onEarth(n) / Periods("Neptune")


}