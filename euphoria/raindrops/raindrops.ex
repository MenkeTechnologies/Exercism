include std/math.e
include std/utils.e
include std/text.e

public function raindrops(atom n)
  sequence res = iif(mod(n, 3) = 0, "Pling", "") & iif(mod(n, 5) = 0, "Plang", "") & iif(mod(n, 7) = 0, "Plong", "")
  return iif(equal(res, ""), sprint(n), res)
end function
