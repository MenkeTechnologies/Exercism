let times = [
    "beer": 0.5, "soda": 0.5, "water": 0.5,
    "shot": 1.0,
    "mixed drink": 1.5,
    "fancy drink": 2.5,
    "frozen drink": 3.0,
]
let wedgesCount = ["small": 6, "large": 8, "medium": 10]
typealias OrderResult = (first: String, last: String, total: Int)

func timeToPrepare(drinks: [String]) -> Double {
    drinks.compactMap {
                times[$0]
            }
            .reduce(0, +)
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var total = 0
    return limes.compactMap({ wedgesCount[$0] }).filter({
                guard total < needed else {
                    return false
                }
                total += $0
                return true
            })
            .count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var orders = remainingOrders
    var minutes = Double(minutesLeft)
    while minutes > 0, orders.isEmpty == false {
        minutes -= timeToPrepare(drinks: orders.removeFirst())
    }
    return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
        beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    let beerTimes = orders.filter({ $0.drink == "beer" }).map({ $0.time }).sorted()
    let sodaTimes = orders.filter({ $0.drink == "soda" }).map({ $0.time }).sorted()
    var beer: OrderResult?
    if let first = beerTimes.first, let last = beerTimes.last {
        beer = OrderResult(first: first, last: last, total: beerTimes.count)
    }
    var soda: OrderResult?
    if let first = sodaTimes.first, let last = sodaTimes.last {
        soda = OrderResult(first: first, last: last, total: sodaTimes.count)
    }
    return (beer: beer, soda: soda)
}
