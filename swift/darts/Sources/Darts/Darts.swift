import Foundation

func dartScore(x: Double, y: Double) -> Int {
  let distance = pow(x * x + y * y, 0.5)
  return distance > 10 ? 0 : distance > 5 ? 1 : distance > 1 ? 5 : 10
}
