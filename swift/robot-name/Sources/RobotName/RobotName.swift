class Robot {

    var name = ""
    let ltrs = UInt8(ascii: "A")...UInt8(ascii: "Z")
    let nums = UInt8(ascii: "0")...UInt8(ascii: "9")

    init() {
        name = genName()
    }

    func randomLet() -> String {

        String(UnicodeScalar(ltrs.randomElement()!))

    }

    func randomNum() -> String {

        String(UnicodeScalar(nums.randomElement()!))

    }

    func genName() -> String {
        ((0..<2).map { _ in
            randomLet()
        } + (0..<3).map { _ in
            randomNum()
        }).joined()
    }

    public func resetName() {
        name = genName()
    }
}
