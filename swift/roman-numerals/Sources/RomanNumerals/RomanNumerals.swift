let romanMap = [
    (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
    (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
    (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
]

func RomanNumeral(_ year: Int) -> String {
    romanMap.reduce(("", year)) { (acc, pair) -> (String, Int) in
                (acc.0 + String(repeating: pair.1, count: acc.1 / pair.0), acc.1 % pair.0)
            } .0
}
