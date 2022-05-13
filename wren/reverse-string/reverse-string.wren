class StringUtil {
  static reverse(string) {
      return string.reduce([]) {|acc,n|
          acc.insert(0, n)
          return acc
      }.join()
  }
}
