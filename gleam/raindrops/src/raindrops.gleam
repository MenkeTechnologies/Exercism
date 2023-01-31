import gleam/int
pub fn convert(n: Int) -> String {
  let raindrops =
    raindrop(n, 3, "Pling")
    <> raindrop(n, 5, "Plang")
    <> raindrop(n, 7, "Plong")
  case raindrops {
    "" -> n |> int.to_string
    s -> s
  }
}
fn raindrop(n, factor, s) {
  case n % factor {
    0 -> s
    _ -> ""
  }
}
