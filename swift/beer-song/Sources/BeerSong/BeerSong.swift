//Solution goes in Sources
class BeerSong {

    let numberOfBeerBottles: Int

    init(numberOfBeerBottles: Int) {
        self.numberOfBeerBottles = numberOfBeerBottles
    }


    public func generateVersesOfBeerSong() -> String {

        var r = ""

        for i in (0...numberOfBeerBottles).reversed() {

            var num1 = ""
            var num1_1 = "s"
            var num2 = ""
            if i >= 2 {
                if i == 2 {
                    num1_1 = ""
                }
                num1 = "\(i) bottles"
                num2 = "Take one down and pass it around, \(i - 1) bottle\(num1_1) of beer on the wall.\n\n"
            } else if i == 1 {
                num1 = "\(i) bottle"
                num2 = "Take one down and pass it around, no more bottles of beer on the wall.\n\n"
            } else {
                num1 = "No more bottles"
                num2 = "Go to the store and buy some more, 99 bottles of beer on the wall."

            }

            r += "\(num1) of beer on the wall, \(num1.lowercased()) of beer.\n\(num2)"
        }

        return r

    }
}

