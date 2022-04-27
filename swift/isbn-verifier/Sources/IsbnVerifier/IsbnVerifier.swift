let ISBN_LEN = 10
let CHECK: Character = "X"
let CHECK_VAL = 10

public func isValid(_ input: String) -> Bool {

    let all = input.filter {
        $0.isNumber || $0 == CHECK
    }
    var prefixInts = all.dropLast().compactMap {
        $0.wholeNumberValue
    }

    if all.count != ISBN_LEN {
        return false
    }
    if prefixInts.count != ISBN_LEN - 1 {
        return false
    }

    if input.last == CHECK {
        prefixInts.append(CHECK_VAL)
    } else if let int = input.last?.wholeNumberValue {
        prefixInts.append(int)
    } else {
        return false
    }

    return prefixInts.enumerated()
            .reduce(0) {
                $0 + (ISBN_LEN - $1.offset) * $1.element
            } % 11 == 0


}
