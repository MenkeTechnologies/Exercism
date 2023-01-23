public class Hamming {

    public static func compute(_ s1: String, against s2: String) -> Int? {
        s1.count != s2.count ? nil : zip(s1, s2).filter { $0 != $1 } .count
    }
}
