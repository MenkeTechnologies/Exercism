let dict = [1:"wink", 2:"double blink", 4:"close your eyes", 8:"jump"]

class SecretHandshake {
    var commands:[String] = []
        init(_ mask:Int) {
            let res = dict.sorted(by:{ $0.key < $1.key }).filter{ mask & $0.key > 0 }.map{$0.value}
            if mask & 16 > 0 {
                commands = res.reversed()
            } else {
                commands = res
            }
        }
}

