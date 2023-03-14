import gleam/float
import gleam/list

pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && {a == b && b == c}
}
pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && {a == b || a == c || b == c}
}
pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && {a != b && b != c && a != c}
}
pub fn is_triangle(a: Float, b: Float, c: Float) -> Bool {
  let [a, b, c] = list.sort([a, b, c], float.compare)
  {a +. b >. c} && {a >. 0.0}
}
