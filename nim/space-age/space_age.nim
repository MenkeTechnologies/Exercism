type Planet* = enum
  Mercury = 7600530,
  Venus   = 19413907,
  Earth   = 31558149,
  Mars    = 59354294,
  Jupiter = 374335776,
  Saturn  = 929596608,
  Uranus  = 2661041808,
  Neptune = 5200418592

proc age*(planet: Planet, age: int64): float =
  return age.float / planet.ord.float

