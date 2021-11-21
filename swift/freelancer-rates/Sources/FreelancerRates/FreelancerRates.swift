func dailyRateFrom(hourlyRate: Int) -> Double {
    Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    (22 * dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount / 100)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dr = dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount / 100)
    return (budget / dr).rounded(.down)

}
