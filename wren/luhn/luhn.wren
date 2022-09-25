class Luhn {
    static xform(n, i){
        if (i % 2 == 1){
            n = n * 2
        }
        if (n > 9){
            n = n - 9
        }
        return n
    }
  static valid(num) {
    var nows = num.replace(" ", "")
    if (nows.count < 2 || nows.any {|c| !"0123456789".contains(c)}) return false
    var i = -1
    var sum = nows[-1..0]
      .map {|c| Num.fromString(c)}
      .reduce(0) {|acc, n| acc + xform(n, (i = i + 1))}
    return sum % 10 == 0
  }
}
