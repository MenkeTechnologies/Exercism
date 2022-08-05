case class Clock(hr: Int, min: Int) {
  def +(c: Clock) = Clock(hr + c.hr, min + c.min)
  def -(c: Clock) = Clock(hr - c.hr, min - c.min)
}
object Clock {
  def apply(hr: Int, min: Int) = new Clock(hr + Math.floorDiv(min, 60) - Math.floorDiv(hr + Math.floorDiv(min, 60), 24) * 24, Math.floorMod(min, 60))
  def apply(min: Int) = new Clock(0, min)
}

