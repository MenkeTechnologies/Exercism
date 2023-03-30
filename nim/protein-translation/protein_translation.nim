func chunked(s: string, chunkLen: int): seq[string] =
  for i in countup(0, s.high, chunkLen):
    result.add s[i .. min(s.high, i + chunkLen - 1)]

func toProtein(codon: string): string =
  case codon:
    of "AUG": "Methionine"
    of "UUC", "UUU": "Phenylalanine"
    of "UUA", "UUG": "Leucine"
    of "UCU", "UCC", "UCA", "UCG": "Serine"
    of "UAU", "UAC": "Tyrosine"
    of "UGU", "UGC": "Cysteine"
    of "UGG": "Tryptophan"
    of "UAA", "UAG", "UGA": "STOP"
    else: raise newException(KeyError, "invalid codon")

proc translate*(rna: string): seq[string] =
  for codon in rna.chunked 3:
    let protein = codon.toProtein
    if protein == "STOP":
      break
    result.add protein

