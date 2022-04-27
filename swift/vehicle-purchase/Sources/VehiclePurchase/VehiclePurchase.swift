func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let regular = monthlyBudget * 5 * 12
    let within10 = monthlyBudget * (5 * 12 + 10)
    if price > regular {
        if price > within10 {
            return "Darn! No \(vehicle) for me"
        }
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {

        return "Yes! I'm getting a \(vehicle)"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {

    switch wheels {
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }

}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    if yearsOld >= 10 {
        return 25
    }

    var base: Double = Double(msrp > 25000 ? msrp : 25000)

    base -= Double(yearsOld) * base / 10

    base /= 100

    return Int(base.rounded(.down))

}
