class ETL {

    public class func transform(_ old: [Int: [String]]) -> [String: Int] {

        var new: [String: Int] = [:]

        old.forEach {
            let key = $0.key
            $0.value.forEach {
                new[$0.lowercased()] = key
            }
        }
        return new
    }
}
