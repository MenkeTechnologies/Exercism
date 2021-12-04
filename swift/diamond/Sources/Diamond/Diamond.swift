class Diamond {

    public class func makeDiamond(letter: Character) -> [String] {

        let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let SPACE = " "

        guard let top = letters.firstIndex(of: letter) else {
            return [""]
        }

        let asc = 0...top

        return (asc + asc.reversed().dropFirst()).map{ letterIdx in
            (asc.reversed() + asc.dropFirst()).reduce("") { str, midlineOffset in
                if midlineOffset == letterIdx {
                    return str + String(letters[letterIdx])
                } else  {
                    return str + SPACE
                }
            }
        }

    }
}
