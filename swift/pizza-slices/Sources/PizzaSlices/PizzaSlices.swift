func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    if let d = diameter, d >= 0, let s = slices, s > 0 {
        let r = d / 2
        return (Double.pi * (r * r)) / Double(s)
    }

    return nil
}

func biggestSlice(
        diameterA: String, slicesA: String,
        diameterB: String, slicesB: String
) -> String {
    let d1 = Double(diameterA)
    let s1 = Int(slicesA)
    let d2 = Double(diameterB)
    let s2 = Int(slicesB)

    let sizeA = sliceSize(diameter: d1, slices: s1)
    let sizeB = sliceSize(diameter: d2, slices: s2)

    switch (sizeA, sizeB) {
        case (nil, nil): return "Neither slice is bigger"
        case (.some(_), nil): return "Slice A is bigger"
        case (nil, .some(_)): return "Slice B is bigger"
        case let (a?, b?): if a > b {
            return "Slice A is bigger"
        } else if a < b {
            return "Slice B is bigger"
        } else {
            return "Neither slice is bigger"
        }
    }

}
