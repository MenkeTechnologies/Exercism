//Solution goes in Sources

public class Hamming {

    public static func compute(_ s1: String, against s2: String) -> Int? {

        if s1.count != s2.count {
            return nil
        }

        var h = 0
        for (c1, c2) in zip(s1, s2) {
            if c1 != c2 {
                h += 1
            }
        }

        return h
    }
}
