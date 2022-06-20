let is_valid_triangle sides = List.nth sides 0 > 0 &&
  List.nth sides 0 + List.nth sides 1 > List.nth sides 2

let is_triangle s1 s2 s3 =
  [s1; s2; s3]
  |> List.sort Int.compare
  |> is_valid_triangle

let is_equilateral s1 s2 s3 =
  is_triangle s1 s2 s3
  && (s1 = s2 && s2 = s3 && s1 = s3)

let is_isosceles s1 s2 s3 =
  is_triangle s1 s2 s3
  && (s1 = s2 || s2 = s3 || s1 = s3)

let is_scalene s1 s2 s3 =
  is_triangle s1 s2 s3
  && not (is_isosceles s1 s2 s3)
