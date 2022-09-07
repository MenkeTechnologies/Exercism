let FL_OZ = 33.814

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {

    expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count * 2

}

func quantities(layers: String...) -> (noodles: Double, sauce: Double) {
    (Double(layers.filter { $0 == "noodles" } .count) * 3,
        Double(layers.filter { $0 == "sauce" } .count) * 0.2)

}


func toOz(_ tuple: inout (noodles: Double, sauce: Double)) {
    tuple.noodles *= FL_OZ
    tuple.sauce *= FL_OZ
}

func redWine(layers: String...) -> Bool {

    let r = ["meat", "sauce"]
    let w = ["mozzarella", "ricotta", "béchamel"]

    return layers.filter { r.contains($0) } .count >= layers.filter { w.contains($0) } .count
}
