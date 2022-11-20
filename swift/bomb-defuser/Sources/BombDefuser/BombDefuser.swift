import Foundation

let flip: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.0, $0.2) }
let rotate: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.2, $0.0) }

func makeShuffle(
    flipper: @escaping ((String, String, String)) -> (String, String, String),
    rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    { id, items in
        String(String(String(id, radix: 2).reversed()).padding(toLength: 8, withPad: "0", startingAt: 0))
            .reduce(items) { (acc, bit) in
                bit == "0" ? flipper(acc) : rotator(acc)
            }
    }
}

