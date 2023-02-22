fun triangle_inequality (a: real, b: real, c: real) =
  a + b >= c andalso b + c >= a andalso a + c >= b
  andalso not (Real.==(a, 0.0) andalso Real.==(b, 0.0) andalso Real.==(c, 0.0))

fun equal_sides (a: real, b: real, c: real) =
  let
    val ab = Real.==(a, b)
    val ac = Real.==(a, c)
    val bc = Real.==(b, c)
  in
    if ab andalso ac andalso bc then
      3
    else if ab orelse ac orelse bc then
      2
    else
      0
  end

fun equilateral (a::b::c::nil) = triangle_inequality(a, b, c) andalso equal_sides(a, b, c) = 3
  | equilateral _ = false
fun isosceles (a::b::c::nil) = triangle_inequality(a, b, c) andalso equal_sides(a, b, c) > 0
  | isosceles _ = false
fun scalene (a::b::c::nil) = triangle_inequality(a, b, c) andalso equal_sides(a, b, c) = 0
  | scalene _ = false
