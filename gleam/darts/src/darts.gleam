pub fn score(x x: Float, y y: Float) -> Int {
  case x *. x +. y *. y {
    d if d <=. 1.0 -> 10
    d if d <=. 25.0 -> 5
    d if d <=. 100.0 -> 1
    _ -> 0
  }
}
