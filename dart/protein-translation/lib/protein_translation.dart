class ProteinTranslation {
  Map<String, String> dict = {
    "AUG": "Methionine",
    "UUU": "Phenylalanine",
    "UUC": "Phenylalanine",
    "UUA": "Leucine",
    "UUG": "Leucine",
    "UCU": "Serine",
    "UCC": "Serine",
    "UCA": "Serine",
    "UCG": "Serine",
    "UAU": "Tyrosine",
    "UAC": "Tyrosine",
    "UGU": "Cysteine",
    "UGC": "Cysteine",
    "UGG": "Tryptophan",
    "UAA": "STOP",
    "UAG": "STOP",
    "UGA": "STOP",
  };
  List<String> translate(String codons) {
    List<String> lst = [];
    for (int i = 0; i < codons.length; i += 3) {
      String codon = codons.substring(i, i + 3);
      if (dict[codon] == null) {
        throw ArgumentError();
      }
      if (dict[codon] == "STOP") {
        return lst;
      }
      lst.add(dict[codon]!);
    }
    return lst;
  }
}
