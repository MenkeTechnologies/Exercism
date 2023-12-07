var TRANSLATIONS = {
  "AUG": "Methionine", "UUU": "Phenylalanine", "UUC": "Phenylalanine", "UUA": "Leucine",
  "UUG": "Leucine", "UCU": "Serine", "UCC": "Serine", "UCA": "Serine", "UCG": "Serine",
  "UAU": "Tyrosine", "UAC": "Tyrosine", "UGU": "Cysteine", "UGC": "Cysteine", "UGG": "Tryptophan",
  "UAA": "Stop", "UAG": "Stop", "UGA": "Stop" }

class Tools {
  static translate() { [] }
  static translate(strand) {
    var proteins = []
    for (codon in codons(strand)) {
      var protein = TRANSLATIONS[codon]
      if (!protein) Fiber.abort("Invalid codon")
      if (protein ==  "Stop") break
      proteins.add(TRANSLATIONS[codon])
    }
    return proteins
  }
  static codons(strand) {
    var codons = []
    while (!strand.isEmpty) {
      codons.add(strand.take(3).join())
      strand = strand.skip(3)
    }
    return codons
  }
}
