class Isogram {

    public class func isIsogram(_ s: String) -> Bool {
        let characters = s.lowercased().filter { $0.isLetter }
        return Set(characters).count == characters.count
    }
}
