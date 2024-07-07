class SecretHandshake {
  static actions { ["wink", "double blink", "close your eyes", "jump"] }
  static commands(code) {
    var res = []
    (0...actions.count).each { |i|
      if (bitAt(code, i) > 0) {
        res.add(actions[i])
      }
    }
    return bitAt(code, actions.count) > 0 ? reverse(res) : res
  }
  static bitAt(num, idx) { num >> idx & 1 }
  static reverse(lst) { lst.reduce([]) {|acc, n| [n] + acc}}
}
