import gleam/order.{type Order}
import gleam/list
import gleam/float

pub type City {
  City(name: String, temperature: Temperature)
}

pub type Temperature {
  Celsius(Float)
  Fahrenheit(Float)
}

pub fn fahrenheit_to_celsius(f: Float) -> Float {
    { f -. 32.0 } /. 1.8
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  case left, right {
    Celsius(l), Celsius(r) | Fahrenheit(l), Fahrenheit(r) -> float.compare(l, r)
    Celsius(l), Fahrenheit(r) -> float.compare(l, fahrenheit_to_celsius(r))
    Fahrenheit(l), Celsius(r) -> float.compare(fahrenheit_to_celsius(l), r)
  }
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {
  list.sort(cities, fn(a, b) { compare_temperature(a.temperature, b.temperature) })
}
