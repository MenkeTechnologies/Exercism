import Foundation

func isArmstrongNumber(_ number: Int) -> Bool {
  Decimal(number) == String(number).split(separator:"").map { Decimal(Int($0)!) }.reduce(0) { $0 + pow($1, String(number).count) }
}
