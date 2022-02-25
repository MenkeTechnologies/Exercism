object SpaceAge {

  val EARTH_YEAR_IN_SECONDS = 31557600

  val PERIODS = Map(
    "Earth" -> 1.0,
    "Mercury" -> 0.2408467,
    "Venus" -> 0.61519726,
    "Mars" -> 1.8808158,
    "Jupiter" -> 11.862615,
    "Saturn" -> 29.447498,
    "Uranus" -> 84.016846,
    "Neptune" -> 164.79132)

  def onEarth(n: Double): Double =
    n / EARTH_YEAR_IN_SECONDS

  def onMercury(n: Double): Double =
    onEarth(n) / PERIODS("Mercury")

  def onVenus(n: Double): Double =
    onEarth(n) / PERIODS("Venus")

  def onMars(n: Double): Double =
    onEarth(n) / PERIODS("Mars")

  def onJupiter(n: Double): Double =
    onEarth(n) / PERIODS("Jupiter")

  def onSaturn(n: Double): Double =
    onEarth(n) / PERIODS("Saturn")

  def onUranus(n: Double): Double =
    onEarth(n) / PERIODS("Uranus")

  def onNeptune(n: Double): Double =
    onEarth(n) / PERIODS("Neptune")

}
