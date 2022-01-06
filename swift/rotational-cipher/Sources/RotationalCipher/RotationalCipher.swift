//Solution goes in Sources

class RotationalCipher {

    public class func rotate(_ s: String, ROT: Int) -> String {

        s.map { $0.isUppercase ? rot($0, ROT, "A") : $0.isLowercase ?
                            rot($0, ROT, "a") : String($0)
                } .joined()
    }

    private static func rot(_ arg: Character, _ ROT: Int, _ base: String) -> String {
        String(Character(UnicodeScalar(((arg.asciiValue! - Character(base).asciiValue! + UInt8(ROT)) % 26) + Character(base).asciiValue!)))
    }
}
