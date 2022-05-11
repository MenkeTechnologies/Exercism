var MAP = { "C": "G", "G": "C", "T": "A", "A": "U" }

class DNA {
  static toRNA(strand) { strand.map {|c| MAP[c]}.join() }
}
