fun complementOf #"G" = #"C"
  | complementOf #"C" = #"G"
  | complementOf #"T" = #"A"
  | complementOf #"A" = #"U"
  | complementOf _ = raise Fail "Invalid Nucleotide"

fun toRna (dna: string): string option =
  SOME(String.map complementOf dna)
  handle Fail _ => NONE
