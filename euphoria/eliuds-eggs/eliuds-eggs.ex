include std/convert.e
include std/math.e

public function eggCount(integer n)
  return sum(int_to_bits(n))
end function
