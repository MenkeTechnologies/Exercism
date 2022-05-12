class Nucleotide {
  static count(strand) {
      return strand.reduce({"A": 0, "C": 0, "T": 0, "G": 0}) {|acc,n|
              if (!acc[n]) Fiber.abort("Invalid nucleotide in strand")
              acc[n] = acc[n] + 1
              return acc
              }
  }
}
