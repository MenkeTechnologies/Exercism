import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  ( pow(pow(cart.x,2) + pow(cart.y,2),0.5), atan2(cart.y,cart.x) )
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  (production.id, production.toy, production.productLead, gifts.1)
}
