namespace RnaTranscription

def toRna (dna : String) : String :=
  dna.map fun c => match c with
    | 'G' => 'C'
    | 'C' => 'G'
    | 'T' => 'A'
    | 'A' => 'U'
    | _ => c

end RnaTranscription
